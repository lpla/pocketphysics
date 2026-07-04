#!/usr/bin/env python3
"""Install the source-built benchmark overlay into the recovered ARM9 image."""

from pathlib import Path
import argparse
import hashlib
import struct


LOAD_ADDRESS = 0x02000000
HOOK_ADDRESS = 0x020045B8
SPLASH_CALL_ADDRESS = 0x0200451C
EXPECTED_BASE_SHA256 = "0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89"
EXPECTED_SPLASH_BYTES = bytes.fromhex("fdf748fd")
EXPECTED_HOOK_BYTES = bytes.fromhex("684a0223")


def thumb_bl(source: int, target: int) -> bytes:
    offset = target - (source + 4)
    if offset & 1 or not -(1 << 22) <= offset < (1 << 22):
        raise ValueError(f"Thumb BL out of range: {source:#x} -> {target:#x}")
    first = 0xF000 | ((offset >> 12) & 0x7FF)
    second = 0xF800 | ((offset >> 1) & 0x7FF)
    return struct.pack("<HH", first, second)


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("base", type=Path)
    parser.add_argument("overlay", type=Path)
    parser.add_argument("output", type=Path)
    parser.add_argument("--overlay-address", type=lambda value: int(value, 0), required=True)
    parser.add_argument("--entry-address", type=lambda value: int(value, 0), required=True)
    args = parser.parse_args()

    base = args.base.read_bytes()
    actual_sha = hashlib.sha256(base).hexdigest()
    if actual_sha != EXPECTED_BASE_SHA256:
        raise SystemExit(
            f"historical ARM9 checksum mismatch: expected {EXPECTED_BASE_SHA256}, got {actual_sha}"
        )
    image = bytearray(base)
    overlay = args.overlay.read_bytes()
    overlay_offset = args.overlay_address - LOAD_ADDRESS
    hook_offset = HOOK_ADDRESS - LOAD_ADDRESS
    splash_offset = SPLASH_CALL_ADDRESS - LOAD_ADDRESS
    if overlay_offset < len(image):
        raise SystemExit("overlay overlaps the historical ARM9 payload")
    if args.entry_address < args.overlay_address:
        raise SystemExit("entry address precedes overlay")
    if image[splash_offset : splash_offset + 4] != EXPECTED_SPLASH_BYTES:
        raise SystemExit("release splash hook bytes do not match the audited image")
    if image[hook_offset : hook_offset + 4] != EXPECTED_HOOK_BYTES:
        raise SystemExit("benchmark hook bytes do not match the audited image")

    image[hook_offset : hook_offset + 4] = thumb_bl(HOOK_ADDRESS, args.entry_address)
    image[splash_offset : splash_offset + 4] = struct.pack("<HH", 0x46C0, 0x46C0)
    image.extend(b"\0" * (overlay_offset - len(image)))
    image.extend(overlay)
    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_bytes(image)
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
