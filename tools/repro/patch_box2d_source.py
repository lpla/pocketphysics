#!/usr/bin/env python3
from pathlib import Path
import sys


def replace_exact(path: Path, old: str, new: str) -> None:
    text = path.read_text()
    if old not in text:
        raise SystemExit(f"pattern not found in {path}: {old[:80]!r}")
    path.write_text(text.replace(old, new))


def main() -> int:
    if len(sys.argv) != 2:
        raise SystemExit("usage: patch_box2d_source.py BOX2D_DIR")

    settings = Path(sys.argv[1]) / "Source/Common/b2Settings.h"

    replace_exact(
        settings,
        """// need to include NDS jtypes.h instead of \n// usual typedefs because NDS jtypes defines\n// them slightly differently, oh well.\n#ifdef TARGET_IS_NDS\n\n#include \"jtypes.h\"\n\n#else\n\ntypedef signed char\tint8;\ntypedef signed short int16;\ntypedef signed int int32;\ntypedef unsigned char uint8;\ntypedef unsigned short uint16;\ntypedef unsigned int uint32;\n\n#endif\n""",
        """#if defined(__NDS__)\n#if defined(TARGET_FLOAT32_IS_FIXED)\n#define float32 LibndsFloat32\n#include <nds/ndstypes.h>\n#undef float32\n#else\n#include <nds/ndstypes.h>\n#endif\n#else\ntypedef signed char\tint8;\ntypedef signed short int16;\ntypedef signed int int32;\ntypedef unsigned char uint8;\ntypedef unsigned short uint16;\ntypedef unsigned int uint32;\n#endif\n""",
    )

    replace_exact(
        settings,
        """#else\n\ntypedef float float32;\n#define\tB2_FLT_MAX\tFLT_MAX\n#define\tB2_FLT_EPSILON\tFLT_EPSILON\n#define\tB2FORCE_SCALE(x)\t(x)\n#define\tB2FORCE_INV_SCALE(x)\t(x)\n\n#endif\n""",
        """#else\n\n#if !defined(__NDS__)\ntypedef float float32;\n#endif\n#define\tB2_FLT_MAX\tFLT_MAX\n#define\tB2_FLT_EPSILON\tFLT_EPSILON\n#define\tB2FORCE_SCALE(x)\t(x)\n#define\tB2FORCE_INV_SCALE(x)\t(x)\n\n#endif\n""",
    )

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
