#!/usr/bin/env python3
"""Exercise actual dialog bodies with ASan/UBSan and controlled UI/backend stubs."""

import argparse
import hashlib
import json
import platform
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CONTROL = "b9cede1b54b044c703187fa4a8ba3ad3dba8a42e"


def section(source: str, start: str, end: str) -> str:
    return source[source.index(start) : source.index(end, source.index(start))]


def legacy_source(out: Path) -> Path:
    control = out / "control-source"
    control.mkdir()
    archive = subprocess.check_output(["git", "archive", "e9b621e"], cwd=ROOT)
    subprocess.run(["tar", "-x", "-C", str(control)], input=archive, check=True)
    for filename in ("PPBoundaryListener.h", "PPBoundaryListener.cpp"):
        (control / "arm9/source" / filename).write_bytes(
            subprocess.check_output(
                ["git", "show", "3e538e0:arm9/source/" + filename], cwd=ROOT
            )
        )
    script = out / "control_patch.py"
    script.write_bytes(
        subprocess.check_output(
            ["git", "show", CONTROL + ":tools/repro/patch_v06_source.py"], cwd=ROOT
        )
    )
    subprocess.run([sys.executable, str(script), str(control)], check=True)
    return control


def methods(source: Path) -> dict[str, str]:
    main = (source / "arm9/source/main.cpp").read_text()
    world = (source / "arm9/source/world.cpp").read_text()
    writer = (source / "arm9/source/tobkit/typewriter.cpp").read_text()
    dialog = (source / "arm9/source/tobkit/loaddialog.cpp").read_text()
    # Both fixtures use this same tested directory method; the legacy callback
    # ignores it and retains its hard-coded probe path.
    if "const char *World::getSketchSaveDirectory" in world:
        directory = section(
            world, "const char *World::getSketchSaveDirectory", "\n#endif"
        )
    else:
        directory = """const char *World::getSketchSaveDirectory() const {
            if(ppDirExists("data/pocketphysics/sketches")) return "data/pocketphysics/sketches";
            if(ppDirExists("pocketphysics/sketches")) return "pocketphysics/sketches";
            return "data/pocketphysics/sketches";
        }\n"""
    helper = (
        section(dialog, "static bool ppLoadDirExists", "\n#endif")
        if "static bool ppLoadDirExists" in dialog
        else ""
    )
    return {
        "save": directory
        + section(main, "void handleSaveDialogOk(void)", "\nvoid deleteLoadDialog"),
        "typewriter": section(
            writer, "void Typewriter::penDown(u8 px, u8 py)", "\nvoid Typewriter::penUp"
        ),
        "load": helper
        + section(dialog, "PPLoadDialog::PPLoadDialog", "\n// Drawing request")
        + section(
            dialog,
            "void PPLoadDialog::loadThumbnails(void)",
            "\nvoid PPLoadDialog::freeThumbnails",
        )
        + dialog[dialog.index("void PPLoadDialog::freeThumbnails(void)") :],
    }


def test(source: Path, out: Path) -> None:
    out.mkdir(parents=True)
    sources = {"control": legacy_source(out), "guarded": source}
    cases = []
    for role, tree in sources.items():
        extracted = methods(tree)
        for kind, body in extracted.items():
            fixture = (
                ROOT
                / "tools/repro/storage_source"
                / {
                    "save": "save_dialog_fixture.cpp",
                    "typewriter": "typewriter_fixture.cpp",
                    "load": "load_dialog_fixture.cpp",
                }[kind]
            )
            rendered = fixture.read_text().replace("// PP_METHODS", body)
            path, binary = out / f"{role}-{kind}.cpp", out / f"{role}-{kind}"
            path.write_text(rendered)
            command = [
                "c++",
                "-std=c++17",
                "-O1",
                "-g",
                "-DPP_RUNTIME_FIXES",
                "-fsanitize=address,undefined",
                "-fno-omit-frame-pointer",
                "-Wno-deprecated-declarations",
                "-Wno-write-strings",
                str(path),
                "-o",
                str(binary),
            ]
            compiled = subprocess.run(command, capture_output=True, text=True)
            (out / f"{role}-{kind}.compile.log").write_text(
                compiled.stdout + compiled.stderr
            )
            if compiled.returncode:
                raise AssertionError(
                    f"Fixture compilation failed: {role}/{kind}; see compile log"
                )
            runs = []
            if kind == "save":
                if role == "control":
                    runs = [
                        (["a", "none", "new"], "asan"),
                        (["ab", "none", "new"], "asan"),
                        (["x.pp", "legacy", "exists"], "file"),
                        (["x.pp", "data", "exists"], "workflow"),
                    ]
                else:
                    runs = [
                        ([name, root, mode], "pass")
                        for name in (
                            "",
                            "a",
                            "ab",
                            "abc",
                            "x.pp",
                            "abcdefghijklmnopqrst",
                        )
                        for root in ("none", "legacy", "data", "both")
                        for mode in (
                            ("new", "exists") if name and root != "none" else ("new",)
                        )
                    ]
            elif kind == "typewriter":
                runs = (
                    [(["20", "20"], "asan")]
                    if role == "control"
                    else [
                        ([str(length), str(cursor)], "pass")
                        for length in range(21)
                        for cursor in range(length + 1)
                    ]
                )
            else:
                runs = (
                    [
                        (["entries", "data"], "asan"),
                        (["empty", "data"], "directory"),
                        (["missing", "data"], "directory"),
                    ]
                    if role == "control"
                    else [
                        ([scenario, root], "pass")
                        for scenario in ("entries", "empty", "missing")
                        for root in ("data", "legacy")
                    ]
                )
            for index, (arguments, expected) in enumerate(runs):
                with tempfile.TemporaryDirectory() as temp:
                    result = subprocess.run(
                        [str(binary.resolve()), *arguments],
                        cwd=temp,
                        capture_output=True,
                        text=True,
                    )
                stem = f"{role}-{kind}-{index}"
                (out / (stem + ".stdout.log")).write_text(result.stdout)
                (out / (stem + ".stderr.log")).write_text(result.stderr)
                if expected == "pass":
                    valid = result.returncode == 0 and not result.stderr
                elif expected == "asan":
                    valid = (
                        result.returncode != 0
                        and "AddressSanitizer: heap-buffer-overflow" in result.stderr
                    )
                else:
                    code, marker = {
                        "file": (51, "OPEN_FILE_LEAK"),
                        "workflow": (52, "OVERWRITE_WORKFLOW"),
                        "directory": (54, "DIRECTORY_OWNERSHIP"),
                    }[expected]
                    valid = result.returncode == code and marker in result.stderr
                if not valid:
                    raise AssertionError(
                        f"Unexpected {role}/{kind} result: {arguments}; see {stem} logs"
                    )
                cases.append(
                    dict(
                        role=role,
                        kind=kind,
                        arguments=arguments,
                        expected=expected,
                        exit_status=result.returncode,
                        fixture_sha256=hashlib.sha256(rendered.encode()).hexdigest(),
                    )
                )
    report = dict(
        control_source_revision=CONTROL,
        selected_source=str(source),
        compiler=subprocess.check_output(["c++", "--version"], text=True),
        platform=platform.platform(),
        cases=cases,
        scope="Actual callback, keyboard, and directory-lifetime bodies; GUI/audio rendering, XML serialization, thumbnails, and FAT hardware are stubbed or outside this test.",
    )
    (out / "results.json").write_text(json.dumps(report, indent=2) + "\n")
    print(
        f"Storage dialogs: {len(cases)} host cases; guarded paths pass and all controls fail as intended."
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("out", type=Path)
    args = parser.parse_args()
    test(args.source, args.out)
