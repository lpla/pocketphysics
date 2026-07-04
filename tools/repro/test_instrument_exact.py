#!/usr/bin/env python3
import struct
import unittest

from instrument_exact_arm9 import thumb_bl


def decode_thumb_bl(source: int, encoded: bytes) -> int:
    first, second = struct.unpack("<HH", encoded)
    offset = ((first & 0x7FF) << 12) | ((second & 0x7FF) << 1)
    if offset & (1 << 22):
        offset -= 1 << 23
    return source + 4 + offset


class ThumbBranchTests(unittest.TestCase):
    def test_forward_overlay_branch(self):
        source = 0x020045B8
        target = 0x02300000
        self.assertEqual(decode_thumb_bl(source, thumb_bl(source, target)), target)

    def test_backward_branch(self):
        source = 0x02300000
        target = 0x020045B8
        self.assertEqual(decode_thumb_bl(source, thumb_bl(source, target)), target)

    def test_rejects_unaligned_target(self):
        with self.assertRaises(ValueError):
            thumb_bl(0x02000000, 0x02000001)

    def test_rejects_out_of_range_target(self):
        with self.assertRaises(ValueError):
            thumb_bl(0x02000000, 0x02800000)


if __name__ == "__main__":
    unittest.main()
