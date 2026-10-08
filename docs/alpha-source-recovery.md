# Historical Alpha Conversion Source Recovery

## Result

The complete 432-byte `ulConvertImageToPalettedAlpha` unit compiles from C.
Every allocated section, relocation, export, and ELF flag matches the previous
release-constrained object. No function selection, instruction rewriting,
executable layout substitution, or recovered assembly remains in this unit.
Together with the [PNG recovery](png-loader-source-recovery.md), this clears
the last linked executable transcription in the historical ROM recipe.

This is binary-constrained source/compiler reconstruction, not proof of the
author's original expressions. It preserves historical behavior; it is not an
optimization or a repair of the image converter's error handling.

## Reconstructed Expressions

The [complete C source](../research/reconstruction/v06/dependencies/ulibrary/base/image/ulConvertImageToPalettedAlpha.c)
differs from its preceding comparison source only in six expressions:

- Four RGBA loads index the input using the destination image's `sizeX` field,
  `j * img->sizeX + i`, rather than the cached original width. Loop bounds still
  use the original width and height. The historical field access is preserved,
  not generalized into an equivalence claim for arbitrary malformed images.
- PAL5_A3 alpha quantization uses `(a >> 5) << 5` and PAL3_A5 uses `(a >> 3) << 3`.
  Each result is ORed with the palette index without an additional index mask.
  Valid palette indices are bounded by the corresponding 32- or 8-color format.

The preceding complete source has SHA-256
`20f04f2045a8b8cb8f641ac8bab375b49d734d8ed591b65fa59e2f069b353ee2`.
The [source test](../tools/repro/test_alpha_source_recovery.py) reverses exactly
those expressions and checks that complete checksum, constraining all other
source bytes without requiring a Git history checkout. It also exhaustively
checks all 256 alpha values and every valid palette index for both formats.
That test covers quantization, not the complete image-processing algorithm.

## Compiler and Identity

The historical r21 ARM946E-S C configuration uses `-O2 -fno-tree-ccp` for this
complete unit. Disabling constant propagation retains the producer's shift
quantization instruction form. No assembly is edited after compilation and
no separate function implementation is substituted.

| Object | Executable bytes | Allocated bytes | Normalized SHA-256 |
| --- | ---: | ---: | --- |
| `ulConvertImageToPalettedAlpha.o` | 432 | 432 | `163f15f146330b21434d71871d77f3abacf17e8fda83616472002b41e6af9e8b` |

The [identity manifest](../research/reconstruction/v06/dependencies/ulibrary/alpha-object-identity.json)
is a complete-object acceptance gate, not a binary build input or a preserved
producer archive. Debug/file/compiler metadata is excluded from normalization.
Unknown executable sections in this member fail the provenance auditor.

## Acceptance

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

Acceptance requires two fresh builds, identical ELF/provenance reports, the
complete unmodified ordinary ARM9 payload, the canonical ARM7 payload and ROM,
and deterministic three-role melonDS replay. The remaining archive-only zlib
`deflate` transcription contributes no code to the release ROM. Original
upstream CPU/startup assembly remains source code for low-level operations.

Source recovery preserves the measured binaries and adds no speedup. Emulator
evidence does not establish physical Nintendo DS timing or arbitrary-sketch
correctness.
