#!/usr/bin/env python3
import struct
import tempfile
import unittest
from pathlib import Path

from apply_reconstructed_sections import read_sections


ELF_HEADER = struct.Struct("<16sHHIIIIIHHHHHH")
ELF_SECTION = struct.Struct("<IIIIIIIIII")


def make_elf(*, section_type=1, section_flags=2, name_index=1, truncate=False):
    names = b"\0.reconstructed.test\0.shstrtab\0"
    payload = b"\x01\x02\x03\x04"
    data_offset = ELF_HEADER.size
    names_offset = data_offset + len(payload)
    section_offset = names_offset + len(names)
    ident = b"\x7fELF\x01\x01\x01" + b"\0" * 9
    header = ELF_HEADER.pack(
        ident,
        2,
        40,
        1,
        0,
        0,
        section_offset,
        0,
        ELF_HEADER.size,
        0,
        0,
        ELF_SECTION.size,
        3,
        2,
    )
    sections = b"".join(
        (
            ELF_SECTION.pack(0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
            ELF_SECTION.pack(
                name_index,
                section_type,
                section_flags,
                0x02001000,
                data_offset,
                len(payload),
                0,
                0,
                1,
                0,
            ),
            ELF_SECTION.pack(21, 3, 0, 0, names_offset, len(names), 0, 0, 1, 0),
        )
    )
    image = header + payload + names + sections
    return image[:-1] if truncate else image


class ReconstructedSectionTests(unittest.TestCase):
    def read(self, image):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / "overlay.elf"
            path.write_bytes(image)
            return read_sections(path, ".reconstructed.")

    def test_reads_named_allocated_section(self):
        sections = self.read(make_elf())
        self.assertEqual(len(sections), 1)
        self.assertEqual(sections[0].name, ".reconstructed.test")
        self.assertEqual(sections[0].address, 0x02001000)
        self.assertEqual(sections[0].data, b"\x01\x02\x03\x04")

    def test_rejects_non_progbits_section(self):
        with self.assertRaisesRegex(ValueError, "invalid type or flags"):
            self.read(make_elf(section_type=8))

    def test_rejects_nonallocated_section(self):
        with self.assertRaisesRegex(ValueError, "invalid type or flags"):
            self.read(make_elf(section_flags=0))

    def test_rejects_unterminated_section_name(self):
        with self.assertRaisesRegex(ValueError, "unterminated ELF section name"):
            self.read(make_elf(name_index=35))

    def test_rejects_truncated_section_table(self):
        with self.assertRaisesRegex(ValueError, "truncated ELF section table"):
            self.read(make_elf(truncate=True))


if __name__ == "__main__":
    unittest.main()
