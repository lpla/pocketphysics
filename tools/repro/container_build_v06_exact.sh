#!/usr/bin/env bash
set -euo pipefail

ROOT=/workspace
WORK=/work
SRC="$WORK/src"
RECON="$ROOT/research/reconstruction/v06"
BUILD="$WORK/build"
OUT="$WORK/out"
SDK_R20=/opt/pocketphysics-r20/devkitPro
DEVKITPRO=/opt/pocketphysics-r21/devkitPro
DEVKITARM="$DEVKITPRO/devkitARM"
TOOL="$DEVKITARM/bin/arm-eabi"

EXPECTED_BASE_ARM9=4eb421ef565b8a725d8fb7270e5f7102b968542f36c4b91b4ebc5eaaf7e06526
EXPECTED_ARM9=0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89
EXPECTED_ARM7=b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec
EXPECTED_ROM=9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64

export DEVKITPRO DEVKITARM
export PATH="$DEVKITARM/bin:$PATH"

check_hash() {
    local path="$1"
    local expected="$2"
    local actual
    actual="$(sha256sum "$path" | awk '{print $1}')"
    if [ "$actual" != "$expected" ]; then
        printf 'SHA-256 mismatch for %s\nexpected: %s\nactual:   %s\n' \
            "$path" "$expected" "$actual" >&2
        exit 1
    fi
}

rm -rf "$BUILD" "$OUT" /opt/pocketphysics-r20 /opt/pocketphysics-r21
mkdir -p "$BUILD" "$OUT" /opt/pocketphysics-r20 /opt/pocketphysics-r21

tar -xzf "$WORK/inputs/devkitPro-20070503-linux.tar.gz" -C /opt/pocketphysics-r20
cp -a "$SDK_R20" /opt/pocketphysics-r21/devkitPro
rm -rf "$DEVKITPRO/devkitARM"
tar -xjf "$WORK/inputs/devkitARM_r21linux.tar.bz2" -C "$DEVKITPRO"

printf '%s\n' '[1/8] Building libnds from its historical source revision with devkitARM r20'
mkdir -p "$BUILD/libnds"
tar -xzf "$WORK/inputs/libnds-source.tar.gz" -C "$BUILD/libnds" --strip-components=1
make -C "$BUILD/libnds" \
    DEVKITPRO="$SDK_R20" \
    DEVKITARM="$SDK_R20/devkitARM" \
    lib/libnds7.a lib/libnds9.a
LIBNDS7_RECON="$BUILD/libnds7-reconstructed"
mkdir -p "$LIBNDS7_RECON"
for member in card clock touch userSettings; do
    "$TOOL-gcc" -w -c -mcpu=arm7tdmi -mthumb-interwork \
        "$RECON/dependencies/libnds/reconstructed/$member.S" \
        -o "$LIBNDS7_RECON/$member.o"
done
"$TOOL-ar" r "$BUILD/libnds/lib/libnds7.a" \
    "$LIBNDS7_RECON/card.o" "$LIBNDS7_RECON/clock.o" \
    "$LIBNDS7_RECON/touch.o" "$LIBNDS7_RECON/userSettings.o"
"$TOOL-ranlib" "$BUILD/libnds/lib/libnds7.a"
LIBNDS9_RECON="$BUILD/libnds9-reconstructed"
mkdir -p "$LIBNDS9_RECON"
for member in card console; do
    "$TOOL-gcc" -w -c -mcpu=arm946e-s -mthumb-interwork \
        "$RECON/dependencies/libnds/reconstructed/${member}9.S" \
        -o "$LIBNDS9_RECON/$member.o"
done
"$TOOL-ar" r "$BUILD/libnds/lib/libnds9.a" \
    "$LIBNDS9_RECON/card.o" "$LIBNDS9_RECON/console.o"
"$TOOL-ranlib" "$BUILD/libnds/lib/libnds9.a"
cp "$BUILD/libnds/lib/libnds7.a" "$DEVKITPRO/libnds/lib/libnds7.a"
cp "$BUILD/libnds/lib/libnds9.a" "$DEVKITPRO/libnds/lib/libnds9.a"
cp -a "$RECON/dependencies/libnds/include/." "$DEVKITPRO/libnds/include/"

printf '%s\n' '[2/8] Assembling historical libpng and zlib archives from mnemonic source'
PNG_BUILD="$BUILD/libpng"
ZLIB_BUILD="$BUILD/zlib"
mkdir -p "$PNG_BUILD" "$ZLIB_BUILD"
png_members=(png pngset pngget pngrutil pngtrans pngwutil pngread pngrio pngwio pngwrite pngrtran pngwtran pngmem pngerror pngpread)
zlib_members=(adler32 compress crc32 gzio uncompr deflate trees zutil inflate infback inftrees inffast)
for member in "${png_members[@]}"; do
    "$TOOL-gcc" -w -c -mcpu=arm9tdmi -mthumb-interwork \
        "$RECON/dependencies/libpng/$member.S" -o "$PNG_BUILD/$member.o"
done
for member in "${zlib_members[@]}"; do
    "$TOOL-gcc" -w -c -mcpu=arm9tdmi -mthumb-interwork \
        "$RECON/dependencies/zlib/$member.S" -o "$ZLIB_BUILD/$member.o"
done
png_objects=()
for member in "${png_members[@]}"; do png_objects+=("$PNG_BUILD/$member.o"); done
zlib_objects=()
for member in "${zlib_members[@]}"; do zlib_objects+=("$ZLIB_BUILD/$member.o"); done
rm -f "$DEVKITPRO/libnds/lib/libpng.a" "$DEVKITPRO/libnds/lib/libz.a"
"$TOOL-ar" crs "$DEVKITPRO/libnds/lib/libpng.a" "${png_objects[@]}"
"$TOOL-ar" crs "$DEVKITPRO/libnds/lib/libz.a" "${zlib_objects[@]}"

printf '%s\n' '[3/8] Building TinyXML 2.5.3 from C++ source'
TINYXML="$RECON/dependencies/tinyxml"
TINYXML_BUILD="$BUILD/tinyxml"
mkdir -p "$TINYXML_BUILD"
tinyxml_flags=(
    -g -Wall -O2 -march=armv5te -mtune=arm946e-s
    -fomit-frame-pointer -ffast-math -mthumb -mthumb-interwork
    -fno-rtti -fno-exceptions -I"$TINYXML/include"
)
tinyxml_members=(tinystr tinyxml tinyxmlerror tinyxmlparser)
for member in "${tinyxml_members[@]}"; do
    "$TOOL-g++" "${tinyxml_flags[@]}" -c "$TINYXML/source/$member.cpp" \
        -o "$TINYXML_BUILD/$member.o"
done
tinyxml_objects=()
for member in "${tinyxml_members[@]}"; do tinyxml_objects+=("$TINYXML_BUILD/$member.o"); done
for member in tinyxml tinyxmlparser; do
    "$TOOL-gcc" -w -c -mcpu=arm946e-s -mthumb-interwork \
        "$TINYXML/reconstructed/$member.S" -o "$TINYXML_BUILD/$member.o"
done
rm -f "$DEVKITPRO/libnds/lib/libtinyxml.a"
"$TOOL-ar" cr "$DEVKITPRO/libnds/lib/libtinyxml.a" "${tinyxml_objects[@]}"
"$TOOL-ranlib" "$DEVKITPRO/libnds/lib/libtinyxml.a"
cp "$TINYXML/include/tinystr.h" "$TINYXML/include/tinyxml.h" \
    "$DEVKITPRO/libnds/include/"

printf '%s\n' '[4/8] Building uLibrary from C and reviewed assembly source'
UL="$BUILD/ulibrary"
cp -a "$RECON/dependencies/ulibrary/base" "$UL"
mkdir -p "$DEVKITPRO/libnds/include/ulib"
cp -a "$RECON/dependencies/ulibrary/include/." "$DEVKITPRO/libnds/include/ulib/"
make -C "$UL" clean
ul_o2_flags=(
    -g -Wall -O2 -mcpu=arm946e-s -mtune=arm946e-s
    -fomit-frame-pointer -ffast-math -mthumb-interwork -DARM9
    -I"$DEVKITPRO/libnds/include" -I"$UL"
)
UL_PAL="$RECON/dependencies/ulibrary/variants/pal"
UL_VRAM="$RECON/dependencies/ulibrary/variants/vram"
"$TOOL-gcc" "${ul_o2_flags[@]}" -I"$UL_PAL" -c \
    "$UL_PAL/texPalManager.c" -o "$UL/texPalManager.o"
"$TOOL-gcc" "${ul_o2_flags[@]}" -I"$UL_VRAM" -c \
    "$UL_VRAM/texVramManager.c" -o "$UL/texVramManager.o"
make -C "$UL" libul.a
"$TOOL-gcc" "${ul_o2_flags[@]}" -c "$UL/drawing.c" -o "$UL/drawing.o"
"$TOOL-gcc" "${ul_o2_flags[@]}" -I"$UL_PAL" -c \
    "$UL_PAL/texPalManager.c" -o "$UL/texPalManager.o"
"$TOOL-gcc" "${ul_o2_flags[@]}" -I"$UL_VRAM" -c \
    "$UL_VRAM/texVramManager.c" -o "$UL/texVramManager.o"
"$TOOL-gcc" "${ul_o2_flags[@]}" -c \
    "$RECON/dependencies/ulibrary/ulDrawImageQuad.c" -o "$UL/ulDrawImageQuad.o"
"$TOOL-gcc" -c -mcpu=arm946e-s -mtune=arm946e-s -mthumb-interwork \
    "$RECON/dependencies/ulibrary/ulConvertImageToPalettedAlpha.S" \
    -o "$UL/ulConvertImageToPalettedAlpha.o"
"$TOOL-gcc" -c -mcpu=arm946e-s -mtune=arm946e-s -mthumb-interwork \
    "$RECON/dependencies/ulibrary/libLoadPng.S" -o "$UL/libLoadPng-asm.o"
"$TOOL-ar" r "$UL/libul.a" \
    "$UL/drawing.o" "$UL/texPalManager.o" "$UL/texVramManager.o" \
    "$UL/ulConvertImageToPalettedAlpha.o"

UL_LAYOUT="$BUILD/ulibrary-layout"
mkdir -p "$UL_LAYOUT"
(
    cd "$UL_LAYOUT"
    "$TOOL-ar" x "$UL/libul.a"
    cp "$UL/ulDrawImageQuad.o" .
    cp "$UL/libLoadPng-asm.o" .
    "$TOOL-ld" -r -o ulib-historical-layout.o \
        ulDrawImageQuad.o ulDrawImage.o ulCreateImagePalette.o ulDrawFillRect.o \
        ulLoadImageFilePNG.o glWrapper.o libLoadPng-asm.o
)
"$TOOL-ar" d "$UL/libul.a" \
    glWrapper.o libLoadPng.o ulDrawImage.o ulCreateImagePalette.o \
    ulDrawFillRect.o ulLoadImageFilePNG.o ulDrawImageQuad.o
"$TOOL-ar" r "$UL/libul.a" "$UL_LAYOUT/ulib-historical-layout.o"
"$TOOL-ranlib" "$UL/libul.a"
cp "$UL/libul.a" "$DEVKITPRO/libnds/lib/libul.a"

printf '%s\n' '[5/8] Building libfat from C and assembly source'
FAT="$BUILD/libfat"
cp -a "$RECON/dependencies/libfat" "$FAT"
cp "$FAT/directory.c" "$FAT/source/directory.c"
make -C "$FAT/nds" TOPDIR="$FAT" BUILD=release
FAT_OBJECTS="$FAT/nds/release"
"$TOOL-gcc" -c -mcpu=arm946e-s -mtune=arm946e-s -mthumb-interwork \
    "$FAT/illegal-characters.S" -o "$FAT_OBJECTS/libfat-illegal-characters.o"
"$TOOL-ld" -r -o "$FAT_OBJECTS/io_m3_historical.o" \
    "$FAT_OBJECTS/io_m3cf.o" "$FAT_OBJECTS/io_m3_common.o" "$FAT_OBJECTS/io_m3sd.o"
"$TOOL-ld" -r -o "$FAT_OBJECTS/io_sc_historical.o" \
    "$FAT_OBJECTS/io_sccf.o" "$FAT_OBJECTS/io_sc_common.o" "$FAT_OBJECTS/io_scsd.o"
fat_members=(
    libfat.o partition.o disc.o io_m3_historical.o io_mpcf.o io_njsd.o
    io_nmmc.o io_sc_historical.o io_sd_common.o io_dldi.o io_scsd_s.o
    cache.o fatdir.o fatfile.o file_allocation_table.o filetime.o
    io_cf_common.o directory.o libfat-illegal-characters.o io_efa2.o io_fcsr.o
)
fat_objects=()
for member in "${fat_members[@]}"; do fat_objects+=("$FAT_OBJECTS/$member"); done
rm -f "$DEVKITPRO/libnds/lib/libfat.a"
"$TOOL-ar" rcs "$DEVKITPRO/libnds/lib/libfat.a" "${fat_objects[@]}"

printf '%s\n' '[6/8] Building the recovered Box2D r132/r134 hybrid from C++ source'
BOX_ROOT="$BUILD/box2d"
BOX="$BOX_ROOT/Source"
mkdir -p "$BOX"
cp -a "$RECON/dependencies/box2d/." "$BOX/"
mv "$BOX/Include" "$BOX_ROOT/Include"
make -C "$BOX" clean
make -C "$BOX" Gen/nds-fixed/lib/libbox2d.a
box_flags=(
    -g -O2 -fomit-frame-pointer -ffast-math
    -march=armv5te -mtune=arm946e-s -mthumb-interwork
    -DARM9 -fno-rtti -fno-exceptions
    -DTARGET_FLOAT32_IS_FIXED -DTARGET_IS_NDS
    -I"$DEVKITPRO/libnds/include" -I"$BOX/Include"
    -I"$BOX/Common" -I"$BOX/Contrib" -ffunction-sections
)
cp "$BOX/reconstructed/trace-standalone.cpp" "$BOX/Contrib/trace-standalone.cpp"
cp "$BOX/Contrib/b2Polygon.h" "$BUILD/b2Polygon-normal-state.h"
patch -d "$BOX" -p1 < "$BOX/reconstructed/trace-compiler-state.patch"
"$TOOL-gcc" -w -c -mcpu=arm946e-s -mthumb-interwork \
    "$BOX/reconstructed/b2Polygon-donor.S" -o /tmp/core-donor-labels.o
"$TOOL-gcc" -w -c -mcpu=arm946e-s -mthumb-interwork \
    "$BOX/reconstructed/b2Polygon-decompose.S" -o /tmp/core-cfg-exact-ext.o
"$TOOL-g++" "${box_flags[@]}" -c "$BOX/Contrib/trace-standalone.cpp" \
    -o /tmp/trace-standalone.o
cp "$BUILD/b2Polygon-normal-state.h" "$BOX/Contrib/b2Polygon.h"
cp /tmp/core-donor-labels.o /tmp/core-donor-labels-global-notarget.o
"$TOOL-objcopy" --globalize-symbol=b2_angularSlop \
    /tmp/core-donor-labels-global-notarget.o
"$TOOL-objcopy" \
    --strip-symbol=_Z23DecomposeConvexAndAddToP7b2WorldP9b2PolygonP6b2BodyP12b2PolygonDef \
    /tmp/core-donor-labels-global-notarget.o
"$TOOL-ld" -r --allow-multiple-definition \
    -T "$BOX/reconstructed/composite-cfg-exact.ld" \
    -o /tmp/b2Polygon.o \
    /tmp/core-donor-labels-global-notarget.o \
    /tmp/core-cfg-exact-ext.o \
    /tmp/trace-standalone.o
BOX_ARCHIVE="$BOX/Gen/nds-fixed/lib/libbox2d.a"
"$TOOL-ar" r "$BOX_ARCHIVE" /tmp/b2Polygon.o
"$TOOL-ranlib" "$BOX_ARCHIVE"
cp "$BOX_ARCHIVE" "$DEVKITPRO/libnds/lib/libbox2d2.a"

printf '%s\n' '[7/8] Clean-building both Nintendo DS processors from application source'
rm -rf "$SRC/box2d"
ln -s "$BOX_ROOT" "$SRC/box2d"
export TOPDIR="$SRC" TARGET=src
make -C "$SRC/arm7" clean
make -C "$SRC/arm7"
make -C "$SRC/arm9" clean
historical_objects="$(tr '\n' ' ' < "$RECON/arm9/object-order.txt")"
make -C "$SRC/arm9" OFILES="$historical_objects"
check_hash "$SRC/src.arm7" "$EXPECTED_ARM7"
check_hash "$SRC/src.arm9" "$EXPECTED_BASE_ARM9"

printf '%s\n' '[8/8] Linking reconstructed sections and packaging the exact ROM'
"$TOOL-gcc" -c -mcpu=arm9tdmi -mthumb-interwork \
    "$RECON/arm9/reconstructed-regions.S" -o "$BUILD/reconstructed-regions.o"
"$TOOL-ld" -T "$RECON/arm9/reconstructed-regions.ld" \
    -o "$BUILD/reconstructed-regions.elf" "$BUILD/reconstructed-regions.o"
python3 "$ROOT/tools/repro/apply_reconstructed_sections.py" \
    "$SRC/src.arm9" "$BUILD/reconstructed-regions.elf" "$OUT/pocketphysics.arm9" \
    --base-address 0x02000000 \
    --expect-base-sha256 "$EXPECTED_BASE_ARM9" \
    --expect-output-sha256 "$EXPECTED_ARM9"
cp "$SRC/src.arm9" "$OUT/pocketphysics.base.arm9"
cp "$SRC/src.arm7" "$OUT/pocketphysics.arm7"
cp "$SRC/arm9/src.arm9.elf" "$OUT/pocketphysics.base.arm9.elf"
cp "$SRC/arm7/src.arm7.elf" "$OUT/pocketphysics.arm7.elf"
(
    cd "$OUT"
    "$DEVKITARM/bin/ndstool" -c pocketphysics.nds \
        -7 pocketphysics.arm7 \
        -9 pocketphysics.arm9 \
        -b "$ROOT/ppicon.bmp" 'Pocket Physics'
)
check_hash "$OUT/pocketphysics.arm9" "$EXPECTED_ARM9"
check_hash "$OUT/pocketphysics.arm7" "$EXPECTED_ARM7"
check_hash "$OUT/pocketphysics.nds" "$EXPECTED_ROM"
sha256sum "$OUT/pocketphysics.base.arm9" "$OUT/pocketphysics.arm9" \
    "$OUT/pocketphysics.arm7" "$OUT/pocketphysics.nds" > "$OUT/SHA256SUMS"
printf 'Historical source reconstruction complete: %s\n' "$OUT/pocketphysics.nds"
