#!/usr/bin/env python3
"""Read a root file from melonDS's generated, possibly sparse FAT16 image.

BPB offsets and cluster classification follow the recovered libfat partition.c.
This is a bounded validation reader, not a general FAT filesystem implementation.
"""

import argparse
import struct
from pathlib import Path


def u16(data: bytes, offset: int) -> int:
    return struct.unpack_from("<H", data, offset)[0]


def u32(data: bytes, offset: int) -> int:
    return struct.unpack_from("<I", data, offset)[0]


def short_checksum(name: bytes) -> int:
    result = 0
    for byte in name:
        result = (((result & 1) << 7) + (result >> 1) + byte) & 255
    return result


def read_root_file(image: Path, filename: str) -> bytes:
    raw = image.read_bytes()
    if len(raw) < 512 or raw[510:512] != b"\x55\xaa":
        raise ValueError("Missing MBR signature")
    partitions = [446 + 16 * i for i in range(4) if raw[446 + 16 * i + 4] == 6]
    if len(partitions) != 1:
        raise ValueError("Expected one generated FAT16 partition")
    start = u32(raw, partitions[0] + 8)
    boot = raw[start * 512 : (start + 1) * 512]
    if len(boot) != 512 or boot[510:512] != b"\x55\xaa" or u16(boot, 11) != 512:
        raise ValueError("Invalid 512-byte FAT boot sector")
    spc, reserved, fats, roots, fat_size = (
        boot[13],
        u16(boot, 14),
        boot[16],
        u16(boot, 17),
        u16(boot, 22),
    )
    total = u16(boot, 19) or u32(boot, 32)
    root_sectors = (roots * 32 + 511) // 512
    if not spc or spc & (spc - 1) or not all((reserved, fats, roots, fat_size)):
        raise ValueError("Invalid FAT16 geometry")
    clusters = (total - reserved - fats * fat_size - root_sectors) // spc
    if not 4085 <= clusters < 65525 or fat_size * 512 < (clusters + 2) * 2:
        raise ValueError("Unsupported cluster count or short FAT table")
    fat_offset = (start + reserved) * 512
    root_offset = (start + reserved + fats * fat_size) * 512
    data_offset = root_offset + root_sectors * 512
    if data_offset > len(raw):
        raise ValueError("Truncated FAT or root directory")
    slots, lfn_checksum, last_slot = {}, None, 0
    matches = []
    for offset in range(root_offset, root_offset + roots * 32, 32):
        entry = raw[offset : offset + 32]
        if entry[0] == 0:
            break
        if entry[0] == 0xE5:
            slots, lfn_checksum, last_slot = {}, None, 0
            continue
        if entry[11] == 15:
            ordinal = entry[0] & 31
            if entry[0] & 64:
                slots, lfn_checksum, last_slot = {}, entry[13], ordinal
            if not ordinal or ordinal in slots or entry[13] != lfn_checksum:
                raise ValueError("Malformed long filename sequence")
            slots[ordinal] = (entry[1:11] + entry[14:26] + entry[28:32]).decode(
                "utf-16le"
            )
            continue
        short = entry[:11]
        name = (
            short[:8].decode("ascii").rstrip()
            + "."
            + short[8:].decode("ascii").rstrip()
        ).rstrip(".")
        if slots:
            if (
                set(slots) != set(range(1, last_slot + 1))
                or short_checksum(short) != lfn_checksum
            ):
                raise ValueError("Incomplete long filename or wrong checksum")
            name = (
                "".join(slots[i] for i in range(1, last_slot + 1))
                .split("\0")[0]
                .rstrip("\uffff")
            )
        slots, lfn_checksum, last_slot = {}, None, 0
        if name == filename and not entry[11] & 24:
            matches.append((u16(entry, 26), u32(entry, 28)))
    if len(matches) != 1:
        raise ValueError("Requested root file missing or duplicated")
    cluster, size = matches[0]
    result, visited = bytearray(), set()
    while cluster < 0xFFF8:
        if not 2 <= cluster < clusters + 2 or cluster in visited:
            raise ValueError("Invalid or cyclic file cluster chain")
        visited.add(cluster)
        offset = data_offset + (cluster - 2) * spc * 512
        # melonDS need not materialize unused trailing bytes of the last cluster.
        required = min(spc * 512, size - len(result))
        block = raw[offset : offset + required]
        if len(block) != required:
            raise ValueError("Truncated file payload")
        result.extend(block)
        cluster = u16(raw, fat_offset + 2 * cluster)
    if len(result) != size:
        raise ValueError("File chain shorter than declared size")
    return bytes(result)


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("image", type=Path)
    parser.add_argument("filename")
    parser.add_argument("output", type=Path)
    args = parser.parse_args()
    args.output.write_bytes(read_root_file(args.image, args.filename))
