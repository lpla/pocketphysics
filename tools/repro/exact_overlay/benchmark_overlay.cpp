typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

static const u32 kFnvOffset = 2166136261u;
static const u32 kFnvPrime = 16777619u;
static const u32 kFrameBudget = 33513982u / 60u;
static const int kSimulationFrames = 240;
static const int kHitTestIterations = 600;

static volatile u16 &timerData(int timer)
{
	return *(volatile u16 *)(0x04000100u + (u32)timer * 4u);
}

static volatile u16 &timerControl(int timer)
{
	return *(volatile u16 *)(0x04000102u + (u32)timer * 4u);
}

struct TransferRegionPrefix
{
	volatile short touch_x;
	volatile short touch_y;
	volatile short touch_px;
	volatile short touch_py;
	volatile short touch_z1;
	volatile short touch_z2;
	volatile u16 diode1;
	volatile u16 diode2;
	volatile u32 temperature;
	volatile u16 buttons;
};

struct MallInfo
{
	int arena;
	int ordblks;
	int smblks;
	int hblks;
	int hblkhd;
	int usmblks;
	int fsmblks;
	int uordblks;
	int fordblks;
	int keepcost;
};

struct BenchStat
{
	u32 count;
	u32 total;
	u32 min;
	u32 max;
	u32 over_budget;
};

extern "C" void pp_nocash_message(const char *message);

static void *g_benchmark_file = (void *)1;

static void writeFileLine(const char *line)
{
	if(!g_benchmark_file)
		return;
	((int (*)(const char *, void *))0x02084eb5u)(line, g_benchmark_file);
	((int (*)(const char *, void *))0x02084eb5u)("\n", g_benchmark_file);
}

static void *world()
{
	return *(void **)0x020ca208u;
}

static void *canvas()
{
	return *(void **)0x020ca218u;
}

static void statInit(BenchStat *stat)
{
	stat->count = 0;
	stat->total = 0;
	stat->min = 0xffffffffu;
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

static void startTiming()
{
	timerControl(0) = 0;
	timerControl(1) = 0;
	timerData(0) = 0;
	timerData(1) = 0;
	timerControl(1) = (1u << 7) | (1u << 2);
	timerControl(0) = (1u << 7);
}

static u32 tickNow()
{
	u16 high1;
	u16 low;
	u16 high2;
	do
	{
		high1 = timerData(1);
		low = timerData(0);
		high2 = timerData(1);
	}
	while(high1 != high2);
	return ((u32)high1 << 16) | low;
}

static u32 timerReadOverhead()
{
	u32 minimum = 0xffffffffu;
	for(int i=0; i<256; ++i)
	{
		u32 start = tickNow();
		u32 elapsed = tickNow() - start;
		if(elapsed < minimum)
			minimum = elapsed;
	}
	return minimum;
}

static u32 hashU32(u32 hash, u32 value)
{
	return (hash ^ value) * kFnvPrime;
}

static char *appendText(char *out, const char *text)
{
	while(*text)
		*out++ = *text++;
	return out;
}

static u32 divideU32(u32 numerator, u32 denominator, u32 *remainder)
{
	u32 quotient = 0;
	u32 current = 0;
	for(int bit=31; bit>=0; --bit)
	{
		current = (current << 1) | ((numerator >> bit) & 1u);
		if(current >= denominator)
		{
			current -= denominator;
			quotient |= 1u << bit;
		}
	}
	if(remainder)
		*remainder = current;
	return quotient;
}

static u32 moduloU32(u32 numerator, u32 denominator)
{
	u32 remainder = 0;
	divideU32(numerator, denominator, &remainder);
	return remainder;
}

static char *appendU32(char *out, u32 value)
{
	char digits[24];
	int count = 0;
	do
	{
		u32 remainder = 0;
		value = divideU32(value, 10u, &remainder);
		digits[count++] = (char)('0' + remainder);
	}
	while(value);
	while(count)
		*out++ = digits[--count];
	return out;
}

static char *appendS32(char *out, int value)
{
	if(value < 0)
	{
		*out++ = '-';
		return appendU32(out, (u32)(-(value + 1)) + 1u);
	}
	return appendU32(out, (u32)value);
}

static char *appendHex(char *out, u32 value)
{
	static const char hex[] = "0123456789abcdef";
	for(int shift=28; shift>=0; shift-=4)
		*out++ = hex[(value >> shift) & 15u];
	return out;
}

static void emit(const char *metric, u32 count, u32 total, u32 min, u32 max,
		u32 budget, u32 over_budget, u32 checksum, int pass)
{
	char line[120];
	char *out = appendText(line, "00PPBENCH,bench-historical,");
	out = appendText(out, metric);
	*out++ = ',';
	out = appendU32(out, count);
	*out++ = ',';
	out = appendU32(out, total);
	*out++ = ',';
	out = appendU32(out, count ? divideU32(total, count, 0) : 0);
	*out++ = ',';
	out = appendU32(out, count ? min : 0);
	*out++ = ',';
	out = appendU32(out, count ? max : 0);
	*out++ = ',';
	out = appendU32(out, budget);
	*out++ = ',';
	out = appendU32(out, over_budget);
	*out++ = ',';
	out = appendHex(out, checksum);
	*out++ = ',';
	*out++ = pass ? '1' : '0';
	*out = 0;
	pp_nocash_message(line);
	writeFileLine(line + 2);
}

static void emitStat(const char *metric, const BenchStat *stat, u32 budget,
		u32 checksum, int pass)
{
	emit(metric, stat->count, stat->total, stat->min, stat->max,
		budget, stat->over_budget, checksum, pass);
}

static void emitValue(const char *metric, int value, u32 checksum, int pass)
{
	char value_text[24];
	char *end = appendS32(value_text, value);
	*end = 0;

	char line[120];
	char *out = appendText(line, "00PPBENCH,bench-historical,");
	out = appendText(out, metric);
	*out++ = ',';
	out = appendText(out, "1,");
	out = appendText(out, value_text);
	*out++ = ',';
	out = appendText(out, value_text);
	*out++ = ',';
	out = appendText(out, value_text);
	*out++ = ',';
	out = appendText(out, value_text);
	out = appendText(out, ",0,0,");
	out = appendHex(out, checksum);
	*out++ = ',';
	*out++ = pass ? '1' : '0';
	*out = 0;
	pp_nocash_message(line);
	writeFileLine(line + 2);
}

static void setObjectMode(int mode)
{
	((void (*)(int))0x02002e41u)(mode);
}

static void setPenMode(int mode)
{
	((void (*)(int))0x02002da1u)(mode);
}

static void dispatchTouch(int x, int y, bool down, BenchStat *input)
{
	volatile TransferRegionPrefix *ipc = (volatile TransferRegionPrefix *)0x027ff000u;
	ipc->touch_x = (short)x;
	ipc->touch_y = (short)y;
	ipc->touch_px = (short)x;
	ipc->touch_py = (short)y;
	if(down)
		ipc->buttons &= (u16)~(1u << 6);
	else
		ipc->buttons |= (1u << 6);
	u32 start = tickNow();
	((void (*)())0x02002385u)();
	statAdd(input, tickNow() - start, 0);
}

static void drawBox(BenchStat *input, int object_mode, int x1, int y1, int x2, int y2)
{
	setObjectMode(object_mode);
	setPenMode(1);
	dispatchTouch(x1, y1, true, input);
	dispatchTouch(x1, y1, true, input);
	dispatchTouch((x1 + x2) / 2, (y1 + y2) / 2, true, input);
	dispatchTouch(x2, y2, true, input);
	dispatchTouch(x2, y2, false, input);
}

static void drawCircle(BenchStat *input, int x, int y, int radius)
{
	setObjectMode(0);
	setPenMode(2);
	dispatchTouch(x, y, true, input);
	dispatchTouch(x, y, true, input);
	dispatchTouch(x + radius / 2, y, true, input);
	dispatchTouch(x + radius, y, true, input);
	dispatchTouch(x + radius, y, false, input);
}

static void drawPolygon(BenchStat *input, const int points[][2], int count)
{
	setObjectMode(0);
	setPenMode(0);
	dispatchTouch(points[0][0], points[0][1], true, input);
	dispatchTouch(points[0][0], points[0][1], true, input);
	for(int i=1; i<count; ++i)
		dispatchTouch(points[i][0], points[i][1], true, input);
	dispatchTouch(points[count-1][0], points[count-1][1], false, input);
}

static void addPin(BenchStat *input, int x, int y)
{
	setPenMode(3);
	dispatchTouch(x, y, true, input);
	dispatchTouch(x, y, true, input);
	dispatchTouch(x, y, false, input);
}

static void buildScene(BenchStat *input)
{
	drawBox(input, 1, 10, 154, 222, 168);
	drawBox(input, 1, 16, 124, 86, 136);
	drawBox(input, 1, 146, 112, 224, 126);
	for(int row=0; row<2; ++row)
	{
		for(int col=0; col<6; ++col)
		{
			int x = 24 + col * 30 + row * 7;
			int y = 28 + row * 28;
			drawBox(input, 0, x, y, x + 18, y + 18);
		}
	}
	for(int i=0; i<8; ++i)
		drawCircle(input, 36 + i * 22, 88 + (i & 1) * 16,
			8 + (int)moduloU32((u32)i, 3u));
	static const int poly_a[][2] = {{38, 44}, {48, 31}, {67, 36}, {73, 53}, {55, 62}, {39, 45}};
	static const int poly_b[][2] = {{120, 42}, {136, 29}, {154, 43}, {148, 61}, {126, 61}, {120, 42}};
	static const int poly_c[][2] = {{188, 38}, {207, 33}, {218, 49}, {209, 68}, {190, 63}, {188, 38}};
	drawPolygon(input, poly_a, 6);
	drawPolygon(input, poly_b, 6);
	drawPolygon(input, poly_c, 6);
	addPin(input, 33, 37);
}

static int getThingCount()
{
	return ((int (*)(void *))0x0200767du)(world());
}

static u32 hashWorld()
{
	u32 hash = hashU32(kFnvOffset, (u32)getThingCount());
	for(int i=0; i<getThingCount(); ++i)
	{
		void *thing = ((void *(*)(void *, int))0x02007685u)(world(), i);
		int x = 0;
		int y = 0;
		((void (*)(void *, int *, int *))0x0200731du)(thing, &x, &y);
		hash = hashU32(hash, (u32)((int (*)(void *))0x02006db9u)(thing));
		hash = hashU32(hash, (u32)((int (*)(void *))0x02006dbdu)(thing));
		hash = hashU32(hash, (u32)x);
		hash = hashU32(hash, (u32)y);
	}
	return hash;
}

static u32 hashSceneTopology()
{
	u32 hash = hashU32(kFnvOffset, (u32)getThingCount());
	for(int i=0; i<getThingCount(); ++i)
	{
		void *thing = ((void *(*)(void *, int))0x02007685u)(world(), i);
		hash = hashU32(hash, (u32)((int (*)(void *))0x02006db9u)(thing));
		hash = hashU32(hash, (u32)((int (*)(void *))0x02006dbdu)(thing));
	}
	return hash;
}

static void scenePositionSums(int *sum_x, int *sum_y)
{
	*sum_x = 0;
	*sum_y = 0;
	for(int i=0; i<getThingCount(); ++i)
	{
		void *thing = ((void *(*)(void *, int))0x02007685u)(world(), i);
		int x = 0;
		int y = 0;
		((void (*)(void *, int *, int *))0x0200731du)(thing, &x, &y);
		*sum_x += x;
		*sum_y += y;
	}
}

static void countRenderWork(u32 *visible_things, u32 *line_quads)
{
	for(int i=0; i<getThingCount(); ++i)
	{
		void *thing = ((void *(*)(void *, int))0x02007685u)(world(), i);
		if(((bool (*)(void *))0x02006df1u)(thing))
			continue;
		int shape = ((int (*)(void *))0x02006db9u)(thing);
		if(shape == 1)
		{
			(*visible_things)++;
			int vertices = ((int (*)(void *))0x02004a49u)(thing);
			bool closed = ((bool (*)(void *))0x02004a59u)(thing);
			*line_quads += closed ? vertices : vertices - 1;
		}
		else if(shape == 0)
		{
			(*visible_things)++;
			int radius = ((int (*)(void *))0x02001535u)(thing);
			int segments = (int)divideU32((u32)(radius * radius), 20u, 0);
			if(segments < 5)
				segments = 5;
			if(segments > 16)
				segments = 16;
			*line_quads += (u32)segments;
		}
	}
}

static MallInfo mallInfo()
{
	return ((MallInfo (*)())0x02086581u)();
}

extern "C" __attribute__((section(".text.benchmark_entry"), noreturn))
void benchmark_entry()
{
	startTiming();
	BenchStat input;
	BenchStat hit_test;
	BenchStat physics;
	BenchStat render;
	BenchStat render_begin;
	BenchStat render_canvas;
	BenchStat render_end;
	BenchStat frame;
	statInit(&input);
	statInit(&hit_test);
	statInit(&physics);
	statInit(&render);
	statInit(&render_begin);
	statInit(&render_canvas);
	statInit(&render_end);
	statInit(&frame);
	u32 visible_things = 0;
	u32 line_quads = 0;

	g_benchmark_file = 0;
	g_benchmark_file = ((void *(*)(const char *, const char *))0x02084de9u)
		("ppbench-historical.csv", "w");
	writeFileLine("tag,build,metric,count,total_ticks,mean_ticks,min_ticks,max_ticks,budget_ticks,over_budget,checksum,pass");
	emitValue("benchmark_started", 1, 0, 1);
	emitValue("file_output_ready", g_benchmark_file ? 1 : 0, 0, 1);
	emitValue("timer_read_overhead_ticks", (int)timerReadOverhead(), 0, 1);
	buildScene(&input);
	int scene_count = getThingCount();
	u32 scene_checksum = hashSceneTopology();
	int scene_pass = scene_count == 27;
	emitValue("scene_things_created", scene_count, scene_checksum, scene_pass);
	int scene_sum_x = 0;
	int scene_sum_y = 0;
	scenePositionSums(&scene_sum_x, &scene_sum_y);
	emitValue("scene_position_sum_x", scene_sum_x, scene_checksum, scene_pass);
	emitValue("scene_position_sum_y", scene_sum_y, scene_checksum, scene_pass);

	MallInfo before = mallInfo();
	void *things[4] = {0, 0, 0, 0};
	u32 hit_checksum = kFnvOffset;
	for(int i=0; i<kHitTestIterations; ++i)
	{
		int x = 20 + (int)moduloU32((u32)(i * 37), 210u);
		int y = 20 + (int)moduloU32((u32)(i * 29), 145u);
		u32 start = tickNow();
		int count = ((int (*)(void *, int, int, void **, int, bool))0x02007fa9u)
			(world(), x, y, things, 4, true);
		statAdd(&hit_test, tickNow() - start, 0);
		hit_checksum = hashU32(hit_checksum, (u32)count);
		hit_checksum = hashU32(hit_checksum, (u32)x);
		hit_checksum = hashU32(hit_checksum, (u32)y);
	}
	MallInfo after = mallInfo();
	int leak_bytes = after.uordblks - before.uordblks;
	emitValue("hit_test_heap_delta_bytes", leak_bytes, hit_checksum, leak_bytes <= 1024);

	((void (*)(void *))0x02000379u)(canvas());
	setPenMode(4);
	dispatchTouch(33, 37, true, &input);
	dispatchTouch(33, 37, true, &input);
	for(int i=0; i<kSimulationFrames; ++i)
	{
		u32 frame_start = tickNow();
		if(i >= 20 && i < 100)
			dispatchTouch(33 + (i - 20) / 2,
				37 + (int)divideU32((u32)(i - 20), 3u, 0), true, &input);

		int timestep_raw = 0x0ccc;
		u32 physics_start = tickNow();
		((void (*)(void *, const int *))0x02008265u)(world(), &timestep_raw);
		statAdd(&physics, tickNow() - physics_start, kFrameBudget);

		u32 render_start = tickNow();
		u32 phase_start = render_start;
		((void (*)())0x0205e3ccu)();
		statAdd(&render_begin, tickNow() - phase_start, kFrameBudget);
		phase_start = tickNow();
		((void (*)(void *))0x02000cedu)(canvas());
		statAdd(&render_canvas, tickNow() - phase_start, kFrameBudget);
		phase_start = tickNow();
		((void (*)())0x0205da70u)();
		statAdd(&render_end, tickNow() - phase_start, kFrameBudget);
		statAdd(&render, tickNow() - render_start, kFrameBudget);
		statAdd(&frame, tickNow() - frame_start, kFrameBudget);
		countRenderWork(&visible_things, &line_quads);
	}
	dispatchTouch(73, 63, false, &input);
	((void (*)(void *))0x02000385u)(canvas());

	u32 final_checksum = hashWorld();
	int behavior_pass = scene_pass && getThingCount() == 27 &&
		final_checksum != 0 && visible_things > 0 && line_quads > 0;
	int leak_pass = leak_bytes <= 1024;
	int pass = behavior_pass && leak_pass;
	emitStat("touch_create_and_drag", &input, 0, scene_checksum, pass);
	emitStat("hit_test", &hit_test, 0, hit_checksum, pass);
	emitStat("physics_step", &physics, kFrameBudget, final_checksum, pass);
	emitStat("render_frame", &render, kFrameBudget, final_checksum, pass);
	emitStat("render_begin", &render_begin, kFrameBudget, final_checksum, pass);
	emitStat("render_canvas", &render_canvas, kFrameBudget, final_checksum, pass);
	emitStat("render_end", &render_end, kFrameBudget, final_checksum, pass);
	emitStat("frame_total", &frame, kFrameBudget, final_checksum, pass);
	emitValue("visible_things_rendered", (int)visible_things, final_checksum, behavior_pass);
	emitValue("line_quads_rendered", (int)line_quads, final_checksum, behavior_pass);
	emitValue("things_final", getThingCount(), final_checksum, pass);
	emitValue("behavior_pass", behavior_pass, final_checksum, behavior_pass);
	emitValue("hit_test_heap_fixed_pass", leak_pass, hit_checksum, leak_pass);
	emitValue("overall_pass", pass, final_checksum, pass);
	if(g_benchmark_file)
	{
		((int (*)(void *))0x02084a55u)(g_benchmark_file);
		g_benchmark_file = 0;
	}

	while(1)
		((void (*)())0x0207954du)();
}
