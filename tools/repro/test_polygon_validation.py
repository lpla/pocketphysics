#!/usr/bin/env python3
"""Execute the transformed polygon API under host memory sanitizers."""

from __future__ import annotations

import argparse
import json
import os
from pathlib import Path
import platform
import shlex
import subprocess


def main() -> int:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("deps", type=Path, help="dependencies from a modern build")
    parser.add_argument("out", type=Path)
    args = parser.parse_args()
    root = Path(__file__).resolve().parents[2]
    deps = args.deps.resolve()
    out = args.out.resolve()
    out.mkdir(parents=True, exist_ok=True)
    box = deps / "box2d-2.0.1"
    convex = deps / "convex-decomposition"
    compiler = shlex.split(os.environ.get("CXX", "c++"))
    version = subprocess.check_output(compiler + ["--version"], text=True)
    env = dict(os.environ, ASAN_OPTIONS="detect_leaks=1:halt_on_error=1",
               UBSAN_OPTIONS="halt_on_error=1:print_stacktrace=1")
    if platform.system() == "Darwin":
        env["ASAN_OPTIONS"] = "detect_leaks=0:halt_on_error=1"
    records = []
    for scalar in ("float", "fixed"):
        for guarded in (False, True):
            label = f"{scalar}-{'guarded' if guarded else 'control'}"
            executable = out / label
            sanitizer = "address,undefined,float-divide-by-zero" if scalar == "float" else "address"
            flags = ["-O1", "-g", "-std=gnu++98", "-fsanitize=" + sanitizer,
                     "-fno-omit-frame-pointer", "-ffunction-sections", "-fdata-sections",
                     "-include", "float.h", "-include", "string.h"]
            if scalar == "fixed":
                flags.append("-DTARGET_FLOAT32_IS_FIXED")
            if guarded:
                flags.append("-DPP_POLYGON_VALIDATION_GUARD")
            command = compiler + flags + [
                "-I" + str(convex), "-I" + str(box / "Include"),
                "-I" + str(box / "Source"), "-I" + str(box / "Source/Common"),
                "-I" + str(root / "tools/repro/benchmark_source"),
                str(root / "tools/repro/polygon_validation_host.cpp"),
                str(convex / "b2Polygon.cpp"), str(convex / "b2Triangle.cpp"),
                "-Wl,-dead_strip" if platform.system() == "Darwin" else "-Wl,--gc-sections",
                "-o", str(executable),
            ]
            compiled = subprocess.run(command, capture_output=True, text=True)
            (out / f"{label}.compile.log").write_text(compiled.stdout + compiled.stderr)
            if compiled.returncode:
                raise SystemExit(f"{label} compilation failed: {compiled.stderr}")
            for case in (("suite",) if guarded else ("empty", "crossed")):
                run = subprocess.run([str(executable)] + ([] if guarded else [case]),
                                     capture_output=True, text=True, env=env)
                (out / f"{label}-{case}.run.log").write_text(run.stdout + run.stderr)
                if guarded:
                    accepted = run.returncode == 0 and "cases=16 failures=0 checksum=722c5bcb" in run.stdout
                else:
                    accepted = run.returncode != 0 and (
                        "AddressSanitizer" in run.stderr or "runtime error:" in run.stderr
                    ) and ("b2Polygon" in run.stderr or "PolyCentroid" in run.stderr)
                records.append(dict(label=label, case=case, compile_command=command,
                                    compile_exit_code=compiled.returncode,
                                    run_exit_code=run.returncode, accepted=accepted,
                                    sanitizers=sanitizer))
                print(label, case, "accepted" if accepted else "FAILED", flush=True)
                if not accepted:
                    raise SystemExit(run.stdout + run.stderr)
    report = dict(schema=1, compiler=version, platform=platform.platform(),
                  sanitizer_environment={key: env[key] for key in ("ASAN_OPTIONS", "UBSAN_OPTIONS")},
                  records=records,
                  limitations=["Fixed-point cases use AddressSanitizer, not an integer undefined-behavior audit.",
                               "Host results do not substitute for ARM9 hardware arithmetic tests."])
    (out / "validation.json").write_text(json.dumps(report, indent=2) + "\n")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
