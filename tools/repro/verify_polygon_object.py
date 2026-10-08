#!/usr/bin/env python3
"""Validate the complete archived C++ unit against reviewed release boundaries."""

from __future__ import annotations

import argparse
import json
from pathlib import Path

from verify_recovered_objects import HEADER, SECTION, SYMBOL, object_identity


def load_layout(path: Path) -> list[dict]:
    rows = json.loads(path.read_text())
    offset = 0
    names = set()
    for row in rows:
        if row["source"] is not True or row["section"] != ".text":
            raise ValueError("expected complete C++ polygon unit")
        if "compiler_variant" in row:
            raise ValueError("per-method compiler controls are not permitted")
        if row["offset"] != offset or row["size"] <= 0 or row["size"] % 4:
            raise ValueError("invalid polygon method boundary")
        if row["name"] in names:
            raise ValueError("duplicate polygon method")
        names.add(row["name"])
        offset += row["size"]
    if len(rows) != 48 or offset != 30768:
        raise ValueError("polygon layout does not cover the complete release unit")
    return rows


def function_symbols(path: Path) -> dict:
    # object_identity validates the ELF bounds and indices before this reader.
    object_identity(path)
    data = path.read_bytes()
    header = HEADER.unpack_from(data)
    sections = [SECTION.unpack_from(data, header[6] + i * SECTION.size)
                for i in range(header[12])]
    names = sections[header[13]]
    section_strings = data[names[4]:names[4] + names[5]]

    def string(table, offset):
        return table[offset:table.index(b"\0", offset)].decode("ascii")

    result = {}
    for section in sections:
        if section[1] != 2:
            continue
        strings = sections[section[6]]
        strings = data[strings[4]:strings[4] + strings[5]]
        for name, value, size, info, _, index in SYMBOL.iter_unpack(
                data[section[4]:section[4] + section[5]]):
            if info & 15 != 2 or not 0 < index < len(sections):
                continue
            result[string(strings, name)] = (string(section_strings, sections[index][0]), value, size)
    return result


def verify_layout(rows: list[dict], identity: dict, symbols: dict) -> None:
    section = next((s for s in identity["sections"] if s["name"] == ".text"), None)
    if section is None or section["size"] != 30768 or section["flags"] != 6:
        raise ValueError("complete polygon executable section differs")
    for row in rows:
        if symbols.get(row["name"]) != (".text", row["offset"], row["size"]):
            raise ValueError(f"polygon method boundary differs: {row['name']}")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("layout", type=Path)
    parser.add_argument("object", type=Path)
    args = parser.parse_args()
    rows = load_layout(args.layout)
    verify_layout(rows, object_identity(args.object), function_symbols(args.object))
    print("b2Polygon.o: all 48 archived C++ method boundaries verified")


if __name__ == "__main__":
    main()
