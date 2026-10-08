#!/usr/bin/env python3
"""Partition unchanged historical text C into reproducible compiler units."""

import argparse
import hashlib
from pathlib import Path


SOURCE_SHA256 = "1ec6080d86b55e97f5dee2fe65eea62d10ed0795a1d2dc8d81a7b77ecc675584"
BEGIN = b"UL_FONT *ulCreateFont("
END = b"UL_FONT *ulLoadFont("
FONT_PREFIX = (
    b'#include "ulib.h"\n'
    b'void ulDrawChar1BitToImage(UL_IMAGE*, int, int, int, int, int, int, int, const unsigned char*);\n'
)


def split_source(source: bytes) -> tuple[bytes, bytes]:
    if source.count(BEGIN) != 1 or source.count(END) != 1:
        raise ValueError("expected unique historical font boundaries")
    begin, end = source.index(BEGIN), source.index(END)
    if end <= begin:
        raise ValueError("historical font boundaries are out of order")
    return source[:begin] + source[end:], FONT_PREFIX + source[begin:end]


def prepare(source: bytes, output: Path) -> None:
    if hashlib.sha256(source).hexdigest() != SOURCE_SHA256:
        raise ValueError("historical text source identity differs")
    core, font = split_source(source)
    output.mkdir(parents=True, exist_ok=True)
    (output / "text-core.c").write_bytes(core)
    (output / "font-source.c").write_bytes(font)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    prepare(args.source.read_bytes(), args.output)


if __name__ == "__main__":
    main()
