#!/usr/bin/env python3
"""Exercise the historical object gate with independent ELF mutations."""

import struct
import tempfile
import unittest
from pathlib import Path

from verify_recovered_objects import HEADER, SECTION, SYMBOL, REL, object_identity, identity_hash


def specimen(code=b"\x00\x00\xa0\xe1" * 2, relocation=28, symbol_value=0,
             alignment=4, debug=b"source path one", callee_info=0x12,
             elf_flags=0):
    strings = b"\0entry\0callee\0"
    names = b"\0.text\0.rel.text\0.symtab\0.strtab\0.shstrtab\0.debug_info\0"
    symbols = bytes(SYMBOL.size) + SYMBOL.pack(1, symbol_value, 8, 0x12, 0, 1)
    symbols += SYMBOL.pack(7, 0, 0, callee_info, 0, 0)
    parts = [
        (".text", 1, 6, code, 0, 0, alignment, 0),
        (".rel.text", 9, 0, REL.pack(4, (2 << 8) | relocation), 3, 1, 4, REL.size),
        (".symtab", 2, 0, symbols, 4, 1, 4, SYMBOL.size),
        (".strtab", 3, 0, strings, 0, 0, 1, 0),
        (".shstrtab", 3, 0, names, 0, 0, 1, 0),
        (".debug_info", 1, 0, debug, 0, 0, 1, 0),
    ]
    data = bytearray(HEADER.size)
    sections = [bytes(SECTION.size)]
    for name, kind, flags, body, link, info, align, entry_size in parts:
        data.extend(bytes((-len(data)) % align))
        sections.append(SECTION.pack(names.index(name.encode() + b"\0"), kind,
                                    flags, 0, len(data), len(body), link, info,
                                    align, entry_size))
        data.extend(body)
    table_offset = len(data)
    data.extend(b"".join(sections))
    data[:HEADER.size] = HEADER.pack(b"\x7fELF\x01\x01\x01" + bytes(9), 1, 40, 1,
                                    0, 0, table_offset, elf_flags, HEADER.size, 0, 0,
                                    SECTION.size, len(sections), 5)
    return data


class ObjectIdentityTests(unittest.TestCase):
    def digest(self, data):
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "test.o"
            path.write_bytes(data)
            return identity_hash(object_identity(path))

    def test_repeat_and_debug_metadata(self):
        self.assertEqual(self.digest(specimen()), self.digest(specimen(debug=b"different build directory")))

    def test_program_changes_fail_identity(self):
        baseline = self.digest(specimen())
        for variant in (specimen(code=b"\x01\x00\xa0\xe1" * 2),
                        specimen(relocation=29), specimen(symbol_value=4),
                        specimen(alignment=8), specimen(callee_info=0x22),
                        specimen(elf_flags=0x4000000)):
            with self.subTest(variant=variant):
                self.assertNotEqual(baseline, self.digest(variant))

    def test_truncated_input_fails(self):
        for variant in (specimen()[:20], specimen()[:-1]):
            with self.assertRaises(ValueError):
                self.digest(variant)

    def test_wrong_architecture_fails(self):
        data = specimen()
        struct.pack_into("<H", data, 18, 3)
        with self.assertRaisesRegex(ValueError, "ARM ELF32"):
            self.digest(data)

    def test_invalid_relocation_symbol_fails(self):
        data = specimen()
        struct.pack_into("<I", data, HEADER.size + 8 + 4, 99 << 8)
        with self.assertRaisesRegex(ValueError, "relocation"):
            self.digest(data)


if __name__ == "__main__":
    unittest.main()
