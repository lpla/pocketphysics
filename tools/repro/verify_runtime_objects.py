#!/usr/bin/env python3
"""Verify runtime member inventories and identities, then fix archive order.

The manifest contains only hashes, member names, and sizes. It does not supply
object payloads. All archive contents must have been compiled from source.
"""

from __future__ import annotations

import argparse
from collections import Counter
import hashlib
import json
from pathlib import Path
import subprocess
import tempfile

from verify_recovered_objects import identity_hash, object_identity


def check_members(actual: list[str], expected: list[str]) -> None:
    if len(expected) != len(set(expected)) or Counter(actual) != Counter(expected):
        raise ValueError("runtime archive member inventory differs")
    if any(Path(name).name != name or name in (".", "..") for name in actual):
        raise ValueError("invalid runtime archive member name")


def check_object(path: Path, expected: dict) -> None:
    identity = object_identity(path)
    actual = {
        "identity_sha256": identity_hash(identity),
        "allocated_bytes": sum(section["size"] for section in identity["sections"]),
        "text_bytes": sum(section["size"] for section in identity["sections"] if section["flags"] & 4),
    }
    if actual != expected:
        raise ValueError(f"runtime object identity differs: {path}: {actual}")


def verify_runtime(manifest: dict, root: Path, ar: str) -> dict:
    report = {"archives": {}, "objects": {}, "support_files": {}}
    for relative, archive in manifest["archives"].items():
        path = root / relative
        rows = archive["members"]
        members = [row[0] for row in rows]
        actual = subprocess.check_output([ar, "t", str(path)], text=True).splitlines()
        check_members(actual, members)
        with tempfile.TemporaryDirectory() as tmp:
            directory = Path(tmp)
            subprocess.run([ar, "x", str(path)], cwd=directory, check=True)
            for member, digest, allocated, text in rows:
                check_object(directory / member, {"identity_sha256": digest,
                                                 "allocated_bytes": allocated, "text_bytes": text})
            ordered = directory / "ordered.a"
            subprocess.run([ar, "crs", str(ordered), *members], cwd=directory, check=True)
            if subprocess.check_output([ar, "t", str(ordered)], text=True).splitlines() != members:
                raise ValueError(f"archive order differs: {relative}")
            path.write_bytes(ordered.read_bytes())
        report["archives"][relative] = {"verified_members": len(members)}
        print(f"{relative}: {len(members)} source-built members verified; historical order restored")
    for relative, expected in manifest["objects"].items():
        check_object(root / relative, expected)
        report["objects"][relative] = expected["identity_sha256"]
    for relative, expected in manifest["support_files"].items():
        digest = hashlib.sha256((root / relative).read_bytes()).hexdigest()
        if digest != expected:
            raise ValueError(f"runtime linker/specification file differs: {relative}")
        report["support_files"][relative] = digest
    return report


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("manifest", type=Path)
    parser.add_argument("root", type=Path)
    parser.add_argument("--ar", required=True)
    parser.add_argument("--report", required=True, type=Path)
    args = parser.parse_args()
    report = verify_runtime(json.loads(args.manifest.read_text()), args.root.resolve(), args.ar)
    args.report.write_text(json.dumps(report, indent=2) + "\n")


if __name__ == "__main__":
    main()
