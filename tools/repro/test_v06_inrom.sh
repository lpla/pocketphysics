#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
BENCHMARK_OUT="${BENCHMARK_OUT:-$ROOT/research-artifacts/benchmarks/inrom-test}"
REPEATS="${REPEATS:-3}"
DESMUME_DURATION="${DESMUME_DURATION:-${DURATION:-45}}"
MELONDS_DURATION="${MELONDS_DURATION:-${DURATION:-12}}"
EMULATORS="${EMULATORS:-melonds}"

"$ROOT/tools/repro/build_v06_exact_benchmark.sh"

BUILD_PROFILE=bench-modern \
OUT="$ROOT/research-artifacts/build/bench-modern" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"

BUILD_PROFILE=bench-improved \
OUT="$ROOT/research-artifacts/build/bench-improved" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"

for emulator in $EMULATORS; do
    case "$emulator" in
        desmume) duration="$DESMUME_DURATION" ;;
        melonds) duration="$MELONDS_DURATION" ;;
        *)
            echo "Unsupported emulator in EMULATORS: $emulator" >&2
            exit 1
            ;;
    esac

    EMULATOR="$emulator" \
    REPEATS="$REPEATS" \
    DURATION="$duration" \
    OUT="$BENCHMARK_OUT/$emulator" \
        "$ROOT/tools/repro/benchmark_inrom.sh" \
        "bench-historical=$ROOT/research-artifacts/build/bench-historical/pocketphysics-bench-historical.nds" \
        "bench-modern=$ROOT/research-artifacts/build/bench-modern/pocketphysics-v0.6-blocksds.nds" \
        "bench-improved=$ROOT/research-artifacts/build/bench-improved/pocketphysics-v0.6-blocksds.nds"
done
