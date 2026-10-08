#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/test/query-itcm-study}"
BENCHMARK_OUT="${BENCHMARK_OUT:-$ROOT/research-artifacts/benchmarks/query-itcm-study}"
if [[ "${SKIP_BUILDS:-0}" != 1 ]]; then
    BUILD_PROFILE=bench-improved OUT="$OUT/selected" "$ROOT/tools/repro/build_v06_blocksds.sh"
    for entry in first second; do
        BUILD_PROFILE=bench-improved-query-itcm OUT="$OUT/$entry" "$ROOT/tools/repro/build_v06_blocksds.sh"
    done
fi
cmp "$OUT/first/pocketphysics-v0.6-blocksds.nds" "$OUT/second/pocketphysics-v0.6-blocksds.nds"
cmp "$OUT/first/pocketphysics-v0.6-blocksds.elf" "$OUT/second/pocketphysics-v0.6-blocksds.elf"
expected=157ca14fb895a2dfc93ae2548482db718823dbf77b374814bcae8f7d697fd292
actual="$(shasum -a 256 "$OUT/selected/pocketphysics-v0.6-blocksds.nds" | awk '{print $1}')"
[[ "$actual" == "$expected" ]] || { echo "Selected control ROM changed: $actual" >&2; exit 1; }
expected_query=83864a974757d01098d586c1b009fdee6c2cd2599bf4d91d234812e306b9b7c7
actual_query="$(shasum -a 256 "$OUT/first/pocketphysics-v0.6-blocksds.nds" | awk '{print $1}')"
[[ "$actual_query" == "$expected_query" ]] || { echo "Picking candidate ROM changed: $actual_query" >&2; exit 1; }
PYTHONPYCACHEPREFIX="$OUT/pycache" python3 "$ROOT/tools/repro/check_query_itcm.py" \
    "$OUT/first/pocketphysics-v0.6-blocksds.elf" \
    "$OUT/first/pocketphysics-v0.6-blocksds.map" "$OUT/placement.json"
if [[ "${BUILD_ONLY:-0}" == 1 ]]; then
    echo "Two picking-ITCM builds match; control identity and placement pass."
    exit 0
fi
EMULATOR=melonds REQUIRE_CORRECTNESS=1 EQUIVALENT_TO=selected \
    REPEATS="${REPEATS:-3}" DURATION="${MELONDS_DURATION:-12}" MAX_TIMING_SPREAD_PERCENT=0 \
    OUT="$BENCHMARK_OUT" "$ROOT/tools/repro/benchmark_inrom.sh" \
    "selected=$OUT/selected/pocketphysics-v0.6-blocksds.nds" \
    "query-itcm=$OUT/first/pocketphysics-v0.6-blocksds.nds"
