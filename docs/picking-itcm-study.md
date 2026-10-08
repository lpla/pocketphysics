# Picking Function ITCM Experiment

## Hypothesis and Intervention

The application queries the Box2D broad phase through `World::getThingsAt` for
touch selection. Moving this function from main memory into ARM9 instruction
tightly coupled memory may reduce query cost. This experiment adds only the
`ITCM_CODE` placement attribute under `PP_PICKING_ITCM`; it does not change
query geometry, result order, allocation, numeric mode, or physics algorithms.

The `bench-improved-query-itcm` profile starts from the selected improved role,
including polygon validation guards. The instrumented selected ROM is
`157ca14fb895a2dfc93ae2548482db718823dbf77b374814bcae8f7d697fd292`.
The instrumented candidate ROM is
`83864a974757d01098d586c1b009fdee6c2cd2599bf4d91d234812e306b9b7c7`.
Neither binary is the uninstrumented release specimen.

## Build and Placement Gates

The [runner](../tools/repro/test_query_itcm.sh) creates two independent candidate
output trees and requires byte-identical complete ELF files and ROMs. Both the
control and candidate ROM hashes are pinned. The
[placement checker](../tools/repro/check_query_itcm.py) independently reads the
ELF section and symbol tables and the linker map. It requires the complete
function ranges, including linked compiler clones, to reside in executable
`.itcm` at `0x01000000`, with total section size no greater than 32 KiB.
Missing functions, wrong sections, truncated files, out-of-range extents, and
inconsistent ELF/map inventories fail the gate.

The candidate's instrumented ITCM section is 15,152 bytes. The original
function occupies 1,516 bytes and its constant-propagated clone 1,452 bytes,
adding 2,968 bytes to the 12,184-byte selected section. This verifies static
placement, not physical-console execution or a timing advantage.

## Measurement and Selection

```sh
tools/repro/test_source_patches.sh
REPEATS=3 tools/repro/test_query_itcm.sh
```

The runner measures three repetitions of each specimen in melonDS 1.1 using
the existing in-ROM ARM9 timers. It requires all recorded correctness gates,
exact selected/candidate scene and render-work equivalence, and zero timing
spread. The host watchdog is not a performance metric. `BUILD_ONLY=1` stops
after build identity and placement gates; `SKIP_BUILDS=1` reuses already
validated build trees and still checks their identities and placement.

Hit-test savings alone are insufficient for promotion. Touch processing,
physics, complete-frame cadence, and the larger ITCM allocation must be
considered together. Code placement can alter unrelated phases, and drawing
time includes display synchronization. The standard scene is not a dense
selection workload; additional sketch sizes and repeated drag/selection
patterns are required before extrapolation.

At this checkpoint the candidate passes independent build and placement
validation. It remains experimental and is not enabled in `perf` or
`bench-improved`. A clean-source replay dataset is required for the timing
decision. Physical Nintendo DS validation remains separate.
