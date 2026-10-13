#ifndef PP_RUNTIME_REPLAY_H
#define PP_RUNTIME_REPLAY_H
#include <nds.h>
class World;
void ppRuntimeInit(World *world, bool fat_available);
void ppRuntimeIRQBegin();
void ppRuntimeIRQEnd();
void ppRuntimeProduce(u16 *down, u16 *up, u16 *held);
touchPosition ppRuntimeTouch(bool foreground);
void ppRuntimePhysicsBegin();
void ppRuntimePhysicsEnd();
void ppRuntimeInputBegin();
void ppRuntimeInputEnd();
void ppRuntimePoll();
#endif
