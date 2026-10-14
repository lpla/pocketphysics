# Research Frontier

The linked 2008 ROM reconstruction is complete: ordinary source compilation
and linking reproduce the complete ARM7, ARM9, and ROM identities. This does
not establish original expression choices, correctness of historical behavior,
or exhaustive validation of the modern and improved ports.
The [research worklist](research-worklist.md) tracks each outstanding workstream
and its evidence separately.

## Remaining Source Recovery

The unused zlib `deflate` archive member remains an assembly reconstruction.
It contributes no executable bytes to the ROM. Replacing it requires complete
normalized archive-object identity from C, including data, relocations, symbols,
alignment, and ELF attributes. Matching function size or most instructions is
insufficient. This target is separate from the accepted linked-ROM identity.

## Application Coverage

- **Matching modernization control:** the current modern role compiles Box2D
  in floating-point mode, while the historical and selected improved roles use
  fixed-point DS hardware math. Their comparisons do not isolate dependency
  updates. The [normal-loop study](runtime-loop-study.md) now implements a
  minimal fixed-point/hardware-math control with Thumb/O3 and compatibility
  behavior retained. Use it to attribute compiler, dependency, and
  optimization changes separately without overwriting the existing specimens.
- **Normal application scheduling:** the current integration harness enters
  before final initialization and directly sequences touch, physics, and canvas
  drawing. The separate modern-port runtime-loop replay now accounts for
  IRQ/foreground overlap, skipped or delayed input samples,
  full GUI/background and dual-screen drawing, frame output, and hardware
  divider/square-root interruption. Historical normal-loop instrumentation,
  raw ARM7 touch acquisition, broader workloads, and hardware collection remain
  open. Existing harness cadence is not full-app hardware readiness. The 1/20
  second integration timestep
  and nominal 60 Hz display target must remain separately documented.
- **Fast stylus dragging and collisions:** the standard sketch never enters
  the newly eligible domain of the wider velocity gate. A further workload
  must exercise that domain through the real mouse-joint/touch path, preserve
  state and render-work evidence, and separate operation attribution from
  timing instrumentation.
- **Malformed sketches:** direct polygon API crashes have reproducible host
  controls, but their reachability through pen debounce, closure, simplification,
  triangulation, and shape insertion is not established. Short strokes,
  duplicate samples, intersecting paths, zero area, and narrow shapes need
  independent touch-to-physics regression cases.
- **Per-frame physics equivalence:** current aggregate checksums and integer
  position bounds did not establish complete cross-role trajectories. The
  normal-loop protocol now records raw body transforms/velocities and contact/
  joint counts; it exposed the [length-threshold regression](length-threshold-study.md).
  Aligned trajectory equivalence, complete manifolds/joint parameters, and
  declared tolerances remain necessary.
- **Lifecycle and storage:** repeated creation/deletion, pin removal, reset,
  save/load, missing or damaged files, and allocation failures require dedicated
  correctness and heap-lifetime tests. These must include the application's
  actual workflows, not only dependency microtests.
  The [dialog study](storage-dialog-study.md) now fixes short-name comparisons,
  overwrite probing/ownership, full-buffer backspace, and directory lifetime,
  with 284 host cases using actual method bodies on Linux and macOS. The
  [native runtime logger](runtime-fat-study.md) also completes three emulated
  DLDI/FAT runs with independent readback. Complete GUI sketch storage workflows
  remain unvalidated. Thumbnail capture mapping, damaged XML,
  I/O failure feedback, and preserving the current scene on failed loads still
  need explicit acceptance tests.
- **Fixed-point arithmetic:** memory sanitizer coverage does not audit all
  signed shifts, overflows, division boundaries, or hardware arithmetic unit
  ownership. A complete arithmetic contract and boundary matrix remain open.
  This includes force/impulse scale conversions across the application and
  mouse-joint dependency API, response under rapid dragging, and fixed-point
  range safety before proposing any change to physical behavior.

## Optimization and Hardware

The [optimization study](optimization-study.md) records accepted and rejected
melonDS specimens. Tiny, layout-sensitive ITCM and synchronization-shaped
differences are not general speedup claims. More sketch sizes, joint graphs,
collision densities, and interaction patterns must precede extrapolation.
The [velocity-gate dataset](../research/results/velocity-gate/) specifically
demonstrates why operation coverage is required alongside timing.

The [polygon validation study](polygon-validation-study.md) is a separate
correctness development cycle. It preserves a byte-identified timing control,
uses independent guarded builds, and adds shared host/ARM9 API cases. A
correctness improvement must not be presented as a speedup without its own
measurements.

The [picking-ITCM study](picking-itcm-study.md) isolates broad-phase query code
placement without changing geometry. Its independent build and complete
function-range placement gates pass. The clean six-run comparison improves hit
tests but increases physics and complete-frame time in this scene. The selected
profile remains unchanged pending broader selection workloads.

Physical Nintendo DS measurements remain the final acceptance stage. Neither
the source reconstruction milestone nor passing deterministic emulator runs
means the optimization search is exhausted or the application is hardware-
validated. New datasets should preserve immutable earlier specimens and use
the [physical collection procedure](real-hardware.md).
