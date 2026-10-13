# Fixed-Point Length Threshold

## Defect

The fixed-estimate optimization changed `b2Vec2::Length`'s scale-up decision
without preserving the original numeric boundary. The original implementation
adds fixed-point absolute components, converts that sum to `float`, and tests
`estimate < 0.1`. The optimized path keeps `estimate` in 16.16 but the same
comparison converts 0.1 to fixed raw 6553. It therefore excludes raw sum 6553,
although 6553/65536 is still below 0.1.

For `(x_raw,y_raw)=(3276,3277)`, the original length is raw 4633; the old
optimization returns 4622. This is an arithmetic-contract regression, not a
timing interpretation. New normal-loop body traces exposed differences that
earlier aggregate checks did not localize.

## Correction and Gates

The fixed-estimate branch uses `estimate <= 0.1`. For the positive 16.16 domain
near this threshold, this preserves exactly the original floating comparison:
scale up raw sums through 6553, but not 6554. The zero and 180-unit branches
remain unchanged. `PP_BOX2D_LENGTH_LEGACY_THRESHOLD` retains the faulty comparison
only for negative controls; it must never select a release profile.

The [shared matrix](../tools/repro/benchmark_source/pp_length_validation.h)
exercises every nonnegative component pair whose raw L1 sum is 6552, 6553,
or 6554: 19662 cases. It compares actual `Length` and `Normalize` results with
the original fixed-point implementation using a floating estimate. The
reference honors the library's direct-division normalization mode; it does not
substitute reciprocal multiplication. Expected and actual outputs are hashed.

Host ASan/UBSan runs require the reference and correction to match with zero
failures and checksum `7805b4b1`. The actual legacy API must fail 6544 cases,
with actual checksum `b2c63575` and unchanged reference checksum. Cases use
positive components, so this is not a claim to audit negative signed shifts or
all fixed-point overflows. The mathematical threshold argument and the bounded
exhaustive matrix have distinct scopes.

Schema-2 fixed-point runtime ROMs also execute the shared matrix after timing,
with actual ARM9 hardware division and square root. Floating-point runtime
controls report zero fixed-point cases. Runtime gates require the correct case
count, zero failures, and equal actual/reference checksums. A dedicated legacy
threshold ROM must be rejected specifically by the length matrix while the
remaining workflow gates pass. Timing and matrix execution are separate phases.

## Reproduce

```sh
tools/repro/test_source_patches.sh
REPEATS=3 tools/repro/test_runtime_loop.sh
tools/repro/test_v06_perf.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

The [first normal-loop baseline](../research/results/runtime-loop-baseline/)
and [matched numeric comparison](../research/results/matched-numeric-control/)
retain the pre-correction source and binary identities. They are not current
corrected results. The corrected selected ROM is separately source-built and
must pass independent ROM/ELF, in-ROM matrix, repeated interaction, and timing
gates before a current comparison is published. Physical validation remains
pending; no hardware result or universal performance benefit is inferred.
