#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/.codex-artifacts/build/v06-blocksds}"
DOWNLOADS="${DOWNLOADS:-$ROOT/.codex-artifacts/downloads}"
DEPS_CACHE="${DEPS_CACHE:-$ROOT/.codex-artifacts/deps}"
IMAGE="${BLOCKSDS_IMAGE:-skylyrac/blocksds:slim-v1.20.0}"

sha256_file() {
    shasum -a 256 "$1" | awk '{print $1}'
}

fetch() {
    local url="$1"
    local dest="$2"
    local expected="$3"

    mkdir -p "$(dirname "$dest")"
    if [ -f "$dest" ] && [ "$(sha256_file "$dest")" = "$expected" ]; then
        return
    fi

    rm -f "$dest"
    curl -L --fail --retry 3 --retry-delay 2 "$url" -o "$dest"
    local actual
    actual="$(sha256_file "$dest")"
    if [ "$actual" != "$expected" ]; then
        echo "Checksum mismatch for $dest" >&2
        echo "expected: $expected" >&2
        echo "actual:   $actual" >&2
        exit 1
    fi
}

rm -rf "$OUT"
mkdir -p "$OUT" "$DOWNLOADS" "$DEPS_CACHE"

SRC="$OUT/src"
DEPS="$OUT/deps"
mkdir -p "$SRC" "$DEPS"

echo "Extracting Pocket Physics v0.6 source from git commit e9b621e"
git -C "$ROOT" archive e9b621e | tar -x -C "$SRC"

echo "Backfilling v0.6 source files that were present in later source-tree repair commit 3e538e0"
git -C "$ROOT" show 3e538e0:arm9/source/PPBoundaryListener.h > "$SRC/arm9/source/PPBoundaryListener.h"
git -C "$ROOT" show 3e538e0:arm9/source/PPBoundaryListener.cpp > "$SRC/arm9/source/PPBoundaryListener.cpp"
for icon in icon_back icon_delete_file icon_load icon_move icon_save; do
    git -C "$ROOT" show "3e538e0:arm9/data/${icon}.raw" > "$SRC/arm9/data/${icon}.raw"
done

echo "Fetching pinned third-party source archives"
fetch \
    "https://snapshot.debian.org/file/868397d39d1a842b252454ba44c475cd2eb14d49" \
    "$DEPS_CACHE/box2d_2.0.1+dfsg1.orig.tar.gz" \
    "ff35fa514b6a7bcdfd1d83c499d57cdd4dfec7adb1b42aeaeb8dbedfb069fdb0"

fetch \
    "https://snapshot.debian.org/file/cba3f50dd657cb1434674a03b21394df9913d764" \
    "$DEPS_CACHE/tinyxml_2.6.2.orig.tar.gz" \
    "15bdfdcec58a7da30adc87ac2b078e4417dbe5392f3afb719f9ba6d062645593"

rm -rf "$DEPS/box2d-2.0.1" "$DEPS/tinyxml-2.6.2"
mkdir -p "$DEPS/convex-decomposition-original"
tar -xzf "$DEPS_CACHE/box2d_2.0.1+dfsg1.orig.tar.gz" -C "$DEPS"
mv "$DEPS/Box2D" "$DEPS/box2d-2.0.1"
tar -xzf "$DEPS_CACHE/tinyxml_2.6.2.orig.tar.gz" -C "$DEPS"
mv "$DEPS/tinyxml" "$DEPS/tinyxml-2.6.2"

echo "Fetching pinned convex decomposition utility"
CONVEX_BASE="https://raw.githubusercontent.com/91Act/box2d_fixed/893e0d71a0fbffdbb3ccbd61c166311525be5ada/Contributions/Utilities/ConvexDecomposition"
fetch "$CONVEX_BASE/b2Polygon.cpp" "$DEPS/convex-decomposition-original/b2Polygon.cpp" "a0f64105be21e827b48dc14a084bcde21fb8c5f88cbe3e683256118f778ad490"
fetch "$CONVEX_BASE/b2Polygon.h" "$DEPS/convex-decomposition-original/b2Polygon.h" "215bf5f4217f8fa50a900dff339a905cf086356440844cb0d8787586e1e3d5e8"
fetch "$CONVEX_BASE/b2Triangle.cpp" "$DEPS/convex-decomposition-original/b2Triangle.cpp" "fa8896a7b252cb233502a9698ca6a706a717d4ad5a62b17bad9f6a67ae8b03ee"
fetch "$CONVEX_BASE/b2Triangle.h" "$DEPS/convex-decomposition-original/b2Triangle.h" "689bd29eea223e6f73365f1b46456fd55d5313d3959b6baeff60cd3d54626bf1"

python3 "$ROOT/tools/repro/transform_convex_decomposition.py" \
    "$DEPS/convex-decomposition-original" \
    "$DEPS/convex-decomposition"

python3 "$ROOT/tools/repro/patch_box2d_source.py" "$DEPS/box2d-2.0.1"
python3 "$ROOT/tools/repro/patch_v06_source.py" "$SRC"

echo "Building in Docker image: $IMAGE"
OUT_REL="${OUT#$ROOT/}"
docker run --rm \
    -v "$ROOT":/workspace \
    -w /workspace \
    "$IMAGE" \
    bash tools/repro/container_build_v06.sh "/workspace/$OUT_REL"

echo
echo "Built ROM: $OUT/pocketphysics-v0.6-blocksds.nds"
sha256_file "$OUT/pocketphysics-v0.6-blocksds.nds" | sed "s#^#SHA256: #"
