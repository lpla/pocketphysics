#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/.codex-artifacts/test/source-patches}"

rm -rf "$OUT"
mkdir -p "$OUT"
git -C "$ROOT" archive e9b621e | tar -x -C "$OUT"
git -C "$ROOT" show 3e538e0:arm9/source/PPBoundaryListener.h > "$OUT/arm9/source/PPBoundaryListener.h"
git -C "$ROOT" show 3e538e0:arm9/source/PPBoundaryListener.cpp > "$OUT/arm9/source/PPBoundaryListener.cpp"

python3 "$ROOT/tools/repro/patch_v06_source.py" "$OUT"
python3 "$ROOT/tools/repro/test_instrument_exact.py"
python3 -m py_compile "$ROOT"/tools/repro/*.py
bash -n "$ROOT"/tools/repro/*.sh

grep -q 'b2AABB touchAABB;' "$OUT/arm9/source/world.cpp"
grep -q 'free(id_table);' "$OUT/arm9/source/world.cpp"
grep -q 'fclose(f);' "$OUT/arm9/source/main.cpp"
grep -q 'char numberstr\[6\];' "$OUT/arm9/source/tobkit/numberslider.cpp"
grep -q 'blocksize - 1' "$OUT/arm9/source/tobkit/tools.cpp"
grep -q 'strncpy(label, _label, 255);' "$OUT/arm9/source/tobkit/checkbox.cpp"
grep -q 'memcpy(text, text_, len);' "$OUT/arm9/source/tobkit/typewriter.cpp"
grep -q 'b2Mat22 cached_rotation;' "$OUT/arm9/source/canvas.cpp"
grep -q 'int reciprocal = div32' "$OUT/arm9/source/canvas.cpp"

echo "Historical source transforms and instrumentation unit tests passed."
