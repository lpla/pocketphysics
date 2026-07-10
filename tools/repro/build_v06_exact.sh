#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/.codex-artifacts/build/v06-exact}"
TOOLCHAIN="${DEVKITARM_R21_ARCHIVE:-$ROOT/.codex-artifacts/downloads/devkitARM_r21linux.tar.bz2}"
IMAGE="${EXACT_IMAGE:-pocketphysics-devkitarm-r21-exact}"
EXPECTED_TOOLCHAIN_SHA="7a3e1ab1c7d3f3a98389f3bd78ad52826fe65b2d869c3b1f187c068b989ae203"
EXPECTED_ROM_SHA="9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64"
TOOLCHAIN_URL="https://wii.leseratte10.de/devkitPro/devkitARM/r21%20(2007)/14943_devkitARM_r21linux.tar.bz2"
RELEASE_OUT="$OUT/release"

sha256_file() {
    shasum -a 256 "$1" | awk '{print $1}'
}

if [ ! -f "$TOOLCHAIN" ]; then
    if [ -n "${DEVKITARM_R21_ARCHIVE:-}" ]; then
        echo "Missing devkitARM r21 archive: $TOOLCHAIN" >&2
        exit 1
    fi
    mkdir -p "$(dirname "$TOOLCHAIN")"
    echo "Fetching checksum-pinned devkitARM r21 archive"
    curl -L --fail --retry 3 --retry-delay 2 "$TOOLCHAIN_URL" -o "$TOOLCHAIN"
fi
actual_toolchain_sha="$(sha256_file "$TOOLCHAIN")"
if [ "$actual_toolchain_sha" != "$EXPECTED_TOOLCHAIN_SHA" ]; then
    echo "devkitARM r21 checksum mismatch" >&2
    echo "expected: $EXPECTED_TOOLCHAIN_SHA" >&2
    echo "actual:   $actual_toolchain_sha" >&2
    exit 1
fi

rm -rf "$OUT"
mkdir -p "$OUT"

OUT="$RELEASE_OUT" "$ROOT/tools/repro/extract_release_v06.sh"
RELEASE_ROM="$RELEASE_OUT/PocketPhysics-v0.6/pocketphysics.nds"

docker build --platform linux/amd64 -q -t "$IMAGE" -f "$ROOT/tools/repro/exact/Dockerfile" "$ROOT/tools/repro/exact" >/dev/null
container="$(docker create --platform linux/amd64 "$IMAGE" sleep infinity)"
cleanup() {
    docker rm -f "$container" >/dev/null 2>&1 || true
}
trap cleanup EXIT
docker start "$container" >/dev/null

docker cp "$TOOLCHAIN" "$container:/work/devkitARM_r21linux.tar.bz2"
docker cp "$RELEASE_ROM" "$container:/work/release.nds"
docker cp "$ROOT/ppicon.bmp" "$container:/work/ppicon.bmp"

docker exec "$container" bash -lc '
    set -euo pipefail
    mkdir -p /opt/devkitpro /work/out
    tar -xjf /work/devkitARM_r21linux.tar.bz2 -C /opt/devkitpro
    export PATH=/opt/devkitpro/devkitARM/bin:$PATH
    ndstool -x /work/release.nds \
        -7 /work/out/pocketphysics.arm7 \
        -9 /work/out/pocketphysics.arm9
    cd /work/out
    ndstool -c pocketphysics.nds \
        -7 pocketphysics.arm7 \
        -9 pocketphysics.arm9 \
        -b /work/ppicon.bmp "Pocket Physics"
'

docker cp "$container:/work/out/pocketphysics.arm9" "$OUT/pocketphysics.arm9"
docker cp "$container:/work/out/pocketphysics.arm7" "$OUT/pocketphysics.arm7"
docker cp "$container:/work/out/pocketphysics.nds" "$OUT/pocketphysics.nds"

actual_rom_sha="$(sha256_file "$OUT/pocketphysics.nds")"
if [ "$actual_rom_sha" != "$EXPECTED_ROM_SHA" ]; then
    echo "Exact ROM checksum mismatch" >&2
    echo "expected: $EXPECTED_ROM_SHA" >&2
    echo "actual:   $actual_rom_sha" >&2
    exit 1
fi

printf 'Repacked exact Pocket Physics v0.6 ROM from verified release payloads\nSHA256 %s  %s\n' \
    "$actual_rom_sha" "$OUT/pocketphysics.nds"
