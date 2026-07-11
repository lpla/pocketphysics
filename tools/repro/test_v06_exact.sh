#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
BASE="${OUT:-$ROOT/research-artifacts/test/v06-exact}"

OUT="$BASE/first" "$ROOT/tools/repro/build_v06_exact.sh"
OUT="$BASE/second" "$ROOT/tools/repro/build_v06_exact.sh"

cmp "$BASE/first/pocketphysics.arm9" "$BASE/second/pocketphysics.arm9"
cmp "$BASE/first/pocketphysics.arm7" "$BASE/second/pocketphysics.arm7"
cmp "$BASE/first/pocketphysics.nds" "$BASE/second/pocketphysics.nds"

echo "Two clean archival repacks are byte-identical to the public v0.6 ROM."
