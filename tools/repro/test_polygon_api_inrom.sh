#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/test/polygon-api}"
BENCHMARK_OUT="${BENCHMARK_OUT:-$ROOT/research-artifacts/benchmarks/polygon-api}"
if [[ -z "${CONTROL_ROM:-}" ]]; then
    BUILD_PROFILE=bench-improved OUT="$OUT/control" "$ROOT/tools/repro/build_v06_blocksds.sh"
    CONTROL_ROM="$OUT/control/pocketphysics-v0.6-blocksds.nds"
fi
BUILD_PROFILE=bench-improved-polygon-validation OUT="$OUT/validation" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"
python3 "$ROOT/tools/repro/test_polygon_validation.py" "$OUT/validation/deps" "$OUT/host"
EMULATOR=melonds REQUIRE_CORRECTNESS=1 EQUIVALENT_TO=selected \
    REPEATS="${REPEATS:-3}" DURATION="${MELONDS_DURATION:-12}" MAX_TIMING_SPREAD_PERCENT=0 \
    OUT="$BENCHMARK_OUT" "$ROOT/tools/repro/benchmark_inrom.sh" \
    "selected=$CONTROL_ROM" \
    "polygon-validation=$OUT/validation/pocketphysics-v0.6-blocksds.nds"
python3 "$ROOT/tools/repro/check_polygon_validation.py" "$BENCHMARK_OUT/results.csv"
