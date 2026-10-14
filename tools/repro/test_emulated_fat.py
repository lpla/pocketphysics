#!/usr/bin/env python3
import struct
import tempfile
import unittest
from pathlib import Path
from read_emulated_fat import read_root_file, short_checksum


def image():
    raw = bytearray(90 * 512)
    struct.pack_into("<II", raw, 446 + 8, 63, 6000)
    raw[450] = 6
    raw[510:512] = b"\x55\xaa"
    boot = 63 * 512
    struct.pack_into("<H", raw, boot + 11, 512)
    raw[boot + 13], raw[boot + 16] = 1, 1
    struct.pack_into("<H", raw, boot + 14, 1)
    struct.pack_into("<H", raw, boot + 17, 16)
    struct.pack_into("<H", raw, boot + 19, 6000)
    struct.pack_into("<H", raw, boot + 22, 24)
    raw[boot + 510 : boot + 512] = b"\x55\xaa"
    fat, root, data = 64 * 512, 88 * 512, 89 * 512
    struct.pack_into("<H", raw, fat + 4, 0xFFFF)
    raw[root : root + 11] = b"LOG     TXT"
    raw[root + 11] = 32
    struct.pack_into("<H", raw, root + 26, 2)
    struct.pack_into("<I", raw, root + 28, 3)
    raw[data : data + 3] = b"log"
    return raw, fat, root, data


class FATTests(unittest.TestCase):
    def read(self, raw, name="LOG.TXT"):
        with tempfile.TemporaryDirectory() as temp:
            path = Path(temp) / "card.bin"
            path.write_bytes(raw)
            return read_root_file(path, name)

    def test_payload_and_sparse_tail(self):
        raw, _, _, data = image()
        self.assertEqual(self.read(raw), b"log")
        self.assertEqual(self.read(raw[: data + 3]), b"log")

    def test_long_name(self):
        raw, _, root, _ = image()
        short = raw[root : root + 32]
        raw[root + 32 : root + 64] = short
        entry = bytearray(32)
        entry[0], entry[11], entry[13] = 65, 15, short_checksum(short[:11])
        text = "runtime.log\0".ljust(13, "\uffff").encode("utf-16le")
        entry[1:11], entry[14:26], entry[28:32] = text[:10], text[10:22], text[22:26]
        raw[root : root + 32] = entry
        self.assertEqual(self.read(raw, "runtime.log"), b"log")
        raw[root + 13] ^= 1
        with self.assertRaisesRegex(ValueError, "checksum"):
            self.read(raw, "runtime.log")

    def test_negative_images(self):
        for mutation in (
            "signature",
            "fat",
            "missing",
            "cycle",
            "payload",
            "size",
            "duplicate",
        ):
            with self.subTest(mutation=mutation):
                raw, fat, root, data = image()
                if mutation == "signature":
                    raw[510] = 0
                elif mutation == "fat":
                    struct.pack_into("<H", raw, 63 * 512 + 22, 1)
                elif mutation == "missing":
                    raw[root] = 0
                elif mutation == "cycle":
                    struct.pack_into("<H", raw, fat + 4, 2)
                elif mutation == "payload":
                    raw = raw[: data + 2]
                elif mutation == "size":
                    struct.pack_into("<I", raw, root + 28, 513)
                elif mutation == "duplicate":
                    raw[root + 32 : root + 64] = raw[root : root + 32]
                with self.assertRaises(ValueError):
                    self.read(raw)


if __name__ == "__main__":
    unittest.main()
