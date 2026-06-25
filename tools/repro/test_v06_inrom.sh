#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
BENCHMARK_OUT="${BENCHMARK_OUT:-$ROOT/.codex-artifacts/benchmarks/inrom-test}"
REPEATS="${REPEATS:-3}"
DURATION="${DURATION:-20}"

BUILD_PROFILE=bench-repro \
OUT="$ROOT/.codex-artifacts/build/bench-repro" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"

BUILD_PROFILE=bench-perf \
OUT="$ROOT/.codex-artifacts/build/bench-perf" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"

REPEATS="$REPEATS" \
DURATION="$DURATION" \
OUT="$BENCHMARK_OUT" \
    "$ROOT/tools/repro/benchmark_inrom.sh" \
    "bench-repro=$ROOT/.codex-artifacts/build/bench-repro/pocketphysics-v0.6-blocksds.nds" \
    "bench-perf=$ROOT/.codex-artifacts/build/bench-perf/pocketphysics-v0.6-blocksds.nds"
