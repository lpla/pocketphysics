# Optimization Screening

This is the clean, source-reproducible attribution screen used to choose the
improved build. It was generated from commit
`8173803a4ffe5b640267417105a75ddc186b22ff` with a clean worktree. Each of 13
ROMs ran the complete application workload twice in each pinned emulator. All
profiles passed the behavioral gates, retained stable checksums, and had zero
timing spread between repeats.

The software-math control reproduces tolerant cadence overruns in both
emulators. DeSmuME also records 9 overruns for the Thumb/LTO profile and 13 for
Thumb without LTO; the corrected ARM baseline and selected profile record zero.

- [melonDS 1.1 records](melonds/)
- [DeSmuME 0.9.11 records](desmume/)

The values below are mean ARM9 ticks per in-ROM sample. Frame includes display
synchronization, so profiles are selected from cross-emulator touch, physics,
frame, cadence, and correctness direction rather than the smallest render wait.

| Profile | melonDS physics | melonDS frame | DeSmuME physics | DeSmuME frame | Decision |
| --- | ---: | ---: | ---: | ---: | --- |
| Software-math control | 417,160 | 601,278 | 539,349 | 657,177 | Attribution control |
| DS math ARM/LTO | 130,192 | 556,519 | 218,894 | 556,702 | Corrected baseline |
| DS math ARM/LTO/fast-math | 130,903 | 556,651 | 225,116 | 556,800 | Rejected |
| DS math Thumb/LTO/fast-math | 233,930 | 557,657 | 380,841 | 556,801 | Rejected |
| DS math Thumb/no-LTO/fast-math | 236,696 | 556,607 | 384,911 | 557,583 | Rejected |
| Canvas ARM/O2 | 130,353 | 556,573 | 221,356 | 556,756 | Rejected |
| Canvas Thumb/O2 | 130,400 | 556,144 | 222,144 | 556,629 | Rejected |
| Reciprocal cache | 130,605 | 556,411 | 219,511 | 556,833 | Rejected |
| Fixed length estimate | 118,992 | 556,431 | 193,879 | 556,870 | Accepted component |
| Velocity gate | 126,903 | 556,182 | 215,643 | 556,080 | Accepted component |
| Both Box2D backports | 118,066 | 556,316 | 193,397 | 556,700 | Accepted composition |
| Physics-only ITCM | 122,811 | 556,345 | 201,829 | 556,589 | Accepted component |
| Backports plus physics ITCM | 111,042 | 556,033 | 181,913 | 556,372 | Selected |

`summary.csv` records every metric and embedded build label. `results.csv`
contains all 598 normalized per-run metric rows. `roms.txt` binds every profile
label to its ROM SHA-256 and byte size without publishing copyrighted ROM data
or machine-local paths.

Reproduce the screen with the pinned source, toolchain, dependencies, and
emulator packages:

```sh
REPEATS=2 \
DURATION=12 \
MAX_TIMING_SPREAD_PERCENT=0 \
tools/repro/test_optimization_screening.sh
```

The host duration is only a watchdog and can be increased on slower systems.
Timing values always come from the cascaded Nintendo DS timers inside the ROM.
