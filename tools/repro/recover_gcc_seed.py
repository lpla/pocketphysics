#!/usr/bin/env python3
"""Recover an equivalent deterministic GCC 4.1.2 naming seed from its CRC.

GCC tree.c appends this non-reflected CRC (including the terminating NUL) to
anonymous namespace names. This finds a preimage, not an original timestamp.
"""

import argparse
import itertools


POLYNOMIAL = 0x04c11db7


def advance(crc: int, byte: int) -> int:
    crc ^= byte << 24
    for _ in range(8):
        crc = ((crc << 1) ^ (POLYNOMIAL if crc & 0x80000000 else 0)) & 0xffffffff
    return crc


def reverse(crc: int, byte: int) -> int:
    for _ in range(8):
        high = crc & 1
        crc = ((crc ^ (POLYNOMIAL if high else 0)) >> 1) | (high << 31)
    return crc ^ (byte << 24)


def checksum(seed: str) -> int:
    value = 0
    for byte in seed.encode("ascii") + b"\0":
        value = advance(value, byte)
    return value


def recover(targets: list[int]) -> list[str]:
    half = ["".join(word) for word in itertools.product("0123456789abcdef", repeat=4)]
    forward = {}
    for word in half:
        value = 0
        for byte in ("0x" + word).encode("ascii"):
            value = advance(value, byte)
        forward.setdefault(value, word)
    seeds = []
    for target in targets:
        if not 0 <= target <= 0xffffffff:
            raise ValueError("CRC must be an unsigned 32-bit integer")
        for word in half:
            value = reverse(target, 0)
            for byte in reversed(word.encode("ascii")):
                value = reverse(value, byte)
            if value in forward:
                seed = "0x" + forward[value] + word
                if checksum(seed) != target:
                    raise ValueError("seed recovery failed its forward check")
                seeds.append(seed)
                break
        else:
            raise ValueError(f"no eight-digit hexadecimal preimage for {target:08X}")
    return seeds


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("crc", nargs="+", type=lambda text: int(text, 16))
    args = parser.parse_args()
    for crc, seed in zip(args.crc, recover(args.crc)):
        print(f"{crc:08X}\t{seed}")


if __name__ == "__main__":
    main()
