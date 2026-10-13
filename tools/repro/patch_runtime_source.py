#!/usr/bin/env python3
"""Instrument the normal modern-port loop without changing release profiles."""
import sys
from pathlib import Path


def replace_once(path: Path, old: str, new: str) -> None:
    text = path.read_text()
    if text.count(old) != 1:
        raise ValueError(f"Expected one runtime preimage in {path}: {old!r}")
    path.write_text(text.replace(old, new))


def patch(root: Path) -> None:
    main = root / "arm9/source/main.cpp"
    replace_once(main, '#include "canvas.h"',
                 '#include "canvas.h"\n#include "pp_runtime_replay.h"')
    replace_once(main, "#if !defined(DEBUG) && !defined(PP_BENCHMARK)",
                 "#if !defined(DEBUG) && !defined(PP_BENCHMARK) && !defined(PP_RUNTIME_REPLAY)")
    replace_once(main, "void handleScrolling(void)\n{\n\ttouchPosition touch = touchReadXY();",
                 "void handleScrolling(void)\n{\n\ttouchPosition touch = ppRuntimeTouch(false);")
    replace_once(main, "void handleInput(void)\n{\n\ttouchPosition touch = touchReadXY();",
                 "void handleInput(void)\n{\n\ttouchPosition touch = ppRuntimeTouch(true);")
    replace_once(main, "\tkeysdown |= keysDown();\n\tkeysup |= keysUp();\n\tkeysheld = keysHeld();",
                 "\tu16 down, up, held;\n\tppRuntimeProduce(&down, &up, &held);\n"
                 "\tkeysdown |= down;\n\tkeysup |= up;\n\tkeysheld = held;")
    replace_once(main, "void VBlankHandler()\n{", "void VBlankHandler()\n{\n\tppRuntimeIRQBegin();")
    replace_once(main, "\twhile(DIV_CR & DIV_BUSY);\n}\n\nvoid switchScreens",
                 "\twhile(DIV_CR & DIV_BUSY);\n\tppRuntimeIRQEnd();\n}\n\nvoid switchScreens")
    replace_once(main, "\t// Now restore the div/sqrt registers\n\tDIV_CR = divcr;",
                 "\t// Now restore the div/sqrt registers\n#ifndef PP_RUNTIME_IRQ_NEGATIVE_CONTROL\n\tDIV_CR = divcr;")
    replace_once(main, "\tSQRT_PARAM64 = sqrtparam64;",
                 "\tSQRT_PARAM64 = sqrtparam64;\n#endif")
    replace_once(main, "\tinit = false;\n\t\n\twhile(1)",
                 "\tinit = false;\n\tppRuntimeInit(world, fat_ok);\n\t\n\twhile(1)")
    replace_once(main, "\t\t\tworld->step();", "\t\t\tppRuntimePhysicsBegin();\n"
                 "\t\t\tworld->step();\n\t\t\tppRuntimePhysicsEnd();")
    replace_once(main, "\t\thandleInput();\n\t\tCommandProcessCommands();",
                 "\t\tppRuntimeInputBegin();\n\t\thandleInput();\n\t\tppRuntimeInputEnd();\n"
                 "\t\tCommandProcessCommands();\n\t\tppRuntimePoll();")
    header = root / "arm9/source/world.h"
    replace_once(header, "\t\tint getNThings(void);",
                 "\t\tb2World *ppRuntimePhysicsWorld() { return b2world; }\n"
                 "\t\tbool ppRuntimeHasMouseJoint() { return mouse_joint != 0; }\n"
                 "\t\tint getNThings(void);")


if __name__ == "__main__":
    patch(Path(sys.argv[1]))
