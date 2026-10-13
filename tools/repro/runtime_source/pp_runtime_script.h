#ifndef PP_RUNTIME_SCRIPT_H
#define PP_RUNTIME_SCRIPT_H

struct PPRuntimeEvent { int x, y; unsigned held, frames; };
enum { PP_RUNTIME_EVENT_CAPACITY = 256, PP_RUNTIME_TOUCH = 1u << 12 };

struct PPRuntimeScript
{
    PPRuntimeEvent events[PP_RUNTIME_EVENT_CAPACITY];
    unsigned count, frames;
    bool valid;
    PPRuntimeScript() : count(0), frames(0), valid(true) {}
    void add(int x, int y, unsigned held, unsigned duration = 6)
    {
        if(count == PP_RUNTIME_EVENT_CAPACITY || !duration || x < 0 || x > 255 || y < 0 || y > 191)
        { valid = false; return; }
        events[count++] = PPRuntimeEvent{x, y, held, duration};
        frames += duration;
    }
    void tap(int x, int y)
    {
        add(x, y, PP_RUNTIME_TOUCH); add(x, y, PP_RUNTIME_TOUCH); add(x, y, 0);
    }
    void stroke(int x, int y, int x2, int y2)
    {
        add(x, y, PP_RUNTIME_TOUCH); add(x, y, PP_RUNTIME_TOUCH);
        add((x+x2)/2, (y+y2)/2, PP_RUNTIME_TOUCH); add(x2, y2, PP_RUNTIME_TOUCH);
        add(x2, y2, 0);
    }
};

inline void ppBuildRuntimeScript(PPRuntimeScript &s)
{
    s.add(0, 0, 0, 12);
    s.tap(244, 30); s.tap(35, 181); // Solid box tool, floor.
    s.stroke(18, 145, 225, 155);
    s.tap(244, 10);
    for(int i=0; i<6; ++i) s.stroke(26+i*25, 30, 43+i*25, 45);
    s.tap(58, 181);
    for(int i=0; i<5; ++i) s.stroke(38+i*30, 76, 46+i*30, 76);
    s.stroke(204, 80, 212, 80);
    s.tap(12, 181);
    s.add(170, 35, PP_RUNTIME_TOUCH); s.add(170, 35, PP_RUNTIME_TOUCH);
    s.add(186, 35, PP_RUNTIME_TOUCH); s.add(190, 52, PP_RUNTIME_TOUCH);
    s.add(172, 52, PP_RUNTIME_TOUCH); s.add(170, 35, PP_RUNTIME_TOUCH);
    s.add(170, 35, 0);
    s.tap(244, 181); s.add(0, 0, 0, 90); // Play and settle.
    s.tap(163, 181);
    s.add(204, 136, PP_RUNTIME_TOUCH); s.add(204, 136, PP_RUNTIME_TOUCH);
    for(int i=0; i<20; ++i)
        s.add(i&1 ? 215 : 25, i&2 ? 130 : 25, PP_RUNTIME_TOUCH, 3);
    s.add(215, 130, 0);
    s.tap(244, 181); s.add(0, 0, 0, 18); // Pause.
    s.tap(244, 181); s.add(0, 0, 0, 30); // Resume.
    s.tap(244, 160); // Stop/reset to original geometry.
    s.tap(186, 181); s.tap(204, 80); // Delete the isolated circle.
    s.tap(35, 181); s.stroke(196, 50, 214, 66); // Create its replacement.
    s.add(0, 0, 0, 30);
}
#endif
