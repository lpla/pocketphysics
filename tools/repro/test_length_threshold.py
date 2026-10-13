#!/usr/bin/env python3
"""Compare the actual vector API at every positive 0.1 threshold-boundary pair."""
import argparse
import json
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def test(box2d: Path, out: Path) -> None:
    out.mkdir(parents=True, exist_ok=True)
    records = {}
    for name, extra in (("reference", []), ("corrected", ["-DPP_BOX2D_LENGTH_FIXED_ESTIMATE"]),
                        ("legacy", ["-DPP_BOX2D_LENGTH_FIXED_ESTIMATE", "-DPP_BOX2D_LENGTH_LEGACY_THRESHOLD"])):
        binary = out / name
        command = ["c++", "-O2", "-g", "-fsanitize=address,undefined", "-fno-omit-frame-pointer",
                   "-DTARGET_FLOAT32_IS_FIXED", *extra, "-I"+str(box2d / "Source/Common"),
                   "-I"+str(ROOT / "tools/repro/benchmark_source"),
                   str(ROOT / "tools/repro/length_validation_host.cpp"), "-o", str(binary)]
        subprocess.run(command, check=True)
        result = subprocess.run([str(binary)], text=True, capture_output=True)
        (out / f"{name}.stdout.log").write_text(result.stdout)
        (out / f"{name}.stderr.log").write_text(result.stderr)
        if result.stderr or result.returncode != (1 if name == "legacy" else 0):
            raise AssertionError(f"Unexpected compiler/sanitizer/execution result for {name}")
        record = json.loads(result.stdout)
        if record["cases"] != 19662 or record["failures"] != (6544 if name == "legacy" else 0):
            raise AssertionError(f"Wrong boundary result for {name}: {record}")
        if (record["reference_checksum"] != "7805b4b1"
                or record["actual_checksum"] != ("b2c63575" if name == "legacy" else "7805b4b1")):
            raise AssertionError(f"Unexpected boundary oracle checksum for {name}: {record}")
        records[name] = record
    if records["reference"] != records["corrected"]:
        raise AssertionError("Corrected length/normalization differs from the original numeric contract")
    if records["legacy"]["reference_checksum"] != records["reference"]["reference_checksum"]:
        raise AssertionError("Legacy reference differs")
    (out / "results.json").write_text(json.dumps(records, indent=2, sort_keys=True)+"\n")
    print("Length/normalization boundary: 19662 cases; corrected/reference match, legacy has 6544 failures.")


if __name__ == "__main__":
    p=argparse.ArgumentParser(description=__doc__)
    p.add_argument("box2d", type=Path); p.add_argument("out", type=Path)
    args=p.parse_args(); test(args.box2d,args.out)
