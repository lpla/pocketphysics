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
        world,
        "\tb2AABB *touchAABB = new b2AABB();\n\ttouchAABB->lowerBound.Set((float32)(x-2)/PIXELS_PER_UNIT, (float32)(y-2)/PIXELS_PER_UNIT);\n\ttouchAABB->upperBound.Set((float32)(x+2)/PIXELS_PER_UNIT, (float32)(y+2)/PIXELS_PER_UNIT);\n\tb2Vec2 point = b2Vec2(x/PIXELS_PER_UNIT, y/PIXELS_PER_UNIT);\n",
        "#ifdef PP_RUNTIME_FIXES\n\tb2AABB touchAABB;\n\ttouchAABB.lowerBound.Set((float32)(x-2)/PIXELS_PER_UNIT, (float32)(y-2)/PIXELS_PER_UNIT);\n\ttouchAABB.upperBound.Set((float32)(x+2)/PIXELS_PER_UNIT, (float32)(y+2)/PIXELS_PER_UNIT);\n#else\n\tb2AABB *touchAABB = new b2AABB();\n\ttouchAABB->lowerBound.Set((float32)(x-2)/PIXELS_PER_UNIT, (float32)(y-2)/PIXELS_PER_UNIT);\n\ttouchAABB->upperBound.Set((float32)(x+2)/PIXELS_PER_UNIT, (float32)(y+2)/PIXELS_PER_UNIT);\n#endif\n\tb2Vec2 point = b2Vec2(x/PIXELS_PER_UNIT, y/PIXELS_PER_UNIT);\n",
    )
    replace_exact(
        world,
        "\tint count = b2world->Query(*touchAABB, shape, 16);\n",
        "#ifdef PP_RUNTIME_FIXES\n\tint count = b2world->Query(touchAABB, shape, 16);\n#else\n\tint count = b2world->Query(*touchAABB, shape, 16);\n#endif\n",
    )
    replace_exact(
        world,
        "\t\t\tdelete id_table;\n",
        "#ifdef PP_RUNTIME_FIXES\n\t\t\tfree(id_table);\n#else\n\t\t\tdelete id_table;\n#endif\n",
    )
    replace_exact(
        world,
        "\tdelete id_table;\n",
        "#ifdef PP_RUNTIME_FIXES\n\tfree(id_table);\n#else\n\tdelete id_table;\n#endif\n",
    )

    replace_exact(
        main_cpp,
        "#define PEN_DOWN (~IPC->buttons & (1 << 6))\n",
        "#define PEN_DOWN (keysheld & KEY_TOUCH)\n",
    )
    replace_exact(
        main_cpp,
        "void handleInput(void)\n{\n",
        """void ppDispatchTouchSample(int px, int py, bool pen_down)
{
	if(!touch_was_down && pen_down)
	{
		got_good_pen_reading = 0;
		lastx = px;
		lasty = py;
		touch_was_down = 1;
	}
	else if(touch_was_down && !pen_down)
	{
		canvas->penUp(px + scroll_x, py + scroll_y);
		gui->penUp(px, py);
		CommandStopSample(0);
		touch_was_down = 0;
	}
	else if(touch_was_down && pen_down)
	{
		if(!got_good_pen_reading)
		{
			if(!stylus_scrolling && onCanvas(px, py) && !dialog_active)
			{
				CommandPlaySample(smp_crayon, 48, 255, 0);
				canvas->penDown(px + scroll_x, py + scroll_y);
			}
			else
				gui->penDown(px, py);
			got_good_pen_reading = 1;
		}

		if((abs(px - lastx)>0) || (abs(py - lasty)>0))
		{
			if(onCanvas(px, py) && !dialog_active)
				canvas->penMove(px + scroll_x, py + scroll_y);
			else
				gui->penMove(px, py);
			lastx = px;
			lasty = py;
		}
	}
}

void handleInput(void)
{
""",
    )
    replace_exact(
        main_cpp,
        (
            "\tif(!touch_was_down && PEN_DOWN)\n"
            "\t{\n"
            "\t\tgot_good_pen_reading = 0; // Wait one frame until passing the event\n"
            "\t\tlastx = touch.px;\n"
            "\t\tlasty = touch.py;\n"
            "\t\ttouch_was_down = 1;\n"
            "\t}\n"
            "\telse\n"
            "\t{\n"
            "\t\tif(touch_was_down && !PEN_DOWN) // PenUp\n"
            "\t\t{\n"
            "\t\t\tcanvas->penUp(touch.px + scroll_x, touch.py + scroll_y);\n"
            "\t\t\tgui->penUp(touch.px, touch.py);\n"
            "\t\t\tCommandStopSample(0);\n"
            "\t\t\t\n"
            "\t\t\ttouch_was_down = 0;\n"
            "\t\t}\n"
            "\t\telse if(touch_was_down && PEN_DOWN)\n"
            "\t\t{\n"
            "\t\t\tif(!got_good_pen_reading) // PenDown\n"
            "\t\t\t{\n"
            "\t\t\t\tif(!stylus_scrolling && onCanvas(touch.px, touch.py) && !dialog_active)\n"
            "\t\t\t\t{\n"
            "\t\t\t\t\tCommandPlaySample(smp_crayon, 48, 255, 0);\n"
            "\t\t\t\t\tcanvas->penDown(touch.px + scroll_x, touch.py + scroll_y);\n"
            "\t\t\t\t}\n"
            "\t\t\t\telse\n"
            "\t\t\t\t\tgui->penDown(touch.px, touch.py);\t\t\n"
            "\t\t\t\t\n"
            "\t\t\t\tgot_good_pen_reading = 1;\n"
            "\t\t\t}\n"
            "\t\t\t\n"
            "\t\t\tif((abs(touch.px - lastx)>0) || (abs(touch.py - lasty)>0)) // PenMove\n"
            "\t\t\t{\n"
            "\t\t\t\tif(onCanvas(touch.px, touch.py) && !dialog_active)\n"
            "\t\t\t\t\tcanvas->penMove(touch.px + scroll_x, touch.py + scroll_y);\n"
            "\t\t\t\telse\n"
            "\t\t\t\t\tgui->penMove(touch.px, touch.py);\n"
            "\t\t\t\t\n"
            "\t\t\t\tlastx = touch.px;\n"
            "\t\t\t\tlasty = touch.py;\n"
            "\t\t\t}\n"
            "\t\t}\n"
            "\t}\n"
        ),
        "\tppDispatchTouchSample(touch.px, touch.py, PEN_DOWN);\n",
    )
    replace_exact(
        main_cpp,
        '#include "canvas.h"\n\n#include "state.h"\n',
        '#include "canvas.h"\n#ifdef PP_BENCHMARK\n#include "pp_benchmark.h"\n#endif\n\n#include "state.h"\n',
    )
    replace_exact(
        main_cpp,
        "\tconsoleInitDefault((u16*)SCREEN_BASE_BLOCK_SUB(4), (u16*)CHAR_BASE_BLOCK_SUB(0), 16);\n",
        "\tconsoleInit(NULL, 0, BgType_Text4bpp, BgSize_T_256x256, 4, 0, false, true);\n",
    )
    replace_exact(
        main_cpp,
        "#ifndef DEBUG\n\tshowSplash();\n#endif\n",
        "#if !defined(DEBUG) && !defined(PP_BENCHMARK)\n\tshowSplash();\n#endif\n",
    )
    replace_exact(
        main_cpp,
        "\tdrawMainBg();\n\tsetupGui();\n",
        "\tdrawMainBg();\n\tsetupGui();\n#ifdef PP_BENCHMARK\n\tppRunBenchmark(world, canvas, fat_ok);\n#endif\n",
    )
    replace_exact(
        main_cpp,
        """\t\telse
\t\t{
\t\t\tfclose(f);
\t\t\tsave();
\t\t}
""",
        """\t\telse
\t\t{
#ifndef PP_RUNTIME_FIXES
\t\t\tfclose(f);
#endif
\t\t\tsave();
\t\t}
""",
    )

    sample = src / "arm9/source/sample.cpp"
    replace_exact(
        sample,
        """\tchar *smpname = strrchr(filename, '/') + 1;
\tstrncpy(name, smpname, SAMPLE_NAME_LENGTH);
\tlowercase(name);
""",
        """#ifdef PP_RUNTIME_FIXES
\tconst char *separator = strrchr(filename, '/');
\tconst char *smpname = separator ? separator + 1 : filename;
\tstrncpy(name, smpname, SAMPLE_NAME_LENGTH - 1);
\tname[SAMPLE_NAME_LENGTH - 1] = 0;
#else
\tchar *smpname = strrchr(filename, '/') + 1;
\tstrncpy(name, smpname, SAMPLE_NAME_LENGTH);
#endif
\tlowercase(name);
""",
    )

    numberslider = src / "arm9/source/tobkit/numberslider.cpp"
    replace_exact(
        numberslider,
        """\tchar *numberstr = (char*)malloc(4);
\tif(hex==true) {
\t\tsprintf(numberstr, "%3x", (u16)value);
\t} else {
\t\tsprintf(numberstr, "%3d", (u16)value);
\t}
\tdrawString(numberstr, 10, 5);
\tfree(numberstr);
""",
        """#ifdef PP_RUNTIME_FIXES
\tchar numberstr[6];
#else
\tchar *numberstr = (char*)malloc(4);
#endif
\tif(hex==true) {
\t\tsprintf(numberstr, "%3x", (u16)value);
\t} else {
\t\tsprintf(numberstr, "%3d", (u16)value);
\t}
\tdrawString(numberstr, 10, 5);
#ifndef PP_RUNTIME_FIXES
\tfree(numberstr);
#endif
""",
    )

    checkbox = src / "arm9/source/tobkit/checkbox.cpp"
    replace_exact(
        checkbox,
        """\tlabel = (char*)calloc(256, 1);
\tstrncpy(label, _label, 256);
""",
        """#ifdef PP_RUNTIME_FIXES
\tfree(label);
\tlabel = (char*)calloc(256, 1);
\tstrncpy(label, _label, 255);
#else
\tlabel = (char*)calloc(256, 1);
\tstrncpy(label, _label, 256);
#endif
""",
    )

    typewriter = src / "arm9/source/tobkit/typewriter.cpp"
    replace_exact(
        typewriter,
        "\tstrncpy(text, text_, len);\n",
        """#ifdef PP_RUNTIME_FIXES
\tmemcpy(text, text_, len);
#else
\tstrncpy(text, text_, len);
#endif
""",
    )

    tools = src / "arm9/source/tobkit/tools.cpp"
    replace_exact(
        tools,
        """\tif((u32)buf & blocksize != 0) {
""",
        """#ifdef PP_RUNTIME_FIXES
\tif(!buf || ((u32)buf & (blocksize - 1)) != 0) {
#else
\tif((u32)buf & blocksize != 0) {
#endif
""",
    )

    canvas = src / "arm9/source/canvas.cpp"
    replace_exact(
        canvas,
        "void Canvas::draw(void)\n{\n",
        "void Canvas::draw(void)\n{\n#ifdef PP_RENDER_BATCHED\n\tulSetTexture(crayon);\n#endif\n",
    )
    replace_exact(
        canvas,
        """\t\t\t\tint n_vertices = polygon->getNVertices();
\t\t\t\tint lastx=0, lasty=0;
\t\t\t\tint x,y;
\t\t\t\t
\t\t\t\tfor(int i=0;i<n_vertices;++i)
\t\t\t\t{
\t\t\t\t\tpolygon->getVertex(i, &x, &y);
""",
        """\t\t\t\tint n_vertices = polygon->getNVertices();
\t\t\t\tint lastx=0, lasty=0;
\t\t\t\tint x,y;
#ifdef PP_RENDER_BATCHED
\t\t\t\tb2Mat22 cached_rotation;
\t\t\t\tcached_rotation.Set(polygon->getRotation());
\t\t\t\tb2Body *cached_body = polygon->getb2Body();
\t\t\t\tb2Vec2 cached_body_position;
\t\t\t\tint cached_x = 0, cached_y = 0;
\t\t\t\tint first_x = 0, first_y = 0;
\t\t\t\tif(cached_body)
\t\t\t\t\tcached_body_position = cached_body->GetPosition();
\t\t\t\telse
\t\t\t\t\tpolygon->getPosition(&cached_x, &cached_y);
#endif
\t\t\t\t
\t\t\t\tfor(int i=0;i<n_vertices;++i)
\t\t\t\t{
#ifdef PP_RENDER_BATCHED
\t\t\t\t\tpolygon->getVertex(i, &x, &y, true);
\t\t\t\t\tb2Vec2 position((float32)x, (float32)y);
\t\t\t\t\tposition = b2Mul(cached_rotation, position);
\t\t\t\t\tif(cached_body)
\t\t\t\t\t{
\t\t\t\t\t\tx = (int)(position.x + cached_body_position.x * PIXELS_PER_UNIT);
\t\t\t\t\t\ty = (int)(position.y + cached_body_position.y * PIXELS_PER_UNIT);
\t\t\t\t\t}
\t\t\t\t\telse
\t\t\t\t\t{
\t\t\t\t\t\tx = (int)position.x + cached_x;
\t\t\t\t\t\ty = (int)position.y + cached_y;
\t\t\t\t\t}
#else
\t\t\t\t\tpolygon->getVertex(i, &x, &y);
#endif
""",
    )
    replace_exact(
        canvas,
        """\t\t\t\t\tif(i>0)
\t\t\t\t\t\tdrawLine(col, lastx, lasty, x, y);
""",
        """#ifdef PP_RENDER_BATCHED
\t\t\t\t\tif(i == 0)
\t\t\t\t\t{
\t\t\t\t\t\tfirst_x = x;
\t\t\t\t\t\tfirst_y = y;
\t\t\t\t\t}
#endif
\t\t\t\t\tif(i>0)
\t\t\t\t\t\tdrawLine(col, lastx, lasty, x, y);
""",
    )
    replace_exact(
        canvas,
        """\t\t\t\t\tpolygon->getVertex(0, &x, &y);
\t\t\t\t\tdrawLine(col, lastx, lasty, x, y);
""",
        """#ifdef PP_RENDER_BATCHED
\t\t\t\t\tx = first_x;
\t\t\t\t\ty = first_y;
#else
\t\t\t\t\tpolygon->getVertex(0, &x, &y);
#endif
\t\t\t\t\tdrawLine(col, lastx, lasty, x, y);
""",
    )
    replace_exact(
        canvas,
        "\t\t\t\tint vecx = ( (radius<<6) * (int)COS_bin[(angle * 512 / 360) % 512] ) >> 6;\n\t\t\t\tint vecy = ( (radius<<6) * (int)SIN_bin[(angle * 512 / 360) % 512] ) >> 6;\n",
        "\t\t\t\tint vecx = ( (radius<<6) * pp_cos_bin((angle * 512 / 360) % 512) ) >> 6;\n\t\t\t\tint vecy = ( (radius<<6) * pp_sin_bin((angle * 512 / 360) % 512) ) >> 6;\n",
    )
    replace_exact(
        canvas,
        """\tulSetAlpha(UL_FX_ALPHA, SHAPE_ALPHA, alphaint);
""",
        """#ifdef PP_RENDER_BATCHED
\tglPolyFmt(POLY_ALPHA(SHAPE_ALPHA) | POLY_CULL_NONE | POLY_ID(alphaint));
#else
\tulSetAlpha(UL_FX_ALPHA, SHAPE_ALPHA, alphaint);
#endif
""",
    )
    replace_exact(
        canvas,
        """\todx = div32(4 * (odx<<8), len); // using 24.8 fixed point for normal calculation
\tody = div32(4 * (ody<<8), len);
""",
        """#ifdef PP_RENDER_BATCHED
\tint reciprocal = div32(1 << 20, len);
\todx = (odx * reciprocal) >> 10;
\tody = (ody * reciprocal) >> 10;
#else
\todx = div32(4 * (odx<<8), len); // using 24.8 fixed point for normal calculation
\tody = div32(4 * (ody<<8), len);
#endif
""",
    )
    replace_exact(
        canvas,
        """\tulSetImageTint(crayon, col);
\t\n\tulDrawImageQuad(crayon,
\t\t\t\tx1+od1x, y1+od1y,
\t\t\t\tx2+od1x, y2+od1y,
\t\t\t\tx2-od2x, y2-od2y,
\t\t\t\tx1-od2x, y1-od2y);
""",
        """#ifdef PP_RENDER_BATCHED
\tGFX_BEGIN = GL_QUADS;
\tGFX_COLOR = col;
\tulVertexUVXY(crayon->offsetX0, crayon->offsetY0, x1+od1x, y1+od1y);
\tulVertexUVXY(crayon->offsetX0, crayon->offsetY1, x2+od1x, y2+od1y);
\tulVertexUVXY(crayon->offsetX1, crayon->offsetY1, x2-od2x, y2-od2y);
\tulVertexUVXY(crayon->offsetX1, crayon->offsetY0, x1-od2x, y1-od2y);
\tGFX_END = 0;
\tul_currentDepth += ul_autoDepth;
#else
\tulSetImageTint(crayon, col);
\tulDrawImageQuad(crayon,
\t\t\t\tx1+od1x, y1+od1y,
\t\t\t\tx2+od1x, y2+od1y,
\t\t\t\tx2-od2x, y2-od2y,
\t\t\t\tx1-od2x, y1-od2y);
#endif
""",
    )
    replace_exact(
        canvas,
        "\t\t\t\t\tvecx = ( (radius<<6) * (int)COS_bin[(angle + 512 * i / n_segments) % 512]) >> 6;\n\t\t\t\t\tvecy = ( (radius<<6) * (int)SIN_bin[(angle + 512 * i / n_segments) % 512]) >> 6;\n",
        "\t\t\t\t\tvecx = ( (radius<<6) * pp_cos_bin((angle + 512 * i / n_segments) % 512) ) >> 6;\n\t\t\t\t\tvecy = ( (radius<<6) * pp_sin_bin((angle + 512 * i / n_segments) % 512) ) >> 6;\n",
    )

    return 0


if __name__ == "__main__":
    raise SystemExit(main())
