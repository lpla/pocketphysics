// The runner inserts the unchanged application callback and directory method.
// GUI drawing and world serialization are stubs; filename probes use real files.
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <dirent.h>
#include <string>
#include <sys/stat.h>

static bool ppDirExists(const char *path)
{
    DIR *dir = opendir(path);
    if (!dir) return false;
    closedir(dir);
    return true;
}
struct World { const char *getSketchSaveDirectory() const; } worldObject;
World *world = &worldObject;
struct Typewriter {
    char *text;
    explicit Typewriter(const char *name) {
        text = static_cast<char *>(calloc(21, 1));
        assert(text);
        strncpy(text, name, 20);
    }
    ~Typewriter() { free(text); }
    char *getText() { return text; }
};
Typewriter *tw;
unsigned short *main_vram = nullptr;
void overwriteFile() {}
void deleteMessageBox() {}
struct MessageBox {
    MessageBox(unsigned short **, const char *, int, const char *, void (*)(),
               const char *, void (*)()) {}
    void show() {}
    void pleaseDraw() {}
};
MessageBox *mb = nullptr;
struct GUI { void registerOverlayWidget(MessageBox *, int, int) {} } guiObject;
GUI *gui = &guiObject;
const int MAIN_SCREEN = 0;
char filenameStorage[256] = {};
char *current_filename = filenameStorage;
unsigned saves = 0, live_files = 0;
void deleteTypewriter() { delete tw; tw = nullptr; }
void save() { ++saves; }
FILE *probeOpen(const char *path, const char *mode)
{
    FILE *file = fopen(path, mode);
    if (file) ++live_files;
    return file;
}
int probeClose(FILE *file)
{
    if (file) --live_files;
    return fclose(file);
}
#define fopen probeOpen
#define fclose probeClose

const char *World::getSketchSaveDirectory() const {
            if(ppDirExists("data/pocketphysics/sketches")) return "data/pocketphysics/sketches";
            if(ppDirExists("pocketphysics/sketches")) return "pocketphysics/sketches";
            return "data/pocketphysics/sketches";
        }
void handleSaveDialogOk(void)
{
	char *text = tw->getText();
	
	// Append extension if neccessary
	if(strcmp(text,"") != 0)
	{
		char *name;
		if( strcmp(text+strlen(text)-3, ".pp") != 0 ) {
			// Append extension
			name = (char*)malloc(strlen(text)+3+1);
			strcpy(name,text);
			strcpy(name+strlen(name),".pp");
		} else {
			// Leave as is
			name = (char*)malloc(strlen(text)+1);
			strcpy(name,text);
		}

		deleteTypewriter();
		
		printf("Saving %s\n", name);
		
		strncpy(current_filename, name, 256);
		
		// Check if the file already exists
		char* fullname = (char*)calloc(1,256);
		sprintf(fullname, "%s/%s", "pocketphysics/sketches", name);
		
		FILE* f = fopen(fullname,"r");

		if( f != 0 )
		{
			mb = new MessageBox(&main_vram, "overwrite file", 2, "yes", overwriteFile, "no", deleteMessageBox);
			gui->registerOverlayWidget(mb, 0, MAIN_SCREEN);
			mb->show();
			mb->pleaseDraw();
		}
		else
		{
#ifndef PP_RUNTIME_FIXES
			fclose(f);
#endif
			save();
		}
		
		free(fullname);
		free(name);
	}
}


#undef fopen
#undef fclose
void createDirectory(const char *path)
{
    std::string name(path);
    for (size_t i = 1; i < name.size(); ++i)
        if (name[i] == '/') mkdir(name.substr(0, i).c_str(), 0700);
    mkdir(path, 0700);
}
int main(int argc, char **argv)
{
    assert(argc == 4);
    const std::string name(argv[1]), root(argv[2]);
    const bool existing = std::string(argv[3]) == "exists";
    if (root == "data" || root == "both") createDirectory("data/pocketphysics/sketches");
    if (root == "legacy" || root == "both") createDirectory("pocketphysics/sketches");
    const char *directory = root == "legacy" ? "pocketphysics/sketches" : "data/pocketphysics/sketches";
    const std::string expected = name.empty() ? "" :
        name.substr(name.size() >= 3 ? name.size()-3 : 0) == ".pp" ? name : name + ".pp";
    if (existing) {
        FILE *file = fopen((std::string(directory) + "/" + expected).c_str(), "w");
        assert(file);
        fputs("original file", file);
        fclose(file);
    }
    tw = new Typewriter(name.c_str());
    handleSaveDialogOk();
    const bool leaked = live_files != 0;
    const bool confirmation = !name.empty() && existing;
    const bool badWorkflow = (mb != nullptr) != confirmation ||
        saves != unsigned(!name.empty() && !existing) || current_filename != expected;
    if (tw) deleteTypewriter();
    delete mb;
    if (leaked) { fputs("OPEN_FILE_LEAK\n", stderr); return 51; }
    if (badWorkflow) { fputs("OVERWRITE_WORKFLOW\n", stderr); return 52; }
    puts("save callback passed");
    return 0;
}
