#!/usr/bin/env python3
"""Run actual world/XML save bodies with pinned TinyXML and real temporary files."""

import argparse
import hashlib
import json
import platform
import subprocess
import sys
import tempfile
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
CONTROL = "3bd6a14260ec31f4c55e8ac29d7f8af9e166f59e"
TINYXML_SHA = "15bdfdcec58a7da30adc87ac2b078e4417dbe5392f3afb719f9ba6d062645593"


def section(text, start, end):
    first = text.index(start)
    return text[first : text.index(end, first)]


def control_source(out):
    source, scripts = out / "control-source", out / "control-patch"
    source.mkdir()
    scripts.mkdir()
    subprocess.run(
        ["tar", "-x", "-C", str(source)],
        input=subprocess.check_output(["git", "archive", "e9b621e"], cwd=ROOT),
        check=True,
    )
    for name in ("PPBoundaryListener.h", "PPBoundaryListener.cpp"):
        (source / "arm9/source" / name).write_bytes(
            subprocess.check_output(
                ["git", "show", "3e538e0:arm9/source/" + name], cwd=ROOT
            )
        )
    for name in ("patch_v06_source.py", "patch_storage_source.py"):
        (scripts / name).write_bytes(
            subprocess.check_output(
                ["git", "show", CONTROL + ":tools/repro/" + name], cwd=ROOT
            )
        )
    subprocess.run(
        [sys.executable, str(scripts / "patch_v06_source.py"), str(source)], check=True
    )
    return source


def methods(source):
    directory = source / "arm9/source"
    world = (directory / "world.cpp").read_text()
    thing = (directory / "thing.cpp").read_text()
    circle = (directory / "circle.cpp").read_text()
    pin = (directory / "pin.cpp").read_text()
    return (
        section(world, "const char *World::getSketchSaveDirectory", "\n#endif")
        + section(world, "void World::save", "\nbool World::load")
        + thing[thing.index("void Thing::addGenericXMLAttributes") :]
        + circle[circle.index("TiXmlElement *Circle::toXML") :]
        + section(pin, "Thing *Pin::getThing", "\nvoid Pin::setb2Joint")
        + pin[pin.index("TiXmlElement *Pin::toXML") :]
    )


def test(source, out, archive):
    if hashlib.sha256(archive.read_bytes()).hexdigest() != TINYXML_SHA:
        raise AssertionError("TinyXML archive does not match locked source")
    out.mkdir(parents=True)
    subprocess.run(["tar", "-xzf", str(archive), "-C", str(out)], check=True)
    xml = out / "tinyxml"
    cases = []
    for role, tree in (("control", control_source(out)), ("guarded", source)):
        rendered = (
            (ROOT / "tools/repro/storage_source/world_save_fixture.cpp")
            .read_text()
            .replace("// PP_METHODS", methods(tree))
        )
        fixture, binary = out / (role + ".cpp"), out / role
        fixture.write_text(rendered)
        command = [
            "c++",
            "-std=c++17",
            "-O1",
            "-g",
            "-DPP_RUNTIME_FIXES",
            "-fsanitize=address,undefined",
            "-fno-omit-frame-pointer",
            "-Wno-write-strings",
            "-I" + str(xml),
            str(fixture),
            *[
                str(xml / name)
                for name in (
                    "tinystr.cpp",
                    "tinyxml.cpp",
                    "tinyxmlerror.cpp",
                    "tinyxmlparser.cpp",
                )
            ],
            "-o",
            str(binary),
        ]
        compiled = subprocess.run(command, text=True, capture_output=True)
        (out / (role + ".compile.log")).write_text(compiled.stdout + compiled.stderr)
        if compiled.returncode:
            raise AssertionError(f"Compile failed: {role}")
        if role == "control":
            runs = [
                (["10", "2", "last", "data", "normal"], "stack-buffer-overflow"),
                (["5", "2", "first", "data", "normal"], "heap-buffer-overflow"),
                (["5", "2", "last", "data", "unknown"], "heap-buffer-overflow"),
            ]
        else:
            runs = [
                ([str(length), str(count), placement, root, "normal"], None)
                for length in range(11)
                for count in (0, 1, 2, 48, 49)
                for placement in ("first", "middle", "last")
                for root in ("legacy", "data", "both")
            ]
            runs += [
                (["10", str(count), placement, root, mode], None)
                for count in (0, 2, 49)
                for placement in ("first", "last")
                for root in ("legacy", "data", "both")
                for mode in ("unknown", "allocfail")
            ]
        for index, (args, diagnostic) in enumerate(runs):
            stem = role + "-" + str(index)
            with tempfile.TemporaryDirectory() as temporary:
                result = subprocess.run(
                    [str(binary.resolve()), *args],
                    cwd=temporary,
                    text=True,
                    capture_output=True,
                )
                if not diagnostic and result.returncode == 0:
                    directory = (
                        "pocketphysics/sketches"
                        if args[3] == "legacy"
                        else "data/pocketphysics/sketches"
                    )
                    payload = (Path(temporary) / directory / "scene.pp").read_bytes()
                    (out / (stem + ".pp")).write_bytes(payload)
            (out / (stem + ".stdout.log")).write_text(result.stdout)
            (out / (stem + ".stderr.log")).write_text(result.stderr)
            valid = (
                (
                    result.returncode != 0
                    and "AddressSanitizer: " + diagnostic in result.stderr
                )
                if diagnostic
                else result.returncode == 0 and not result.stderr
            )
            if not valid:
                raise AssertionError(
                    f"Unexpected {stem} result: {args}; see raw streams"
                )
            cases.append(
                dict(
                    role=role,
                    arguments=args,
                    expected=diagnostic or "pass",
                    exit_status=result.returncode,
                    fixture_sha256=hashlib.sha256(rendered.encode()).hexdigest(),
                )
            )
    (out / "results.json").write_text(
        json.dumps(
            dict(
                control_source_revision=CONTROL,
                tinyxml_archive_sha256=TINYXML_SHA,
                compiler=subprocess.check_output(["c++", "--version"], text=True),
                platform=platform.platform(),
                cases=cases,
                scope="Actual World::save and XML serialization bodies; real pinned TinyXML and POSIX files. Firmware, GUI, physics and DLDI are outside this host test.",
            ),
            indent=2,
        )
        + "\n"
    )
    print(
        f"World XML save: {len(cases)} host cases; all guarded paths and specific controls pass."
    )


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument("source", type=Path)
    parser.add_argument("out", type=Path)
    parser.add_argument(
        "--tinyxml-archive",
        type=Path,
        default=ROOT / "research-artifacts/deps/tinyxml_2.6.2.orig.tar.gz",
    )
    args = parser.parse_args()
    test(args.source, args.out, args.tinyxml_archive)
