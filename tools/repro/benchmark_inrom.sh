#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/.codex-artifacts/benchmarks/inrom-$(date -u +%Y%m%dT%H%M%SZ)}"
IMAGE="${BENCH_IMAGE:-devkitpro/devkitarm:20260221}"
REPEATS="${REPEATS:-3}"
DURATION="${DURATION:-45}"

default_repro="$ROOT/.codex-artifacts/build/bench-repro/pocketphysics-v0.6-blocksds.nds"
default_perf="$ROOT/.codex-artifacts/build/bench-perf/pocketphysics-v0.6-blocksds.nds"

rom_specs=()
if [ "$#" -gt 0 ]; then
    rom_specs=("$@")
else
    rom_specs+=("bench-repro=$default_repro")
    rom_specs+=("bench-perf=$default_perf")
fi

mkdir -p "$OUT/logs" "$OUT/runs"

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

printf '%s\n' "${rom_specs[@]}" > "$OUT/roms.txt"
{
    echo "label,iteration,status,rom_sha256,rom_size_bytes,tag,build,metric,count,total_ticks,mean_ticks,min_ticks,max_ticks,budget_ticks,over_budget,checksum,pass"
} > "$OUT/results.csv"

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
apt-get install -y desmume coreutils >/dev/null

sha256_file() {
    sha256sum "$1" | awk '{print $1}'
}

csv_quote() {
    printf '%s' "$1" | sed 's/"/""/g; s/^/"/; s/$/"/'
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
                    csv_quote "$label"; printf ',%s,%s,' "$iteration" "$status"
                    csv_quote "$sha"; printf ',%s,%s\n' "$size" "$line"
                } >> "$BENCH_OUT/results.csv"
                ;;
        esac
    done < "$source"
}

extract_ppbench_rows() {
    local source="$1"
    local dest="$2"

    # DeSmuME's debug console can concatenate no$gba messages without newlines.
    # Match the fixed-width PPBENCH CSV records as records in a byte stream.
    LC_ALL=C grep -aoE \
        'PPBENCH,[^,[:space:]]+,[^,[:space:]]+,[0-9-]+,[0-9-]+,[0-9-]+,[0-9-]+,[0-9-]+,[0-9-]+,[0-9-]+,[0-9a-fA-F]+,[01]' \
        "$source" >> "$dest" || true
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
        timeout "${BENCH_DURATION}s" \
            /usr/games/desmume-cli \
                --load-type=1 \
                --cpu-mode=0 \
                --disable-sound \
                --disable-limiter \
                --console-type=debug \
                --cflash-path="$cflash" \
                "$rom" >"$stdout" 2>"$stderr"
        status="$?"
        set -e

        : > "$extracted"
        if [ -f "$cflash/ppbench.csv" ]; then
            extract_ppbench_rows "$cflash/ppbench.csv" "$extracted"
        else
            extract_ppbench_rows "$stdout" "$extracted"
            extract_ppbench_rows "$stderr" "$extracted"
        fi

        if ! grep -q '^PPBENCH,' "$extracted"; then
            echo "No PPBENCH rows captured for $label iteration $i" >&2
            echo "stdout: $stdout" >&2
            echo "stderr: $stderr" >&2
            echo "cflash: $cflash" >&2
            exit 1
        fi

        append_ppbench_rows "$label" "$i" "$status" "$sha" "$size" "$extracted"
    done
done
EOF

python3 - "$OUT/results.csv" "$OUT/summary.csv" "$OUT/assertions.txt" <<'EOF'
import csv
import statistics
import sys
from collections import defaultdict

results_path, summary_path, assertions_path = sys.argv[1:]

rows = []
with open(results_path, newline="") as f:
    reader = csv.DictReader(f)
    rows = list(reader)

if not rows:
    raise SystemExit("No benchmark rows found")

groups = defaultdict(list)
for row in rows:
    groups[(row["label"], row["build"], row["metric"])].append(row)

with open(summary_path, "w", newline="") as f:
    fieldnames = [
        "label",
        "build",
        "metric",
        "runs",
        "mean_ticks_avg",
        "mean_ticks_min",
        "mean_ticks_max",
        "over_budget_total",
        "all_pass",
        "checksum_set",
        "status_set",
    ]
    writer = csv.DictWriter(f, fieldnames=fieldnames)
    writer.writeheader()
    for (label, build, metric), metric_rows in sorted(groups.items()):
        means = [int(r["mean_ticks"]) for r in metric_rows]
        over_budget = sum(int(r["over_budget"]) for r in metric_rows)
        all_pass = all(r["pass"] == "1" for r in metric_rows)
        checksums = sorted({r["checksum"] for r in metric_rows})
        statuses = sorted({r["status"] for r in metric_rows})
        writer.writerow({
            "label": label,
            "build": build,
            "metric": metric,
            "runs": len(metric_rows),
            "mean_ticks_avg": f"{statistics.mean(means):.2f}",
            "mean_ticks_min": min(means),
            "mean_ticks_max": max(means),
            "over_budget_total": over_budget,
            "all_pass": int(all_pass),
            "checksum_set": "|".join(checksums),
            "status_set": "|".join(statuses),
        })

def require_metric(label, metric):
    matches = [r for r in rows if r["label"] == label and r["metric"] == metric]
    if not matches:
        raise AssertionError(f"Missing metric {metric!r} for {label!r}")
    return matches

labels = {row["label"] for row in rows}
assertions = []
if "bench-perf" in labels:
    try:
        perf_overall = require_metric("bench-perf", "overall_pass")
        if not all(r["total_ticks"] == "1" and r["pass"] == "1" for r in perf_overall):
            raise AssertionError("bench-perf did not pass the in-ROM acceptance check")
        assertions.append("bench-perf overall_pass=1")
    except AssertionError as exc:
        assertions.append(str(exc))
        raise

if "bench-repro" in labels:
    try:
        repro_overall = require_metric("bench-repro", "overall_pass")
        if not all(r["total_ticks"] == "0" and r["pass"] == "0" for r in repro_overall):
            raise AssertionError("bench-repro unexpectedly passed; expected the leak probe to fail")
        assertions.append("bench-repro overall_pass=0 as expected for unfixed baseline")
    except AssertionError as exc:
        assertions.append(str(exc))
        raise

if {"bench-repro", "bench-perf"} <= labels:
    try:
        def mean_ticks(label, metric):
            metric_rows = require_metric(label, metric)
            return statistics.mean(int(r["mean_ticks"]) for r in metric_rows)

        faster_metrics = [
            "touch_create_and_drag",
            "hit_test",
            "physics_step",
            "render_frame",
            "frame_total",
        ]
        for metric in faster_metrics:
            repro_mean = mean_ticks("bench-repro", metric)
            perf_mean = mean_ticks("bench-perf", metric)
            if perf_mean >= repro_mean:
                raise AssertionError(
                    f"bench-perf {metric} mean ticks {perf_mean:.2f} "
                    f"is not lower than bench-repro {repro_mean:.2f}"
                )

        repro_heap = mean_ticks("bench-repro", "hit_test_heap_delta_bytes")
        perf_heap = mean_ticks("bench-perf", "hit_test_heap_delta_bytes")
        if not (repro_heap > 0 and perf_heap == 0):
            raise AssertionError(
                f"unexpected heap delta proof: bench-repro={repro_heap:.2f}, "
                f"bench-perf={perf_heap:.2f}"
            )

        assertions.append("bench-perf mean ticks lower than bench-repro for touch, hit-test, physics, render, and frame-total metrics")
        assertions.append("bench-perf hit-test heap delta fixed from positive bytes to 0")
    except AssertionError as exc:
        assertions.append(str(exc))
        raise

with open(assertions_path, "w") as f:
    for line in assertions:
        f.write(line + "\n")
EOF

echo "In-ROM benchmark results: $OUT/results.csv"
echo "Summary: $OUT/summary.csv"
echo "Assertions: $OUT/assertions.txt"
echo "Raw logs and cflash images: $OUT"
