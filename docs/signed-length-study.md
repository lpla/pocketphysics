# Signed Vector Length Boundary

The positive [length-threshold matrix](length-threshold-study.md) covers 19,662
nonnegative pairs. The [signed matrix](../tools/repro/benchmark_source/pp_signed_length_validation.h)
extends the same raw L1 sums 6,552, 6,553, and 6,554 to all four sign
combinations. It executes 78,648 cases, including intentionally repeated axes
(78,636 unique pairs), through actual `Length` and `Normalize` methods.

The current locked ARM compiler reports `__cplusplus=202002L`; the modern build
does not override its C++20 default. Signed arithmetic host checks must use that
language mode before interpreting a shift sanitizer diagnostic. The
[runner](../tools/repro/test_signed_length.py) compiles the following four roles
with ASan/UBSan and no undefined-behavior recovery:

- C++20 reference: zero mismatches, checksum `86e2a12f`.
- C++20 corrected fixed estimate: identical zero mismatches and checksum.
- C++20 legacy threshold: 26,176 mismatches, actual checksum `a41ac8af`, with
  unchanged reference checksum `86e2a12f`.
- C++17 language control: require the specific left-shift-of-negative-value
  diagnostic for raw `-6552`. This diagnoses the older host language mode;
  it is not evidence of a current C++20 target failure.

The reference retains the original floating estimate and the configured
normalization method. The legacy numerical control distinguishes the known
threshold error from a vacuous comparison. Input source hashes, complete
compiler commands, compiler versions, statuses, JSON results, and diagnostics
are retained by the runner.

```sh
tools/repro/test_source_patches.sh
```

The [published clean-source results](../research/results/signed-length/) retain
matching macOS and Linux numerical outcomes and input hashes, all four role
streams, and the pinned target compiler's language macro probe.

This is host software-math API coverage. The existing native ARM9 protocol
still runs the positive 19,662-case matrix. Native signed-vector execution,
full fixed-point ranges, extreme values, division boundaries, force/impulse
scales, and complete arithmetic-unit ownership remain separate acceptance work.
No historical source or selected release arithmetic is changed by this test.
