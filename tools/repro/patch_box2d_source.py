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
    math = Path(sys.argv[1]) / "Source/Common/b2Math.h"
    island = Path(sys.argv[1]) / "Source/Dynamics/b2Island.cpp"
    contact_solver = Path(sys.argv[1]) / "Source/Dynamics/Contacts/b2ContactSolver.cpp"
    world = Path(sys.argv[1]) / "Source/Dynamics/b2World.cpp"

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

    replace_exact(
        math,
        """#ifdef TARGET_FLOAT32_IS_FIXED
		float est = b2Abs(x) + b2Abs(y);
""",
        """#ifdef TARGET_FLOAT32_IS_FIXED
#ifdef PP_BOX2D_LENGTH_FIXED_ESTIMATE
		float32 est = b2Abs(x) + b2Abs(y);
#else
		float est = b2Abs(x) + b2Abs(y);
#endif
""",
    )

    fixed = Path(sys.argv[1]) / "Source/Common/Fixed.h"
    replace_exact(fixed, "COS_bin[idx]", "pp_cos_bin(idx)")
    replace_exact(fixed, "SIN_bin[idx]", "pp_sin_bin(idx)")
    replace_exact(fixed, "TAN_bin[idx]", "pp_tan_bin(idx)")

    replace_exact(
        island,
        """		float32 vMagnitude = b->m_linearVelocity.Length();
		if(vMagnitude > b2_maxLinearVelocity) {
			b->m_linearVelocity *= b2_maxLinearVelocity/vMagnitude;
		}
""",
        """#ifdef PP_BOX2D_VELOCITY_GATE
		// Later Box2D releases avoid normalization unless a speed limit can
		// trigger. This half-limit component gate preserves the 2.0.1 result:
		// below it, vector length is strictly below the full limit.
		const float32 halfLinearVelocity = b2_maxLinearVelocity * 0.5f;
		if (b2Abs(b->m_linearVelocity.x) > halfLinearVelocity ||
			b2Abs(b->m_linearVelocity.y) > halfLinearVelocity)
		{
			float32 vMagnitude = b->m_linearVelocity.Length();
			if(vMagnitude > b2_maxLinearVelocity) {
				b->m_linearVelocity *= b2_maxLinearVelocity/vMagnitude;
			}
		}
#else
		float32 vMagnitude = b->m_linearVelocity.Length();
		if(vMagnitude > b2_maxLinearVelocity) {
			b->m_linearVelocity *= b2_maxLinearVelocity/vMagnitude;
		}
#endif
""",
    )

    for path, signature in (
        (
            island,
            "void b2Island::Solve(const b2TimeStep& step, const b2Vec2& gravity, bool correctPositions, bool allowSleep)\n",
        ),
        (
            contact_solver,
            "b2ContactSolver::b2ContactSolver(const b2TimeStep& step, b2Contact** contacts, int32 contactCount, b2StackAllocator* allocator)\n",
        ),
        (
            contact_solver,
            "void b2ContactSolver::InitVelocityConstraints(const b2TimeStep& step)\n",
        ),
        (
            contact_solver,
            "void b2ContactSolver::SolveVelocityConstraints()\n",
        ),
        (
            contact_solver,
            "void b2ContactSolver::FinalizeVelocityConstraints()\n",
        ),
        (
            contact_solver,
            "bool b2ContactSolver::SolvePositionConstraints(float32 baumgarte)\n",
        ),
        (world, "void b2World::Step(float32 dt, int32 iterations)\n"),
    ):
        replace_exact(
            path,
            signature,
            "#if defined(PP_HOT_ITCM) || defined(PP_PHYSICS_ITCM)\n"
            "ITCM_CODE\n#endif\n" + signature,
        )

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
