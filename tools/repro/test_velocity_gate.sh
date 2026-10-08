#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/test/velocity-gate}"
BENCHMARK_OUT="${BENCHMARK_OUT:-$ROOT/research-artifacts/benchmarks/velocity-gate}"
REPEATS="${REPEATS:-3}"

if [[ "${SKIP_BUILDS:-0}" != "1" ]]; then
    for entry in selected first second counts; do
        profile=bench-nds-hw-arm-wide-gate
        [[ "$entry" == selected ]] && profile=bench-improved
        [[ "$entry" == counts ]] && profile=bench-nds-hw-arm-wide-gate-counts
        BUILD_PROFILE="$profile" OUT="$OUT/$entry" "$ROOT/tools/repro/build_v06_blocksds.sh"
    done
fi

cmp "$OUT/first/pocketphysics-v0.6-blocksds.nds" "$OUT/second/pocketphysics-v0.6-blocksds.nds"
cmp "$OUT/first/pocketphysics-v0.6-blocksds.elf" "$OUT/second/pocketphysics-v0.6-blocksds.elf"
expected=e9ba5b69b16e2ed4fb4893f29532adf1aabf5be804517089aefd821f4aa772ca
actual="$(shasum -a 256 "$OUT/selected/pocketphysics-v0.6-blocksds.nds" | awk '{print $1}')"
[[ "$actual" == "$expected" ]] || { echo "Selected control ROM identity changed: $actual" >&2; exit 1; }
candidate=b813bd14935f0d676b1251c4de47b75f22e55ba5647add678fced3e8052d0150
actual="$(shasum -a 256 "$OUT/first/pocketphysics-v0.6-blocksds.nds" | awk '{print $1}')"
[[ "$actual" == "$candidate" ]] || { echo "Wider-gate timing ROM identity changed: $actual" >&2; exit 1; }
if [[ "${BUILD_ONLY:-0}" == "1" ]]; then
    echo "Two wider-gate ROM/ELF builds match; selected control ROM is unchanged."
    exit 0
fi

if [[ "${COUNTS_ONLY:-0}" != "1" ]]; then
    EMULATOR=melonds REQUIRE_CORRECTNESS=1 EQUIVALENT_TO=selected \
        REPEATS="$REPEATS" DURATION="${MELONDS_DURATION:-12}" MAX_TIMING_SPREAD_PERCENT=0 \
        OUT="$BENCHMARK_OUT/melonds" "$ROOT/tools/repro/benchmark_inrom.sh" \
        "selected=$OUT/selected/pocketphysics-v0.6-blocksds.nds" \
        "wide-gate=$OUT/first/pocketphysics-v0.6-blocksds.nds"
fi

EMULATOR=melonds REQUIRE_CORRECTNESS=1 EQUIVALENT_TO=selected REPEATS="$REPEATS" \
    DURATION="${MELONDS_DURATION:-12}" MAX_TIMING_SPREAD_PERCENT=0 \
    OUT="$BENCHMARK_OUT/operation-counts" "$ROOT/tools/repro/benchmark_inrom.sh" \
    "selected=$OUT/selected/pocketphysics-v0.6-blocksds.nds" \
    "wide-gate-counts=$OUT/counts/pocketphysics-v0.6-blocksds.nds"
python3 "$ROOT/tools/repro/check_velocity_gate_counts.py" "$BENCHMARK_OUT/operation-counts/results.csv"
