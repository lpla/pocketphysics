#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/.codex-artifacts/benchmarks/inrom-$(date -u +%Y%m%dT%H%M%SZ)}"
IMAGE="${BENCH_IMAGE:-devkitpro/devkitarm:20260221}"
REPEATS="${REPEATS:-3}"
DURATION="${DURATION:-45}"

default_historical="$ROOT/.codex-artifacts/build/bench-historical/pocketphysics-bench-historical.nds"
default_modern="$ROOT/.codex-artifacts/build/bench-modern/pocketphysics-v0.6-blocksds.nds"
default_improved="$ROOT/.codex-artifacts/build/bench-improved/pocketphysics-v0.6-blocksds.nds"

rom_specs=()
if [ "$#" -gt 0 ]; then
    rom_specs=("$@")
else
    rom_specs+=("bench-historical=$default_historical")
    rom_specs+=("bench-modern=$default_modern")
    rom_specs+=("bench-improved=$default_improved")
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
            echo "cflash: $cflash" >&2
            exit 1
        fi

        append_ppbench_rows "$label" "$i" "$status" "$sha" "$size" "$extracted"
    done
done
EOF

python3 - "$OUT/results.csv" "$OUT/summary.csv" "$OUT/assertions.txt" "$REPEATS" <<'EOF'
import csv
import statistics
import sys
from collections import defaultdict

results_path, summary_path, assertions_path = sys.argv[1:4]
expected_repeats = int(sys.argv[4])

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
role_labels = {"bench-historical", "bench-modern", "bench-improved"}
required_metrics = {
    "benchmark_started", "file_output_ready", "timer_read_overhead_ticks",
    "scene_things_created", "scene_position_sum_x", "scene_position_sum_y",
    "hit_test_heap_delta_bytes",
    "touch_create_and_drag", "hit_test", "physics_step", "render_frame",
    "render_begin", "render_canvas", "render_end", "frame_total",
    "visible_things_rendered", "line_quads_rendered", "things_final",
    "behavior_pass", "hit_test_heap_fixed_pass", "overall_pass",
}

for label in sorted(labels & role_labels):
    for metric in sorted(required_metrics):
        metric_rows = require_metric(label, metric)
        if len(metric_rows) != expected_repeats:
            raise AssertionError(
                f"{label} {metric} has {len(metric_rows)} rows; "
                f"expected {expected_repeats}"
            )
        if {int(r["iteration"]) for r in metric_rows} != set(range(1, expected_repeats + 1)):
            raise AssertionError(f"{label} {metric} has incomplete repetition indexes")
        if {r["status"] for r in metric_rows} != {"124"}:
            raise AssertionError(f"{label} {metric} has unexpected emulator status")
        if len({r["checksum"] for r in metric_rows}) != 1:
            raise AssertionError(f"{label} {metric} checksum changed across repetitions")
        if len({r["total_ticks"] for r in metric_rows}) != 1:
            raise AssertionError(f"{label} {metric} result changed across repetitions")

    expected_counts = {
        "touch_create_and_drag": 225,
        "hit_test": 600,
        "physics_step": 240,
        "render_frame": 240,
        "render_begin": 240,
        "render_canvas": 240,
        "render_end": 240,
        "frame_total": 240,
    }
    for metric, count in expected_counts.items():
        if not all(int(r["count"]) == count for r in require_metric(label, metric)):
            raise AssertionError(f"{label} {metric} did not execute {count} samples")

    if not all(int(r["total_ticks"]) == 27 and r["pass"] == "1"
               for r in require_metric(label, "scene_things_created")):
        raise AssertionError(f"{label} did not create the exact 27-object touch scene")
    if not all(int(r["total_ticks"]) == 27
               for r in require_metric(label, "things_final")):
        raise AssertionError(f"{label} did not retain all 27 scene objects")
    if not all(int(r["total_ticks"]) == 1 and r["pass"] == "1"
               for r in require_metric(label, "behavior_pass")):
        raise AssertionError(f"{label} failed behavior validation")
    if not all(0 < int(r["total_ticks"]) < 1000
               for r in require_metric(label, "timer_read_overhead_ticks")):
        raise AssertionError(f"{label} timer calibration is implausible")
    if not all(int(r["total_ticks"]) > 0
               for metric in ("visible_things_rendered", "line_quads_rendered")
               for r in require_metric(label, metric)):
        raise AssertionError(f"{label} rendered no measurable scene work")
    assertions.append(f"{label}: deterministic complete touch/physics/render workload")

def mean_ticks(label, metric):
    return statistics.mean(int(r["mean_ticks"]) for r in require_metric(label, metric))

def scalar(label, metric):
    return statistics.mean(int(r["total_ticks"]) for r in require_metric(label, metric))

if role_labels <= labels:
    topology = {
        label: {r["checksum"] for r in require_metric(label, "scene_things_created")}
        for label in role_labels
    }
    if len(set.union(*topology.values())) != 1:
        raise AssertionError(f"initial scene topology differs across builds: {topology}")

    position_sums = {
        metric: {label: scalar(label, metric) for label in role_labels}
        for metric in ("scene_position_sum_x", "scene_position_sum_y")
    }
    for metric, values in position_sums.items():
        if abs(values["bench-improved"] - values["bench-historical"]) > 1:
            raise AssertionError(
                f"improved scene position sum differs from historical for {metric}: {values}"
            )
        if max(values.values()) - min(values.values()) > 27:
            raise AssertionError(
                f"scene position sums exceed one pixel per object for {metric}: {values}"
            )

    for label in ("bench-historical", "bench-modern"):
        if scalar(label, "hit_test_heap_delta_bytes") <= 0:
            raise AssertionError(f"{label} did not reproduce the hit-test leak")
        if scalar(label, "overall_pass") != 0:
            raise AssertionError(f"{label} unexpectedly passed the leak acceptance check")
    if scalar("bench-improved", "hit_test_heap_delta_bytes") != 0:
        raise AssertionError("bench-improved retained hit-test heap growth")
    if scalar("bench-improved", "overall_pass") != 1:
        raise AssertionError("bench-improved failed the in-ROM acceptance check")

    for metric in ("touch_create_and_drag", "hit_test", "physics_step", "render_frame", "frame_total"):
        improved = mean_ticks("bench-improved", metric)
        modern = mean_ticks("bench-modern", metric)
        if improved >= modern:
            raise AssertionError(
                f"bench-improved {metric} {improved:.2f} is not faster than modern {modern:.2f}"
            )

    for metric in ("hit_test", "physics_step", "frame_total"):
        improved = mean_ticks("bench-improved", metric)
        historical = mean_ticks("bench-historical", metric)
        if improved >= historical:
            raise AssertionError(
                f"bench-improved {metric} {improved:.2f} is not faster than historical {historical:.2f}"
            )

    assertions.append("all builds created an identical 27-object scene through touch dispatch")
    assertions.append("improved build removed the reproduced hit-test leak")
    assertions.append("improved build beat modern in every primary timed workload")
    assertions.append("improved build beat historical hit-test, physics, and full-frame totals")

with open(assertions_path, "w") as f:
    for line in assertions:
        f.write(line + "\n")
EOF

echo "In-ROM benchmark results: $OUT/results.csv"
echo "Summary: $OUT/summary.csv"
echo "Assertions: $OUT/assertions.txt"
echo "Raw logs and cflash images: $OUT"
