#!/usr/bin/env python3
"""Constrain the wider component gate's complete eligible arithmetic domain."""

import argparse
import math
from pathlib import Path
import random
import unittest

from check_velocity_gate_counts import check_counts


ROOT = Path(__file__).resolve().parents[2]
BOX2D = None
BP = 16
SCALE = 1 << BP
LIMIT = 100 * SCALE
BOUND = LIMIT * 181 // 256


def length_raw(x, y):
    estimate = abs(x) + abs(y)
    if estimate == 0:
        return 0
    if estimate < SCALE // 10:
        return length_raw(x << 8, y << 8) >> 8
    return math.isqrt(((x * x >> BP) + (y * y >> BP)) << BP)


class VelocityGateTests(unittest.TestCase):
    def test_locked_source_arithmetic_contract(self):
        fixed = (BOX2D / "Source/Common/Fixed.h").read_text()
        settings = (BOX2D / "Source/Common/b2Settings.h").read_text()
        math_source = (BOX2D / "Source/Common/b2Math.h").read_text()
        self.assertIn("#define FIXED_BP        16", fixed)
        self.assertIn("((long long)g * (long long)a.g ) >> BP", fixed)
        self.assertIn("nds_sqrt64(((long long)(g))<<BP)", fixed)
        self.assertIn("const float32 b2_maxLinearVelocity = 100.0f;", settings)
        self.assertIn("float32 est = b2Abs(x) + b2Abs(y);", math_source)
        self.assertIn("else if(est < 180.0f)", math_source)
        self.assertIn("return b2Sqrt(x * x + y * y);", math_source)

    def test_whole_domain_monotone_upper_bound(self):
        self.assertLess(2 * 181 * 181, 256 * 256)
        self.assertEqual(BOUND, 4633600)
        self.assertLess(2 * BOUND, 180 * SCALE)
        max_squared_raw = 2 * (BOUND * BOUND >> BP)
        self.assertLess(max_squared_raw, (1 << 31) - 1)
        self.assertLess(length_raw(BOUND, BOUND), LIMIT)
        # Nonnegative squaring, truncation, addition and integer sqrt are monotone.
        # This maximum covers every eligible raw pair, not just sampled vectors.
        self.assertLess(max_squared_raw << BP, 1 << 63)
        self.assertLess((0.1 * 256) ** 2 * 2, 32768)
        self.assertEqual(length_raw(1, 0), 1)
        self.assertLess(length_raw(SCALE // 10 - 1, 0), SCALE // 10)

    def test_boundary_and_signed_components(self):
        points = (0, 1, 255, 256, 6553, 6554, SCALE, 50 * SCALE, BOUND - 1, BOUND)
        for x in points:
            for y in points:
                for sx in (-1, 1):
                    for sy in (-1, 1):
                        self.assertLess(length_raw(sx * x, sy * y), LIMIT)
        rng = random.Random(181256)
        for _ in range(10000):
            self.assertLess(length_raw(rng.randrange(-BOUND, BOUND + 1),
                                       rng.randrange(-BOUND, BOUND + 1)), LIMIT)

    def test_profile_is_experimental_and_default_remains_half_gate(self):
        island = (BOX2D / "Source/Dynamics/b2Island.cpp").read_text()
        self.assertIn("#ifdef PP_BOX2D_WIDE_VELOCITY_GATE", island)
        self.assertIn("b2_maxLinearVelocity * (181.0f / 256.0f)", island)
        self.assertIn("#else\n\t\tconst float32 halfLinearVelocity = b2_maxLinearVelocity * 0.5f;", island)
        recipe = (ROOT / "tools/repro/container_build_v06.sh").read_text()
        selected = recipe.split("    bench-improved|", 1)[1].split("        ;;", 1)[0]
        self.assertNotIn("PP_BOX2D_WIDE_VELOCITY_GATE", selected)

    def test_count_conservation_and_missing_or_duplicate_rows(self):
        rows = [dict(emulator="melonds", label="counts", iteration="1", metric=name,
                     count="1", total_ticks=str(value), **{"pass": "1"})
                for name, value in (("gate_total", 5), ("gate_half_eligible", 3),
                                    ("gate_wide_only_eligible", 0), ("gate_length_required", 2))]
        self.assertEqual(len(list(check_counts(rows))), 1)
        for changed in ([], rows[:-1], rows + [rows[0]],
                        [dict(rows[0], total_ticks="6"), *rows[1:]],
                        [dict(rows[0], **{"pass": "0"}), *rows[1:]]):
            with self.assertRaises(ValueError):
                list(check_counts(changed))


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("box2d", type=Path)
    args, remaining = parser.parse_known_args()
    BOX2D = args.box2d
    unittest.main(argv=[__file__, *remaining])
