# Normal-Loop Baseline

Immutable source checkpoint `2fabcb8f34ac47b222a6a6786ce2b0dfc396a8f8`.
This is the first normal-loop protocol, before the fixed-length threshold
correction. Its improved ROM is not the current corrected specimen.

Three isolated melonDS runs per role repeat every timing record and raw trace
exactly. Complete ROM and ELF identities match in independent build trees;
see [independent-builds.csv](independent-builds.csv), [roms.txt](roms.txt),
[metadata.json](metadata.json), and [assertions.txt](assertions.txt).
Raw logs, per-run configurations and statuses, body/frame/IRQ records, final
geometry, and real display-capture PNGs are retained.

| Role | Physics Steps | Physics Elapsed Mean | VBlank Handler Mean | Touch Sample Age Mean | Unconsumed Samples | Mouse-Joint Steps |
| --- | ---: | ---: | ---: | ---: | ---: | ---: |
| Modern floating-point | 212 | 414919 | 49983 | 95675 | 44 | 60 |
| Modern fixed-point DS control | 252 | 108888 | 29062 | 58666 | 0 | 71 |
| Improved fixed-point checkpoint | 252 | 56321 | 15214 | 30972 | 0 | 71 |

Times are DS bus-counter ticks, not host duration. Each run spans 960 VBlanks,
including 954 scripted VBlanks and six final release frames. Each renders both
screens 480 times and observes the 14 -> 13 -> 14 object-count transitions and
four play/pause/resume/stop transitions. The floating control executes fewer
simulation steps, not an equivalent amount of simulated time.

The [arithmetic negative control](irq-negative-control/) deliberately removes
register restoration. All eight forced-preemption cases fail while the other
replay gates pass. Ordinary specimens pass all eight cases. No physical
Nintendo DS result is included.

![Final improved display capture](runtime-improved.1.capture.png)

## Interpretation

This workload demonstrates scheduling and interaction differences but does
not establish cross-role physical or numerical equivalence. The fixed-point
body traces already differ at step 26, including a one-unit raw position
difference. Follow-up work identifies the fixed-estimate 0.1 threshold as a
confirmed arithmetic-contract regression; see the
[length-threshold study](../../../docs/length-threshold-study.md).
Body traces are retained to localize divergences rather than replace them with
aggregate checksums.

This protocol samples ARM9 acquisition, not raw resistive-touch/ARM7 latency.
The sound path is the modern compatibility layer, not the original audio queue.
The captured image is one final hardware-capture buffer, not a frame-by-frame
visual comparison. See the [measurement boundary](../../../docs/runtime-loop-study.md).

## Reproduce

```sh
git checkout 2fabcb8f34ac47b222a6a6786ce2b0dfc396a8f8
REPEATS=3 tools/repro/test_runtime_loop.sh
```

The checkpoint analyzer has protocol schema 1. Later schema-2 runtime logs add
length-boundary validation and must be analyzed with their own source revision.
Do not silently combine their fields, binary identities, or timings.
