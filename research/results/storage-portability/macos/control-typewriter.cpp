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

void Typewriter::penDown(u8 px, u8 py)
{
	// Inside the kb?
	//if((px-x>=8*kx)&&(px-x<=8*(kx+26))&&(py-y>=8*ky)&&(py-y<=8*(ky+12))) {
	if((px>=kx)&&(px<=kx+26*8)&&(py>=ky)&&(py<=ky+12*8)) {
		
		u8 tilex = (px-kx)/8;
		u8 tiley = (py-ky)/8;
		
		if(tilex>=1 && tilex<=24 && tiley<=12) {
			char c = typewriter_Hit[tilex+(tiley*26)];
			
			if(c==CAP) {
				/*
				if((mode==MODE_CAPS)||(mode==MODE_SHIFT)) {
					mode = MODE_NORMAL;
				} else {
					mode = MODE_CAPS;
				}
				redraw();
				*/
			} else if (c==SHF) {
				/* // Off for now (until the font has captial letters
				if((mode==MODE_CAPS)||(mode==MODE_SHIFT)) {
					mode = MODE_NORMAL;
				} else {
					mode = MODE_SHIFT;
				}
				redraw();
				*/
			} else if (c==BSP) {
				if(cursorpos > 0) {
					for(u16 i=cursorpos-1;i<=strlength;++i) {
						text[i] = text[i+1];
					}
					text[strlength+1] = 0;
					cursorpos--;
					strlength--;
					label->setCaption(text);
					drawCursor();
				}
			} else if (c==RET) {
				if(onOk!=0) {
					onOk();
				}
			} else if(c!=NOK) {
				if(mode==MODE_SHIFT) {
					mode = MODE_NORMAL;
					redraw();
				}
				if((mode==MODE_SHIFT)||(mode==MODE_CAPS)) {
					// When the font supports big letters :-)
					// c -= 32;
				}
				if(strlength<MAX_TEXT_LEN) {
					for(u16 i=strlength;i>cursorpos;i--) {
						text[i] = text[i-1];
					}
					text[cursorpos] = c;
					cursorpos++;
					strlength++;
					label->setCaption(text);
					drawCursor();
				}
			}
		}
		
		CommandPlaySample(smp_play, 48, 255, 0);
		
	// Inside the button area?
	} else if ((px>x)&&(px<x+TW_WIDTH)&&(py<y+TW_HEIGHT)&&(py>ky+12*8)) {
		CommandPlaySample(smp_click, 48, 255, 0);
		gui.penDown(px, py);
	}
}


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
