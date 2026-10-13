#!/usr/bin/env bash
set -euo pipefail
ROOT="$(git rev-parse --show-toplevel)"
report="$ROOT/research-artifacts/test/modern-fixed-ds-builds.csv"
mkdir -p "$(dirname "$report")"
printf 'profile,rom_sha256,elf_sha256,size_bytes,independent_match\n' > "$report"
for profile in repro-fixed-ds bench-modern-fixed-ds; do
    first="$ROOT/research-artifacts/build/$profile"
    second="$ROOT/research-artifacts/build/$profile-independent"
    BUILD_PROFILE="$profile" OUT="$first" "$ROOT/tools/repro/build_v06_blocksds.sh"
    BUILD_PROFILE="$profile" OUT="$second" "$ROOT/tools/repro/build_v06_blocksds.sh"
    cmp "$first/pocketphysics-v0.6-blocksds.nds" "$second/pocketphysics-v0.6-blocksds.nds"
    cmp "$first/pocketphysics-v0.6-blocksds.elf" "$second/pocketphysics-v0.6-blocksds.elf"
    printf '%s,%s,%s,%s,1\n' "$profile" \
        "$(shasum -a 256 "$first/pocketphysics-v0.6-blocksds.nds" | awk '{print $1}')" \
        "$(shasum -a 256 "$first/pocketphysics-v0.6-blocksds.elf" | awk '{print $1}')" \
        "$(wc -c < "$first/pocketphysics-v0.6-blocksds.nds" | tr -d ' ')" >> "$report"
done
echo "Independent fixed-point modernization ROM and full ELF builds match."
