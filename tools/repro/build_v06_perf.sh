#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"

BUILD_PROFILE=perf \
OUT="${OUT:-$ROOT/.codex-artifacts/build/v06-blocksds-perf}" \
    "$ROOT/tools/repro/build_v06_blocksds.sh"
