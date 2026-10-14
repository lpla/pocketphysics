#!/usr/bin/env python3
"""Validate full-loop replay records; do not infer physical-console performance."""
import argparse
import csv
import hashlib
import re
import struct
import zlib
from collections import Counter, defaultdict
from pathlib import Path

TIMED = {"vblank_handler", "vblank_interval", "physics_elapsed", "physics_foreground",
         "foreground_input", "sample_age", "state_capture"}
SCALARS = {"script_events", "script_frames", "vblanks", "physics_steps", "input_calls",
           "samples_consumed", "samples_unconsumed", "physics_irq_overlaps", "mouse_joint_steps",
           "top_frames", "bottom_frames", "maximum_things", "creation_things", "after_delete_things",
           "things_final", "overflow", "script_valid", "scalar_fixed_16_16", "runtime_complete",
           "fat_available", "log_write_error", "math_preemption_cases", "math_preemption_irqs", "math_preemption_failures", "simulation_transitions",
           "length_boundary_cases", "length_boundary_failures", "length_boundary_actual_checksum", "length_boundary_reference_checksum"}
TRACE = re.compile(r"(PPSTATE|PPBODY|PPIRQ|PPPIXEL|PPFINAL),([A-Za-z0-9._-]+),([0-9a-f,-]+);")
FIELD_COUNTS = {"PPSTATE": 6, "PPBODY": 12, "PPIRQ": 3, "PPPIXEL": 2, "PPFINAL": 6}


def decode_scalar(bits: str, fixed: bool) -> float:
    value = int(bits, 16)
    if fixed:
        return (value if value < 2**31 else value - 2**32) / 65536
    return struct.unpack("<f", struct.pack("<I", value))[0]


def records(log: str, label: str) -> dict[str, list[list[str]]]:
    stream = log.replace("\r", "").replace("\n", "")
    result = {tag: [] for tag in FIELD_COUNTS}
    for tag, build, fields in TRACE.findall(stream):
        if build != label:
            raise AssertionError(f"Trace build {build} differs from label {label}")
        row = fields.split(",")
        if len(row) != FIELD_COUNTS[tag]:
            raise AssertionError(f"Wrong field count for {tag}")
        result[tag].append(row)
    return result


def capture_content(pixels: list[list[str]]) -> tuple[int, int]:
    """Count floor/outline colors in the scripted scene's top-overview regions."""
    floor, outlines = 0, 0
    for row, payload in pixels:
        y = int(row)
        for x in range(128):
            value = int(payload[4*x:4*x+4], 16)
            red, green, blue = value & 31, (value >> 5) & 31, (value >> 10) & 31
            floor += int(2 <= x < 42 and 22 <= y < 28 and green < 12
                         and red > green + 8 and red > blue + 8)
            outlines += int(2 <= x < 38 and 3 <= y < 22
                            and blue > red + 6 and blue > green + 6)
    return floor, outlines


def validate_run(rows: list[dict[str, str]], data: dict[str, list[list[str]]]) -> str:
    metrics = {r["metric"]: r for r in rows}
    if len(metrics) != len(rows) or set(metrics) != TIMED | SCALARS:
        raise AssertionError("Missing, extra, or duplicate runtime metrics")
    if any(r["tag"] != "PPBENCH" or r["build"] != r["label"] or r["pass"] != "1"
           or r["status"] not in {"0", "124"} or r["emulator"] != "melonds" for r in rows):
        raise AssertionError("Unsuccessful or inconsistent runtime record")
    def value(name: str) -> int:
        return int(metrics[name]["total_ticks"])
    for name, r in metrics.items():
        count, total, mean, low, high, over = (int(r[k]) for k in
            ("count", "total_ticks", "mean_ticks", "min_ticks", "max_ticks", "over_budget"))
        if min(count, total, mean, low, high, over) < 0 or count == 0 or over > count:
            raise AssertionError(f"Invalid metric arithmetic: {name}")
        if mean != total // count or low > mean or mean > high:
            raise AssertionError(f"Invalid metric bounds: {name}")
        if name in SCALARS and (count != 1 or low != total or high != total or over):
            raise AssertionError(f"Invalid scalar record: {name}")
    if value("runtime_complete") != 1 or value("script_valid") != 1 or value("overflow") or value("log_write_error"):
        raise AssertionError("Replay incomplete or capacity exceeded")
    if value("math_preemption_cases") != 8 or value("math_preemption_irqs") < 8 or value("math_preemption_failures"):
        raise AssertionError("Hardware arithmetic preemption matrix failed")
    fixed = value("scalar_fixed_16_16")
    if fixed not in {0, 1}:
        raise AssertionError("Invalid numerical mode")
    if value("length_boundary_cases") != (19662 if fixed else 0) or value("length_boundary_failures"):
        raise AssertionError("Fixed-point length boundary regression")
    expected_checksum = 0x7805b4b1 if fixed else 0
    if (value("length_boundary_actual_checksum") != expected_checksum
            or value("length_boundary_reference_checksum") != expected_checksum):
        raise AssertionError("Length/normalization reference checksum differs")
    if value("vblanks") != value("script_frames") + 6:
        raise AssertionError("Wrong replay duration")
    if value("maximum_things") != 14 or value("creation_things") != 14 or value("things_final") != 14:
        raise AssertionError("Shape creation/replacement workflow failed")
    if value("after_delete_things") != 13 or value("mouse_joint_steps") <= 0:
        raise AssertionError("Deletion or physical dragging workflow failed")
    if value("simulation_transitions") != 4:
        raise AssertionError("Play/pause/resume/stop workflow failed")
    if value("top_frames") + value("bottom_frames") != value("vblanks") or min(value("top_frames"), value("bottom_frames")) == 0:
        raise AssertionError("Both-screen rendering not observed")
    steps, irqs = data["PPSTATE"], data["PPIRQ"]
    if len(steps) != value("physics_steps") or len(irqs) != value("vblanks"):
        raise AssertionError("Truncated frame/IRQ trace")
    if [int(s[0]) for s in steps] != list(range(len(steps))):
        raise AssertionError("Noncontiguous physics steps")
    if [int(s[0]) for s in irqs] != list(range(1, len(irqs) + 1)):
        raise AssertionError("Noncontiguous IRQ trace")
    if any(int(s[2]) not in {0, 1} for s in irqs):
        raise AssertionError("Invalid IRQ consumption flag")
    consumed = sum(int(s[2]) for s in irqs)
    if consumed != value("samples_consumed") or len(irqs)-consumed != value("samples_unconsumed"):
        raise AssertionError("Sample accounting mismatch")
    if sum(int(s[1]) for s in irqs) != value("vblank_handler"):
        raise AssertionError("IRQ timing trace mismatch")
    expected_counts = {"vblank_handler": len(irqs), "vblank_interval": len(irqs)-1,
                       "physics_elapsed": len(steps), "physics_foreground": len(steps),
                       "state_capture": len(steps), "foreground_input": value("input_calls"),
                       "sample_age": value("input_calls")}
    for name, count in expected_counts.items():
        if int(metrics[name]["count"]) != count:
            raise AssertionError(f"Timing count mismatch: {name}")
    if value("physics_foreground") > value("physics_elapsed"):
        raise AssertionError("Foreground time exceeds elapsed physics time")
    expected_body_keys = [(int(s[0]), i) for s in steps for i in range(int(s[5]))]
    bodies = data["PPBODY"]
    if [(int(b[0]), int(b[1])) for b in bodies] != expected_body_keys:
        raise AssertionError("Missing, duplicated, or reordered body state")
    if Counter((b[2],b[3]) for b in bodies if b[0] == "0") != {("1","1"): 1, ("1","0"): 7, ("0","0"): 6}:
        raise AssertionError("Wrong initial shape/type topology")
    for b in bodies:
        if b[4] not in {"0", "1"} or b[11] not in {"0", "1"} or any(len(x) != 8 for x in b[5:11]):
            raise AssertionError("Malformed raw scalar/body record")
    final = data["PPFINAL"]
    if [int(r[0]) for r in final] != list(range(14)) or Counter((r[1],r[2]) for r in final) != {("1","1"): 1, ("1","0"): 8, ("0","0"): 5}:
        raise AssertionError("Wrong final shape/type topology")
    if any(int(r[5],16) != 0 for r in final):
        raise AssertionError("Stop/reset did not restore original rotations")
    pixels = data["PPPIXEL"]
    if [int(r[0]) for r in pixels] != list(range(96)) or any(len(r[1]) != 512 for r in pixels):
        raise AssertionError("Truncated display-capture trace")
    if len({r[1][i:i+4] for r in pixels for i in range(0,512,4)}) < 8:
        raise AssertionError("Blank or uniform display capture")
    floor, outlines = capture_content(pixels)
    if floor < 48 or outlines < 16:
        raise AssertionError("Scripted floor or dynamic outlines absent from overview capture")
    canonical = "\n".join(tag + "," + ",".join(row) for tag in FIELD_COUNTS for row in data[tag])
    return hashlib.sha256(canonical.encode()).hexdigest()


def capture_png(pixels: list[list[str]]) -> bytes:
    raw = bytearray()
    for _, row in pixels:
        raw.append(0)
        for i in range(0,len(row),4):
            value = int(row[i:i+4],16)
            raw.extend(((value>>shift)&31)*255//31 for shift in (0,5,10))
    def chunk(tag: bytes, payload: bytes) -> bytes:
        return struct.pack(">I",len(payload))+tag+payload+struct.pack(">I",zlib.crc32(tag+payload))
    return (b"\x89PNG\r\n\x1a\n"+chunk(b"IHDR",struct.pack(">2I5B",128,96,8,2,0,0,0))+
            chunk(b"IDAT",zlib.compress(bytes(raw)))+chunk(b"IEND",b""))


def analyze(out: Path, repeats: int) -> None:
    if repeats < 1:
        raise ValueError("At least one repetition required")
    with (out / "results.csv").open() as f:
        rows = list(csv.DictReader(f))
    groups = defaultdict(list)
    for r in rows:
        groups[r["label"], int(r["iteration"])].append(r)
    if not groups:
        raise AssertionError("No runtime records")
    labels = {key[0] for key in groups}
    for label in labels:
        if {i for name, i in groups if name == label} != set(range(1, repeats+1)):
            raise AssertionError(f"Missing repetitions for {label}")
    signatures, body_rows, frame_rows, irq_rows, final_rows = {}, [], [], [], []
    checks = []
    for (label, iteration), run in sorted(groups.items()):
        log = (out / "logs" / f"{label}.{iteration}.stdout.log").read_text(errors="replace")
        log += (out / "logs" / f"{label}.{iteration}.stderr.log").read_text(errors="replace")
        data = records(log, label)
        signature = validate_run(run, data)
        metric_signature = [(r["metric"], r["count"], r["total_ticks"], r["min_ticks"], r["max_ticks"], r["over_budget"], r["rom_sha256"], r["rom_size_bytes"])
                            for r in sorted(run, key=lambda x: x["metric"])]
        identity = (signature, metric_signature)
        if label in signatures and signatures[label] != identity:
            raise AssertionError(f"Nonrepeatable runtime timing or trace: {label}")
        signatures[label] = identity
        (out / f"{label}.{iteration}.capture.png").write_bytes(capture_png(data["PPPIXEL"]))
        fixed = next(r["total_ticks"] == "1" for r in run if r["metric"] == "scalar_fixed_16_16")
        for b in data["PPBODY"]:
            values = [decode_scalar(bits, fixed) for bits in b[5:11]]
            if any(not (-32768 < v < 32768) for v in values):
                raise AssertionError("Nonfinite or out-of-range body scalar")
            body_rows.append([label, iteration, *b, *values])
        frame_rows.extend([label, iteration, *r] for r in data["PPSTATE"])
        irq_rows.extend([label, iteration, *r] for r in data["PPIRQ"])
        final_rows.extend([label, iteration, *r] for r in data["PPFINAL"])
        checks.append(f"{label} {iteration}: complete GUI/lifecycle/dragging replay, raw-state SHA256 {signature}")
    for filename, header, data in (
        ("bodies.csv", ["label", "iteration", "step", "thing", "shape", "type", "body", "x_bits", "y_bits", "vx_bits", "vy_bits", "angle_bits", "angular_velocity_bits", "awake", "x", "y", "vx", "vy", "angle", "angular_velocity"], body_rows),
        ("frames.csv", ["label", "iteration", "step", "vblank", "event_cursor", "contacts", "joints", "things"], frame_rows),
        ("irqs.csv", ["label", "iteration", "vblank", "ticks", "sample_consumed"], irq_rows),
        ("final.csv", ["label", "iteration", "thing", "shape", "type", "x_pixels", "y_pixels", "angle_bits"], final_rows)):
        with (out / filename).open("w", newline="") as f:
            writer = csv.writer(f); writer.writerow(header); writer.writerows(data)
    with (out / "summary.csv").open("w", newline="") as f:
        fields = ["label", "metric", "repeats", "count", "total_ticks", "mean_ticks", "min_ticks", "max_ticks", "over_budget"]
        writer = csv.DictWriter(f, fieldnames=fields); writer.writeheader()
        for label in sorted(labels):
            for r in sorted(groups[label, 1], key=lambda x: x["metric"]):
                writer.writerow({k: repeats if k == "repeats" else r[k] for k in fields})
    (out / "assertions.txt").write_text("\n".join(checks) + "\nAll repeated timing records and raw traces match within each binary.\n")


if __name__ == "__main__":
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument("out", type=Path); p.add_argument("--expected-repeats", type=int, required=True)
    args = p.parse_args(); analyze(args.out, args.expected_repeats)
