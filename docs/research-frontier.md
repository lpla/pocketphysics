# Research Frontier

The linked 2008 ROM reconstruction is complete: ordinary source compilation
and linking reproduce the complete ARM7, ARM9, and ROM identities. This does
not establish original expression choices, correctness of historical behavior,
or exhaustive validation of the modern and improved ports.

## Remaining Source Recovery

The unused zlib `deflate` archive member remains an assembly reconstruction.
It contributes no executable bytes to the ROM. Replacing it requires complete
normalized archive-object identity from C, including data, relocations, symbols,
alignment, and ELF attributes. Matching function size or most instructions is
insufficient. This target is separate from the accepted linked-ROM identity.

## Application Coverage

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
  position bounds do not establish complete cross-role trajectories. Record
  body transforms, velocities, shapes, contacts, and joint topology with a
  defined numeric-mode tolerance and explicit divergence localization.
- **Lifecycle and storage:** repeated creation/deletion, pin removal, reset,
  save/load, missing or damaged files, and allocation failures require dedicated
  correctness and heap-lifetime tests. These must include the application's
  actual workflows, not only dependency microtests.
- **Fixed-point arithmetic:** memory sanitizer coverage does not audit all
  signed shifts, overflows, division boundaries, or hardware arithmetic unit
  ownership. A complete arithmetic contract and boundary matrix remain open.

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
