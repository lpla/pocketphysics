#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT_A="$ROOT/.codex-artifacts/build/perf-check-a"
OUT_B="$ROOT/.codex-artifacts/build/perf-check-b"

sha256_file() {
    shasum -a 256 "$1" | awk '{print $1}'
}

OUT="$OUT_A" "$ROOT/tools/repro/build_v06_perf.sh"
OUT="$OUT_B" "$ROOT/tools/repro/build_v06_perf.sh"

rom_a="$OUT_A/pocketphysics-v0.6-blocksds.nds"
rom_b="$OUT_B/pocketphysics-v0.6-blocksds.nds"
sha_a="$(sha256_file "$rom_a")"
sha_b="$(sha256_file "$rom_b")"

if [ "$sha_a" != "$sha_b" ]; then
    echo "Perf rebuilds are not byte-identical" >&2
    echo "A: $sha_a $rom_a" >&2
    echo "B: $sha_b $rom_b" >&2
    exit 1
fi

echo "Byte-identical perf rebuilds verified: $sha_a"

REPEATS=2 DURATION=8 OUT="$ROOT/.codex-artifacts/benchmarks/perf-smoke" \
    "$ROOT/tools/repro/benchmark_roms.sh" \
    "perf-check-a=$rom_a" \
    "perf-check-b=$rom_b"
