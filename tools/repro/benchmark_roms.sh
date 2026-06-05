#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/.codex-artifacts/benchmarks/$(date -u +%Y%m%dT%H%M%SZ)}"
IMAGE="${BENCH_IMAGE:-devkitpro/devkitarm:20260221}"
REPEATS="${REPEATS:-7}"
DURATION="${DURATION:-12}"

default_release="$ROOT/.codex-artifacts/release-v0.6/gamebrew/PocketPhysics-v0.6/pocketphysics.nds"
default_rebuilt="$ROOT/.codex-artifacts/build/v06-blocksds/pocketphysics-v0.6-blocksds.nds"
default_improved="$ROOT/.codex-artifacts/build/v06-blocksds-perf/pocketphysics-v0.6-blocksds.nds"

rom_specs=()
if [ "$#" -gt 0 ]; then
    rom_specs=("$@")
else
    rom_specs+=("release-2008=$default_release")
    rom_specs+=("rebuilt-updated-deps=$default_rebuilt")
    if [ -f "$default_improved" ]; then
        rom_specs+=("improved=$default_improved")
    fi
fi

mkdir -p "$OUT/logs"

container_specs=()
for spec in "${rom_specs[@]}"; do
    label="${spec%%=*}"
    rom="${spec#*=}"
    if [ "$label" = "$rom" ] || [ -z "$label" ] || [ ! -f "$rom" ]; then
        echo "Invalid ROM spec or missing ROM: $spec" >&2
        echo "Use label=/absolute/or/repo-relative/path.nds" >&2
        exit 1
    fi

    case "$rom" in
        "$ROOT"/*) container_rom="/workspace/${rom#$ROOT/}" ;;
        /*)
            echo "ROM path is outside the repository and cannot be mounted in Docker: $rom" >&2
            exit 1
            ;;
        *) container_rom="/workspace/$rom" ;;
    esac
    container_specs+=("$label=$container_rom")
done

{
    echo "label,iteration,rom_sha256,rom_size_bytes,status,elapsed_seconds,user_seconds,sys_seconds,max_rss_kb"
} > "$OUT/results.csv"

printf '%s\n' "${rom_specs[@]}" > "$OUT/roms.txt"

docker run --rm -i \
    -e SDL_VIDEODRIVER=dummy \
    -e BENCH_OUT="/workspace/${OUT#$ROOT/}" \
    -e BENCH_REPEATS="$REPEATS" \
    -e BENCH_DURATION="$DURATION" \
    -v "$ROOT":/workspace \
    -w /workspace \
    "$IMAGE" \
    bash -s -- "${container_specs[@]}" <<'EOF'
set -euo pipefail

apt-get update >/dev/null
apt-get install -y desmume time coreutils >/dev/null

sha256_file() {
    sha256sum "$1" | awk '{print $1}'
}

csv_quote() {
    printf '%s' "$1" | sed 's/"/""/g; s/^/"/; s/$/"/'
}

for spec in "$@"; do
    label="${spec%%=*}"
    rom="${spec#*=}"

    sha="$(sha256_file "$rom")"
    size="$(stat -c %s "$rom")"

    for i in $(seq 1 "$BENCH_REPEATS"); do
        stdout="$BENCH_OUT/logs/${label}.${i}.stdout.log"
        stderr="$BENCH_OUT/logs/${label}.${i}.stderr.log"
        timefile="$BENCH_OUT/logs/${label}.${i}.time"

        set +e
        /usr/bin/time -f 'elapsed=%e user=%U sys=%S maxrss=%M' -o "$timefile" \
            timeout "${BENCH_DURATION}s" \
            /usr/games/desmume-cli \
                --load-type=1 \
                --cpu-mode=0 \
                --disable-sound \
                --disable-limiter \
                "$rom" >"$stdout" 2>"$stderr"
        status="$?"
        set -e

        elapsed="$(sed -n 's/^elapsed=//p' "$timefile" | awk '{print $1}')"
        user="$(sed -n 's/.*user=\([^ ]*\).*/\1/p' "$timefile")"
        sys="$(sed -n 's/.*sys=\([^ ]*\).*/\1/p' "$timefile")"
        maxrss="$(sed -n 's/.*maxrss=\([^ ]*\).*/\1/p' "$timefile")"

        {
            csv_quote "$label"; printf ',%s,' "$i"
            csv_quote "$sha"; printf ',%s,%s,%s,%s,%s,%s\n' "$size" "$status" "$elapsed" "$user" "$sys" "$maxrss"
        } >> "$BENCH_OUT/results.csv"
    done
done
EOF

echo "Benchmark results: $OUT/results.csv"
echo "Raw logs: $OUT/logs"
