#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT_A="$ROOT/research-artifacts/build/repro-check-a"
OUT_B="$ROOT/research-artifacts/build/repro-check-b"
EXPECTED_SHA="93776d717fa58da9b5d70aee8240b0a0a569e8411817e26d580d28d6a408ff06"

sha256_file() {
    shasum -a 256 "$1" | awk '{print $1}'
}

OUT="$OUT_A" "$ROOT/tools/repro/build_v06_blocksds.sh"
OUT="$OUT_B" "$ROOT/tools/repro/build_v06_blocksds.sh"

rom_a="$OUT_A/pocketphysics-v0.6-blocksds.nds"
rom_b="$OUT_B/pocketphysics-v0.6-blocksds.nds"
sha_a="$(sha256_file "$rom_a")"
sha_b="$(sha256_file "$rom_b")"

if [ "$sha_a" != "$sha_b" ] || [ "$sha_a" != "$EXPECTED_SHA" ]; then
    echo "Rebuilds differ or do not match the documented modern ROM" >&2
    echo "Expected: $EXPECTED_SHA" >&2
    echo "A: $sha_a $rom_a" >&2
    echo "B: $sha_b $rom_b" >&2
    exit 1
fi

echo "Byte-identical rebuilds verified: $sha_a"
