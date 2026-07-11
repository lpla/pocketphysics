#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
BENCHMARK_OUT="${BENCHMARK_OUT:-$ROOT/research-artifacts/benchmarks/optimization-screening}"
REPEATS="${REPEATS:-2}"
DESMUME_DURATION="${DESMUME_DURATION:-${DURATION:-45}}"
MELONDS_DURATION="${MELONDS_DURATION:-${DURATION:-12}}"
MAX_TIMING_SPREAD_PERCENT="${MAX_TIMING_SPREAD_PERCENT:-0}"
EMULATORS="${EMULATORS:-melonds}"
SKIP_BUILDS="${SKIP_BUILDS:-0}"

profiles=(
    bench-improved-lto
    bench-nds-hw-arm
    bench-nds-hw-arm-fast
    bench-nds-hw-thumb-fast
    bench-nds-hw-thumb-fast-nolto
    bench-nds-hw-arm-canvas-o2
    bench-nds-hw-arm-canvas-thumb-o2
    bench-nds-hw-arm-reciprocal
    bench-nds-hw-arm-backport-length
    bench-nds-hw-arm-backport-gate
    bench-nds-hw-arm-backport-combined
    bench-nds-hw-arm-physics-itcm
    bench-nds-hw-arm-combined-physics-itcm
)

if [[ "$SKIP_BUILDS" != "1" ]]; then
    for profile in "${profiles[@]}"; do
        BUILD_PROFILE="$profile" \
        OUT="$ROOT/research-artifacts/build/$profile" \
            "$ROOT/tools/repro/build_v06_blocksds.sh"
    done
fi

roms=(
    "software-control=$ROOT/research-artifacts/build/bench-improved-lto/pocketphysics-v0.6-blocksds.nds"
    "ds-arm=$ROOT/research-artifacts/build/bench-nds-hw-arm/pocketphysics-v0.6-blocksds.nds"
    "ds-arm-fast=$ROOT/research-artifacts/build/bench-nds-hw-arm-fast/pocketphysics-v0.6-blocksds.nds"
    "ds-thumb-fast=$ROOT/research-artifacts/build/bench-nds-hw-thumb-fast/pocketphysics-v0.6-blocksds.nds"
    "ds-thumb-fast-nolto=$ROOT/research-artifacts/build/bench-nds-hw-thumb-fast-nolto/pocketphysics-v0.6-blocksds.nds"
    "canvas-arm-o2=$ROOT/research-artifacts/build/bench-nds-hw-arm-canvas-o2/pocketphysics-v0.6-blocksds.nds"
    "canvas-thumb-o2=$ROOT/research-artifacts/build/bench-nds-hw-arm-canvas-thumb-o2/pocketphysics-v0.6-blocksds.nds"
    "reciprocal=$ROOT/research-artifacts/build/bench-nds-hw-arm-reciprocal/pocketphysics-v0.6-blocksds.nds"
    "length=$ROOT/research-artifacts/build/bench-nds-hw-arm-backport-length/pocketphysics-v0.6-blocksds.nds"
    "gate=$ROOT/research-artifacts/build/bench-nds-hw-arm-backport-gate/pocketphysics-v0.6-blocksds.nds"
    "combined=$ROOT/research-artifacts/build/bench-nds-hw-arm-backport-combined/pocketphysics-v0.6-blocksds.nds"
    "physics-itcm=$ROOT/research-artifacts/build/bench-nds-hw-arm-physics-itcm/pocketphysics-v0.6-blocksds.nds"
    "selected=$ROOT/research-artifacts/build/bench-nds-hw-arm-combined-physics-itcm/pocketphysics-v0.6-blocksds.nds"
)

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
    MAX_TIMING_SPREAD_PERCENT="$MAX_TIMING_SPREAD_PERCENT" \
    OUT="$BENCHMARK_OUT/$emulator" \
        "$ROOT/tools/repro/benchmark_inrom.sh" "${roms[@]}"
done
