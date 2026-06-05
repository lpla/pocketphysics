#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
ZIP="${1:-$ROOT/.codex-artifacts/downloads/pocketphysics-gamebrew.zip}"
OUT="${OUT:-$ROOT/.codex-artifacts/release-v0.6/gamebrew}"

ZIP_SHA256="953c950217b14610039338918d4849f9ba5ab2ef44b9c92bb902296e5961cfb6"
ROM_SHA256="9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64"
ROM_NOTHUMB_SHA256="64a15ff6c0e0e7235dd716833d68f8adaa9043afc867f5b6523d9c73750e586a"

sha256_file() {
    shasum -a 256 "$1" | awk '{print $1}'
}

if [ ! -f "$ZIP" ]; then
    cat >&2 <<EOF
Release zip not found:
  $ZIP

Download the Pocket Physics v0.6 archive from GameBrew's Download link and
place it at that path, or pass the zip path as the first argument.
EOF
    exit 1
fi

actual_zip_sha="$(sha256_file "$ZIP")"
if [ "$actual_zip_sha" != "$ZIP_SHA256" ]; then
    echo "Release zip checksum mismatch" >&2
    echo "expected: $ZIP_SHA256" >&2
    echo "actual:   $actual_zip_sha" >&2
    exit 1
fi

rm -rf "$OUT"
mkdir -p "$OUT"
unzip -q "$ZIP" -d "$OUT"

rom="$OUT/PocketPhysics-v0.6/pocketphysics.nds"
rom_nothumb="$OUT/PocketPhysics-v0.6/pocketphysics_nothumb.nds"

if [ "$(sha256_file "$rom")" != "$ROM_SHA256" ]; then
    echo "pocketphysics.nds checksum mismatch" >&2
    exit 1
fi

if [ "$(sha256_file "$rom_nothumb")" != "$ROM_NOTHUMB_SHA256" ]; then
    echo "pocketphysics_nothumb.nds checksum mismatch" >&2
    exit 1
fi

echo "Verified Pocket Physics v0.6 release archive"
echo "ROM: $rom"
echo "SHA256: $ROM_SHA256"
