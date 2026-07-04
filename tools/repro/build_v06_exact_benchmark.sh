#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/.codex-artifacts/build/bench-historical}"
BASE_OUT="$OUT/base"
TOOLCHAIN="${DEVKITARM_R21_ARCHIVE:-$ROOT/.codex-artifacts/downloads/devkitARM_r21linux.tar.bz2}"
IMAGE="${EXACT_IMAGE:-pocketphysics-devkitarm-r21-exact}"
OVERLAY_ADDRESS=0x02300000

OUT="$BASE_OUT" "$ROOT/tools/repro/build_v06_exact.sh"

docker build -q -t "$IMAGE" -f "$ROOT/tools/repro/exact/Dockerfile" "$ROOT/tools/repro/exact" >/dev/null
container="$(docker create "$IMAGE" sleep infinity)"
cleanup() {
    docker rm -f "$container" >/dev/null 2>&1 || true
}
trap cleanup EXIT
docker start "$container" >/dev/null

docker cp "$TOOLCHAIN" "$container:/work/devkitARM_r21linux.tar.bz2"
docker cp "$ROOT/tools/repro/exact_overlay/." "$container:/work/overlay"
docker cp "$BASE_OUT/pocketphysics.arm9" "$container:/work/base.arm9"
docker cp "$BASE_OUT/pocketphysics.arm7" "$container:/work/base.arm7"
docker cp "$ROOT/ppicon.bmp" "$container:/work/ppicon.bmp"

docker exec "$container" bash -lc '
    set -euo pipefail
    mkdir -p /opt/devkitpro /work/out
    tar -xjf /work/devkitARM_r21linux.tar.bz2 -C /opt/devkitpro
    export DEVKITARM=/opt/devkitpro/devkitARM
    export PATH=$DEVKITARM/bin:$PATH
    arm-eabi-g++ -O2 -mthumb -mthumb-interwork -march=armv5te -mtune=arm946e-s \
        -fomit-frame-pointer -ffunction-sections -fdata-sections \
        -fno-exceptions -fno-rtti -fno-builtin -nostdlib -nostartfiles \
        -c /work/overlay/benchmark_overlay.cpp -o /work/out/benchmark_overlay.o
    arm-eabi-as -mthumb-interwork /work/overlay/nocash_debug.S -o /work/out/nocash_debug.o
    arm-none-eabi-ld -T /work/overlay/overlay.ld --gc-sections \
        /work/out/benchmark_overlay.o /work/out/nocash_debug.o \
        -o /work/out/overlay.elf
    arm-none-eabi-objcopy -O binary /work/out/overlay.elf /work/out/overlay.bin
    arm-none-eabi-nm -n /work/out/overlay.elf > /work/out/overlay.nm
    if arm-none-eabi-nm -u /work/out/overlay.elf | grep -q .; then
        arm-none-eabi-nm -u /work/out/overlay.elf
        exit 1
    fi
'

entry="$(docker exec "$container" awk '$3 == "benchmark_entry" {print "0x" $1}' /work/out/overlay.nm)"
if [ -z "$entry" ]; then
    echo "benchmark_entry missing from overlay" >&2
    exit 1
fi

docker cp "$container:/work/out/overlay.bin" "$OUT/overlay.bin"
docker cp "$container:/work/out/overlay.elf" "$OUT/overlay.elf"
python3 "$ROOT/tools/repro/instrument_exact_arm9.py" \
    "$BASE_OUT/pocketphysics.arm9" "$OUT/overlay.bin" "$OUT/pocketphysics-bench-historical.arm9" \
    --overlay-address "$OVERLAY_ADDRESS" --entry-address "$entry"

docker cp "$OUT/pocketphysics-bench-historical.arm9" "$container:/work/instrumented.arm9"
docker exec "$container" bash -lc '
    export PATH=/opt/devkitpro/devkitARM/bin:$PATH
    cd /work/out
    ndstool -c pocketphysics-bench-historical.nds \
        -7 /work/base.arm7 \
        -9 /work/instrumented.arm9 \
        -b /work/ppicon.bmp "Pocket Physics"
'
docker cp "$container:/work/out/pocketphysics-bench-historical.nds" "$OUT/pocketphysics-bench-historical.nds"

shasum -a 256 "$OUT/pocketphysics-bench-historical.nds"
