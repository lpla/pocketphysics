#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"
OUT="${OUT:-$ROOT/research-artifacts/test/v06-repack-control}"

OUT="$OUT" "$ROOT/tools/repro/build_v06_repack_control.sh"

echo "The release-payload repack control is byte-identical to the public v0.6 ROM."
