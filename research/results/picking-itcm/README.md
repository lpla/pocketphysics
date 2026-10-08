# Picking ITCM: Controlled Placement Comparison

## Specimens and Reproducibility

Source revision `b459dd285119bf1557f90c2367df9ab452698c42` defines the isolated
`bench-improved-query-itcm` profile, placement validator, and negative tests.
Two independent candidate build trees produce byte-identical complete ELF
files and ROMs. The selected control retains its preceding ROM identity:

```text
Selected control ROM  157ca14fb895a2dfc93ae2548482db718823dbf77b374814bcae8f7d697fd292
Picking ITCM ROM      83864a974757d01098d586c1b009fdee6c2cd2599bf4d91d234812e306b9b7c7
Candidate full ELF    ab12c32dd43f33112c0c567f482cc06b742e77ab39755b7e48d4b7ae32d3669f
```

The [ELF/map placement record](placement.json) confirms that the complete
`World::getThingsAt` function and its constant-propagated clone occupy ITCM.
The section grows from 12,184 to 15,152 bytes, within the 32 KiB capacity.
Independent [fresh release builds](../polygon-promotion/release-validation.json)
confirm that the optional experiment does not change the selected release.
The source-transform suite passes 110 tests in 18 suites, including eight
placement/ELF parsing tests with negative controls.

The [dataset](melonds/) contains six melonDS 1.1 runs and 138 measurement
rows. Replay metadata records the clean source revision above. All scene,
hit-test, final-state, allocation, render-work, and tolerant cadence gates
pass, with exact recorded selected/candidate equivalence and zero spread.
These bounded checks are not full per-body trajectory or hardware proof.

## Measurements and Decision

Mean in-ROM ARM9 timer ticks per operation:

| Metric | Selected control | Picking ITCM | Change |
| --- | ---: | ---: | ---: |
| Touch processing | 6,223 | 6,233 | +0.16% |
| Hit test | 1,629 | 1,507 | -7.49% |
| Physics | 110,987 | 111,420 | +0.39% |
| Complete frame | 556,655 | 557,025 | +0.07% |

The hit-test saving is real for these byte-identified specimens. It does not
make the complete tested application uniformly faster. The candidate changes
code layout and ITCM consumption as well as query execution location; the
unrelated physics change cannot be attributed to a changed physics algorithm.
Frame and render timing include display synchronization. Both specimens have
zero tolerant cadence overruns and no two-frame intervals, while strict raw
frame-budget overruns total 690 for the control and 693 for the candidate
across three runs.

**Decision:** retain the existing selected profile. Keep the placement as an
experimental option for denser query/drag workloads. The small physics/frame
costs are disclosed rather than hidden, but this single sketch also does not
establish a general performance regression. Larger scenes and selection-heavy
touch tests are required to determine where the tradeoff is beneficial.
No physical Nintendo DS result is claimed.

The [runtime boundary](../../../docs/benchmarking.md#runtime-boundary) applies
to both specimens. This harness does not measure the normal VBlank-driven
full renderer and foreground audio/input loop.

## Reproduction

```sh
git checkout b459dd285119bf1557f90c2367df9ab452698c42
tools/repro/test_source_patches.sh
REPEATS=3 tools/repro/test_query_itcm.sh
```

The [study](../../../docs/picking-itcm-study.md) specifies intervention scope,
build/placement gates, and selection limits. Raw emulator logs, normalized
records, summary, machine assertions, clean-source metadata, and both ROM
identities are retained in the dataset.
