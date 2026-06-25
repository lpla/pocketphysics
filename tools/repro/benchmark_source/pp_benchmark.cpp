#include "pp_benchmark.h"

#include "canvas.h"
#include "Circle.h"
#include "polygon.h"
#include "state.h"
#include "thing.h"
#include "world.h"

#include <malloc.h>
#include <nds.h>
#include <nds/debug.h>
#include <stdio.h>
#include <string.h>

#ifndef PP_BENCHMARK_LABEL
#define PP_BENCHMARK_LABEL "unknown"
#endif

extern State state;

static const u32 kFnvOffset = 2166136261u;
static const u32 kFnvPrime = 16777619u;
static const int kSimulationFrames = 240;
static const int kHitTestIterations = 600;

struct BenchStat
{
	u32 count;
	u64 total;
	u32 min;
	u32 max;
	u32 over_budget;
};

static void statInit(BenchStat *stat)
{
	stat->count = 0;
	stat->total = 0;
	stat->min = 0xFFFFFFFFu;
	stat->max = 0;
	stat->over_budget = 0;
}

static void statAdd(BenchStat *stat, u32 ticks, u32 budget)
{
	stat->count++;
	stat->total += ticks;
	if(ticks < stat->min)
		stat->min = ticks;
	if(ticks > stat->max)
		stat->max = ticks;
	if(budget && ticks > budget)
		stat->over_budget++;
}

static u32 tickNow(void)
{
	return cpuGetTiming();
}

static u32 tickDelta(u32 start)
{
	return tickNow() - start;
}

static u32 hashU32(u32 hash, u32 value)
{
	hash ^= value;
	return hash * kFnvPrime;
}

static void debugWriteLine(const char *line)
{
	char chunk[96];
	const char *cursor = line;
	while(*cursor)
	{
		int len = 0;
		while(cursor[len] && len < (int)sizeof(chunk) - 1 && cursor[len] != '\n')
			len++;
		memcpy(chunk, cursor, len);
		chunk[len] = 0;
		nocashMessage(chunk);
		cursor += len;
		if(*cursor == '\n')
			cursor++;
	}
}

static u32 hashWorld(World *world)
{
	u32 hash = kFnvOffset;
	hash = hashU32(hash, (u32)world->getNThings());
	for(int i=0; i<world->getNThings(); ++i)
	{
		Thing *thing = world->getThing(i);
		int x = 0, y = 0;
		thing->getPosition(&x, &y);
		hash = hashU32(hash, (u32)thing->getShape());
		hash = hashU32(hash, (u32)thing->getType());
		hash = hashU32(hash, (u32)thing->isInvisible());
		hash = hashU32(hash, (u32)x);
		hash = hashU32(hash, (u32)y);
		hash = hashU32(hash, (u32)((float)thing->getRotation() * 10000.0f));

		if(thing->getShape() == Thing::Circle)
		{
			hash = hashU32(hash, (u32)((Circle*)thing)->getRadius());
		}
		else if(thing->getShape() == Thing::Polygon)
		{
			Polygon *polygon = (Polygon*)thing;
			hash = hashU32(hash, (u32)polygon->getClosed());
			hash = hashU32(hash, (u32)polygon->getNVertices());
			for(int v=0; v<polygon->getNVertices(); ++v)
			{
				int vx = 0, vy = 0;
				polygon->getVertex(v, &vx, &vy, true);
				hash = hashU32(hash, (u32)vx);
				hash = hashU32(hash, (u32)vy);
			}
		}
	}
	return hash;
}

static void drawBox(Canvas *canvas, BenchStat *input, Canvas::ObjectMode object_mode,
		int x1, int y1, int x2, int y2)
{
	u32 start;
	canvas->setObjectMode(object_mode);
	canvas->setPenMode(Canvas::pmBox);
	start = tickNow();
	canvas->penDown(x1, y1);
	statAdd(input, tickDelta(start), 0);
	start = tickNow();
	canvas->penMove((x1 + x2) / 2, (y1 + y2) / 2);
	statAdd(input, tickDelta(start), 0);
	start = tickNow();
	canvas->penMove(x2, y2);
	statAdd(input, tickDelta(start), 0);
	start = tickNow();
	canvas->penUp(x2, y2);
	statAdd(input, tickDelta(start), 0);
}

static void drawCircle(Canvas *canvas, BenchStat *input, int x, int y, int radius)
{
	u32 start;
	canvas->setObjectMode(Canvas::omDynamic);
	canvas->setPenMode(Canvas::pmCircle);
	start = tickNow();
	canvas->penDown(x, y);
	statAdd(input, tickDelta(start), 0);
	start = tickNow();
	canvas->penMove(x + radius / 2, y);
	statAdd(input, tickDelta(start), 0);
	start = tickNow();
	canvas->penMove(x + radius, y);
	statAdd(input, tickDelta(start), 0);
	start = tickNow();
	canvas->penUp(x + radius, y);
	statAdd(input, tickDelta(start), 0);
}

static void drawPolygon(Canvas *canvas, BenchStat *input, const int points[][2], int count)
{
	u32 start;
	canvas->setObjectMode(Canvas::omDynamic);
	canvas->setPenMode(Canvas::pmPolygon);
	start = tickNow();
	canvas->penDown(points[0][0], points[0][1]);
	statAdd(input, tickDelta(start), 0);
	for(int i=1; i<count; ++i)
	{
		start = tickNow();
		canvas->penMove(points[i][0], points[i][1]);
		statAdd(input, tickDelta(start), 0);
	}
	start = tickNow();
	canvas->penUp(points[count-1][0], points[count-1][1]);
	statAdd(input, tickDelta(start), 0);
}

static void addPin(Canvas *canvas, BenchStat *input, int x, int y)
{
	u32 start;
	canvas->setPenMode(Canvas::pmPin);
	start = tickNow();
	canvas->penDown(x, y);
	statAdd(input, tickDelta(start), 0);
	start = tickNow();
	canvas->penMove(x, y);
	statAdd(input, tickDelta(start), 0);
	start = tickNow();
	canvas->penUp(x, y);
	statAdd(input, tickDelta(start), 0);
}

static void buildScene(Canvas *canvas, BenchStat *input)
{
	drawBox(canvas, input, Canvas::omSolid, 10, 154, 222, 168);
	drawBox(canvas, input, Canvas::omSolid, 16, 124, 86, 136);
	drawBox(canvas, input, Canvas::omSolid, 146, 112, 224, 126);

	for(int row=0; row<2; ++row)
	{
		for(int col=0; col<6; ++col)
		{
			int x = 24 + col * 30 + (row * 7);
			int y = 28 + row * 28;
			drawBox(canvas, input, Canvas::omDynamic, x, y, x + 18, y + 18);
		}
	}

	for(int i=0; i<8; ++i)
	{
		drawCircle(canvas, input, 36 + i * 22, 88 + (i & 1) * 16, 8 + (i % 3));
	}

	static const int poly_a[][2] = {{38, 44}, {48, 31}, {67, 36}, {73, 53}, {55, 62}, {39, 45}};
	static const int poly_b[][2] = {{120, 42}, {136, 29}, {154, 43}, {148, 61}, {126, 61}, {120, 42}};
	static const int poly_c[][2] = {{188, 38}, {207, 33}, {218, 49}, {209, 68}, {190, 63}, {188, 38}};
	drawPolygon(canvas, input, poly_a, 6);
	drawPolygon(canvas, input, poly_b, 6);
	drawPolygon(canvas, input, poly_c, 6);

	addPin(canvas, input, 33, 37);
}

static int runHitTestLeakProbe(World *world, BenchStat *hit_test, u32 *checksum)
{
	struct mallinfo before = mallinfo();
	Thing *things[4] = {0, 0, 0, 0};
	u32 hash = kFnvOffset;
	for(int i=0; i<kHitTestIterations; ++i)
	{
		int x = 20 + ((i * 37) % 210);
		int y = 20 + ((i * 29) % 145);
		u32 start = tickNow();
		int count = world->getThingsAt(x, y, things, 4, true);
		statAdd(hit_test, tickDelta(start), 0);
		hash = hashU32(hash, (u32)count);
		hash = hashU32(hash, (u32)x);
		hash = hashU32(hash, (u32)y);
	}
	struct mallinfo after = mallinfo();
	*checksum = hash;
	return after.uordblks - before.uordblks;
}

static void emitRow(FILE *file, const char *metric, const BenchStat *stat,
		u32 budget, u32 checksum, int pass)
{
	u32 mean = stat->count ? (u32)(stat->total / stat->count) : 0;
	u32 min_value = stat->count ? stat->min : 0;
	char line[160];
	snprintf(line, sizeof(line),
		"PPBENCH,%s,%s,%lu,%llu,%lu,%lu,%lu,%lu,%lu,%08lx,%d\n",
		PP_BENCHMARK_LABEL,
		metric,
		(unsigned long)stat->count,
		(unsigned long long)stat->total,
		(unsigned long)mean,
		(unsigned long)min_value,
		(unsigned long)stat->max,
		(unsigned long)budget,
		(unsigned long)stat->over_budget,
		(unsigned long)checksum,
		pass);
	printf("%s", line);
	fprintf(stderr, "%s", line);
	debugWriteLine(line);
	fflush(stdout);
	fflush(stderr);
	if(file)
	{
		fprintf(file, "%s", line);
		fflush(file);
	}
}

static void emitValue(FILE *file, const char *metric, long value, u32 checksum, int pass)
{
	char line[160];
	snprintf(line, sizeof(line),
		"PPBENCH,%s,%s,1,%ld,%ld,%ld,%ld,0,0,%08lx,%d\n",
		PP_BENCHMARK_LABEL,
		metric,
		value,
		value,
		value,
		value,
		(unsigned long)checksum,
		pass);
	printf("%s", line);
	fprintf(stderr, "%s", line);
	debugWriteLine(line);
	fflush(stdout);
	fflush(stderr);
	if(file)
	{
		fprintf(file, "%s", line);
		fflush(file);
	}
}

void ppRunBenchmark(World *world, Canvas *canvas, bool fat_ok)
{
	consoleDebugInit((DebugDevice)(DebugDevice_NOCASH | DebugDevice_CONSOLE));
	cpuStartTiming(0);

	BenchStat input;
	BenchStat hit_test;
	BenchStat physics;
	BenchStat render;
	BenchStat frame;
	statInit(&input);
	statInit(&hit_test);
	statInit(&physics);
	statInit(&render);
	statInit(&frame);

	u32 frame_budget = BUS_CLOCK / 60;
	FILE *file = 0;
	if(fat_ok)
		file = fopen("ppbench.csv", "w");

	if(file)
	{
		fprintf(file, "tag,build,metric,count,total_ticks,mean_ticks,min_ticks,max_ticks,budget_ticks,over_budget,checksum,pass\n");
		fflush(file);
	}
	printf("tag,build,metric,count,total_ticks,mean_ticks,min_ticks,max_ticks,budget_ticks,over_budget,checksum,pass\n");
	fprintf(stderr, "tag,build,metric,count,total_ticks,mean_ticks,min_ticks,max_ticks,budget_ticks,over_budget,checksum,pass\n");
	debugWriteLine("tag,build,metric,count,total_ticks,mean_ticks,min_ticks,max_ticks,budget_ticks,over_budget,checksum,pass\n");
	fflush(stdout);
	fflush(stderr);

	emitValue(file, "benchmark_started", 1, 0, 1);
	buildScene(canvas, &input);
	u32 scene_checksum = hashWorld(world);
	emitValue(file, "scene_things_created", world->getNThings(), scene_checksum, world->getNThings() >= 20);

	u32 hit_checksum = 0;
	int leak_bytes = runHitTestLeakProbe(world, &hit_test, &hit_checksum);
	int leak_fixed_pass = leak_bytes <= 1024;
	emitValue(file, "hit_test_heap_delta_bytes", leak_bytes, hit_checksum, leak_fixed_pass);

	state.simulating = true;
	canvas->startSimulationMode();
	canvas->setPenMode(Canvas::pmMove);
	u32 drag_start = tickNow();
	canvas->penDown(33, 37);
	statAdd(&input, tickDelta(drag_start), 0);

	for(int i=0; i<kSimulationFrames; ++i)
	{
		u32 frame_start = tickNow();
		if(i >= 20 && i < 100)
		{
			u32 input_start = tickNow();
			canvas->penMove(33 + ((i - 20) / 2), 37 + ((i - 20) / 3));
			statAdd(&input, tickDelta(input_start), 0);
		}

		u32 physics_start = tickNow();
		world->step();
		statAdd(&physics, tickDelta(physics_start), frame_budget);

		u32 render_start = tickNow();
		ulStartDrawing2D();
		canvas->draw();
		ulEndDrawing();
		statAdd(&render, tickDelta(render_start), frame_budget);

		statAdd(&frame, tickDelta(frame_start), frame_budget);
	}

	u32 input_start = tickNow();
	canvas->penUp(73, 63);
	statAdd(&input, tickDelta(input_start), 0);
	canvas->stopSimulationMode();
	state.simulating = false;

	u32 final_checksum = hashWorld(world);
	int behavior_pass = world->getNThings() >= 20;
	int pass = behavior_pass && leak_fixed_pass;

	emitRow(file, "touch_create_and_drag", &input, 0, scene_checksum, pass);
	emitRow(file, "hit_test", &hit_test, 0, hit_checksum, pass);
	emitRow(file, "physics_step", &physics, frame_budget, final_checksum, pass);
	emitRow(file, "render_frame", &render, frame_budget, final_checksum, pass);
	emitRow(file, "frame_total", &frame, frame_budget, final_checksum, pass);
	emitValue(file, "things_final", world->getNThings(), final_checksum, pass);
	emitValue(file, "behavior_pass", behavior_pass, final_checksum, behavior_pass);
	emitValue(file, "hit_test_heap_fixed_pass", leak_fixed_pass, hit_checksum, leak_fixed_pass);
	emitValue(file, "overall_pass", pass, final_checksum, pass);

	if(file)
		fclose(file);

	while(1)
		swiWaitForVBlank();
}
