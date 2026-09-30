#!/usr/bin/env python3
"""Check source-built ARM objects against normalized historical ELF identities.

The identity covers ELF flags, allocated section contents and layout, their
relocations, and exported symbols. Debug sections, file symbols, compiler
comments, and nonallocated ARM attributes are excluded; the final ROM hash
independently guards the result of linking with the pinned toolchain.
"""

from __future__ import annotations

import argparse
import hashlib
import json
import struct
from pathlib import Path


HEADER = struct.Struct("<16sHHIIIIIHHHHHH")
SECTION = struct.Struct("<IIIIIIIIII")
SYMBOL = struct.Struct("<IIIBBH")
REL = struct.Struct("<II")


def object_identity(path: Path) -> dict:
    data = path.read_bytes()

    def take(offset: int, size: int) -> bytes:
        if offset < 0 or size < 0 or offset + size > len(data):
            raise ValueError(f"truncated ELF: {path}")
        return data[offset:offset + size]

    h = HEADER.unpack(take(0, HEADER.size))
    if h[0][:7] != b"\x7fELF\x01\x01\x01" or h[1:4] != (1, 40, 1):
        raise ValueError(f"expected little-endian ARM ELF32 relocatable object: {path}")
    if h[11] != SECTION.size or not 0 < h[13] < h[12]:
        raise ValueError("unsupported section table")
    sections = [SECTION.unpack(take(h[6] + i * h[11], h[11])) for i in range(h[12])]

    def contents(section: tuple) -> bytes:
        return take(section[4], section[5])

    def string(table: bytes, offset: int) -> str:
        if offset < 0 or offset >= len(table) or b"\0" not in table[offset:]:
            raise ValueError("invalid ELF string offset")
        return table[offset:table.index(b"\0", offset)].decode("ascii")

    names = contents(sections[h[13]])
    section_names = [string(names, s[0]) for s in sections]

    def section_name(index: int) -> str:
        if index == 0:
            return "UND"
        if index == 0xfff1:
            return "ABS"
        if index == 0xfff2:
            return "COMMON"
        if index >= len(sections):
            raise ValueError("invalid symbol section index")
        return section_names[index]

    symbol_tables = {}
    exports = []
    for index, s in enumerate(sections):
        if s[1] != 2:
            continue
        if s[9] != SYMBOL.size or s[5] % SYMBOL.size or s[6] >= len(sections):
            raise ValueError("invalid symbol table")
        strings = contents(sections[s[6]])
        entries = []
        for name, value, size, info, other, shndx in SYMBOL.iter_unpack(contents(s)):
            symbol = [string(strings, name), section_name(shndx), value, size, info, other]
            entries.append(symbol)
            if info >> 4 and shndx:
                exports.append(symbol)
        symbol_tables[index] = entries

    allocated = []
    relocations = []
    for index, s in enumerate(sections):
        if s[2] & 2:
            allocated.append({
                "name": section_names[index], "type": s[1], "flags": s[2],
                "size": s[5], "alignment": s[8], "entry_size": s[9],
                "sha256": None if s[1] == 8 else hashlib.sha256(contents(s)).hexdigest(),
            })
        if s[1] not in (4, 9):
            continue
        if s[7] >= len(sections):
            raise ValueError("invalid relocation target section")
        if not sections[s[7]][2] & 2:
            continue
        if s[1] != 9 or s[9] != REL.size or s[5] % REL.size or s[6] not in symbol_tables:
            raise ValueError("unsupported relocation table")
        symbols = symbol_tables[s[6]]
        for offset, info in REL.iter_unpack(contents(s)):
            if info >> 8 >= len(symbols) or offset >= sections[s[7]][5]:
                raise ValueError("invalid relocation offset or symbol")
            symbol = symbols[info >> 8]
            # A section symbol's name is optional; its section and value identify it.
            name = "" if symbol[4] & 15 == 3 else symbol[0]
            relocations.append([section_names[s[7]], offset, info & 255,
                                name, *symbol[1:]])
    return {"elf_flags": h[7], "sections": sorted(allocated, key=lambda s: s["name"]),
            "relocations": sorted(relocations), "exports": sorted(exports)}


def identity_hash(identity: dict) -> str:
    return hashlib.sha256(json.dumps(identity, sort_keys=True, separators=(",", ":")).encode()).hexdigest()


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("manifest", type=Path)
    parser.add_argument("object_dir", type=Path)
    args = parser.parse_args()
    manifest = json.loads(args.manifest.read_text())
    for member, expected in sorted(manifest["objects"].items()):
        actual = object_identity(args.object_dir / member)
        digest = identity_hash(actual)
        if digest != expected["identity_sha256"]:
            raise SystemExit(f"{member}: ELF flags, allocated sections, relocations, or exported symbols differ: {digest}")
        print(f"{member}: historical object identity verified ({expected['allocated_bytes']} allocated bytes)")


if __name__ == "__main__":
    main()
