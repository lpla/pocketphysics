# Research Worklist

This worklist separates accepted results from experiments and remaining
acceptance work. The linked historical source reconstruction is complete;
application correctness, performance research, and physical validation are
separate tasks. Earlier datasets retain their original source and ROM identities.

| Workstream | Status and evidence | Remaining work |
| --- | --- | --- |
| Historical linked-ROM reconstruction | Complete ordinary source build; [byte inventory](executable-source-coverage.md) and [identity gates](reproducibility.md) | Preserve exact ARM7, ARM9, ROM, ELF, and provenance gates after future reconstruction changes |
| Historical archive recovery | All linked implementations recovered; unused zlib `deflate` still reconstructed in assembly | Recover C with complete archive-object identity, without accepting near matches or editing compiled instructions |
| Three-role comparison | [Direct integration results](../research/results/README.md) identify historical, modern floating-point, and improved fixed-point specimens | Keep the numerical-mode confound and direct-harness boundary explicit |
| Matched numerical-mode modernization | Minimal modern fixed-point DS-math control and its [independent, repeated comparison](../research/results/matched-numeric-control/) published | Retain the floating-point control and isolate further compiler/dependency factors |
| Normal modern-port loop | [First baseline](../research/results/runtime-loop-baseline/) and [corrected schema-2 runs](../research/results/length-correction/) cover GUI input, dragging, collisions, reset, deletion, both-screen rendering, and arithmetic interruption | Broaden workloads and retain per-frame state and capture evidence |
| Fixed-point length correction | [Threshold study](length-threshold-study.md); independent selected-ROM/ELF builds, 21 comparison runs, exhaustive host/ARM9 matrices, and two negative controls pass | Broaden the arithmetic domain; preserve these gates after future changes |
| Physics equivalence | Raw transforms, velocities, awake flags, and contact/joint counts recorded; [step-aligned fixed-point comparison](../research/results/length-correction/runtime/trajectory-comparison.json) still differs first at step 26 | Isolate the remaining profile differences; capture manifolds and joint parameters; declare numerical tolerances |
| Stylus and malformed sketches | Real ARM9 GUI acquisition replay and direct polygon API controls implemented | Exercise short, repeated, crossing, zero-area, narrow, and fast strokes through debounce, closure, simplification, triangulation, and physics insertion |
| Lifecycle and storage | Creation, dragging, pause/resume, reset, deletion, and replacement replayed; short-name extension underflow reproduced | Fix and validate save/load dialogs, missing/damaged files, thumbnails, file ownership, repeated pin removal, allocation failures, and heap lifetimes |
| Arithmetic contract | Eight forced DIV/SQRT preemption cases and length-boundary matrix implemented | Audit signed shifts, overflow, zero/large divisors, force/impulse scaling, and negative-component boundaries |
| Performance search | [Optimization](optimization-study.md), [velocity gate](../research/results/velocity-gate/), and [picking ITCM](picking-itcm-study.md) retain measured decisions | Broaden scene/contact/joint density, exercise the wider velocity domain through mouse-joint dragging, isolate operation attribution from timing, and evaluate further backports or alternatives |
| Historical scheduling and input | Byte-identical uninstrumented release and direct harness available | Add historical full-loop instrumentation and raw ARM7 acquisition coverage without substituting modern-port behavior |
| Audio compatibility | Modern loop retains its ported audio-call path | Audit looping, note/frequency, panning, ownership, and differences from the historical ARM7 command queue |
| Public archival quality | Locked inputs, explicit specimen roles, scientific scope limits, and Git-target link validation implemented | Update current hashes, commands, result index, and evidence together; preserve immutable checkpoints and use neutral public paths |
| Physical Nintendo DS validation | [Collection procedure](real-hardware.md) prepared | Collect on a working console and flashcart: touch, display, timing, audio, storage, and firmware evidence; physical testing is deferred until equipment is available |

The [research frontier](research-frontier.md) gives the acceptance boundaries
in more detail. A passing emulator run does not close the physical-validation
row or establish that the performance search is exhausted.
