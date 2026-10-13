#!/usr/bin/env bash
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/benchmarks/runtime-loop}"
REPEATS="${REPEATS:-3}"
DURATION="${MELONDS_RUNTIME_DURATION:-30}"
specs=()
manifest="$ROOT/research-artifacts/test/runtime-independent-builds.csv"
mkdir -p "$(dirname "$manifest")"
printf 'profile,rom_sha256,elf_sha256,independent_match\n' > "$manifest"
for profile in runtime-modern runtime-modern-fixed-ds runtime-improved; do
    BUILD_PROFILE="$profile" OUT="$ROOT/research-artifacts/build/$profile" \
        "$ROOT/tools/repro/build_v06_blocksds.sh"
    specs+=("$profile=$ROOT/research-artifacts/build/$profile/pocketphysics-v0.6-blocksds.nds")
    first="$ROOT/research-artifacts/build/$profile"
    second="$ROOT/research-artifacts/build/$profile-independent"
    BUILD_PROFILE="$profile" OUT="$second" "$ROOT/tools/repro/build_v06_blocksds.sh"
    cmp "$first/pocketphysics-v0.6-blocksds.nds" "$second/pocketphysics-v0.6-blocksds.nds"
    cmp "$first/pocketphysics-v0.6-blocksds.elf" "$second/pocketphysics-v0.6-blocksds.elf"
    printf '%s,%s,%s,1\n' "$profile" \
        "$(shasum -a 256 "$first/pocketphysics-v0.6-blocksds.nds" | awk '{print $1}')" \
        "$(shasum -a 256 "$first/pocketphysics-v0.6-blocksds.elf" | awk '{print $1}')" >> "$manifest"
done
INROM_PROTOCOL=runtime EMULATOR=melonds REPEATS="$REPEATS" DURATION="$DURATION" OUT="$OUT" \
    "$ROOT/tools/repro/benchmark_inrom.sh" "${specs[@]}"
cp "$manifest" "$OUT/independent-builds.csv"

profile=runtime-improved-irq-control
BUILD_PROFILE="$profile" OUT="$ROOT/research-artifacts/build/$profile" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"
set +e
INROM_PROTOCOL=runtime EMULATOR=melonds REPEATS=1 DURATION="$DURATION" OUT="$OUT/irq-negative-control" \
    "$ROOT/tools/repro/benchmark_inrom.sh" \
    "$profile=$ROOT/research-artifacts/build/$profile/pocketphysics-v0.6-blocksds.nds" \
    > "$OUT/irq-negative-control.driver.log" 2>&1
status="$?"
set -e
if [[ "$status" != 1 ]]; then
    echo "Expected arithmetic-control rejection, got status $status" >&2
    exit 1
fi
PYTHONPYCACHEPREFIX="$ROOT/research-artifacts/test/runtime-pycache" \
    python3 "$ROOT/tools/repro/check_runtime_negative_control.py" "$OUT/irq-negative-control"
echo "Normal-loop replay and hardware-arithmetic negative control passed."
