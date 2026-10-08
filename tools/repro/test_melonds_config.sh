#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/test/melonds-config}"
DOWNLOADS="${DOWNLOADS:-$ROOT/research-artifacts/downloads}"
source "$ROOT/tools/repro/fetch_locked.sh"
archive="$DOWNLOADS/melonds-b86390e.tar.gz"
fetch 'https://codeload.github.com/melonDS-emu/melonDS/tar.gz/b86390e4428bf38ce4c1ce0e9ca446d6d25955e8' \
    "$archive" '0ae765f1cd0644bce04c034079e74272259c9dad20a9fa4537296f45390fc463'
mkdir -p "$OUT/source"
tar -xzf "$archive" --strip-components=1 -C "$OUT/source"
"${CXX:-c++}" --version > "$OUT/compiler.txt"
"${CXX:-c++}" -std=c++17 -O2 -Wall -Wextra \
    -I "$OUT/source/src/frontend/qt_sdl" \
    "$ROOT/tools/repro/melonds_config_validation.cpp" -o "$OUT/config-validation"
"$OUT/config-validation" "$ROOT/tools/repro/emulators/melonds/melonDS.toml" \
    | tee "$OUT/validation.txt"
