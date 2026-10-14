#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"

python3 "$ROOT/tools/repro/audit_reconstruction_source.py"
"$ROOT/tools/repro/test_build_ownership.sh"
"$ROOT/tools/repro/test_source_patches.sh"
"$ROOT/tools/repro/test_v06_exact.sh"
"$ROOT/tools/repro/test_v06_repack_control.sh"
"$ROOT/tools/repro/test_v06_repro.sh"
"$ROOT/tools/repro/test_v06_perf.sh"
"$ROOT/tools/repro/test_modern_fixed_ds.sh"
"$ROOT/tools/repro/test_v06_inrom.sh"
CONTROL_ROM="$ROOT/research-artifacts/build/bench-improved/pocketphysics-v0.6-blocksds.nds" \
    "$ROOT/tools/repro/test_polygon_api_inrom.sh"
"$ROOT/tools/repro/test_runtime_loop.sh"
CONTROL_ROM="$ROOT/research-artifacts/build/runtime-improved/pocketphysics-v0.6-blocksds.nds" \
    "$ROOT/tools/repro/test_runtime_fat.sh"
python3 "$ROOT/tools/repro/audit_tracked_binaries.py" --check

echo "Complete source reconstruction, reproducibility, bug, and in-ROM performance suite passed."
