#!/usr/bin/env python3
"""Pack validated XML save cases without compiled binaries or source-tree copies."""

import argparse
import hashlib
import json
import shutil
from pathlib import Path


def archive(source: Path, target: Path) -> None:
    report = json.loads((source / "results.json").read_text())
    cases = report.pop("cases")
    if not cases:
        raise AssertionError("No completed cases")
    counters, packed, fixtures = {}, [], {}
    for case in cases:
        role = case["role"]
        if role not in {"control", "guarded"}:
            raise AssertionError("Unknown specimen role")
        fixture = (source / (role + ".cpp")).read_bytes()
        if hashlib.sha256(fixture).hexdigest() != case["fixture_sha256"]:
            raise AssertionError("Generated fixture differs from case manifest")
        fixtures[role] = fixture
        index = counters.get(role, 0)
        counters[role] = index + 1
        stem = f"{role}-{index}"
        entry = dict(
            case=case,
            stdout=(source / (stem + ".stdout.log")).read_bytes().decode("utf-8"),
            stderr=(source / (stem + ".stderr.log")).read_bytes().decode("utf-8"),
        )
        if role == "guarded":
            if (
                case["exit_status"] != 0
                or entry["stderr"]
                or case["expected"] != "pass"
            ):
                raise AssertionError("Guarded case did not pass")
            payload = (source / (stem + ".pp")).read_bytes()
            entry["file"] = dict(
                sha256=hashlib.sha256(payload).hexdigest(),
                bytes=len(payload),
                text=payload.decode("utf-8"),
            )
        elif (
            not case["exit_status"]
            or case["expected"] not in {"stack-buffer-overflow", "heap-buffer-overflow"}
            or "AddressSanitizer: " + case["expected"] not in entry["stderr"]
        ):
            raise AssertionError("Control did not fail with its specific diagnostic")
        packed.append(entry)
    if set(fixtures) != {"control", "guarded"}:
        raise AssertionError("Both specimen roles are required")
    target.mkdir(parents=True)
    report.update(
        case_count=len(cases),
        format="Complete UTF-8 case streams and output files in cases.jsonl",
    )
    (target / "metadata.json").write_text(json.dumps(report, indent=2) + "\n")
    (target / "cases.jsonl").write_text(
        "".join(json.dumps(row) + "\n" for row in packed)
    )
    for role in fixtures:
        (target / (role + ".cpp")).write_bytes(fixtures[role])
        shutil.copy2(source / (role + ".compile.log"), target / (role + ".compile.log"))
    print(
        f"Archived {len(cases)} complete cases with verified fixture/output identities: {target}"
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("target", type=Path)
    args = parser.parse_args()
    archive(args.source, args.target)
