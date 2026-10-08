# Historical PNG Loader Source Recovery

## Result

The complete 2,272-byte uLibrary PNG executable unit compiles from C. Its
three functions, string constants, relocations, exports, and ELF flags match
the previous release-constrained object. The complete 3,980-byte combined
image unit also matches; it no longer contains a reconstructed PNG method.
The ordinary 827,636-byte ARM9 link retains the release identity, without
post-link replacement or instruction-byte editing.

This is binary-constrained source/compiler reconstruction, not proof that the
original author used the same declaration order or compilation boundaries.
It preserves the historical implementation rather than repairing its image
loading, error handling, or palette behavior.

## Source Reconstruction

The [preserved comparison source](../research/reconstruction/v06/dependencies/ulibrary/base/libLoadPng.c)
has SHA-256 `799fa2b9985d787192bec9de6d97c5482a1dd7d0af31196b309abaf398d3a4b8`.
The [preparation tool](../tools/repro/prepare_ulibrary_png.py) validates that
complete input and performs three explicit transformations:

- `ulPngReadFn` moves after `ulLoadImagePNG`, leaving a forward declaration.
  Its body and the empty flush callback remain byte-for-byte unchanged.
- The `convertAlpha` and `alphaBuffer` declarations move immediately after
  the color-component declarations, reproducing the historical stack slots.
- Each of the four alpha-buffer stores indexes directly with
  `y * pPngInfo->width + x`, rather than a cached local offset. The released
  code reloads the PNG width after each byte store; those stores can alias
  through C's character-pointer rules. This access pattern is preserved.

Other source bytes, including existing line endings and comments, are
preserved. The historical r21 compiler uses `-Os -fno-unit-at-a-time` and the
existing ARM946E-S configuration. All three complete C functions are compiled
together; no function is selected from a second implementation.

## Unused Data Boundary

With unit-at-a-time optimization disabled, the libnds header emits its private
`glGlob` variable even though this PNG unit has no reference to it. Compilation
with `-fdata-sections` identifies this four-byte object as `.bss.glGlob`.
The [relocatable layout script](../research/reconstruction/v06/dependencies/ulibrary/png-object-layout.ld)
discards only that unreferenced data section. It discards no executable code,
contains no recovered addresses, and rewrites no instruction or relocation.
The application still links with the unmodified historical producer script.

Both complete normalized object identities are independently guarded:

| Object | Executable bytes | Allocated bytes | Normalized SHA-256 |
| --- | ---: | ---: | --- |
| `libLoadPng.o` | 2,272 | 2,296 | `1202a41211ef4d48bfb23d3e0c98821dffc27d8e2b8aefd4e032d2a608fa7dc5` |
| `ulib-historical-layout.o` | 3,980 | 4,004 | `b495d04b80c6e3842ed85dadf502b60b5801b3f8665a25f88a9676b457d13ebc` |

The [manifest](../research/reconstruction/v06/dependencies/ulibrary/png-object-identities.json)
is a gate, not a binary input or an independently preserved producer archive.
It covers every allocated section, relocation, export, and ELF flag, including
the zero-sized data sections. Debug/file/compiler metadata is excluded.

## Acceptance

The [source tests](../tools/repro/test_prepare_ulibrary_png.py) pin the input,
check the complete transformation, reject changed inputs, constrain the
data-only discard, and require complete-object verification in the recipe.
Unknown executable sections in the combined member fail the provenance audit.

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

Acceptance requires two fresh builds, identical ELF/provenance outputs, the
canonical complete ordinary ARM9 and packaged ROM, and deterministic melonDS
replay. Source recovery adds no performance speedup. The separate
[alpha-conversion C recovery](alpha-source-recovery.md) clears the final linked
transcription; archive-only zlib `deflate` remains an unlinked recovery task. Physical Nintendo
DS timing is not established by emulator replay.
