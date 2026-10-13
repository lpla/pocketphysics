#include "pp_runtime_replay.h"
#include "pp_runtime_script.h"
#include "pp_runtime_math_cases.h"
#include "world.h"
#include "thing.h"
#include "state.h"
#include <nds/debug.h>
#include <stdio.h>
#include <string.h>

enum { kFrameTicks = 6*355*263, kTraceCapacity = 512, kBodies = 20, kIRQCapacity = 2048 };
struct Stat { unsigned count; unsigned long long total; unsigned min, max, over; };
struct Body { unsigned shape, type, present, scalar[6], awake; };
struct Frame { unsigned step, vblank, event, contacts, joints, things; Body bodies[kBodies]; };
static PPRuntimeScript script;
static World *world;
static Frame trace[kTraceCapacity];
static unsigned irqTicks[kIRQCapacity];
static unsigned char consumed[kIRQCapacity];
static Stat irqStat, intervalStat, physicsElapsed, physicsCPU, inputStat, latencyStat, traceStat;
static volatile unsigned vblank, irqTotal, eventIndex, eventFrame, sampleTick, heldKeys;
static volatile int sampleX, sampleY;
static volatile bool active, inPhysics;
static unsigned irqStart, lastIRQStart, physicsStart, physicsIRQStart, inputStart;
static unsigned steps, inputCalls, uniqueSamples, overlaps, overflow, mouseSteps, maxThings;
static unsigned topFrames, bottomFrames, creationThings, afterDeleteThings;
static bool fatAvailable;
static FILE *output;
static bool writeFailed;
static volatile bool validatingMath;
static volatile unsigned validationIRQs;
static unsigned simulationTransitions;
static bool wasSimulating;
extern State state;

static unsigned now()
{
    u16 h, l, h2;
    do { h=TIMER_DATA(1); l=TIMER_DATA(0); h2=TIMER_DATA(1); } while(h != h2);
    return (unsigned(h)<<16)|l;
}
static void add(Stat &s, unsigned ticks, unsigned budget=0)
{
    if(!s.count || ticks < s.min) s.min=ticks;
    if(ticks>s.max) s.max=ticks;
    ++s.count; s.total+=ticks;
    if(budget && ticks>budget) ++s.over;
}
static void write(const char *s)
{
    if(output && (fputs(s,output)<0 || fputc('\n',output)==EOF)) writeFailed=true;
    char chunk[96];
    while(*s) { unsigned n=strlen(s); if(n>95) n=95;
        memcpy(chunk,s,n); chunk[n]=0; nocashMessage(chunk); s+=n; }
}
static void metric(const char *name, const Stat &s, unsigned budget)
{
    char line[256];
    snprintf(line,sizeof(line),"PPBENCH,%s,%s,%u,%llu,%llu,%u,%u,%u,%u,00000000,1",
             PP_RUNTIME_LABEL,name,s.count,s.total,s.count?s.total/s.count:0,s.min,s.max,budget,s.over);
    write(line);
}
static void scalar(const char *name, unsigned value, bool pass=true)
{
    char line[256];
    snprintf(line,sizeof(line),"PPBENCH,%s,%s,1,%u,%u,%u,%u,0,0,00000000,%u",
             PP_RUNTIME_LABEL,name,value,value,value,value,unsigned(pass));
    write(line);
}
void ppRuntimeInit(World *w, bool fat_available)
{
    world=w; fatAvailable=fat_available; ppBuildRuntimeScript(script);
    TIMER_CR(0)=0; TIMER_CR(1)=0; TIMER_DATA(0)=0; TIMER_DATA(1)=0;
    TIMER_CR(1)=TIMER_ENABLE|TIMER_CASCADE; TIMER_CR(0)=TIMER_ENABLE;
    active=true;
}
void ppRuntimeIRQBegin()
{
    if(validatingMath) ++validationIRQs;
    if(!active) return;
    irqStart=now();
    if(vblank) add(intervalStat,irqStart-lastIRQStart,kFrameTicks);
    lastIRQStart=irqStart;
    ++vblank;
    if(inPhysics) ++overlaps;
}
void ppRuntimeIRQEnd()
{
    if(!active) return;
    unsigned ticks=now()-irqStart;
    irqTotal+=ticks; add(irqStat,ticks,kFrameTicks);
    if(vblank<=kIRQCapacity) irqTicks[vblank-1]=ticks; else ++overflow;
    // ulGetMainLcd reports the screen selected by the completed renderer.
    if(ulGetMainLcd()) ++bottomFrames; else ++topFrames;
}
void ppRuntimeProduce(u16 *down, u16 *up, u16 *held)
{
    unsigned next=0;
    if(active && eventIndex<script.count)
    {
        const PPRuntimeEvent &e=script.events[eventIndex];
        sampleX=e.x; sampleY=e.y; next=e.held;
        if(++eventFrame==e.frames) { eventFrame=0; ++eventIndex; }
    }
    *down=next & ~heldKeys; *up=heldKeys & ~next; *held=next;
    heldKeys=next; sampleTick=now();
}
touchPosition ppRuntimeTouch(bool foreground)
{
    touchPosition touch={};
    // Only the acquisition snapshot is atomic; physics and input remain interruptible.
    unsigned ime=enterCriticalSection();
    touch.px=sampleX; touch.py=sampleY;
    unsigned sequence=vblank, produced=sampleTick;
    leaveCriticalSection(ime);
    if(foreground && active && sequence)
    {
        if(sequence<=kIRQCapacity)
        {
            if(!consumed[sequence-1]) { consumed[sequence-1]=1; ++uniqueSamples; }
        }
        else ++overflow;
        add(latencyStat,now()-produced,kFrameTicks);
    }
    return touch;
}
void ppRuntimePhysicsBegin()
{
    unsigned ime=enterCriticalSection();
    physicsIRQStart=irqTotal; physicsStart=now(); inPhysics=true;
    leaveCriticalSection(ime);
}
void ppRuntimePhysicsEnd()
{
    unsigned ime=enterCriticalSection();
    unsigned elapsed=now()-physicsStart;
    inPhysics=false;
    unsigned interrupted=irqTotal-physicsIRQStart;
    leaveCriticalSection(ime);
    add(physicsElapsed,elapsed,kFrameTicks);
    if(interrupted>elapsed) ++overflow; else add(physicsCPU,elapsed-interrupted,kFrameTicks);
    unsigned captureStart=now();
    if(steps<kTraceCapacity && world->getNThings()<=kBodies)
    {
        Frame &f=trace[steps];
        f.step=steps; f.vblank=vblank; f.event=eventIndex;
        f.contacts=world->ppRuntimePhysicsWorld()->GetContactCount();
        f.joints=world->ppRuntimePhysicsWorld()->GetJointCount();
        f.things=world->getNThings();
        if(world->ppRuntimeHasMouseJoint()) ++mouseSteps;
        for(unsigned i=0;i<f.things;++i)
        {
            Thing *t=world->getThing(i); Body &b=f.bodies[i];
            b.shape=t->getShape(); b.type=t->getType();
            b2Body *body=t->getb2Body(); b.present=body!=0;
            if(body)
            {
                b2Vec2 p=body->GetPosition(), v=body->GetLinearVelocity();
                float32 a=body->GetAngle(), av=body->GetAngularVelocity();
                typedef char ScalarMustBeFourBytes[sizeof(float32)==4 ? 1 : -1];
                memcpy(b.scalar+0,&p.x,4); memcpy(b.scalar+1,&p.y,4);
                memcpy(b.scalar+2,&v.x,4); memcpy(b.scalar+3,&v.y,4);
                memcpy(b.scalar+4,&a,4); memcpy(b.scalar+5,&av,4);
                b.awake=!body->IsSleeping();
            }
        }
    }
    else ++overflow;
    ++steps; add(traceStat,now()-captureStart);
}
void ppRuntimeInputBegin() { inputStart=now(); }
void ppRuntimeInputEnd()
{
    add(inputStat,now()-inputStart,kFrameTicks); ++inputCalls;
    unsigned n=world->getNThings(); if(n>maxThings) maxThings=n;
    if(n==14) creationThings=n;
    if(creationThings && n==13) afterDeleteThings=n;
    if(state.simulating!=wasSimulating) { ++simulationTransitions; wasSimulating=state.simulating; }
}
static unsigned validateArithmetic()
{
    unsigned failures=0;
    validatingMath=true; irqEnable(IRQ_VBLANK);
    validationIRQs=0;
    for(unsigned i=0;i<sizeof(ppRuntimeMathCases)/sizeof(ppRuntimeMathCases[0]);++i)
    {
        const PPRuntimeMathCase &c=ppRuntimeMathCases[i];
        unsigned ime=enterCriticalSection();
        // Pend a real VBlank while interrupts are masked, then run both units
        // across the application's complete arithmetic-using renderer.
        while(REG_VCOUNT==192); while(REG_VCOUNT!=192);
        DIV_CR=DIV_64_64; while(DIV_CR & DIV_BUSY);
        DIV_NUMERATOR64=c.numerator; DIV_DENOMINATOR64=c.denominator;
        SQRT_CR=SQRT_64; while(SQRT_CR & SQRT_BUSY);
        SQRT_PARAM64=c.radicand;
        unsigned before=validationIRQs;
        leaveCriticalSection(ime);
        while(validationIRQs==before);
        while(DIV_CR & DIV_BUSY); while(SQRT_CR & SQRT_BUSY);
        if((int)DIV_RESULT32!=c.quotient || (unsigned)SQRT_RESULT32!=c.root) ++failures;
    }
    irqDisable(IRQ_VBLANK); validatingMath=false;
    return failures;
}
void ppRuntimePoll()
{
    if(vblank<script.frames+6) return;
    irqDisable(IRQ_VBLANK); active=false;
    if(fatAvailable)
    {
        char name[128]; snprintf(name,sizeof(name),"pp-runtime-%s.log",PP_RUNTIME_LABEL);
        output=fopen(name,"w"); if(!output) writeFailed=true;
    }
    for(int i=0;i<world->getNThings();++i)
    {
        Thing *t=world->getThing(i); int x,y; t->getPosition(&x,&y);
        float32 rotation=t->getRotation(); unsigned bits; memcpy(&bits,&rotation,4);
        char line[160]; snprintf(line,sizeof(line),"PPFINAL,%s,%d,%u,%u,%d,%d,%08x;",
                                PP_RUNTIME_LABEL,i,unsigned(t->getShape()),unsigned(t->getType()),x,y,bits);
        write(line);
    }
    for(unsigned i=0;i<steps && i<kTraceCapacity;++i)
    {
        const Frame &f=trace[i]; char line[256];
        snprintf(line,sizeof(line),"PPSTATE,%s,%u,%u,%u,%u,%u,%u;",
                 PP_RUNTIME_LABEL,f.step,f.vblank,f.event,f.contacts,f.joints,f.things); write(line);
        for(unsigned j=0;j<f.things && j<kBodies;++j)
        {
            const Body &b=f.bodies[j];
            snprintf(line,sizeof(line),"PPBODY,%s,%u,%u,%u,%u,%u,%08x,%08x,%08x,%08x,%08x,%08x,%u;",
                     PP_RUNTIME_LABEL,i,j,b.shape,b.type,b.present,b.scalar[0],b.scalar[1],
                     b.scalar[2],b.scalar[3],b.scalar[4],b.scalar[5],b.awake); write(line);
        }
    }
    for(unsigned i=0;i<vblank && i<kIRQCapacity;++i)
    {
        char line[128]; snprintf(line,sizeof(line),"PPIRQ,%s,%u,%u,%u;",
                                PP_RUNTIME_LABEL,i+1,irqTicks[i],unsigned(consumed[i])); write(line);
    }
    // This is the real hardware-capture buffer, sampled only after measurement.
    while(REG_CAPTURE & (1u<<31));
    u8 captureMapping=VRAM_C_CR;
    vramSetBankC(VRAM_C_LCD);
    for(unsigned y=0;y<96;++y)
    {
        char line[600]; int length=snprintf(line,sizeof(line),"PPPIXEL,%s,%u,",PP_RUNTIME_LABEL,y);
        for(unsigned x=0;x<128;++x)
        {
            unsigned r=0,g=0,b=0;
            for(unsigned dy=0;dy<2;++dy) for(unsigned dx=0;dx<2;++dx)
            {
                unsigned pixel=((volatile u16*)VRAM_C)[(2*y+dy)*256+2*x+dx];
                r+=pixel&31; g+=(pixel>>5)&31; b+=(pixel>>10)&31;
            }
            length+=snprintf(line+length,sizeof(line)-length,"%04x",(r/4)|((g/4)<<5)|((b/4)<<10));
        }
        line[length++]=';'; line[length]=0; write(line);
    }
    VRAM_C_CR=captureMapping;
    unsigned mathFailures=validateArithmetic();
    metric("vblank_handler",irqStat,kFrameTicks); metric("vblank_interval",intervalStat,kFrameTicks);
    metric("physics_elapsed",physicsElapsed,kFrameTicks); metric("physics_foreground",physicsCPU,kFrameTicks);
    metric("foreground_input",inputStat,kFrameTicks); metric("sample_age",latencyStat,kFrameTicks);
    metric("state_capture",traceStat,0);
    scalar("script_events",script.count); scalar("script_frames",script.frames);
    scalar("vblanks",vblank); scalar("physics_steps",steps); scalar("input_calls",inputCalls);
    scalar("samples_consumed",uniqueSamples); scalar("samples_unconsumed",vblank-uniqueSamples);
    scalar("physics_irq_overlaps",overlaps); scalar("mouse_joint_steps",mouseSteps);
    scalar("top_frames",topFrames); scalar("bottom_frames",bottomFrames);
    scalar("maximum_things",maxThings); scalar("creation_things",creationThings);
    scalar("after_delete_things",afterDeleteThings); scalar("things_final",world->getNThings());
    scalar("overflow",overflow,overflow==0); scalar("script_valid",script.valid,script.valid);
#ifdef TARGET_FLOAT32_IS_FIXED
    scalar("scalar_fixed_16_16",1);
#else
    scalar("scalar_fixed_16_16",0);
#endif
    scalar("fat_available",fatAvailable);
    scalar("simulation_transitions",simulationTransitions);
    scalar("math_preemption_cases",8); scalar("math_preemption_irqs",validationIRQs);
    scalar("math_preemption_failures",mathFailures,mathFailures==0);
    if(output && fflush(output)!=0) writeFailed=true;
    scalar("log_write_error",writeFailed,!writeFailed);
    scalar("runtime_complete",1,script.valid && !overflow && !writeFailed && !mathFailures);
    if(output) { fclose(output); output=0; }
    for(;;) swiWaitForVBlank();
}
