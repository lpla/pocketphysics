# Signed Length and Normalization Boundary

Clean source checkpoint `130ec2b327ab42363ad279118a30df474415e6f2` passes the
same signed vector API protocol on macOS/Clang 21 and native Linux/GCC 13.3.
Each numerical role executes 78,648 cases: all four sign combinations for raw
L1 sums 6,552, 6,553, and 6,554. Axis cases intentionally repeat; the matrix
contains 78,636 unique component pairs.

| Role | Language | Mismatches | Actual checksum | Reference checksum |
| --- | --- | ---: | --- | --- |
| Original floating-estimate reference | C++20 | 0 | `86e2a12f` | `86e2a12f` |
| Corrected fixed estimate | C++20 | 0 | `86e2a12f` | `86e2a12f` |
| Legacy fixed threshold control | C++20 | 26,176 | `a41ac8af` | `86e2a12f` |

Both hosts agree on every numerical result and all five input source hashes.
ASan/UBSan remain enabled with undefined-behavior recovery disabled. Complete
compiler commands, versions, platform, source revision/clean state, statuses,
results, compiler logs, and raw output streams are retained per host.

The separate C++17 language control must report left shift of negative raw
value `-6552`. That diagnostic depends on the older language mode; it does not
establish a failure in the current C++20 target build. The
[compiler macro probe](target-language.json) records the pinned ARM toolchain's
`__cplusplus=202002L`, version, exact query, and builder checkpoint. The modern
builder does not override the compiler's language default.

The [study](../../../docs/signed-length-study.md) and
[runner](../../../tools/repro/test_signed_length.py) specify the reference,
normalization contract, numerical negative control, and reproduction command.
These are host software-math results. The native ARM9 runtime protocol still
executes the positive 19,662-case matrix, and a native signed-vector gate remains
open. Full fixed-point ranges, extreme values, division boundaries, force/
impulse scales, complete arithmetic-unit ownership, and physical behavior are
outside this bounded matrix. No arithmetic implementation or selected release
binary changes as part of this test extension.
