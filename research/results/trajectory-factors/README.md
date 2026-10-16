# Isolated Runtime Trajectory Factors

Clean protocol checkpoint `43135050637363dd4ca6a381dd0a1819b9c1b4ba` repeats
four fixed-point DS-math roles three times each with the same pinned emulator
image and independently seeded portable configurations. All twelve runs pass
the complete runtime, arithmetic, drawing, lifecycle, and repetition gates.

| Role | Foreground physics | VBlank handler | Sample age | Unconsumed samples | Body records differing from baseline |
| --- | ---: | ---: | ---: | ---: | ---: |
| Fixed-point modernization baseline | 108,888 | 29,061 | 58,669 | 0 | 0 |
| Baseline with ARM instruction mode | 69,599 | 26,246 | 45,569 | 0 | 0 |
| Baseline with stack-based picking only | 108,920 | 29,176 | 58,796 | 0 | 0 |
| Selected improved port | 56,304 | 15,216 | 30,980 | 0 | 2,374 |

Timing columns are deterministic per-run mean ARM9 timer ticks. Each run records
252 physics steps and 3,528 body records. The [bit comparisons](comparisons/)
align by physics step and object index. Neither isolated factor changes recorded
baseline body state in this scene; the selected role still first differs at
step 26, by one raw 16.16 position unit. This does not exclude interactions
between factors or establish equivalence in other scenes.

The [profile study](../../../docs/runtime-trajectory-study.md) specifies each
factor. ARM mode retains baseline O3, math, and compatibility source behavior.
The picking profile changes only the query AABB allocation, preserving Thumb
and remaining compatibility behavior; it does not enable the full runtime-fix
bundle. The [compiled gate](compiled-gates/allocation-gate.json) retains one
allocation call relocation in the baseline and ARM-only query functions, and
zero in the picking-only function. Raw disassembly and object hashes bind that
observation to the built functions. It is not a contact-order causality proof.

Both new profiles have independently identical complete ROM and ELF builds,
recorded in [the build manifest](compiled-gates/independent-builds.csv). The
selected runtime specimen is the unchanged world-save checkpoint. A separate
selected release build retains both the preceding ROM and ELF; the frozen
floating modern release retains its pinned ROM hash.

The original [normalized records](results.csv), raw streams, captures,
configuration snapshots/hashes, statuses, and acceptance assertions are retained.
The baseline reproduces its earlier fixed-mode trajectory and the selected role
its earlier improved trajectory. Faster physics in this one ARM-only control
is bounded attribution evidence, not a new selected release or a universal
performance claim. Contact manifolds, full joint parameters, broader workloads,
remaining profile differences, and physical validation remain open.
