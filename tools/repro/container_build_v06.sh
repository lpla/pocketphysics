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

export BLOCKSDS="${BLOCKSDS:-/opt/wonderful/thirdparty/blocksds/core}"
export BLOCKSDSEXT="${BLOCKSDSEXT:-/opt/wonderful/thirdparty/blocksds/external}"
export WONDERFUL_TOOLCHAIN="${WONDERFUL_TOOLCHAIN:-/opt/wonderful}"
export PATH="$WONDERFUL_TOOLCHAIN/toolchain/gcc-arm-none-eabi/bin:$BLOCKSDS/tools/ndstool:$BLOCKSDS/tools/bin2c:$BLOCKSDS/tools/grit:$PATH"

mkdir -p "$BUILD" "$ASSETS" "$LOGDIR"

wf-pacman -Sy --noconfirm \
    blocksds-toolchain \
    blocksds-ulibrary \
    toolchain-gcc-arm-none-eabi-libpng16 \
    toolchain-gcc-arm-none-eabi-zlib \
    > "$LOGDIR/wf-pacman.log"

wf-pacman -Q | grep -E 'blocksds|arm-none-eabi|libpng|zlib|ulibrary' > "$LOGDIR/toolchain-packages.txt"

CC=arm-none-eabi-gcc
CXX=arm-none-eabi-g++
AR=arm-none-eabi-ar
BIN2C="$BLOCKSDS/tools/bin2c/bin2c"
NDSTOOL="$BLOCKSDS/tools/ndstool/ndstool"
OBJCOPY=arm-none-eabi-objcopy

ARCH9=(-mthumb -mcpu=arm946e-s+nofp)
SPECS9="$BLOCKSDS/sys/crts/ds_arm9.specs"
LIBNDS="$BLOCKSDS/libs/libnds"
ULIB="$BLOCKSDSEXT/ulibrary"
SYSROOT="$WONDERFUL_TOOLCHAIN/toolchain/gcc-arm-none-eabi/arm-none-eabi"

COMMON_WARN=(-Wall -Wno-deprecated-declarations -Wno-write-strings -Wno-unused-variable -Wno-unused-but-set-variable -Wno-unused-function)
COMMON_DEFS=(-D__NDS__ -D__BLOCKSDS__ -DARM9 -DNDEBUG)
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

CFLAGS9=("${COMMON_WARN[@]}" "${COMMON_INC[@]}" "${COMMON_DEFS[@]}" "${ARCH9[@]}" -O3 "${REPRO_MAPS[@]}" -ffunction-sections -fdata-sections -specs="$SPECS9" -include "$ROOT/tools/repro/compat/pp_blocksds_compat.h")
CXXFLAGS9=("${CFLAGS9[@]}" -fno-exceptions -fno-rtti -include string.h -include float.h)

BOX2D_CXXFLAGS=("${COMMON_WARN[@]}" -I"$DEPS/box2d-2.0.1/Include" -I"$DEPS/box2d-2.0.1/Source" -I"$LIBNDS/include" "${COMMON_DEFS[@]}" "${ARCH9[@]}" -O3 "${REPRO_MAPS[@]}" -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -specs="$SPECS9" -include string.h -include float.h)
TINYXML_CXXFLAGS=("${COMMON_WARN[@]}" -I"$DEPS/tinyxml-2.6.2" -DNDEBUG "${ARCH9[@]}" -O3 "${REPRO_MAPS[@]}" -ffunction-sections -fdata-sections -fno-exceptions -fno-rtti -specs="$SPECS9")

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
    "$CXX" "${CXXFLAGS9[@]}" -MMD -MP -c "$src" -o "$obj"
    OBJS+=("$obj")
}

echo "Converting binary assets"
find "$SRC/arm9/data" -type f | sort | while read -r asset; do
    "$BIN2C" "$asset" "$ASSETS"
done

echo "Building Box2D 2.0.1 float library"
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
"$CXX" "${ARCH9[@]}" -specs="$SPECS9" \
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
