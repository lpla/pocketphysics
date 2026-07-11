#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/test/source-patches}"
DEPS_CACHE="${DEPS_CACHE:-$ROOT/research-artifacts/deps}"
BOX2D_ARCHIVE="$DEPS_CACHE/box2d_2.0.1+dfsg1.orig.tar.gz"
BOX2D_SHA="ff35fa514b6a7bcdfd1d83c499d57cdd4dfec7adb1b42aeaeb8dbedfb069fdb0"
BOX2D_URL="https://snapshot.debian.org/file/868397d39d1a842b252454ba44c475cd2eb14d49"

sha256_file() {
    shasum -a 256 "$1" | awk '{print $1}'
}

rm -rf "$OUT"
mkdir -p "$OUT"
git -C "$ROOT" archive e9b621e | tar -x -C "$OUT"
git -C "$ROOT" show 3e538e0:arm9/source/PPBoundaryListener.h > "$OUT/arm9/source/PPBoundaryListener.h"
git -C "$ROOT" show 3e538e0:arm9/source/PPBoundaryListener.cpp > "$OUT/arm9/source/PPBoundaryListener.cpp"

mkdir -p "$DEPS_CACHE" "$OUT/deps"
if [ ! -f "$BOX2D_ARCHIVE" ] || [ "$(sha256_file "$BOX2D_ARCHIVE")" != "$BOX2D_SHA" ]; then
    rm -f "$BOX2D_ARCHIVE"
    curl -L --fail --retry 3 --retry-delay 2 "$BOX2D_URL" -o "$BOX2D_ARCHIVE"
fi
if [ "$(sha256_file "$BOX2D_ARCHIVE")" != "$BOX2D_SHA" ]; then
    echo "Box2D source archive checksum mismatch" >&2
    exit 1
fi
tar -xzf "$BOX2D_ARCHIVE" -C "$OUT/deps"
mv "$OUT/deps/Box2D" "$OUT/deps/box2d-2.0.1"

python3 "$ROOT/tools/repro/patch_v06_source.py" "$OUT"
python3 "$ROOT/tools/repro/patch_box2d_source.py" "$OUT/deps/box2d-2.0.1"
PYTHONPYCACHEPREFIX="$OUT/pycache" python3 "$ROOT/tools/repro/test_instrument_exact.py"
PYTHONPYCACHEPREFIX="$OUT/pycache" python3 "$ROOT/tools/repro/test_analyze_inrom.py"
PYTHONPYCACHEPREFIX="$OUT/pycache" python3 -m py_compile "$ROOT"/tools/repro/*.py
python3 "$ROOT/tools/repro/check_markdown_links.py"
bash -n "$ROOT"/tools/repro/*.sh

grep -q 'b2AABB touchAABB;' "$OUT/arm9/source/world.cpp"
grep -q 'free(id_table);' "$OUT/arm9/source/world.cpp"
grep -q 'fclose(f);' "$OUT/arm9/source/main.cpp"
grep -q 'char numberstr\[6\];' "$OUT/arm9/source/tobkit/numberslider.cpp"
grep -q 'blocksize - 1' "$OUT/arm9/source/tobkit/tools.cpp"
grep -q 'strncpy(label, _label, 255);' "$OUT/arm9/source/tobkit/checkbox.cpp"
grep -q 'memcpy(text, text_, len);' "$OUT/arm9/source/tobkit/typewriter.cpp"
grep -q 'extern const u32 linear_freq_table\[\];' "$OUT/arm9/source/linear_freq_table.h"
grep -q 'b2Mat22 cached_rotation;' "$OUT/arm9/source/canvas.cpp"
grep -q 'int reciprocal = div32' "$OUT/arm9/source/canvas.cpp"
grep -q 'PP_RENDER_RECIPROCAL_CACHE' "$OUT/arm9/source/canvas.cpp"
grep -q 'PP_RENDER_ITCM' "$OUT/arm9/source/canvas.cpp"
grep -q 'PP_CANVAS_DRAW_ITCM' "$OUT/arm9/source/canvas.cpp"
grep -q 'PP_CANVAS_LINE_ITCM' "$OUT/arm9/source/canvas.cpp"
grep -q 'PP_BOX2D_LENGTH_FIXED_ESTIMATE' "$OUT/deps/box2d-2.0.1/Source/Common/b2Math.h"
grep -q 'PP_BOX2D_VELOCITY_GATE' "$OUT/deps/box2d-2.0.1/Source/Dynamics/b2Island.cpp"
grep -q 'PP_PHYSICS_ITCM' "$OUT/deps/box2d-2.0.1/Source/Dynamics/b2Island.cpp"
grep -q 'pp_cos_bin(idx)' "$OUT/deps/box2d-2.0.1/Source/Common/Fixed.h"
grep -q 'frame_over_1pct_count' "$ROOT/tools/repro/benchmark_source/pp_benchmark.cpp"
grep -q 'frame_over_1pct_count' "$ROOT/tools/repro/exact_overlay/benchmark_overlay.cpp"
grep -q 'bench-improved.*TARGET_IS_NDS' "$ROOT/tools/repro/container_build_v06.sh"
grep -q 'bench-improved.*PP_CANVAS_LINE_ITCM' "$ROOT/tools/repro/container_build_v06.sh"

echo "Historical source transforms and instrumentation unit tests passed."
