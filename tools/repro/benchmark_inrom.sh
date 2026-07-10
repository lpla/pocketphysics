#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
EMULATOR="${EMULATOR:-desmume}"
OUT="${OUT:-$ROOT/.codex-artifacts/benchmarks/${EMULATOR}-$(date -u +%Y%m%dT%H%M%SZ)}"
REPEATS="${REPEATS:-3}"
DURATION="${DURATION:-45}"
MAX_TIMING_SPREAD_PERCENT="${MAX_TIMING_SPREAD_PERCENT:-0}"

default_historical="$ROOT/.codex-artifacts/build/bench-historical/pocketphysics-bench-historical.nds"
default_modern="$ROOT/.codex-artifacts/build/bench-modern/pocketphysics-v0.6-blocksds.nds"
default_improved="$ROOT/.codex-artifacts/build/bench-improved/pocketphysics-v0.6-blocksds.nds"

case "$EMULATOR" in
    desmume)
        IMAGE="${BENCH_IMAGE:-pocketphysics-desmume:0.9.11}"
        DOCKERFILE="$ROOT/tools/repro/emulators/desmume"
        EMULATOR_VERSION="0.9.11-4.1 (Debian bookworm)"
        ;;
    melonds)
        IMAGE="${BENCH_IMAGE:-pocketphysics-melonds:1.1}"
        DOCKERFILE="$ROOT/tools/repro/emulators/melonds"
        EMULATOR_VERSION="1.1 (official AppImage x86_64)"
        ;;
    *)
        echo "Unsupported EMULATOR: $EMULATOR (expected desmume or melonds)" >&2
        exit 1
        ;;
esac

rom_specs=()
if [ "$#" -gt 0 ]; then
    rom_specs=("$@")
else
    rom_specs+=("bench-historical=$default_historical")
    rom_specs+=("bench-modern=$default_modern")
    rom_specs+=("bench-improved=$default_improved")
fi

case "$OUT" in
    "$ROOT"/*) container_out="/workspace/${OUT#$ROOT/}" ;;
    *)
        echo "OUT must be inside the repository: $OUT" >&2
        exit 1
        ;;
esac

container_specs=()
rom_manifest=("label,sha256,size_bytes")
rom_labels=()
for spec in "${rom_specs[@]}"; do
    label="${spec%%=*}"
    rom="${spec#*=}"
    if [ "$label" = "$rom" ] || [[ ! "$label" =~ ^[A-Za-z0-9._-]+$ ]] || [ ! -f "$rom" ]; then
        echo "Invalid ROM spec or missing ROM: $spec" >&2
        echo "Use label=/absolute/or/repo-relative/path.nds" >&2
        exit 1
    fi
    for existing_label in "${rom_labels[@]}"; do
        if [ "$label" = "$existing_label" ]; then
            echo "Duplicate ROM label: $label" >&2
            exit 1
        fi
    done
    rom_labels+=("$label")

    case "$rom" in
        "$ROOT"/*) container_rom="/workspace/${rom#$ROOT/}" ;;
        /*)
            echo "ROM path is outside the repository: $rom" >&2
            exit 1
            ;;
        *) container_rom="/workspace/$rom" ;;
    esac
    container_specs+=("$label=$container_rom")
    rom_sha256="$(shasum -a 256 "$rom" | awk '{print $1}')"
    rom_size="$(wc -c < "$rom" | tr -d ' ')"
    rom_manifest+=("$label,$rom_sha256,$rom_size")
done

rm -rf "$OUT"
mkdir -p "$OUT/logs" "$OUT/runs"
printf '%s\n' "${rom_manifest[@]}" > "$OUT/roms.txt"
echo "emulator,label,iteration,status,rom_sha256,rom_size_bytes,tag,build,metric,count,total_ticks,mean_ticks,min_ticks,max_ticks,budget_ticks,over_budget,checksum,pass" > "$OUT/results.csv"

echo "Building pinned $EMULATOR runtime"
docker build --platform linux/amd64 -q -t "$IMAGE" "$DOCKERFILE" >/dev/null
image_id="$(docker image inspect "$IMAGE" --format '{{.Id}}')"

docker run --rm --platform linux/amd64 --entrypoint bash \
    -e SDL_VIDEODRIVER=dummy \
    -e BENCH_OUT="$container_out" \
    -e BENCH_REPEATS="$REPEATS" \
    -e BENCH_DURATION="$DURATION" \
    -e BENCH_EMULATOR="$EMULATOR" \
    -v "$ROOT":/workspace \
    -w /workspace \
    "$IMAGE" \
    tools/repro/run_inrom_container.sh "${container_specs[@]}"

python3 "$ROOT/tools/repro/analyze_inrom.py" \
    "$OUT/results.csv" \
    "$OUT/summary.csv" \
    "$OUT/assertions.txt" \
    --expected-repeats "$REPEATS" \
    --max-timing-spread-percent "$MAX_TIMING_SPREAD_PERCENT"

python3 - "$OUT/metadata.json" <<EOF
import json
import pathlib
import subprocess

root = pathlib.Path(${ROOT@Q})
metadata = {
    "schema": 1,
    "emulator": ${EMULATOR@Q},
    "emulator_version": ${EMULATOR_VERSION@Q},
    "docker_image": ${IMAGE@Q},
    "docker_image_id": ${image_id@Q},
    "docker_platform": "linux/amd64",
    "duration_limit_seconds": int(${DURATION@Q}),
    "repeats": int(${REPEATS@Q}),
    "max_timing_spread_percent": float(${MAX_TIMING_SPREAD_PERCENT@Q}),
    "git_commit": subprocess.check_output(
        ["git", "rev-parse", "HEAD"], cwd=root, text=True
    ).strip(),
    "working_tree_dirty": bool(
        subprocess.check_output(
            ["git", "status", "--porcelain", "--untracked-files=normal"],
            cwd=root,
            text=True,
        ).strip()
    ),
}
pathlib.Path(${OUT@Q}, "metadata.json").write_text(
    json.dumps(metadata, indent=2, sort_keys=True) + "\n"
)
EOF

echo "In-ROM $EMULATOR results: $OUT/results.csv"
echo "Summary: $OUT/summary.csv"
echo "Assertions: $OUT/assertions.txt"
