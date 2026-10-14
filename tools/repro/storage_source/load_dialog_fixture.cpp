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

// PP_METHODS

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
        // Ownership has already failed. Release the fixture's tracked objects
        // so Linux LeakSanitizer preserves this deliberate control's exit code.
        for (void *pointer : allocations) std::free(pointer);
        allocations.clear();
        for (DIR_ITER *directory : directories) delete directory;
        directories.clear();
        return 54;
    }
    puts("load-dialog enumeration and ownership passed");
    return 0;
}
