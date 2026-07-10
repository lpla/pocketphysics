#!/usr/bin/env bash
set -euo pipefail

: "${BENCH_OUT:?BENCH_OUT is required}"
: "${BENCH_REPEATS:?BENCH_REPEATS is required}"
: "${BENCH_DURATION:?BENCH_DURATION is required}"
: "${BENCH_EMULATOR:?BENCH_EMULATOR is required}"

sha256_file() {
    sha256sum "$1" | awk '{print $1}'
}

csv_quote() {
    printf '%s' "$1" | sed 's/"/""/g; s/^/"/; s/$/"/'
}

extract_ppbench_rows() {
    local source="$1"
    local dest="$2"

    # Emulator logs may concatenate no$gba messages. Parse records as a byte
    # stream instead of trusting host-side line buffering.
    # melonDS wraps long debug strings at the emulated no$gba output width,
    # including in the middle of a checksum. Join physical log lines before
    # matching the 12-field protocol record.
    LC_ALL=C tr -d '\r\n' < "$source" \
        | grep -aoE \
            'PPBENCH,[^,[:space:]]+,[^,[:space:]]+(,[0-9-]+){7},[0-9a-fA-F]+,[01]' \
        >> "$dest" || true
}

append_ppbench_rows() {
    local label="$1"
    local iteration="$2"
    local status="$3"
    local sha="$4"
    local size="$5"
    local source="$6"

    while IFS= read -r line; do
        case "$line" in
            PPBENCH,*)
                {
                    csv_quote "$BENCH_EMULATOR"; printf ','
                    csv_quote "$label"; printf ',%s,%s,' "$iteration" "$status"
                    csv_quote "$sha"; printf ',%s,%s\n' "$size" "$line"
                } >> "$BENCH_OUT/results.csv"
                ;;
        esac
    done < "$source"
}

run_emulator() {
    local rom="$1"
    local cflash="$2"
    local stdout="$3"
    local stderr="$4"

    case "$BENCH_EMULATOR" in
        desmume)
            timeout "${BENCH_DURATION}s" \
                /usr/games/desmume-cli \
                    --load-type=1 \
                    --cpu-mode=0 \
                    --disable-sound \
                    --disable-limiter \
                    --console-type=debug \
                    --cflash-path="$cflash" \
                    "$rom" >"$stdout" 2>"$stderr"
            ;;
        melonds)
            timeout "${BENCH_DURATION}s" \
                xvfb-run -a -- \
                    stdbuf -oL -eL /opt/melonds/AppRun --boot always "$rom" \
                    >"$stdout" 2>"$stderr"
            ;;
        *)
            echo "Unsupported emulator: $BENCH_EMULATOR" >&2
            return 2
            ;;
    esac
}

for spec in "$@"; do
    label="${spec%%=*}"
    rom="${spec#*=}"
    sha="$(sha256_file "$rom")"
    size="$(stat -c %s "$rom")"

    for i in $(seq 1 "$BENCH_REPEATS"); do
        run_dir="$BENCH_OUT/runs/${label}.${i}"
        cflash="$run_dir/cflash"
        stdout="$BENCH_OUT/logs/${label}.${i}.stdout.log"
        stderr="$BENCH_OUT/logs/${label}.${i}.stderr.log"
        extracted="$BENCH_OUT/logs/${label}.${i}.ppbench.csv"
        mkdir -p "$cflash"

        set +e
        run_emulator "$rom" "$cflash" "$stdout" "$stderr"
        status="$?"
        set -e

        : > "$extracted"
        bench_file="$(find "$cflash" -maxdepth 1 -type f -name 'ppbench-*.csv' -print -quit)"
        if [ -n "$bench_file" ]; then
            extract_ppbench_rows "$bench_file" "$extracted"
        else
            extract_ppbench_rows "$stdout" "$extracted"
            extract_ppbench_rows "$stderr" "$extracted"
        fi

        if ! grep -q '^PPBENCH,' "$extracted"; then
            echo "No PPBENCH rows captured for $label iteration $i" >&2
            echo "stdout: $stdout" >&2
            echo "stderr: $stderr" >&2
            exit 1
        fi

        append_ppbench_rows "$label" "$i" "$status" "$sha" "$size" "$extracted"
    done
done
