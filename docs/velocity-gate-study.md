# Wider Velocity-Gate Experiment

## Hypothesis

The selected fixed-point build avoids vector-length calculation when both
velocity components are at most half the maximum linear speed. A wider
component gate may skip more length calculations without changing any clamp
decision. This experiment changes only that component bound; the selected
profile and all historical reconstruction inputs remain unchanged.

The candidate profile is `bench-nds-hw-arm-wide-gate`. It retains the selected
ARM/LTO, DS hardware math, fixed-estimate backport, physics ITCM, and line ITCM
settings, and enables `PP_BOX2D_WIDE_VELOCITY_GATE`.
The separate `bench-nds-hw-arm-wide-gate-counts` profile classifies each
processed body as half-gate eligible, newly eligible only under the wider gate,
or still requiring length calculation. This extra instrumentation is not used
for timing acceptance.

## Arithmetic Bound

The candidate uses `maximum_speed * (181 / 256)` rather than
`maximum_speed / 2`. The rational is exactly representable in the fixed-point
format and in the eight fractional bits used by the scalar multiplication:

```text
2 * 181^2 = 65522 < 65536 = 256^2
maximum speed raw value = 100 * 65536 = 6553600
component bound raw value = 4633600
```

For every eligible pair, the largest squared length occurs when both component
magnitudes equal the bound. Nonnegative fixed-point squaring, truncation,
addition, and integer square root are monotone. This maximum is strictly below
the clamp threshold, and all intermediate values fit the original signed
32-bit squared-sum and 64-bit square-root operand representations.

The largest eligible component sum is below the existing 180-unit rescaling
branch. The small-length branch below 0.1 units rescales by 256 before computing
length and scales the result back; its intermediate squared sum also fits and
its result remains far below the 100-unit clamp threshold. The bound assumes
the locked 16.16 arithmetic and 100-unit fixed-point speed limit, not arbitrary
future constants or malformed state.

The [tests](../tools/repro/test_velocity_gate.py) check the source arithmetic
contract, the whole-domain maximum bound, signed boundary vectors, and 10,000
deterministically sampled eligible vectors. They also constrain the candidate
to a separate profile. These are arithmetic tests, not exhaustive application
or physical hardware tests.

## Reproduction

```sh
tools/repro/test_source_patches.sh
tools/repro/test_velocity_gate.sh
```

The [experiment runner](../tools/repro/test_velocity_gate.sh) rebuilds the
selected control once and the candidate twice in independent output trees.
Both candidate ROMs and complete ELF files must match. The selected control's
instrumented ROM must retain its published identity. It then performs three
melonDS repetitions of each profile, using in-ROM timers and exact recorded
state/render-work equivalence gates. It separately replays the operation-count
profile and checks that its three disjoint categories sum to the independently
recorded total. Operation-count timings cannot be substituted for the original
candidate timings.

Mathematical safety and reproducibility do not establish a speedup. Selection
requires the measured processing and cadence results, followed by broader
sketch workloads and physical Nintendo DS validation. Until accepted evidence
supports promotion, this remains an experimental profile.
