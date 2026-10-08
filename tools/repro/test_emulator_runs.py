#!/usr/bin/env python3
"""Check run isolation and fail-closed process status without an emulator."""

import os
from pathlib import Path
import subprocess
import tempfile
import tomllib
import unittest

from check_melonds_config import check_run

ROOT = Path(__file__).resolve().parents[2]
MELONDS = ROOT / "tools/repro/emulators/melonds"


class EmulatorRunTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)

    def prepare(self, run, portable):
        run.mkdir()
        return subprocess.run([
            "bash", "-euc", 'source "$1"; prepare_melonds_run "$2" "$3" "$4"',
            "config-test", str(MELONDS / "prepare_run.sh"), str(run),
            str(MELONDS / "melonDS.toml"), str(portable),
        ], capture_output=True, text=True)

    def test_seed_is_explicit_interpreter_direct_boot(self):
        seed = tomllib.loads((MELONDS / "melonDS.toml").read_text())
        self.assertIs(seed["JIT"]["Enable"], False)
        self.assertIs(seed["LimitFPS"], False)
        self.assertIs(seed["DLDI"]["Enable"], False)
        self.assertEqual(seed["Emu"], {
            "ConsoleType": 0, "DirectBoot": True, "ExternalBIOSEnable": False,
        })
        self.assertEqual(seed["3D"]["Renderer"], 0)
        self.assertIs(seed["3D"]["Soft"]["Threaded"], True)
        self.assertIs(seed["AudioSync"], False)
        self.assertEqual(seed["RecentROM"], [])
        for inputs in ("Keyboard", "Joystick"):
            self.assertTrue(seed["Instance0"][inputs])
            self.assertEqual(set(seed["Instance0"][inputs].values()), {-1})

    def test_each_run_starts_from_seed_and_preserves_previous_state(self):
        portable = self.root / "portable"
        portable.mkdir()
        first = self.root / "first"
        self.assertEqual(self.prepare(first, portable).returncode, 0)
        (portable / "melonDS.toml").write_text("changed = true\n")
        (portable / "wfcsettings.bin").write_bytes(b"previous firmware state")
        second = self.root / "second"
        result = self.prepare(second, portable)
        self.assertEqual(result.returncode, 0, result.stderr)
        seed = (MELONDS / "melonDS.toml").read_bytes()
        self.assertEqual((portable / "melonDS.toml").read_bytes(), seed)
        self.assertFalse((portable / "wfcsettings.bin").exists())
        self.assertEqual((first / "emulator-state/melonDS.toml").read_text(), "changed = true\n")
        self.assertEqual((first / "melonDS.input.toml").read_bytes(), seed)
        self.assertEqual((first / "emulator-state/wfcsettings.bin").read_bytes(), b"previous firmware state")

    def test_unexpected_portable_directory_is_not_erased(self):
        portable = self.root / "portable"
        portable.mkdir()
        evidence = portable / "unexpected"
        evidence.write_bytes(b"keep")
        self.assertNotEqual(self.prepare(self.root / "run", portable).returncode, 0)
        self.assertEqual(evidence.read_bytes(), b"keep")
        self.assertFalse(portable.is_symlink())

    def config_fixture(self):
        run = self.root / "run"
        run.mkdir()
        seed = (MELONDS / "melonDS.toml").read_bytes()
        (run / "melonDS.input.toml").write_bytes(seed)
        final = seed.replace(b"RecentROM = []", b'RecentROM = ["/workspace/test.nds"]')
        (run / "melonDS.final.toml").write_bytes(final)
        return run, seed

    def test_only_expected_recent_rom_change_is_accepted(self):
        run, seed = self.config_fixture()
        check_run(run, seed, "/workspace/test.nds")

    def test_changed_input_seed_is_rejected(self):
        run, seed = self.config_fixture()
        (run / "melonDS.input.toml").write_bytes(seed + b"\n")
        with self.assertRaisesRegex(ValueError, "input configuration"):
            check_run(run, seed, "/workspace/test.nds")

    def test_unexpected_materialized_default_is_rejected(self):
        run, seed = self.config_fixture()
        with (run / "melonDS.final.toml").open("a") as stream:
            stream.write("unexpected = true\n")
        with self.assertRaisesRegex(ValueError, "defaults were materialized"):
            check_run(run, seed, "/workspace/test.nds")

    def test_wrong_recent_rom_is_rejected(self):
        run, seed = self.config_fixture()
        with self.assertRaisesRegex(ValueError, "recent-ROM record"):
            check_run(run, seed, "/workspace/other.nds")

    def test_missing_final_snapshot_is_rejected(self):
        run, seed = self.config_fixture()
        (run / "melonDS.final.toml").unlink()
        with self.assertRaises(FileNotFoundError):
            check_run(run, seed, "/workspace/test.nds")

    def run_fake_emulator(self, status, emit_rows=True):
        bin_dir = self.root / "bin"
        bin_dir.mkdir()
        fake = {
            "timeout": '#!/bin/sh\n[ "$EMIT_ROWS" = 0 ] || printf "%s\\n" "PPBENCH,test,scene,1,0,0,0,0,0,0,abcd,1"\nexit "$FAKE_STATUS"\n',
            "sha256sum": '#!/bin/sh\nexec shasum -a 256 "$@"\n',
            "stat": '#!/bin/sh\nprintf "4\\n"\n',
        }
        for name, content in fake.items():
            path = bin_dir / name
            path.write_text(content)
            path.chmod(0o755)
        out = self.root / "out"
        (out / "logs").mkdir(parents=True)
        (out / "runs").mkdir()
        rom = self.root / "test.nds"
        rom.write_bytes(b"test")
        result = subprocess.run([
            "bash", str(ROOT / "tools/repro/run_inrom_container.sh"), f"test={rom}",
        ], env=dict(os.environ, PATH=f"{bin_dir}:{os.environ['PATH']}",
                    BENCH_OUT=str(out), BENCH_REPEATS="1", BENCH_DURATION="1",
                    BENCH_EMULATOR="desmume", FAKE_STATUS=str(status),
                    EMIT_ROWS=str(int(emit_rows))), capture_output=True, text=True)
        self.assertEqual((out / "runs/test.1/exit-status.txt").read_text(), f"{status}\n")
        return result, out

    def test_normal_exit_with_rows_is_accepted(self):
        result, out = self.run_fake_emulator(0)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertIn("PPBENCH", (out / "results.csv").read_text())

    def test_deliberate_idle_watchdog_with_rows_is_accepted(self):
        result, _ = self.run_fake_emulator(124)
        self.assertEqual(result.returncode, 0, result.stderr)

    def test_abort_with_complete_rows_is_rejected_and_retained(self):
        result, out = self.run_fake_emulator(134)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("Abnormal emulator exit", result.stderr)
        self.assertIn("PPBENCH", (out / "logs/test.1.ppbench.csv").read_text())
        self.assertFalse((out / "results.csv").exists())

    def test_killed_process_with_rows_is_rejected(self):
        result, _ = self.run_fake_emulator(137)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("Abnormal emulator exit", result.stderr)

    def test_watchdog_without_rows_is_not_a_success(self):
        result, _ = self.run_fake_emulator(124, emit_rows=False)
        self.assertNotEqual(result.returncode, 0)
        self.assertIn("No PPBENCH rows", result.stderr)


if __name__ == "__main__":
    unittest.main()
