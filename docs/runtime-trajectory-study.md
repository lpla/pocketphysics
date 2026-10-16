# Isolating Recorded Physics Trajectories

The [corrected runtime comparison](../research/results/length-correction/runtime/trajectory-comparison.json)
first differs between the fixed-point modernization control and the selected
port at physics step 26, by one raw 16.16 position unit. The length correction
does not remove that difference. The profiles also differ in instruction mode,
compiler/link options, source fixes, rendering, and physics backports.

Two experimental profiles isolate individual factors against
`runtime-modern-fixed-ds`:

| Profile | Difference from the fixed-point modernization control |
| --- | --- |
| `runtime-modern-fixed-ds-arm` | ARM instruction mode instead of Thumb across the ARM9 application and compiled dependencies; O3, fixed-point DS math, and compatibility behavior retained |
| `runtime-modern-fixed-ds-picking` | Stack allocation for the picking AABB only; Thumb/O3, math implementation, remaining compatibility behavior, and other compiler options retained |

The picking control does not enable the full `PP_RUNTIME_FIXES` bundle.
Its compiled `World::getThingsAt` must have no allocation relocation;
the baseline and ARM-only control retain one. This confirms the operation
change in the built function. It does not by itself prove why trajectories
differ or that heap addresses determine contact ordering.

Build each profile into two independent output trees and compare complete ROM
and ELF identities. Then run the usual full-loop protocol three times with
independent portable emulator state:

```sh
BUILD_PROFILE=runtime-modern-fixed-ds-arm tools/repro/build_v06_blocksds.sh
BUILD_PROFILE=runtime-modern-fixed-ds-picking tools/repro/build_v06_blocksds.sh
INROM_PROTOCOL=runtime EMULATOR=melonds REPEATS=3 DURATION=30 \
  tools/repro/benchmark_inrom.sh \
  runtime-modern-fixed-ds-arm=research-artifacts/build/runtime-modern-fixed-ds-arm/pocketphysics-v0.6-blocksds.nds \
  runtime-modern-fixed-ds-picking=research-artifacts/build/runtime-modern-fixed-ds-picking/pocketphysics-v0.6-blocksds.nds
```

The [body comparator](../tools/repro/compare_runtime_bodies.py) aligns raw
state by physics step and object index. It reports missing records separately,
rejects duplicate keys, and records input hashes and the first differing fields.
Its regression checks retain the independently published 2,374 differing
records beginning at step 26, and the 3,528 preserved states after the save fix.
Ordinary run validators still establish workload, trace integrity, arithmetic,
rendering, timing, and repetition gates.

These controls are experiments, not selected release profiles. Interpretation
requires complete independent builds and clean repeated runs. Even matching
recorded bodies does not establish equality of unrecorded contact manifolds,
joint parameters, event timing, or arbitrary scenes. The selected release and
frozen modern port must retain their ROM identities after adding these controls.

The initial build checks match both experimental ROM/ELF pairs. A separate
selected-release rebuild retains ROM SHA-256
`6403a17f8c789759a6b571556e5c21285401fe03b097e425a7a0faa7f1120e38`
and its complete preceding ELF. The frozen modern release retains
`93776d717fa58da9b5d70aee8240b0a0a569e8411817e26d580d28d6a408ff06`.
Repeated trajectory evidence is required separately.
