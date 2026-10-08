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

EXPECTED_BASE_ARM9=b889ac4a411285d7427309ea08999c82df7051f972bebdff76273e634476a17c
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

bash "$ROOT/tools/repro/build_r21_runtime.sh" "$WORK/inputs" "$BUILD/runtime" "$DEVKITARM"

printf '%s\n' '[1/8] Building libnds from its historical source revision with devkitARM r20'
mkdir -p "$BUILD/libnds"
tar -xzf "$WORK/inputs/libnds-source.tar.gz" -C "$BUILD/libnds" --strip-components=1
patch --fuzz=0 -d "$BUILD/libnds" -p1 < "$RECON/dependencies/libnds/source.patch"
make -C "$BUILD/libnds" \
    DEVKITPRO="$SDK_R20" \
    DEVKITARM="$SDK_R20/devkitARM" \
    lib/libnds7.a lib/libnds9.a
# Keep the recovered producer-pass overrides local to their two members.
"$SDK_R20/devkitARM/bin/arm-eabi-gcc" -g -Wall -O2 \
    -fomit-frame-pointer -ffast-math -fno-tree-fre \
    -mthumb -mthumb-interwork -DARM7 -mcpu=arm7tdmi -mtune=arm7tdmi \
    -I"$BUILD/libnds/include" -c "$BUILD/libnds/source/arm7/touch.c" \
    -o "$BUILD/libnds/build/arm7/touch.o"
"$SDK_R20/devkitARM/bin/arm-eabi-gcc" -g -Wall -O2 \
    -fomit-frame-pointer -ffast-math -fno-tree-pre \
    -mthumb -mthumb-interwork -DARM9 -march=armv5te -mtune=arm946e-s \
    -I"$BUILD/libnds/include" -I"$BUILD/libnds/build/arm9" \
    -c "$BUILD/libnds/source/arm9/console.c" \
    -o "$BUILD/libnds/build/arm9/console.o"
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$RECON/dependencies/libnds/c-object-identities.json" "$BUILD/libnds/build"
"$TOOL-ar" r "$BUILD/libnds/lib/libnds7.a" \
    "$BUILD/libnds/build/arm7/touch.o"
"$TOOL-ranlib" "$BUILD/libnds/lib/libnds7.a"
"$TOOL-ar" r "$BUILD/libnds/lib/libnds9.a" \
    "$BUILD/libnds/build/arm9/console.o"
"$TOOL-ranlib" "$BUILD/libnds/lib/libnds9.a"
cp "$BUILD/libnds/lib/libnds7.a" "$DEVKITPRO/libnds/lib/libnds7.a"
cp "$BUILD/libnds/lib/libnds9.a" "$DEVKITPRO/libnds/lib/libnds9.a"
cp -a "$RECON/dependencies/libnds/include/." "$DEVKITPRO/libnds/include/"

printf '%s\n' '[2/8] Building historical libpng and zlib from C and residual assembly'
PNG_BUILD="$BUILD/libpng"
ZLIB_BUILD="$BUILD/zlib"
mkdir -p "$PNG_BUILD/source" "$ZLIB_BUILD/source"
tar -xzf "$WORK/inputs/libpng-source.tar.gz" -C "$PNG_BUILD/source" --strip-components=1
tar -xzf "$WORK/inputs/zlib-source.tar.gz" -C "$ZLIB_BUILD/source" --strip-components=1
patch --fuzz=0 -d "$ZLIB_BUILD/source" -p1 < "$RECON/dependencies/zlib/source.patch"
patch --fuzz=0 -d "$PNG_BUILD/source" -p1 < "$RECON/dependencies/libpng/source.patch"
r20_cc="$SDK_R20/devkitARM/bin/arm-eabi-gcc"
png_members=(png pngset pngget pngrutil pngtrans pngwutil pngread pngrio pngwio pngwrite pngrtran pngwtran pngmem pngerror pngpread)
zlib_members=(adler32 compress crc32 gzio uncompr deflate trees zutil inflate infback inftrees inffast)
for member in "${png_members[@]}"; do
    case "$member" in
        png|pngerror|pngget|pngmem|pngpread|pngread|pngrio|pngrtran|pngrutil|pngset|pngtrans|pngwio|pngwrite|pngwtran|pngwutil)
            member_flags=()
            if [ "$member" = pngrtran ]; then
                member_flags=(-DPNG_DITHER_RED_BITS=3 -DPNG_DITHER_GREEN_BITS=3 \
                    -DPNG_DITHER_BLUE_BITS=3 -DPNG_MAX_GAMMA_8=10)
            fi
            "$r20_cc" -Os -DMAXSEG_64K -DPNG_NO_MNG_FEATURES \
                -DPNG_USER_WIDTH_MAX=10000 -DPNG_USER_HEIGHT_MAX=10000 \
                "${member_flags[@]}" \
                -I"$ZLIB_BUILD/source" \
                -c "$PNG_BUILD/source/$member.c" -o "$PNG_BUILD/$member.o"
            ;;
        *) echo "Unknown libpng source member: $member" >&2; exit 1 ;;
    esac
done
for member in "${zlib_members[@]}"; do
    case "$member" in
        deflate)
            "$TOOL-gcc" -w -c -mcpu=arm9tdmi -mthumb-interwork \
                "$RECON/dependencies/zlib/$member.S" -o "$ZLIB_BUILD/$member.o"
            ;;
        *)
            member_flags=()
            if [ "$member" = inftrees ]; then
                member_flags=(-fno-tree-salias -fno-tree-copy-prop)
            fi
            "$r20_cc" -Os -DNO_vsnprintf -DZ_BUFSIZE=4096 -DMAXSEG_64K \
                "${member_flags[@]}" \
                -c "$ZLIB_BUILD/source/$member.c" -o "$ZLIB_BUILD/$member.o"
            ;;
    esac
done
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$RECON/dependencies/libpng/c-object-identities.json" "$PNG_BUILD"
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$RECON/dependencies/zlib/c-object-identities.json" "$ZLIB_BUILD"
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
TINYXML_LAYOUT=/home/tob/coding/dsdev/tob/tinyxml
mkdir -p "$TINYXML_BUILD" "$TINYXML_LAYOUT"
# Assertion messages are target data: preserve the release's __FILE__ strings.
cp -a "$TINYXML/source" "$TINYXML/include" "$TINYXML_LAYOUT/"
tinyxml_flags=(
    -g -Wall -O2 -march=armv5te -mtune=arm946e-s
    -fomit-frame-pointer -ffast-math -mthumb -mthumb-interwork
    -fno-rtti -fno-exceptions -I"$TINYXML_LAYOUT/include"
)
tinyxml_members=(tinystr tinyxml tinyxmlerror tinyxmlparser)
for member in "${tinyxml_members[@]}"; do
    "$TOOL-g++" "${tinyxml_flags[@]}" -c "$TINYXML_LAYOUT/source/$member.cpp" \
        -o "$TINYXML_BUILD/$member.o"
done
tinyxml_objects=()
for member in "${tinyxml_members[@]}"; do tinyxml_objects+=("$TINYXML_BUILD/$member.o"); done
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$TINYXML/c-object-identities.json" "$TINYXML_BUILD"
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
# Preserve every C body while reconstructing the font's compilation context.
UL_TEXT="$BUILD/ulibrary-text"
python3 "$ROOT/tools/repro/prepare_ulibrary_text.py" "$UL/text.c" "$UL_TEXT"
"$TOOL-gcc" "${ul_o2_flags[@]}" -ffunction-sections -c \
    "$UL_TEXT/text-core.c" -o "$UL_TEXT/text-core.o"
"$TOOL-gcc" "${ul_o2_flags[@]}" -c \
    "$UL_TEXT/font-source.c" -o "$UL_TEXT/font-source.o"
(
    cd "$UL_TEXT"
    "$TOOL-ld" -r -T "$RECON/dependencies/ulibrary/text-object-layout.ld" \
        text-core.o font-source.o -o text.o
)
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$RECON/dependencies/ulibrary/text-object-identity.json" "$UL_TEXT"
"$TOOL-ar" r "$UL/libul.a" "$UL_TEXT/text.o"
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

printf '%s\n' '[6/8] Building the historical fixed-point Box2D from C++ source'
BOX_ROOT="$BUILD/box2d"
BOX="$BOX_ROOT/Source"
mkdir -p "$BOX"
cp -a "$RECON/dependencies/box2d/." "$BOX/"
mv "$BOX/Include" "$BOX_ROOT/Include"
make -C "$BOX" clean
make -C "$BOX" Gen/nds-fixed/lib/libbox2d.a
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$BOX/reconstructed/shape-object-identity.json" "$BOX/Gen/nds-fixed/Collision/Shapes"
box_flags=(
    -g -O2 -fomit-frame-pointer -ffast-math
    -march=armv5te -mtune=arm946e-s -mthumb-interwork
    -DARM9 -fno-rtti -fno-exceptions
    -DTARGET_FLOAT32_IS_FIXED -DTARGET_IS_NDS
    -I"$DEVKITPRO/libnds/include" -I"$BOX_ROOT/Include"
    -I"$BOX/Common" -I"$BOX/Contrib"
)
# Compile the preserved March 2008 polygon unit without method selection.
(
    cd "$BOX"
    "$TOOL-g++" "${box_flags[@]}" -c Contrib/b2Polygon.cpp \
        -o "$BUILD/b2Polygon.o"
)
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$BOX/reconstructed/polygon-object-identity.json" "$BUILD"
python3 "$ROOT/tools/repro/verify_polygon_object.py" \
    "$BOX/reconstructed/polygon-method-layout.json" "$BUILD/b2Polygon.o"
BOX_ARCHIVE="$BOX/Gen/nds-fixed/lib/libbox2d.a"
box_flags+=(-ffunction-sections)
"$TOOL-g++" "${box_flags[@]}" -c "$BOX/Contrib/b2Triangle.cpp" \
    -o "$BUILD/b2Triangle-sections.o"
"$TOOL-ld" -r -T "$BOX/reconstructed/triangle-object-layout.ld" \
    -o "$BUILD/b2Triangle.o" "$BUILD/b2Triangle-sections.o"
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$BOX/reconstructed/triangle-object-identity.json" "$BUILD"
"$TOOL-ar" r "$BOX_ARCHIVE" "$BUILD/b2Triangle.o"
# The ordinary Box2D makefile compiles both complete archived solver units.
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$BOX/reconstructed/solver-object-identities.json" "$BOX/Gen/nds-fixed/Dynamics"
"$TOOL-ar" r "$BOX_ARCHIVE" "$BUILD/b2Polygon.o"
"$TOOL-ranlib" "$BOX_ARCHIVE"
cp "$BOX_ARCHIVE" "$DEVKITPRO/libnds/lib/libbox2d2.a"

printf '%s\n' '[7/8] Clean-building both Nintendo DS processors from application source'
patch --fuzz=0 -d "$SRC" -p1 < "$RECON/arm9/ui-source.patch"
check_hash "$DEVKITARM/arm-eabi/lib/ds_arm9.ld" \
    e0b7f28bd015da38851d0699f9344df02b8a6b0426093815ecba576b5b1a8260
rm -rf "$SRC/box2d"
ln -s "$BOX_ROOT" "$SRC/box2d"
export TOPDIR="$SRC" TARGET=src
make -C "$SRC/arm7" clean
make -C "$SRC/arm7"
make -C "$SRC/arm9" clean
historical_objects="$(tr '\n' ' ' < "$RECON/arm9/object-order.txt")"
make -C "$SRC/arm9" OFILES="$historical_objects"
python3 "$ROOT/tools/repro/verify_recovered_objects.py" \
    "$RECON/arm9/ui-object-identities.json" "$SRC/arm9/build"
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
