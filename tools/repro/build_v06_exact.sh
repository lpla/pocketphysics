#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/build/v06-exact}"
DOWNLOADS="${DOWNLOADS:-$ROOT/research-artifacts/downloads}"
IMAGE="${EXACT_IMAGE:-pocketphysics-devkitarm-r21-exact}"

R20_SDK="$DOWNLOADS/devkitPro-20070503-linux.tar.gz"
R21_TOOLCHAIN="$DOWNLOADS/devkitARM_r21linux.tar.bz2"
LIBNDS_SOURCE="$DOWNLOADS/libnds-df7b1022.tar.gz"

fetch() {
    local url="$1"
    local path="$2"
    local expected="$3"
    mkdir -p "$(dirname "$path")"
    if [ -f "$path" ] && [ "$(shasum -a 256 "$path" | awk '{print $1}')" = "$expected" ]; then
        return
    fi
    rm -f "$path"
    curl -L --fail --retry 3 --retry-delay 2 "$url" -o "$path"
    local actual
    actual="$(shasum -a 256 "$path" | awk '{print $1}')"
    if [ "$actual" != "$expected" ]; then
        printf 'Checksum mismatch for %s\nexpected: %s\nactual:   %s\n' \
            "$path" "$expected" "$actual" >&2
        exit 1
    fi
}

fetch \
    'https://www.libsdl.org/extras/nds/devkitPro-20070503-linux.tar.gz' \
    "$R20_SDK" \
    '5b4443f1656fd0bc2a040f31b1e275b6783dac9f75153d714145699bc94e0ec9'
fetch \
    'https://wii.leseratte10.de/devkitPro/devkitARM/r21%20(2007)/14943_devkitARM_r21linux.tar.bz2' \
    "$R21_TOOLCHAIN" \
    '7a3e1ab1c7d3f3a98389f3bd78ad52826fe65b2d869c3b1f187c068b989ae203'
fetch \
    'https://github.com/devkitPro/libnds/archive/df7b1022bfb7dc34b34d2d77b2050b0999e7ccfb.tar.gz' \
    "$LIBNDS_SOURCE" \
    'bdf7639b54acd9a8354b20a2a232493472229f182a471f1b51c1ae93ba222d2b'

rm -rf "$OUT"
mkdir -p "$OUT/inputs" "$OUT/src"
cp "$R20_SDK" "$OUT/inputs/devkitPro-20070503-linux.tar.gz"
cp "$R21_TOOLCHAIN" "$OUT/inputs/devkitARM_r21linux.tar.bz2"
cp "$LIBNDS_SOURCE" "$OUT/inputs/libnds-source.tar.gz"

git -C "$ROOT" archive e9b621e arm7 arm9 generic | tar -x -C "$OUT/src"
git -C "$ROOT" show 3e538e0:arm9/source/PPBoundaryListener.cpp \
    > "$OUT/src/arm9/source/PPBoundaryListener.cpp"
git -C "$ROOT" show 3e538e0:arm9/source/PPBoundaryListener.h \
    > "$OUT/src/arm9/source/PPBoundaryListener.h"
for icon in icon_back icon_delete_file icon_load icon_move icon_save; do
    git -C "$ROOT" show "3e538e0:arm9/data/$icon.raw" \
        > "$OUT/src/arm9/data/$icon.raw"
done
patch -d "$OUT/src" -p1 < "$ROOT/research/reconstruction/v06/application.patch"

docker build --platform linux/amd64 -q -t "$IMAGE" \
    -f "$ROOT/tools/repro/exact/Dockerfile" "$ROOT/tools/repro/exact" >/dev/null

normalize_permissions() {
    docker run --rm --platform linux/amd64 \
        -v "$OUT:/work" "$IMAGE" chmod -R a+rwX /work >/dev/null
}
trap 'normalize_permissions || true' EXIT

docker run --rm --platform linux/amd64 \
    -v "$ROOT:/workspace:ro" \
    -v "$OUT:/work" \
    -w /workspace \
    "$IMAGE" \
    bash tools/repro/container_build_v06_exact.sh

normalize_permissions
mv "$OUT/out/"* "$OUT/"
rmdir "$OUT/out"
shasum -a 256 \
    "$OUT/pocketphysics.base.arm9" \
    "$OUT/pocketphysics.arm9" \
    "$OUT/pocketphysics.arm7" \
    "$OUT/pocketphysics.nds" > "$OUT/SHA256SUMS"
trap - EXIT

printf '\nByte-identical source build:\n'
cat "$OUT/SHA256SUMS"
