// Actual constructor, enumeration, cleanup, and destructor bodies are inserted.
// Directory entries and thumbnail decoding are stubs; ownership is explicit.
#include <cassert>
#include <cctype>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <set>
#include <string>
#include <sys/stat.h>
#include <utility>
#include <vector>
typedef unsigned short u16, uint16;
enum { SCREEN_WIDTH=256, SCREEN_HEIGHT=192, LOAD_DIALOG_WIDTH=219, LOAD_DIALOG_HEIGHT=162 };
std::string scenario, directoryRoot;
std::set<void *> allocations;
void *probeCalloc(size_t count, size_t size) {
    void *result = calloc(count, size);
    assert(result);
    allocations.insert(result);
    return result;
}
void probeFree(void *pointer) { allocations.erase(pointer); free(pointer); }
struct DIR_ITER { unsigned index = 0; };
std::set<DIR_ITER *> directories;
std::vector<std::pair<std::string, bool>> entries;
DIR_ITER *diropen(const char *path) {
    if (scenario == "missing") return nullptr;
    const std::string name(path);
    const bool data = name.find("data/") != std::string::npos;
    if ((data && directoryRoot == "legacy") || name.empty()) return nullptr;
    DIR_ITER *dir = new DIR_ITER;
    directories.insert(dir);
    return dir;
}
int dirclose(DIR_ITER *dir) { directories.erase(dir); delete dir; return 0; }
int dirnext(DIR_ITER *dir, char *name, struct stat *info) {
    if (dir->index == entries.size()) return -1;
    const auto &entry = entries[dir->index++];
    assert(entry.first.size() < 256);
    strcpy(name, entry.first.c_str());
    info->st_mode = entry.second ? S_IFDIR : S_IFREG;
    return 0;
}
void lowercase(char *text) {
    for (; *text; ++text) *text = char(std::tolower(static_cast<unsigned char>(*text)));
}
struct Widget {
    int x, y, width, height;
    Widget(int x_, int y_, int w, int h, uint16 **) : x(x_), y(y_), width(w), height(h) {}
};
struct Button {
    Button(int, int, int, int, uint16 **) {}
    void setCaption(const char *) {}
};
class PPLoadDialog : public Widget {
public:
    int page;
    bool showfwd, showback;
    void (*onOk)();
    char *resultname;
    bool ask_delete_confirm;
    int file_to_delete;
    Button *buttoncancel;
    u16 **thumbnails;
    char **names;
    char *datadir;
    unsigned decoded = 0;
    explicit PPLoadDialog(uint16 **);
    ~PPLoadDialog();
    void loadThumbnails();
    void freeThumbnails();
    void loadThumbnail(char *, int) { ++decoded; }
};
#define calloc probeCalloc
#define free probeFree
#define iprintf printf

static bool ppLoadDirExists(const char *path)
{
	DIR_ITER *dir = diropen(path);
	if(!dir) return false;
	dirclose(dir);
	return true;
}PPLoadDialog::PPLoadDialog(uint16 **_vram):
	Widget((SCREEN_WIDTH-LOAD_DIALOG_WIDTH)/2, (SCREEN_HEIGHT-LOAD_DIALOG_HEIGHT)/2,
			LOAD_DIALOG_WIDTH, LOAD_DIALOG_HEIGHT, _vram),
	page(0), showfwd(false), showback(false), onOk(0), resultname(0), ask_delete_confirm(false), file_to_delete(0)
{
	buttoncancel = new Button(x+85, y+138, 53, 19, _vram);
	buttoncancel->setCaption("cancel");
	
	thumbnails = (u16**)calloc(1, sizeof(u16*)*6);
	names = (char**)calloc(1, sizeof(char*)*6);
	
	datadir = "";
#ifdef PP_RUNTIME_FIXES
	if(ppLoadDirExists("/data/pocketphysics/sketches"))
#else
	if(diropen("/data/pocketphysics/sketches"))
#endif
		datadir = "/data/pocketphysics/sketches";
#ifdef PP_RUNTIME_FIXES
	else if(ppLoadDirExists("/pocketphysics/sketches"))
#else
	else if(diropen("/pocketphysics/sketches"))
#endif
		datadir = "/pocketphysics/sketches";
	
	loadThumbnails();
}

PPLoadDialog::~PPLoadDialog()
{
	delete buttoncancel;
	freeThumbnails();
	free(thumbnails);
	free(names);
}
void PPLoadDialog::loadThumbnails(void)
{
	freeThumbnails();
	
	char *filename = (char*)calloc(1, 256);
	
	DIR_ITER *dir;
	struct stat filestats;
	
	if(((dir = diropen(datadir)) == NULL))
	{
		iprintf("Dir read error!\n");
#ifdef PP_RUNTIME_FIXES
		free(filename);
#endif
		return;
	}
	
	int find_result = dirnext(dir, filename, &filestats);
	
	if(find_result == -1)
	{
		iprintf("No files found!\n");
#ifdef PP_RUNTIME_FIXES
		free(filename);
		dirclose(dir);
#endif
		return;
	}
	
	lowercase(filename);
	
	showfwd = false;
	int filenr = 0;
	while(find_result != -1)
	{
		if( (filename[0] != '.') && (!(filestats.st_mode & S_IFDIR)) 
#ifdef PP_RUNTIME_FIXES
				&& strlen(filename) >= 3
#endif
				&& (strcmp(filename+strlen(filename)-3, ".pp") == 0) ) // Hidden files and directories
		{
			if( filenr / 6 == page)
			{
				int index = filenr % 6;
				char *name = (char*)calloc(1, 256);
				strcpy(name, filename);
				names[index] = name;
				printf("%d %s\n", index, filename);
				loadThumbnail(filename, index);
			}
			if(filenr / 6 > page)
				showfwd = true;
			
			filenr++;
		}
		
		find_result = dirnext(dir, filename, &filestats);
		lowercase(filename);
	}
	
	free(filename);
	dirclose(dir);
}
void PPLoadDialog::freeThumbnails(void)
{
	for(int i=0; i<6; ++i)
	{
		if(names[i] != 0)
		{
			free(names[i]);
			names[i] = 0;
		}
		if(thumbnails[i] != 0)
		{
			free(thumbnails[i]);
			thumbnails[i] = 0;
		}
	}
}


#undef calloc
#undef free
int main(int argc, char **argv) {
    assert(argc == 3);
    scenario = argv[1]; directoryRoot = argv[2];
    if (scenario == "entries")
        entries = {{"a",false},{"ab",false},{".hidden.pp",false},{"folder.pp",true},
                   {"x.pp",false},{"Y.PP",false},{"other.txt",false}};
    uint16 *vram = nullptr;
    {
        PPLoadDialog dialog(&vram);
        if (scenario == "entries") {
            assert(dialog.names[0] && strcmp(dialog.names[0], "x.pp") == 0);
            assert(dialog.names[1] && strcmp(dialog.names[1], "y.pp") == 0);
            assert(dialog.names[2] == nullptr);
            assert(dialog.decoded == 2);
        }
    }
    if (!directories.empty() || !allocations.empty()) {
        fputs("DIRECTORY_OWNERSHIP\n", stderr);
        return 54;
    }
    puts("load-dialog enumeration and ownership passed");
    return 0;
}
