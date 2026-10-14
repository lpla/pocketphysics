"""Repair selected-profile filename, dialog-buffer, and directory ownership paths."""

from pathlib import Path
import sys


def replace(path, old, new):
    text = path.read_text()
    if text.count(old) != 1:
        raise ValueError((path, old[:90], text.count(old)))
    path.write_text(text.replace(old, new))


def patch(src):
    main = src / "arm9/source/main.cpp"
    world = src / "arm9/source/world.cpp"
    header = src / "arm9/source/world.h"
    replace(
        main,
        '\t\tif( strcmp(text+strlen(text)-3, ".pp") != 0 ) {',
        r"""#ifdef PP_RUNTIME_FIXES
		if( strlen(text) < 3 || strcmp(text+strlen(text)-3, ".pp") != 0 ) {
#else
		if( strcmp(text+strlen(text)-3, ".pp") != 0 ) {
#endif""",
    )
    replace(
        main,
        '\t\tsprintf(fullname, "%s/%s", "pocketphysics/sketches", name);',
        r"""#ifdef PP_RUNTIME_FIXES
		snprintf(fullname, 256, "%s/%s", world->getSketchSaveDirectory(), name);
#else
		sprintf(fullname, "%s/%s", "pocketphysics/sketches", name);
#endif""",
    )
    replace(
        main,
        r"""		if( f != 0 )
		{""",
        r"""		if( f != 0 )
		{
#ifdef PP_RUNTIME_FIXES
			fclose(f);
#endif""",
    )
    replace(
        header,
        "\t\tvoid save(char *filename, char *thumbnail);",
        r"""#ifdef PP_RUNTIME_FIXES
		const char *getSketchSaveDirectory() const;
#endif
		void save(char *filename, char *thumbnail);""",
    )
    replace(
        world,
        "void World::save(char *filename, char *thumbnail)",
        r"""#ifdef PP_RUNTIME_FIXES
const char *World::getSketchSaveDirectory() const
{
	if(ppDirExists("data/pocketphysics/sketches"))
		return "data/pocketphysics/sketches";
	if(ppDirExists("pocketphysics/sketches"))
		return "pocketphysics/sketches";
	return "data/pocketphysics/sketches";
}
#endif

void World::save(char *filename, char *thumbnail)""",
    )
    replace(
        world,
        r"""	if(ppDirExists("pocketphysics/sketches"))
		use_data_dir = false;""",
        r"""#ifdef PP_RUNTIME_FIXES
	if(strcmp(getSketchSaveDirectory(), "pocketphysics/sketches") == 0)
#else
	if(ppDirExists("pocketphysics/sketches"))
#endif
		use_data_dir = false;""",
    )
    tw = src / "arm9/source/tobkit/typewriter.cpp"
    replace(
        tw,
        "\t\t\t\t\tfor(u16 i=cursorpos-1;i<=strlength;++i) {",
        r"""#ifdef PP_RUNTIME_FIXES
					for(u16 i=cursorpos-1;i<strlength;++i) {
#else
					for(u16 i=cursorpos-1;i<=strlength;++i) {
#endif""",
    )
    replace(
        tw,
        "\t\t\t\t\ttext[strlength+1] = 0;",
        r"""#ifdef PP_RUNTIME_FIXES
					text[strlength] = 0;
#else
					text[strlength+1] = 0;
#endif""",
    )
    load = src / "arm9/source/tobkit/loaddialog.cpp"
    replace(
        load,
        '#include "../../../generic/command.h"',
        r"""#include "../../../generic/command.h"

#ifdef PP_RUNTIME_FIXES
static bool ppLoadDirExists(const char *path)
{
	DIR_ITER *dir = diropen(path);
	if(!dir) return false;
	dirclose(dir);
	return true;
}
#endif""",
    )
    replace(
        load,
        '\tif(diropen("/data/pocketphysics/sketches"))',
        r"""#ifdef PP_RUNTIME_FIXES
	if(ppLoadDirExists("/data/pocketphysics/sketches"))
#else
	if(diropen("/data/pocketphysics/sketches"))
#endif""",
    )
    replace(
        load,
        '\telse if(diropen("/pocketphysics/sketches"))',
        r"""#ifdef PP_RUNTIME_FIXES
	else if(ppLoadDirExists("/pocketphysics/sketches"))
#else
	else if(diropen("/pocketphysics/sketches"))
#endif""",
    )
    replace(
        load,
        '\t\t\t\t&& (strcmp(filename+strlen(filename)-3, ".pp") == 0) )',
        r"""#ifdef PP_RUNTIME_FIXES
				&& strlen(filename) >= 3
#endif
				&& (strcmp(filename+strlen(filename)-3, ".pp") == 0) )""",
    )
    replace(
        load,
        r"""		iprintf("Dir read error!\n");
		return;""",
        r"""		iprintf("Dir read error!\n");
#ifdef PP_RUNTIME_FIXES
		free(filename);
#endif
		return;""",
    )
    replace(
        load,
        r"""		iprintf("No files found!\n");
		return;""",
        r"""		iprintf("No files found!\n");
#ifdef PP_RUNTIME_FIXES
		free(filename);
		dirclose(dir);
#endif
		return;""",
    )


if __name__ == "__main__":
    patch(Path(sys.argv[1]))
