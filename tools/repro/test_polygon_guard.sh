#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/test/polygon-guard}"
BENCHMARK_OUT="${BENCHMARK_OUT:-$ROOT/research-artifacts/benchmarks/polygon-guard}"
REPEATS="${REPEATS:-3}"

if [[ "${SKIP_BUILDS:-0}" != 1 ]]; then
    for entry in selected first second validation; do
        profile=bench-improved-polygon-guard
        [[ "$entry" == selected ]] && profile=bench-improved-polygon-control
        [[ "$entry" == validation ]] && profile=bench-improved-polygon-validation
        BUILD_PROFILE="$profile" OUT="$OUT/$entry" "$ROOT/tools/repro/build_v06_blocksds.sh"
    done
fi
cmp "$OUT/first/pocketphysics-v0.6-blocksds.nds" "$OUT/second/pocketphysics-v0.6-blocksds.nds"
cmp "$OUT/first/pocketphysics-v0.6-blocksds.elf" "$OUT/second/pocketphysics-v0.6-blocksds.elf"
expected=e9ba5b69b16e2ed4fb4893f29532adf1aabf5be804517089aefd821f4aa772ca
actual="$(shasum -a 256 "$OUT/selected/pocketphysics-v0.6-blocksds.nds" | awk '{print $1}')"
[[ "$actual" == "$expected" ]] || { echo "Selected control ROM identity changed: $actual" >&2; exit 1; }
python3 "$ROOT/tools/repro/test_polygon_validation.py" "$OUT/first/deps" "$OUT/host"
if [[ "${BUILD_ONLY:-0}" == 1 ]]; then
    echo "Two guarded ROM/ELF builds match; sanitized host regressions pass."
    exit 0
fi
EMULATOR=melonds REQUIRE_CORRECTNESS=1 EQUIVALENT_TO=selected \
    REPEATS="$REPEATS" DURATION="${MELONDS_DURATION:-12}" MAX_TIMING_SPREAD_PERCENT=0 \
    OUT="$BENCHMARK_OUT/melonds" "$ROOT/tools/repro/benchmark_inrom.sh" \
    "selected=$OUT/selected/pocketphysics-v0.6-blocksds.nds" \
    "polygon-guard=$OUT/first/pocketphysics-v0.6-blocksds.nds"
EMULATOR=melonds REQUIRE_CORRECTNESS=1 EQUIVALENT_TO=selected \
    REPEATS="$REPEATS" DURATION="${MELONDS_DURATION:-12}" MAX_TIMING_SPREAD_PERCENT=0 \
    OUT="$BENCHMARK_OUT/api-validation" "$ROOT/tools/repro/benchmark_inrom.sh" \
    "selected=$OUT/selected/pocketphysics-v0.6-blocksds.nds" \
    "polygon-validation=$OUT/validation/pocketphysics-v0.6-blocksds.nds"
python3 "$ROOT/tools/repro/check_polygon_validation.py" "$BENCHMARK_OUT/api-validation/results.csv"
