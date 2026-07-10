#!/usr/bin/env bash
set -euo pipefail

OUT="${1:?usage: container_build_v06.sh OUT_DIR}"
ROOT="/workspace"
SRC="$OUT/src"
DEPS="$OUT/deps"
BUILD="$OUT/obj"
ASSETS="$BUILD/assets"
LOGDIR="$OUT/logs"
ROM="$OUT/pocketphysics-v0.6-blocksds.nds"
MAP="$OUT/pocketphysics-v0.6-blocksds.map"
BUILD_PROFILE="${BUILD_PROFILE:-repro}"
LOCKED_PACKAGES_DIR="${LOCKED_PACKAGES_DIR:-/locked-packages}"
PROFILE_LINK=()
CANVAS_ARCH9=()

export BLOCKSDS="${BLOCKSDS:-/opt/wonderful/thirdparty/blocksds/core}"
export BLOCKSDSEXT="${BLOCKSDSEXT:-/opt/wonderful/thirdparty/blocksds/external}"
export WONDERFUL_TOOLCHAIN="${WONDERFUL_TOOLCHAIN:-/opt/wonderful}"
export PATH="$WONDERFUL_TOOLCHAIN/toolchain/gcc-arm-none-eabi/bin:$BLOCKSDS/tools/ndstool:$BLOCKSDS/tools/bin2c:$BLOCKSDS/tools/grit:$PATH"

mkdir -p "$BUILD" "$ASSETS" "$LOGDIR"

wf-pacman -U --noconfirm \
    "$LOCKED_PACKAGES_DIR"/*.pkg.tar.xz \
    > "$LOGDIR/wf-pacman.log"

wf-pacman -Q | grep -E 'blocksds|arm-none-eabi|libpng|zlib|ulibrary' > "$LOGDIR/toolchain-packages.txt"

CC=arm-none-eabi-gcc
CXX=arm-none-eabi-g++
AR=arm-none-eabi-ar
BIN2C="$BLOCKSDS/tools/bin2c/bin2c"
NDSTOOL="$BLOCKSDS/tools/ndstool/ndstool"
OBJCOPY=arm-none-eabi-objcopy

SPECS9="$BLOCKSDS/sys/crts/ds_arm9.specs"
LIBNDS="$BLOCKSDS/libs/libnds"
ULIB="$BLOCKSDSEXT/ulibrary"
SYSROOT="$WONDERFUL_TOOLCHAIN/toolchain/gcc-arm-none-eabi/arm-none-eabi"

COMMON_WARN=(-Wall -Wno-deprecated-declarations -Wno-write-strings -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unused-function)
case "$BUILD_PROFILE" in
    repro)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=()
        PROFILE_OPT=(-O3)
        BOX2D_MODE="float/thumb"
        ;;
    perf)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3/LTO"
        ;;
    perf-o2)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O2 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/thumb/O2"
        ;;
    perf-o3)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/thumb/O3"
        ;;
    perf-os)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-Os -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/thumb/Os"
        ;;
    perf-arm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm"
        ;;
    bench-repro)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-repro"')
        PROFILE_OPT=(-O3)
        BOX2D_MODE="float/thumb benchmark"
        ;;
    bench-modern)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-modern"')
        PROFILE_OPT=(-O3)
        BOX2D_MODE="float/thumb modern-dependency benchmark"
        ;;
    bench-perf)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-perf"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 benchmark"
        ;;
    bench-improved)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-improved"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3/LTO batched-render benchmark"
        ;;
    bench-runtime)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_RUNTIME_FIXES -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-runtime"')
        PROFILE_OPT=(-O3)
        BOX2D_MODE="float/thumb/O3 runtime-fixes benchmark"
        ;;
    bench-runtime-o2)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_RUNTIME_FIXES -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-runtime-o2"')
        PROFILE_OPT=(-O2 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="float/thumb/O2 runtime-fixes benchmark"
        ;;
    bench-runtime-arm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_RUNTIME_FIXES -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-runtime-arm"')
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="float/arm/O3 runtime-fixes benchmark"
        ;;
    bench-fixed-arm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-fixed-arm"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 benchmark"
        ;;
    bench-improved-thumb-o2)
        ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-improved-thumb-o2"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O2 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/thumb/O2 final-feature benchmark"
        ;;
    bench-improved-float-arm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-improved-float-arm"')
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="float/arm/O3 final-feature benchmark"
        ;;
    bench-improved-mixed)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        CANVAS_ARCH9=(-mthumb)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-improved-mixed"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 with Thumb canvas benchmark"
        ;;
    bench-improved-lto)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-improved-lto"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 whole-program LTO benchmark"
        ;;
    bench-backport-length)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-length"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 fixed-estimate backport benchmark"
        ;;
    bench-backport-gate)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-gate"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 velocity-gate backport benchmark"
        ;;
    bench-backport-combined)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-combined"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 combined Box2D backport benchmark"
        ;;
    bench-backport-length-lto)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-length-lto"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO fixed-estimate backport benchmark"
        ;;
    bench-backport-gate-lto)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-gate-lto"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO velocity-gate backport benchmark"
        ;;
    bench-backport-combined-lto)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-combined-lto"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO combined Box2D backport benchmark"
        ;;
    bench-backport-combined-lto-canvas-arm-o2)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        CANVAS_ARCH9=(-O2 -fno-lto)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-combined-lto-canvas-arm-o2"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO combined backport with ARM/O2 canvas"
        ;;
    bench-backport-combined-lto-canvas-thumb-o2)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        CANVAS_ARCH9=(-mthumb -O2 -fno-lto)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-combined-lto-canvas-thumb-o2"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO combined backport with Thumb/O2 canvas"
        ;;
    bench-render-reciprocal-cache)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_RENDER_RECIPROCAL_CACHE -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-render-reciprocal-cache"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 reciprocal-cache benchmark"
        ;;
    bench-final-candidate)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        CANVAS_ARCH9=(-O2 -fno-lto)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_RENDER_RECIPROCAL_CACHE -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-final-candidate"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO combined backports with ARM/O2 cached canvas"
        ;;
    bench-hot-itcm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_HOT_ITCM -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-hot-itcm"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 hot ITCM benchmark"
        ;;
    bench-backport-combined-itcm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_HOT_ITCM -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-combined-itcm"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 combined backports with hot ITCM benchmark"
        ;;
    bench-backport-combined-lto-itcm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_HOT_ITCM -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-combined-lto-itcm"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO combined backports with hot ITCM benchmark"
        ;;
    bench-physics-itcm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_PHYSICS_ITCM -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-physics-itcm"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 physics-only ITCM benchmark"
        ;;
    bench-backport-combined-physics-itcm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_PHYSICS_ITCM -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-combined-physics-itcm"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        BOX2D_MODE="fixed-point/arm/O3 combined backports with physics-only ITCM benchmark"
        ;;
    bench-backport-combined-lto-physics-itcm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_PHYSICS_ITCM -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-backport-combined-lto-physics-itcm"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED -DPP_BOX2D_LENGTH_FIXED_ESTIMATE -DPP_BOX2D_VELOCITY_GATE)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO combined backports with physics-only ITCM benchmark"
        ;;
    bench-lto-physics-itcm)
        ARCH9=(-marm -mcpu=arm946e-s+nofp)
        AR=arm-none-eabi-gcc-ar
        PROFILE_DEFS=(-DPP_PERF_PROFILE -DPP_RUNTIME_FIXES -DPP_RENDER_BATCHED -DPP_PHYSICS_ITCM -DPP_BENCHMARK '-DPP_BENCHMARK_LABEL="bench-lto-physics-itcm"' -DPP_BOX2D_FIXED -DTARGET_FLOAT32_IS_FIXED)
        PROFILE_OPT=(-O3 -flto -fomit-frame-pointer -fno-unwind-tables -fno-asynchronous-unwind-tables)
        PROFILE_LINK=(-flto)
        BOX2D_MODE="fixed-point/arm/O3 LTO with physics-only ITCM benchmark"
        ;;
    *)
        echo "Unknown BUILD_PROFILE: $BUILD_PROFILE" >&2
        exit 1
        ;;
esac

COMMON_DEFS=(-D__NDS__ -D__BLOCKSDS__ -DARM9 -DNDEBUG "${PROFILE_DEFS[@]}")
REPRO_MAPS=(
    -ffile-prefix-map="$OUT=/pocketphysics-build"
    -fmacro-prefix-map="$OUT=/pocketphysics-build"
    -ffile-prefix-map="$ROOT=/workspace"
    -fmacro-prefix-map="$ROOT=/workspace"
)
COMMON_INC=(
    -I"$SRC/arm9/source"
    -I"$SRC/arm9/source/tobkit"
    -I"$SRC/generic"
    -I"$BUILD/generated"
    -I"$ASSETS"
    -I"$DEPS/box2d-2.0.1/Include"
    -I"$DEPS/box2d-2.0.1/Source/Common"
    -I"$DEPS/tinyxml-2.6.2"
    -I"$DEPS/convex-decomposition"
    -I"$LIBNDS/include"
    -I"$ULIB/include"
    -I"$SYSROOT/include"
    -I"$SYSROOT/include/libpng16"
)

CFLAGS9=("${COMMON_WARN[@]}" "${COMMON_INC[@]}" "${COMMON_DEFS[@]}" "${ARCH9[@]}" "${PROFILE_OPT[@]}" "${REPRO_MAPS[@]}" -ffunction-sections -fdata-sections -specs="$SPECS9" -include "$ROOT/tools/repro/compat/pp_blocksds_compat.h")
CXXFLAGS9=("${CFLAGS9[@]}" -fno-exceptions -fno-rtti -include string.h -include float.h)

BOX2D_CXXFLAGS=("${COMMON_WARN[@]}" -I"$DEPS/box2d-2.0.1/Include" -I"$DEPS/box2d-2.0.1/Source" -I"$LIBNDS/include" "${COMMON_DEFS[@]}" "${ARCH9[@]}" "${PROFILE_OPT[@]}" "${REPRO_MAPS[@]}" -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -specs="$SPECS9" -include string.h -include float.h)
TINYXML_CXXFLAGS=("${COMMON_WARN[@]}" -I"$DEPS/tinyxml-2.6.2" -DNDEBUG "${ARCH9[@]}" "${PROFILE_OPT[@]}" "${REPRO_MAPS[@]}" -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -specs="$SPECS9")

compile_c() {
    local src="$1"
    local rel="${src#$OUT/}"
    rel="${rel#$ROOT/}"
    local obj="$BUILD/${rel//\//__}.o"
    mkdir -p "$(dirname "$obj")"
    echo "CC  $rel"
    "$CC" "${CFLAGS9[@]}" -MMD -MP -c "$src" -o "$obj"
    OBJS+=("$obj")
}

compile_cpp() {
    local src="$1"
    local rel="${src#$OUT/}"
    rel="${rel#$ROOT/}"
    local obj="$BUILD/${rel//\//__}.o"
    mkdir -p "$(dirname "$obj")"
    echo "CXX $rel"
    local source_arch=()
    if [ "${#CANVAS_ARCH9[@]}" -gt 0 ] && [ "${src##*/}" = "canvas.cpp" ]; then
        source_arch=("${CANVAS_ARCH9[@]}")
    fi
    "$CXX" "${CXXFLAGS9[@]}" "${source_arch[@]}" -MMD -MP -c "$src" -o "$obj"
    OBJS+=("$obj")
}

echo "Converting binary assets"
find "$SRC/arm9/data" -type f | sort | while read -r asset; do
    "$BIN2C" "$asset" "$ASSETS"
done

echo "Building Box2D 2.0.1 $BOX2D_MODE library"
BOX2D_OBJS=()
while read -r src; do
    rel="${src#$DEPS/box2d-2.0.1/}"
    obj="$BUILD/box2d/${rel//\//__}.o"
    mkdir -p "$(dirname "$obj")"
    "$CXX" "${BOX2D_CXXFLAGS[@]}" -MMD -MP -c "$src" -o "$obj"
    BOX2D_OBJS+=("$obj")
done < <(find "$DEPS/box2d-2.0.1/Source" -type f -name '*.cpp' | sort)
"$AR" rcs "$BUILD/libbox2d.a" "${BOX2D_OBJS[@]}"

echo "Building TinyXML 2.6.2 library"
TINYXML_OBJS=()
for src in tinystr.cpp tinyxml.cpp tinyxmlerror.cpp tinyxmlparser.cpp; do
    obj="$BUILD/tinyxml/$src.o"
    mkdir -p "$(dirname "$obj")"
    "$CXX" "${TINYXML_CXXFLAGS[@]}" -MMD -MP -c "$DEPS/tinyxml-2.6.2/$src" -o "$obj"
    TINYXML_OBJS+=("$obj")
done
"$AR" rcs "$BUILD/libtinyxml.a" "${TINYXML_OBJS[@]}"

OBJS=()

for src in \
    "$SRC/arm9/source/Circle.cpp" \
    "$SRC/arm9/source/PPBoundaryListener.cpp" \
    "$SRC/arm9/source/PPDestructionListener.cpp" \
    "$SRC/arm9/source/Pin.cpp" \
    "$SRC/arm9/source/canvas.cpp" \
    "$SRC/arm9/source/linear_freq_table.c" \
    "$SRC/arm9/source/main.cpp" \
    "$SRC/arm9/source/polygon.cpp" \
    "$SRC/arm9/source/sample.cpp" \
    "$SRC/arm9/source/state.cpp" \
    "$SRC/arm9/source/thing.cpp" \
    "$SRC/arm9/source/wav.cpp" \
    "$SRC/arm9/source/world.cpp" \
    "$DEPS/convex-decomposition/b2Polygon.cpp" \
    "$DEPS/convex-decomposition/b2Triangle.cpp" \
    "$ROOT/tools/repro/compat/v06_sound_compat.cpp"; do
    case "$src" in
        *.c) compile_c "$src" ;;
        *.cpp) compile_cpp "$src" ;;
    esac
done

if [ -f "$SRC/arm9/source/pp_benchmark.cpp" ]; then
    compile_cpp "$SRC/arm9/source/pp_benchmark.cpp"
fi

while read -r src; do
    compile_cpp "$src"
done < <(find "$SRC/arm9/source/tobkit" -maxdepth 1 -type f -name '*.cpp' | sort)

while read -r src; do
    compile_c "$src"
done < <(find "$SRC/arm9/source/tobkit" -maxdepth 1 -type f -name '*.c' | sort)

while read -r src; do
    compile_c "$src"
done < <(find "$ASSETS" -maxdepth 1 -type f -name '*.c' | sort)

echo "Linking ARM9 ELF"
"$CXX" "${ARCH9[@]}" "${PROFILE_LINK[@]}" -specs="$SPECS9" \
    -Wl,-Map,"$MAP" -Wl,--gc-sections \
    -L"$BUILD" -L"$LIBNDS/lib" -L"$ULIB/lib" -L"$SYSROOT/lib" \
    -o "$OUT/pocketphysics-v0.6-blocksds.elf" \
    "${OBJS[@]}" \
    -Wl,--start-group -lbox2d -ltinyxml -lul -lpng16 -lz -lnds9 -lstdc++ -lc -Wl,--end-group

"$OBJCOPY" -O binary "$OUT/pocketphysics-v0.6-blocksds.elf" "$OUT/pocketphysics-v0.6-blocksds.arm9"

echo "Assembling NDS ROM"
"$NDSTOOL" -c "$ROM" \
    -7 "$BLOCKSDS/sys/default_arm7/arm7.elf" \
    -9 "$OUT/pocketphysics-v0.6-blocksds.elf" \
    -b "$SRC/ppicon.bmp" "Pocket Physics;v0.6 BlocksDS;0xtob/Codex"

arm-none-eabi-size "$OUT/pocketphysics-v0.6-blocksds.elf" > "$LOGDIR/arm9-size.txt"
