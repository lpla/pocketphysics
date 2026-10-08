#!/usr/bin/env python3
"""Negative placement gates for the isolated picking-ITCM experiment."""

import unittest
from pathlib import Path
import tempfile

from check_query_itcm import check_functions, check_placement, picking_functions, MANGLED
from verify_recovered_objects import HEADER, SECTION, SYMBOL


SECTIONS = [dict(name=".itcm", address=0x01000000, size=15152)]
MAP = """                0x010001f0                World::getThingsAt(int, int, Thing**, int, bool)
                0x010007dc                World::getThingsAt(int, int, Thing**, int, bool) [clone .constprop.0]
"""
FUNCTIONS = [dict(name=MANGLED, address=0x010001f0, size=1516, section=".itcm"),
             dict(name=MANGLED + ".constprop.0", address=0x010007dc, size=1452, section=".itcm")]


def specimen(info=2, index=2, name=1, entry_size=SYMBOL.size):
    names = b"\0.shstrtab\0.itcm\0.strtab\0.symtab\0"
    strings = b"\0" + MANGLED.encode("ascii") + b"\0"
    offset = HEADER.size + 5 * SECTION.size
    symbols = SYMBOL.pack(0, 0, 0, 0, 0, 0) + SYMBOL.pack(name, 0x010001f0, 1516, info, 0, index)
    header = HEADER.pack(b"\x7fELF\x01\x01\x01" + b"\0" * 9, 2, 40, 1, 0, 0,
                         HEADER.size, 0, HEADER.size, 0, 0, SECTION.size, 5, 1)
    sections = [SECTION.pack(*([0] * 10)),
                SECTION.pack(1, 3, 0, 0, offset, len(names), 0, 0, 1, 0),
                SECTION.pack(names.index(b".itcm"), 1, 6, 0x01000000, 0, 15152, 0, 0, 4, 0),
                SECTION.pack(names.index(b".strtab"), 3, 0, 0, offset + len(names), len(strings), 0, 0, 1, 0),
                SECTION.pack(names.index(b".symtab"), 2, 0, 0, offset + len(names) + len(strings),
                             len(symbols), 3, 1, 4, entry_size)]
    return header + b"".join(sections) + names + strings + symbols


class QueryPlacementTests(unittest.TestCase):
    def test_complete_placement(self):
        self.assertEqual(len(check_placement(SECTIONS, MAP)["picking_symbols"]), 2)
        check_functions(check_placement(SECTIONS, MAP), FUNCTIONS)

    def test_missing_and_oversized_itcm(self):
        for sections in ([], SECTIONS * 2, [dict(SECTIONS[0], size=32769)],
                         [dict(SECTIONS[0], address=0x02000000)], [dict(SECTIONS[0], size=0)]):
            with self.assertRaises(ValueError):
                check_placement(sections, MAP)

    def test_function_and_clone_must_be_inside(self):
        for address in ("0x020001f0", "0x00fffffc", "0x01003b30"):
            for original in ("0x010001f0", "0x010007dc"):
                with self.assertRaises(ValueError):
                    check_placement(SECTIONS, MAP.replace(original, address))

    def test_missing_and_duplicate_symbols(self):
        for text in ("no picking function", MAP + MAP.splitlines()[0]):
            with self.assertRaises(ValueError):
                check_placement(SECTIONS, text)

    def test_full_function_range_must_fit(self):
        placement = check_placement(SECTIONS, MAP)
        for changes in (dict(size=0), dict(size=-1), dict(size=32768),
                        dict(section=".text"), dict(address=0x00fffffc)):
            for index in range(2):
                functions = [dict(entry, **changes) if position == index else entry
                             for position, entry in enumerate(FUNCTIONS)]
                with self.assertRaises(ValueError):
                    check_functions(placement, functions)

    def test_elf_inventory_must_match_map(self):
        placement = check_placement(SECTIONS, MAP)
        for functions in ([], FUNCTIONS[:1], FUNCTIONS + FUNCTIONS[:1],
                          [dict(FUNCTIONS[0], address=0x010001f4), FUNCTIONS[1]]):
            with self.assertRaises(ValueError):
                    check_functions(placement, functions)

    def test_elf_reader_preserves_complete_ranges(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "specimen.elf"
            path.write_bytes(specimen())
            self.assertEqual(picking_functions(path), FUNCTIONS[:1])

    def test_elf_reader_rejects_malformed_records(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "specimen.elf"
            for data in (b"", specimen()[:20], specimen()[:-1],
                         specimen(info=1), specimen(index=0), specimen(index=5),
                         specimen(name=1000), specimen(entry_size=8)):
                path.write_bytes(data)
                with self.assertRaises(ValueError):
                    picking_functions(path)


if __name__ == "__main__":
    unittest.main()
