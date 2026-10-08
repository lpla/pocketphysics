#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT_A="$ROOT/research-artifacts/build/perf-check-a"
OUT_B="$ROOT/research-artifacts/build/perf-check-b"
EXPECTED_SHA="bdb7f37880b89e158230c070fef13ed58c53c55563c0710d1484d4bdd44b478d"

sha256_file() {
    shasum -a 256 "$1" | awk '{print $1}'
}

OUT="$OUT_A" "$ROOT/tools/repro/build_v06_perf.sh"
OUT="$OUT_B" "$ROOT/tools/repro/build_v06_perf.sh"

rom_a="$OUT_A/pocketphysics-v0.6-blocksds.nds"
rom_b="$OUT_B/pocketphysics-v0.6-blocksds.nds"
sha_a="$(sha256_file "$rom_a")"
sha_b="$(sha256_file "$rom_b")"

if [ "$sha_a" != "$sha_b" ] || [ "$sha_a" != "$EXPECTED_SHA" ]; then
    echo "Perf rebuilds differ or do not match the documented improved ROM" >&2
    echo "Expected: $EXPECTED_SHA" >&2
    echo "A: $sha_a $rom_a" >&2
    echo "B: $sha_b $rom_b" >&2
    exit 1
fi

cmp "$OUT_A/pocketphysics-v0.6-blocksds.elf" "$OUT_B/pocketphysics-v0.6-blocksds.elf"
echo "Byte-identical perf rebuilds verified: $sha_a"
