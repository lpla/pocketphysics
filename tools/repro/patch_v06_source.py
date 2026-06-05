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
        raise SystemExit("usage: patch_v06_source.py SRC_DIR")

    src = Path(sys.argv[1])
    world = src / "arm9/source/world.cpp"
    main_cpp = src / "arm9/source/main.cpp"

    replace_exact(
        world,
        '#include "Circle.h"\n',
        '#include "Circle.h"\n#include "b2Polygon.h"\n',
    )
    replace_exact(
        world,
        "#include <sys/dir.h>\n",
        "#include <dirent.h>\n",
    )
    replace_exact(
        world,
        "#include <tinyxml.h>\n",
        """#include <tinyxml.h>\n\nstatic bool ppDirExists(const char *path)\n{\n\tDIR *dir = opendir(path);\n\tif(dir)\n\t{\n\t\tclosedir(dir);\n\t\treturn true;\n\t}\n\treturn false;\n}\n""",
    )

    world_h = src / "arm9/source/world.h"
    replace_exact(
        world_h,
        "\t\tfloat32 gravity_x, gravity_y;\n\t\t\n\t\tb2World *b2world;\n",
        "\t\tfloat32 gravity_x, gravity_y;\n\t\tbool allow_sleep_enabled;\n\t\t\n\t\tb2World *b2world;\n",
    )
    replace_exact(
        world,
        "World::World(int _width, int _height, bool allow_sleep):\n\tn_things(0), width(_width), height(_height), gravity_x(0), gravity_y(DEFAULT_GRAVITY), mouse_joint(0), make_unphysical_list_length(0)\n",
        "World::World(int _width, int _height, bool allow_sleep):\n\tn_things(0), width(_width), height(_height), gravity_x(0), gravity_y(DEFAULT_GRAVITY), allow_sleep_enabled(allow_sleep), mouse_joint(0), make_unphysical_list_length(0)\n",
    )

    replace_exact(
        world,
        """\t\t\t\tb2Body* body = 0;\n\t\t\t\tif(thing->getType() == Thing::Dynamic)\n\t\t\t\t\tbody = b2world->CreateDynamicBody(bodyDef);\n\t\t\t\telse\n\t\t\t\t\tbody = b2world->CreateStaticBody(bodyDef);\n""",
        """\t\t\t\tb2Body* body = b2world->CreateBody(bodyDef);\n""",
    )

    replace_exact(
        world,
        """\t\t\t\t\tif(deleteMe)\n\t\t\t\t\t{\n\t\t\t\t\t\tpolygon->setb2Body(body); // So you can always get the b2body pointer from a thing\n\t\t\t\t\t\tdelete[] deleteMe;\n\t\t\t\t\t}\n""",
        """\t\t\t\t\tif(deleteMe)\n\t\t\t\t\t{\n\t\t\t\t\t\tif(thing->getType() == Thing::Dynamic)\n\t\t\t\t\t\t\tbody->SetMassFromShapes();\n\t\t\t\t\t\tpolygon->setb2Body(body); // So you can always get the b2body pointer from a thing\n\t\t\t\t\t\tdelete[] deleteMe;\n\t\t\t\t\t}\n""",
    )

    replace_exact(
        world,
        """\t\t\t\t\tdelete points_x;\n\t\t\t\t\tdelete points_y;\n""",
        """\t\t\t\t\tdelete[] points_x;\n\t\t\t\t\tdelete[] points_y;\n""",
    )

    replace_exact(
        world,
        """\t\t\t\tif(thing->getType() == Thing::Dynamic)\n\t\t\t\t\tbody = b2world->CreateDynamicBody(bodydef);\n\t\t\t\telse\n\t\t\t\t\tbody = b2world->CreateStaticBody(bodydef);\n""",
        """\t\t\t\tbody = b2world->CreateBody(bodydef);\n""",
    )

    replace_exact(
        world,
        "\tb2world->SetListener(destruction_listener);\n",
        "\tb2world->SetDestructionListener(destruction_listener);\n",
    )
    replace_exact(
        world,
        "\tb2world->SetListener(boundary_listener);\n",
        "\tb2world->SetBoundaryListener(boundary_listener);\n",
    )
    replace_exact(
        world,
        "    bgbody = b2world->CreateStaticBody(bd);\n",
        "    bgbody = b2world->CreateBody(bd);\n",
    )
    replace_exact(
        world,
        "\tmd.maxForce = (float32)1000 * body->m_mass;\n",
        "\tmd.maxForce = (float32)1000 * body->GetMass();\n",
    )
    replace_exact(
        world,
        "\tif(diropen(\"pocketphysics/sketches\"))\n",
        "\tif(ppDirExists(\"pocketphysics/sketches\"))\n",
    )
    replace_exact(
        world,
        "\t\tif(!diropen(\"data\"))\n",
        "\t\tif(!ppDirExists(\"data\"))\n",
    )
    replace_exact(
        world,
        "\t\tif(!diropen(\"data/pocketphysics\"))\n",
        "\t\tif(!ppDirExists(\"data/pocketphysics\"))\n",
    )
    replace_exact(
        world,
        "\t\tif(!diropen(\"data/pocketphysics/sketches\"))\n",
        "\t\tif(!ppDirExists(\"data/pocketphysics/sketches\"))\n",
    )
    replace_exact(
        world,
        "\tif(diropen(\"data/pocketphysics/sketches\"))\n",
        "\tif(ppDirExists(\"data/pocketphysics/sketches\"))\n",
    )
    replace_exact(
        world,
        "\telse if(diropen(\"pocketphysics/sketches\"))\n",
        "\telse if(ppDirExists(\"pocketphysics/sketches\"))\n",
    )
    replace_exact(
        world,
        "\treset(b2world->m_allowSleep);\n",
        "\treset(allow_sleep_enabled);\n",
    )
    replace_exact(
        world,
        "void World::initPhysics(bool allow_sleep)\n{\n",
        "void World::initPhysics(bool allow_sleep)\n{\n\tallow_sleep_enabled = allow_sleep;\n",
    )

    replace_exact(
        main_cpp,
        "#define PEN_DOWN (~IPC->buttons & (1 << 6))\n",
        "#define PEN_DOWN (keysheld & KEY_TOUCH)\n",
    )
    replace_exact(
        main_cpp,
        "\tconsoleInitDefault((u16*)SCREEN_BASE_BLOCK_SUB(4), (u16*)CHAR_BASE_BLOCK_SUB(0), 16);\n",
        "\tconsoleInit(NULL, 0, BgType_Text4bpp, BgSize_T_256x256, 4, 0, false, true);\n",
    )

    canvas = src / "arm9/source/canvas.cpp"
    replace_exact(
        canvas,
        "\t\t\t\tint vecx = ( (radius<<6) * (int)COS_bin[(angle * 512 / 360) % 512] ) >> 6;\n\t\t\t\tint vecy = ( (radius<<6) * (int)SIN_bin[(angle * 512 / 360) % 512] ) >> 6;\n",
        "\t\t\t\tint vecx = ( (radius<<6) * pp_cos_bin((angle * 512 / 360) % 512) ) >> 6;\n\t\t\t\tint vecy = ( (radius<<6) * pp_sin_bin((angle * 512 / 360) % 512) ) >> 6;\n",
    )
    replace_exact(
        canvas,
        "\t\t\t\t\tvecx = ( (radius<<6) * (int)COS_bin[(angle + 512 * i / n_segments) % 512]) >> 6;\n\t\t\t\t\tvecy = ( (radius<<6) * (int)SIN_bin[(angle + 512 * i / n_segments) % 512]) >> 6;\n",
        "\t\t\t\t\tvecx = ( (radius<<6) * pp_cos_bin((angle + 512 * i / n_segments) % 512) ) >> 6;\n\t\t\t\t\tvecy = ( (radius<<6) * pp_sin_bin((angle + 512 * i / n_segments) % 512) ) >> 6;\n",
    )

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
