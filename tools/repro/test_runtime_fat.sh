#!/usr/bin/env bash
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/benchmarks/runtime-fat}"
REPEATS="${REPEATS:-3}"
DURATION="${MELONDS_FAT_DURATION:-45}"
LABEL=runtime-improved
IMAGE="${BENCH_IMAGE:-pocketphysics-melonds:1.1}"
if [[ -z "${CONTROL_ROM:-}" ]]; then
    BUILD_PROFILE=runtime-improved OUT="$ROOT/research-artifacts/build/runtime-fat" \
        "$ROOT/tools/repro/build_v06_blocksds.sh"
    CONTROL_ROM="$ROOT/research-artifacts/build/runtime-fat/pocketphysics-v0.6-blocksds.nds"
fi
OUT="$(python3 -c 'from pathlib import Path; import sys; print(Path(sys.argv[1]).resolve())' "$OUT")"
CONTROL_ROM="$(python3 -c 'from pathlib import Path; import sys; print(Path(sys.argv[1]).resolve())' "$CONTROL_ROM")"
case "$OUT" in "$ROOT"/*) container_out="/workspace/${OUT#$ROOT/}" ;; *) exit 1 ;; esac
case "$CONTROL_ROM" in "$ROOT"/*) container_rom="/workspace/${CONTROL_ROM#$ROOT/}" ;; *) exit 1 ;; esac
mkdir -p "$OUT/logs" "$OUT/runs"
docker build --platform linux/amd64 -q -t "$IMAGE" "$ROOT/tools/repro/emulators/melonds" > /dev/null
for iteration in $(seq 1 "$REPEATS"); do
    run="$OUT/runs/$LABEL.$iteration"
    mkdir "$run"
    container_run="$container_out/runs/$LABEL.$iteration"
    python3 - "$ROOT/tools/repro/emulators/melonds/melonDS.toml" "$run/seed.toml" "$container_run/card.bin" <<'PY'
from pathlib import Path
import sys
source=Path(sys.argv[1]).read_text()
old='[DLDI]\nEnable = false'
assert source.count(old)==1
new='[DLDI]\nEnable = true\nImagePath = "'+sys.argv[3]+'"\nImageSize = 1\nReadOnly = false\nFolderSync = false\nFolderPath = ""'
Path(sys.argv[2]).write_text(source.replace(old,new))
PY
    docker run --rm --platform linux/amd64 --entrypoint bash -e SDL_VIDEODRIVER=dummy \
        -e PP_BUILD_UID="$(id -u)" -e PP_BUILD_GID="$(id -g)" \
        -e FAT_RUN="$container_run" -e FAT_OUT="$container_out" -e FAT_ROM="$container_rom" \
        -e FAT_LABEL="$LABEL" -e FAT_ITERATION="$iteration" -e FAT_DURATION="$DURATION" \
        -v "$ROOT":/workspace -w /workspace "$IMAGE" \
        tools/repro/container_output_build.sh "$container_out" bash -c '
            set -euo pipefail
            source tools/repro/emulators/melonds/prepare_run.sh
            prepare_melonds_run "$FAT_RUN" "$FAT_RUN/seed.toml" /opt/melonds/usr/bin/portable
            set +e
            timeout "${FAT_DURATION}s" xvfb-run -a -- stdbuf -oL -eL /opt/melonds/AppRun --boot always "$FAT_ROM" \
                > "$FAT_OUT/logs/$FAT_LABEL.$FAT_ITERATION.stdout.log" \
                2> "$FAT_OUT/logs/$FAT_LABEL.$FAT_ITERATION.stderr.log"
            status=$?
            set -e
            printf "%s\n" "$status" > "$FAT_RUN/exit-status.txt"
            cp "$FAT_RUN/emulator-state/melonDS.toml" "$FAT_RUN/melonDS.final.toml"
            case "$status" in 0|124) ;; *) exit 1 ;; esac
        '
done
PYTHONPYCACHEPREFIX="$OUT/pycache" python3 "$ROOT/tools/repro/analyze_runtime_fat.py" \
    "$OUT" "$CONTROL_ROM" --repeats "$REPEATS"
python3 - "$OUT" "$CONTROL_ROM" "$REPEATS" "$DURATION" "$IMAGE" <<'PY'
from pathlib import Path
import hashlib,json,subprocess,sys
out,rom=map(Path,sys.argv[1:3])
r=dict(schema=2,protocol='runtime-fat',git_commit=subprocess.check_output(['git','rev-parse','HEAD'],text=True).strip(),
       working_tree_dirty=bool(subprocess.check_output(['git','status','--porcelain'],text=True).strip()),
       emulator='melonds',repeats=int(sys.argv[3]),duration_limit_seconds=int(sys.argv[4]),
       docker_image=sys.argv[5],docker_image_id=subprocess.check_output(['docker','image','inspect',sys.argv[5],'--format','{{.Id}}'],text=True).strip(),
       rom_sha256=hashlib.sha256(rom.read_bytes()).hexdigest(),rom_size_bytes=rom.stat().st_size,
       configuration='Independent FAT image and fully seeded DLDI configuration per repetition; no folder synchronization.')
(out/'metadata.json').write_text(json.dumps(r,indent=2)+'\n')
PY
