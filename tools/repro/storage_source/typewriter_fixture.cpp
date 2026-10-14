// The runner inserts the actual penDown implementation; drawing/audio are stubs.
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
typedef unsigned char u8;
typedef unsigned short u16;
enum { MAX_TEXT_LEN=20, CAP=1, SHF=2, BSP=3, RET=4, NOK=0,
       MODE_NORMAL=0, MODE_SHIFT=1, MODE_CAPS=2, TW_WIDTH=256, TW_HEIGHT=192 };
char typewriter_Hit[26*13] = {};
void *smp_play = nullptr, *smp_click = nullptr;
void CommandPlaySample(void *, int, int, int) {}
struct Label { void setCaption(char *) {} };
struct GUI { void penDown(u8, u8) {} };
class Typewriter {
public:
    int x=0, y=0, kx=0, ky=0, mode=MODE_NORMAL;
    u16 cursorpos, strlength;
    char *text;
    Label labelObject, *label = &labelObject;
    GUI gui;
    void (*onOk)() = nullptr;
    Typewriter(unsigned length, unsigned cursor) : cursorpos(cursor), strlength(length) {
        text = static_cast<char *>(calloc(MAX_TEXT_LEN+1, 1));
        assert(text);
        memcpy(text, "abcdefghijklmnopqrst", length);
    }
    ~Typewriter() { free(text); }
    void redraw() {}
    void drawCursor() {}
    void penDown(u8, u8);
};

// PP_METHODS

int main(int argc, char **argv)
{
    assert(argc == 3);
    unsigned length = unsigned(atoi(argv[1])), cursor = unsigned(atoi(argv[2]));
    assert(length <= MAX_TEXT_LEN && cursor <= length);
    Typewriter writer(length, cursor);
    std::string expected(writer.text);
    if (cursor) expected.erase(cursor-1, 1);
    typewriter_Hit[1] = BSP;
    writer.penDown(8, 0);
    assert(writer.text == expected);
    assert(writer.strlength == expected.size());
    assert(writer.cursorpos == (cursor ? cursor-1 : 0));
    puts("typewriter penDown backspace passed");
    return 0;
}
