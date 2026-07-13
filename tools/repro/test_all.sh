#!/usr/bin/env bash
set -euo pipefail

ROOT="$(git rev-parse --show-toplevel)"

python3 "$ROOT/tools/repro/audit_reconstruction_source.py"
"$ROOT/tools/repro/test_source_patches.sh"
"$ROOT/tools/repro/test_v06_exact.sh"
"$ROOT/tools/repro/test_v06_repack_control.sh"
"$ROOT/tools/repro/test_v06_repro.sh"
"$ROOT/tools/repro/test_v06_perf.sh"
"$ROOT/tools/repro/test_v06_inrom.sh"
python3 "$ROOT/tools/repro/audit_tracked_binaries.py" --check

echo "Complete source reconstruction, reproducibility, bug, and in-ROM performance suite passed."
