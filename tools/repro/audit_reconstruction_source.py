#!/usr/bin/env python3
"""Reject binary payloads and encoded instruction streams in recovered source."""

from __future__ import annotations

import re
from pathlib import Path


ROOT = Path(__file__).resolve().parents[2]
SOURCE = ROOT / "research" / "reconstruction" / "v06"
PROHIBITED_SUFFIXES = {
    ".a",
    ".bin",
    ".elf",
    ".nds",
    ".o",
    ".raw",
    ".rom",
    ".zip",
}
INCBIN = re.compile(r"^\s*\.incbin\b", re.MULTILINE | re.IGNORECASE)
WORD = re.compile(r"^\s*\.word\b", re.MULTILINE | re.IGNORECASE)
LONG = re.compile(r"^\s*\.long\b", re.MULTILINE | re.IGNORECASE)


def main() -> int:
    failures: list[str] = []
    files = 0
    source_bytes = 0
    assembly_files = 0
    long_directives = 0

    for path in sorted(SOURCE.rglob("*")):
        if not path.is_file():
            continue
        files += 1
        data = path.read_bytes()
        source_bytes += len(data)
        relative = path.relative_to(ROOT)

        if path.suffix.lower() in PROHIBITED_SUFFIXES:
            failures.append(f"prohibited binary extension: {relative}")
        if b"\0" in data:
            failures.append(f"NUL-bearing file: {relative}")

        if path.suffix == ".S":
            assembly_files += 1
            text = data.decode("latin-1")
            if INCBIN.search(text):
                failures.append(f"binary include in recovered assembly: {relative}")
            if WORD.search(text):
                failures.append(f".word-encoded recovered assembly: {relative}")
            long_directives += len(LONG.findall(text))

    if failures:
        for failure in failures:
            print(f"FAIL {failure}")
        return 1

    print(
        "Reconstruction source audit passed: "
        f"{files} text files, {source_bytes} bytes, "
        f"{assembly_files} assembly files, {long_directives} .long data/relocation directives."
    )
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
