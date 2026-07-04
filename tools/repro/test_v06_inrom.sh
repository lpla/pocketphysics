#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
BENCHMARK_OUT="${BENCHMARK_OUT:-$ROOT/.codex-artifacts/benchmarks/inrom-test}"
REPEATS="${REPEATS:-3}"
DURATION="${DURATION:-12}"

"$ROOT/tools/repro/test_v06_exact.sh"
"$ROOT/tools/repro/build_v06_exact_benchmark.sh"

BUILD_PROFILE=bench-modern \
OUT="$ROOT/.codex-artifacts/build/bench-modern" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"

BUILD_PROFILE=bench-improved \
OUT="$ROOT/.codex-artifacts/build/bench-improved" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"

REPEATS="$REPEATS" \
DURATION="$DURATION" \
OUT="$BENCHMARK_OUT" \
    "$ROOT/tools/repro/benchmark_inrom.sh" \
    "bench-historical=$ROOT/.codex-artifacts/build/bench-historical/pocketphysics-bench-historical.nds" \
    "bench-modern=$ROOT/.codex-artifacts/build/bench-modern/pocketphysics-v0.6-blocksds.nds" \
    "bench-improved=$ROOT/.codex-artifacts/build/bench-improved/pocketphysics-v0.6-blocksds.nds"
