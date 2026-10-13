#!/usr/bin/env python3
import copy
import importlib.util
import subprocess
import tempfile
import unittest
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
spec = importlib.util.spec_from_file_location("runtime_analysis", Path(__file__).with_name("analyze_runtime.py"))
analysis = importlib.util.module_from_spec(spec)
spec.loader.exec_module(analysis)


def fixture():
    scalars = {name: 1 for name in analysis.SCALARS}
    scalars.update(script_frames=6, vblanks=12, physics_steps=3, input_calls=10,
                   samples_consumed=10, samples_unconsumed=2, top_frames=6, bottom_frames=6,
                   maximum_things=14, creation_things=14, after_delete_things=13,
                   things_final=14, overflow=0, log_write_error=0, math_preemption_cases=8,
                   math_preemption_irqs=8, math_preemption_failures=0, simulation_transitions=4)
    counts = {name: 3 for name in analysis.TIMED}
    counts.update(vblank_handler=12, vblank_interval=11, foreground_input=10, sample_age=10)
    rows = []
    for name in sorted(analysis.TIMED | analysis.SCALARS):
        count = counts[name] if name in counts else 1
        total = count * 100 if name in counts else scalars[name]
        rows.append(dict(label="runtime-improved", build="runtime-improved", tag="PPBENCH",
                         pass_="1", status="124", emulator="melonds", metric=name,
                         count=str(count), total_ticks=str(total), mean_ticks=str(total//count),
                         min_ticks=str(total//count), max_ticks=str(total//count), over_budget="0"))
        rows[-1]["pass"] = rows[-1].pop("pass_")
    data = {"PPSTATE": [[str(i), str(i+1), "1", "2", "1", "14"] for i in range(3)],
            "PPIRQ": [[str(i+1), "100", str(int(i<10))] for i in range(12)],
            "PPBODY": [[str(i), str(j), "0", "0", "1", *["00000000"]*6, "1"]
                       for i in range(3) for j in range(14)],
            "PPFINAL": [[str(j), "1" if j<9 else "0", "1" if j==0 else "0", "100", "100", "00000000"] for j in range(14)],
            "PPPIXEL": [[str(i), "".join(f"{j%16:04x}" for j in range(128))] for i in range(96)]}
    for b in data["PPBODY"]:
        b[2]="1" if int(b[1])<8 else "0"; b[3]="1" if b[1]=="0" else "0"
    return rows, data


class RuntimeTests(unittest.TestCase):
    def test_valid(self):
        rows, data = fixture()
        self.assertEqual(len(analysis.validate_run(rows, data)), 64)

    def test_negative_gates(self):
        for mutation in ("truncated", "body", "irq", "duplicate", "mouse", "overflow", "timing", "status", "creation", "pass", "blank", "pixels", "preemption"):
            with self.subTest(mutation=mutation):
                rows, data = fixture()
                metrics = {r["metric"]: r for r in rows}
                if mutation == "truncated": data["PPSTATE"].pop()
                elif mutation == "body": data["PPBODY"][0][1] = "1"
                elif mutation == "irq": data["PPIRQ"][0][2] = "2"
                elif mutation == "duplicate": rows.append(copy.copy(rows[0]))
                elif mutation == "mouse": metrics["mouse_joint_steps"].update(total_ticks="0", mean_ticks="0", min_ticks="0", max_ticks="0")
                elif mutation == "overflow": metrics["overflow"].update(total_ticks="1", mean_ticks="1", min_ticks="1", max_ticks="1")
                elif mutation == "timing": rows[0]["mean_ticks"] = "999999"
                elif mutation == "status": rows[0]["status"] = "134"
                elif mutation == "creation": metrics["creation_things"].update(total_ticks="13", mean_ticks="13", min_ticks="13", max_ticks="13")
                elif mutation == "pass": rows[0]["pass"] = "0"
                elif mutation == "blank": data["PPPIXEL"] = [[str(i), "0000"*128] for i in range(96)]
                elif mutation == "pixels": data["PPPIXEL"].pop()
                elif mutation == "preemption": metrics["math_preemption_irqs"].update(total_ticks="7", mean_ticks="7", min_ticks="7", max_ticks="7")
                with self.assertRaises(AssertionError): analysis.validate_run(rows, data)

    def test_wrapped_protocol(self):
        data = analysis.records("PPBO\nDY,runtime-improved,0,0,0,0,1,00000000,00000000,00000000,00000000,00000000,00000000,1;", "runtime-improved")
        self.assertEqual(len(data["PPBODY"]), 1)
        with self.assertRaises(AssertionError): analysis.records("PPIRQ,other,1,2,0;", "runtime-improved")

    def test_scalar_encoding(self):
        self.assertEqual(analysis.decode_scalar("ffff0000", True), -1)
        self.assertEqual(analysis.decode_scalar("00018000", True), 1.5)
        self.assertEqual(analysis.decode_scalar("3fc00000", False), 1.5)

    def test_capture_png(self):
        _, data = fixture()
        png = analysis.capture_png(data["PPPIXEL"])
        self.assertEqual(png[:8], b"\x89PNG\r\n\x1a\n")
        self.assertEqual(png[16:24], b"\0\0\0\x80\0\0\0\x60")

    def test_script_bounds(self):
        with tempfile.TemporaryDirectory() as tmp:
            source = Path(tmp) / "script.cpp"
            source.write_text('#include "pp_runtime_script.h"\n#include <cassert>\nint main() {\n'
                              'PPRuntimeScript s; ppBuildRuntimeScript(s); assert(s.valid);\n'
                              'assert(s.count < PP_RUNTIME_EVENT_CAPACITY); assert(s.frames < 2042);\n'
                              'unsigned sum=0; for(unsigned i=0;i<s.count;++i) {\n'
                              'assert(s.events[i].frames); sum+=s.events[i].frames; } assert(sum==s.frames);\n'
                              's.add(256,0,0); assert(!s.valid); PPRuntimeScript t; t.add(0,0,0,0); assert(!t.valid);\n'
                              'PPRuntimeScript u; for(int i=0;i<=PP_RUNTIME_EVENT_CAPACITY;++i)u.add(0,0,0); assert(!u.valid); }\n')
            binary = Path(tmp) / "script"
            subprocess.run(["c++", "-std=c++11", "-Wall", "-Wextra", "-Werror", "-fsanitize=address,undefined",
                            "-I", str(ROOT / "tools/repro/runtime_source"), str(source), "-o", str(binary)], check=True)
            subprocess.run([str(binary)], check=True)

    def test_transform_gates(self):
        patch_spec = importlib.util.spec_from_file_location("runtime_patch", Path(__file__).with_name("patch_runtime_source.py"))
        patch = importlib.util.module_from_spec(patch_spec); patch_spec.loader.exec_module(patch)
        with tempfile.TemporaryDirectory() as tmp:
            path = Path(tmp) / "source.cpp"; path.write_text("old old")
            with self.assertRaises(ValueError): patch.replace_once(path, "old", "new")
            self.assertEqual(path.read_text(), "old old")
            path.write_text("old"); patch.replace_once(path, "old", "new")
            self.assertEqual(path.read_text(), "new")
            with self.assertRaises(ValueError): patch.replace_once(path, "old", "new")

    def test_math_case_oracles(self):
        import math
        import re
        header = (ROOT / "tools/repro/runtime_source/pp_runtime_math_cases.h").read_text()
        cases = re.findall(r"\{([-0-9]+)(?:LL)?, ([-0-9]+)(?:LL)?, ([-0-9]+), ([0-9]+)(?:ULL)?, ([0-9]+)u?\}", header)
        self.assertEqual(len(cases), 8)
        for case in cases:
            n, d, q, r, root = map(int, case)
            self.assertEqual((-1 if (n < 0) != (d < 0) else 1)*(abs(n)//abs(d)), q)
            self.assertEqual(math.isqrt(r), root)


if __name__ == "__main__": unittest.main()
