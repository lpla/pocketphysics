#!/usr/bin/env python3
"""Verify the picking function and its linked clones reside in bounded ITCM."""

import argparse
import hashlib
import json
from pathlib import Path
import re

from audit_executable_provenance import executable_sections
from verify_recovered_objects import HEADER, SECTION, SYMBOL as ELF_SYMBOL


SYMBOL = re.compile(r"^\s+(0x[0-9a-fA-F]+)\s+(World::getThingsAt\(int, int, Thing\*\*, int, bool\)(?: \[clone [^\]]+\])?)\s*$")
MANGLED = "_ZN5World11getThingsAtEiiPP5Thingib"


def picking_functions(path):
    data = path.read_bytes()

    def take(offset, size):
        if offset < 0 or size < 0 or offset + size > len(data):
            raise ValueError("Truncated ELF")
        return data[offset:offset + size]

    header = HEADER.unpack(take(0, HEADER.size))
    if header[0][:7] != b"\x7fELF\x01\x01\x01" or header[1:4] != (2, 40, 1):
        raise ValueError("Expected ARM ELF32 executable")
    if header[11] != SECTION.size or not 0 < header[13] < header[12]:
        raise ValueError("Invalid ELF section table")
    sections = [SECTION.unpack(take(header[6] + index * SECTION.size, SECTION.size))
                for index in range(header[12])]

    def contents(section):
        return take(section[4], section[5])

    def string(table, offset):
        if not 0 <= offset < len(table) or b"\0" not in table[offset:]:
            raise ValueError("Invalid ELF string")
        return table[offset:table.index(b"\0", offset)].decode("ascii")

    names = contents(sections[header[13]])
    result = []
    for table in sections:
        if table[1] != 2:
            continue
        if table[9] != ELF_SYMBOL.size or table[5] % ELF_SYMBOL.size or table[6] >= len(sections):
            raise ValueError("Invalid ELF symbol table")
        strings = contents(sections[table[6]])
        for name, address, size, info, _, index in ELF_SYMBOL.iter_unpack(contents(table)):
            name = string(strings, name)
            if name != MANGLED and not name.startswith(MANGLED + "."):
                continue
            if info & 15 != 2 or not 0 < index < len(sections):
                raise ValueError("Picking symbol is not a defined function")
            result.append(dict(name=name, address=address, size=size,
                               section=string(names, sections[index][0])))
    return result


def check_functions(placement, functions):
    start = placement["itcm"]["address"]
    end = start + placement["itcm"]["size"]
    if not functions or len({entry["name"] for entry in functions}) != len(functions):
        raise ValueError("Missing or duplicate ELF picking functions")
    for entry in functions:
        if (entry["section"] != ".itcm" or entry["size"] <= 0
                or not start <= entry["address"] < entry["address"] + entry["size"] <= end):
            raise ValueError("Complete picking function is outside executable ITCM")
    if (len(functions) != len(placement["picking_symbols"])
            or {entry["address"] for entry in functions}
            != {entry["address"] for entry in placement["picking_symbols"]}):
        raise ValueError("ELF and map picking inventories disagree")


def check_placement(sections, text):
    itcm = [section for section in sections if section["name"] == ".itcm"]
    if len(itcm) != 1 or itcm[0]["address"] != 0x01000000 or not 0 < itcm[0]["size"] <= 32768:
        raise ValueError("Missing, misplaced, or oversized executable ITCM")
    start = itcm[0]["address"]
    end = start + itcm[0]["size"]
    symbols = []
    for line in text.splitlines():
        match = SYMBOL.fullmatch(line)
        if match:
            address = int(match[1], 16)
            if not start <= address < end:
                raise ValueError("Picking function or clone is outside executable ITCM")
            symbols.append(dict(name=match[2], address=address))
    if not symbols or len({symbol["name"] for symbol in symbols}) != len(symbols):
        raise ValueError("Missing or duplicate picking symbols")
    return dict(itcm=itcm[0], picking_symbols=symbols)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("elf", type=Path)
    parser.add_argument("map", type=Path)
    parser.add_argument("out", type=Path)
    args = parser.parse_args()
    result = check_placement(executable_sections(args.elf), args.map.read_text())
    functions = picking_functions(args.elf)
    check_functions(result, functions)
    result["picking_functions"] = functions
    result["elf_sha256"] = hashlib.sha256(args.elf.read_bytes()).hexdigest()
    args.out.write_text(json.dumps(result, indent=2) + "\n")
    print("Picking code and clones verified in", result["itcm"]["size"], "ITCM bytes")


if __name__ == "__main__":
    main()
