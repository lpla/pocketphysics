# Guarded Improved Build: Three-Role Comparison

## Source and Build Identity

The polygon guard was selected as a correctness change in source revision
`066a49bc39970b32e69fabf88892a8e3f14804b4`. The
[primary dataset](melonds/) records clean source revision
`b3c5c22331723e298fdb62887ad9826eb294e8ce`, whose subsequent change validates
host benchmark output paths and does not change target program inputs.
The [guard experiment](../polygon-validation/) preserves its independent host
negative controls, ARM9 API checks, and preceding byte-identified timing control.

The historical source build used for the instrumented overlay again reproduces
the complete 2008 release, without modifying the ordinary ARM9 link:

```text
ARM9  0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89
ARM7  b8ddd521ce08eec45adfaf263828f21d950eeb03c87e664e0da71a3ba71c23ec
ROM   9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64
```

The earlier [complete linked-source validation](../linked-source-complete/)
retains the two-build historical identity and executable provenance evidence.
Two further fresh improved release output trees produce identical complete
ELF files and ROMs, checked by `test_v06_perf.sh`:

```text
Improved release ROM  bdb7f37880b89e158230c070fef13ed58c53c55563c0710d1484d4bdd44b478d
Complete ARM9 ELF     635f4391bf85b067c83d1d377f7b863cad00bad48dd871781ad72a553d6d5b60
```

The [fresh release validation](release-validation.json) records two further
builds from clean source revision `b459dd285119bf1557f90c2367df9ab452698c42`.
They verify that adding the optional picking-ITCM profile does not alter the
selected binary. The clean replay metadata and
[instrumented ROM manifest](melonds/roms.txt) independently identify the timing
specimens; instrumentation necessarily changes the release hashes.

## Results

The nine melonDS runs contain 207 measurement rows. Every role repeats exactly
across three runs, with zero timing spread. Each run processes 225 touch
events, creates 27 objects, executes 600 hit tests, and advances 240
physics/render frames. Means are in-ROM ARM9 timer ticks. Cadence columns
count intervals per 240-frame run, and heap growth is per 600-query run.

| Role | Touch | Hit test | Physics | Complete frame | >1% | >2x | Heap growth |
| --- | ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| Historical source reconstruction | 5,471 | 2,805 | 278,893 | 554,829 | 0 | 0 | 14,400 |
| Modern source port | 12,286 | 3,015 | 584,579 | 904,349 | 102 | 87 | 14,400 |
| Guarded improved port | 6,223 | 1,629 | 110,987 | 556,655 | 0 | 0 | 0 |

The improved profile reduces physics time by 81.0% and complete-frame time by
38.4% relative to the modern port. It removes the reproduced allocation leak
and tolerant cadence overruns. It does not beat the historical build in every
phase: historical touch and complete-frame totals remain lower. Render timing
includes synchronization, so phase movement is not isolated renderer CPU work.

The polygon guard's preceding same-role experiment records a 35-tick hit-test
increase (2.20%), disclosed in the
[validation study](../../../docs/polygon-validation-study.md). This correctness
fix is not a new general performance-gain claim.

Comparison acceptance does not mean every raw metric passes. Historical and
modern allocation/cadence failures remain negative controls. The improved
role has 690 strict frame-budget overruns across three runs, although all
intervals remain within the declared 1% tolerance and no interval spans two
frame periods. Zero tolerant overruns is not zero strict-deadline misses.
Cross-role final checksums differ with numeric modes; aggregate position and
topology bounds are not full per-body trajectory equivalence. Physical-console
validation and the [broader coverage matrix](../../../docs/research-frontier.md)
remain open.

The [runtime boundary](../../../docs/benchmarking.md#runtime-boundary) also
applies: complete-frame timing covers the directly sequenced integration
harness, not the normal full-GUI VBlank/foreground/audio loop.

## Reproduction

```sh
git checkout b3c5c22331723e298fdb62887ad9826eb294e8ce
tools/repro/test_v06_perf.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

The [assertion record](melonds/assertions.txt), normalized records, summaries,
source/emulator metadata, ROM manifest, and raw logs are retained without
replacing the earlier datasets.
