#!/usr/bin/env python3
"""Recover the historical PNG compilation context from its preserved C source."""

import argparse
import hashlib
from pathlib import Path


SOURCE_SHA256 = "799fa2b9985d787192bec9de6d97c5482a1dd7d0af31196b309abaf398d3a4b8"
READ_BEGIN = b"void ulPngReadFn("
FLUSH_BEGIN = b"void ulPngFlushFn("
READ_DECLARATION = b"void ulPngReadFn(png_structp png_ptr, png_bytep data, png_size_t length);\n\n"
ALPHA_DECLARATIONS = b"\tint convertAlpha = 0;\n\tu8 *alphaBuffer = NULL;\n"
COLOR_DECLARATION = b"\tunsigned char r=0, g=0, b=0, a=0;\n"
OFFSET_DECLARATION = b"int offset = (y * width + x) * 4;"
OLD_INDEX = b"alphaBuffer[offset"
NEW_INDEX = b"alphaBuffer[(y * pPngInfo->width + x) * 4"


def recover_source(source: bytes) -> bytes:
    if hashlib.sha256(source).hexdigest() != SOURCE_SHA256:
        raise ValueError("historical PNG source identity differs")
    for token in (READ_BEGIN, FLUSH_BEGIN, ALPHA_DECLARATIONS, COLOR_DECLARATION, OFFSET_DECLARATION):
        if source.count(token) != 1:
            raise ValueError("expected unique historical PNG source boundaries")
    if source.count(OLD_INDEX) != 4:
        raise ValueError("expected four historical alpha stores")
    begin, end = source.index(READ_BEGIN), source.index(FLUSH_BEGIN)
    if end <= begin:
        raise ValueError("historical PNG function boundaries are out of order")
    read_body = source[begin:end]
    result = source[:begin] + READ_DECLARATION + source[end:] + read_body
    result = result.replace(ALPHA_DECLARATIONS, b"")
    result = result.replace(COLOR_DECLARATION, COLOR_DECLARATION + ALPHA_DECLARATIONS)
    return result.replace(OFFSET_DECLARATION, b"").replace(OLD_INDEX, NEW_INDEX)


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    result = recover_source(args.source.read_bytes())
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(result)


if __name__ == "__main__":
    main()
