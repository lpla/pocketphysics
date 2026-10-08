# Wider Velocity-Gate Study

## Specimens and Acceptance

The primary timing comparison uses clean source revision
`1f2702b4af5b0480a89ea8cd5ab977970b61c157`. The selected control's
instrumented ROM retains SHA-256
`e9ba5b69b16e2ed4fb4893f29532adf1aabf5be804517089aefd821f4aa772ca`.
Two independently built candidate ROMs and complete ELF files compare equal;
the candidate ROM is
`b813bd14935f0d676b1251c4de47b75f22e55ba5647add678fced3e8052d0150`.
The [timing dataset](melonds/) contains six melonDS 1.1 runs, 138 rows,
ROM identities, clean-checkout metadata, assertions, and raw logs. All recorded
scene, hit-test, final-state, allocation, and render-work gates pass. There is
zero spread across three repetitions of each specimen.

A separate operation-count experiment uses clean source revision
`65a16449df12b6abbbd1f173971c6e8fd1a1f492`. Its extra-instrumented ROM is
`6d8dfc5eb03a176865fc01da0ba202fe675a8ece1a4383a03ac3f9004fee5631`.
The [counter dataset](operation-counts/) contains six runs and 150 rows,
including an unchanged selected control. Recorded scene and render evidence
match the control. Counter conservation passes on all three repetitions.
The extra counters change the binary and its timing; their phase timings are
not evidence for acceptance of the primary candidate.

The source-patch suite passed 89 tests in 15 suites for the primary revision,
and 90 tests in 15 suites for the counter revision. The
[study](../../../docs/velocity-gate-study.md) gives the arithmetic bound and
distinguishes source/model tests from application and hardware evidence.

## Measurements

Mean ARM9 timer ticks per operation, from the primary timing dataset:

| Metric | Selected control | Wider gate |
| --- | ---: | ---: |
| Touch processing | 6,239 | 6,234 |
| Hit test | 1,594 | 1,593 |
| Physics | 111,032 | 111,049 |
| Complete frame | 556,860 | 556,758 |
| Canvas/render synchronization | 445,037 | 444,918 |

Each counter repetition records 4,148 body updates: 4,148 half-gate eligible,
zero newly eligible under the wider gate, and zero requiring length evaluation.
Thus this sketch does not exercise any additional skipped length calculation.
The tiny timing changes cannot be attributed to the intended algorithmic
saving. Complete-frame and render phases include synchronization; they are not
isolated renderer CPU costs.

**Decision:** retain the existing half-speed gate. The wider gate is an
arithmetic-safe experimental profile, not a demonstrated optimization or a
general performance regression. Fast-drag/collision workloads are needed to
exercise its intended domain before reconsidering it. This dataset makes no
physical Nintendo DS claim.

## Reproduction

```sh
git checkout 1f2702b4af5b0480a89ea8cd5ab977970b61c157
tools/repro/test_source_patches.sh
REPEATS=3 tools/repro/test_velocity_gate.sh
git checkout 65a16449df12b6abbbd1f173971c6e8fd1a1f492
tools/repro/test_source_patches.sh
REPEATS=3 tools/repro/test_velocity_gate.sh
```

The first revision reproduces the primary timing experiment; the second also
performs the independent counter pass. Rebuilding at the later revision
retains the pinned identities of both primary timing ROMs. Host run duration
is a watchdog, not a performance metric.
