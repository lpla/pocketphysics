#!/usr/bin/env python3
"""Validate signed threshold quadrants in the target's C++20 language mode."""

import argparse
import hashlib
import json
import platform
import subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]


def test(box2d: Path, out: Path):
    out.mkdir(parents=True)
    records = {}
    roles = (
        ("reference", "c++20", []),
        ("corrected", "c++20", ["-DPP_BOX2D_LENGTH_FIXED_ESTIMATE"]),
        (
            "legacy",
            "c++20",
            ["-DPP_BOX2D_LENGTH_FIXED_ESTIMATE", "-DPP_BOX2D_LENGTH_LEGACY_THRESHOLD"],
        ),
        ("cxx17-language-control", "c++17", []),
    )
    for name, standard, flags in roles:
        binary = out / name
        command = [
            "c++",
            "-std=" + standard,
            "-O2",
            "-g",
            "-fsanitize=address,undefined",
            "-fno-sanitize-recover=undefined",
            "-fno-omit-frame-pointer",
            "-DTARGET_FLOAT32_IS_FIXED",
            *flags,
            "-I" + str(box2d / "Source/Common"),
            "-I" + str(ROOT / "tools/repro/benchmark_source"),
            str(ROOT / "tools/repro/signed_length_host.cpp"),
            "-o",
            str(binary),
        ]
        compiled = subprocess.run(command, capture_output=True, text=True)
        (out / (name + ".compile.log")).write_text(compiled.stdout + compiled.stderr)
        if compiled.returncode:
            raise AssertionError(f"Signed length compilation failed: {name}")
        result = subprocess.run([str(binary.resolve())], capture_output=True, text=True)
        (out / (name + ".stdout.log")).write_text(result.stdout)
        (out / (name + ".stderr.log")).write_text(result.stderr)
        record = dict(standard=standard, command=command, exit_status=result.returncode)
        if standard == "c++17":
            if (
                not result.returncode
                or "runtime error: left shift of negative value -6552"
                not in result.stderr
            ):
                raise AssertionError(
                    "C++17 language control did not produce its specific diagnostic"
                )
        else:
            expected_failures = 26176 if name == "legacy" else 0
            if result.stderr or result.returncode != int(name == "legacy"):
                raise AssertionError(f"Unexpected signed length result: {name}")
            values = json.loads(result.stdout)
            expected = dict(
                cases=78648,
                failures=expected_failures,
                actual_checksum="a41ac8af" if name == "legacy" else "86e2a12f",
                reference_checksum="86e2a12f",
            )
            if values != expected:
                raise AssertionError(f"Signed length oracle mismatch: {name}: {values}")
            record["result"] = values
        records[name] = record
    inputs = [
        ROOT / "tools/repro/signed_length_host.cpp",
        ROOT / "tools/repro/benchmark_source/pp_signed_length_validation.h",
        ROOT / "tools/repro/benchmark_source/pp_length_validation.h",
        box2d / "Source/Common/Fixed.h",
        box2d / "Source/Common/b2Math.h",
    ]
    report = dict(
        source_revision=subprocess.check_output(
            ["git", "rev-parse", "HEAD"], cwd=ROOT, text=True
        ).strip(),
        working_tree_dirty=bool(
            subprocess.check_output(
                ["git", "status", "--porcelain", "--untracked-files=normal"],
                cwd=ROOT,
                text=True,
            ).strip()
        ),
        compiler=subprocess.check_output(["c++", "--version"], text=True),
        platform=platform.platform(),
        roles=records,
        input_sha256={
            str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in inputs
        },
        scope="Host software-math API matrix in C++20, 78648 cases including repeated axes; not native ARM9 signed-vector execution or all fixed-point arithmetic.",
    )
    (out / "results.json").write_text(json.dumps(report, indent=2) + "\n")
    print(
        "Signed length: 78648 cases; reference/correction match, legacy fails 26176; C++17 language control diagnosed."
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("box2d", type=Path)
    parser.add_argument("out", type=Path)
    args = parser.parse_args()
    test(args.box2d, args.out)
