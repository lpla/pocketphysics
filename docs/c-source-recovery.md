# Historical Library C-Source Recovery

## Result and Scope

The historical build now compiles 26 zlib/libpng archive members from upstream
C instead of reconstructed assembly. This removes 42,034 lines in 26 `.S`
files. The replacement objects contain 118,044 bytes of executable sections
(including their literal pools) and 146,772 allocated bytes in total. These are
archive-level counts, not a whole-ROM recovery percentage.

Sixteen of these members are included in the ARM9 link, contributing 72,504
`.text` bytes. The other ten improve archive source coverage but are not
credited as recovered release-ROM code. The ARM9 linker map, generated as
`src/arm9/build/.map` in each build directory, identifies the included members.
Both processors and the packaged ROM remain subject to their original hash
guards and two-clean-build comparison.

| Component | C members / archive members | Member coverage | Residual assembly |
| --- | ---: | ---: | --- |
| zlib 1.2.3 | 11 / 12 | 91.7% | `deflate` |
| libpng 1.2.8 | 15 / 15 | 100% | None |
| Combined | 26 / 27 | 96.3% | `deflate` |

This is a source-recovery result, not a performance change. The release ROM is
unchanged, so these substitutions cannot themselves improve its runtime speed.
The modern and improved build profiles do not consume these historical patches.
The [validation dataset](../research/results/c-source-recovery/) records nine
fresh melonDS runs after the initial 21-member recovery, with byte-identical
benchmark ROMs and measurement rows, plus stricter reanalysis of the existing
17-profile optimization screen. It also records the two-clean-build identity
check after the additional `inftrees` recovery.

A subsequent clean-revision experiment at
`ab46edede8e6e1c6d4d82fc4682d66343e6c0c6c` rebuilt all three instrumented ROMs
and repeated the nine-run comparison after the 22nd member was recovered.
All 207 normalized rows and the ROM identity manifest are byte-identical to
the earlier comparison. The [public evidence release](https://github.com/lpla/pocketphysics/releases/tag/source-recovery-c22)
contains the raw emulator logs, results, assertions, and clean-tree metadata.
Its `melonds-c22-validation.tar.gz` archive has SHA-256
`d0af71125d1f90143ff4789edba1d2d456ecc01818fb015d9f2c3d869a5e0d1e`.
The independent [hosted workflow](https://github.com/lpla/pocketphysics/actions/runs/36713028099)
also passed the full build/test suite and one-run-per-role melonDS comparison.

After completing all libpng members and rebuilding the target runtimes,
the [runtime/libpng validation dataset](../research/results/runtime-source-recovery/)
records a further clean-revision, nine-run comparison at `55db9bca`. Again,
all 207 measurement rows and the instrumented ROM manifest are byte-identical.
Its independently hosted full-development-loop workflow also passed.

The [libnds/TinyXML/triangle validation](../research/results/triangle-cpp-source/)
repeats the clean-revision comparison at `06d1f4ab` after those recoveries.
All 207 rows and three instrumented ROM identities remain byte-identical.

The [contact-solver/UI validation](../research/results/solver-ui-source/)
repeats the three-repeat comparison from clean revision `633f69a4`. All 207
rows and all three instrumented ROM hashes again remain byte-identical.

## Inputs and Configuration

The [input lock](../research/provenance/input-locks.csv) pins upstream zlib
1.2.3 from the zlib fossils archive and libpng tag `v1.2.8` from the upstream
repository. Source is downloaded and verified before extraction. The historical
SDK supplies devkitARM r20 GCC 4.1.1 for these C objects; devkitARM r21 still
assembles the residual objects and links the program. Archive order is explicit.

The recovered C configurations are:

```text
zlib:   -Os -DNO_vsnprintf -DZ_BUFSIZE=4096 -DMAXSEG_64K
libpng: -Os -DMAXSEG_64K -DPNG_NO_MNG_FEATURES
        -DPNG_USER_WIDTH_MAX=10000 -DPNG_USER_HEIGHT_MAX=10000
```

These settings are experimentally sufficient for the matched objects. They are
not a claim to have recovered an original author-written build command.
`inftrees.c` additionally uses `-fno-tree-salias -fno-tree-copy-prop`.
`pngrtran.c` additionally defines `PNG_DITHER_RED_BITS`,
`PNG_DITHER_GREEN_BITS`, and `PNG_DITHER_BLUE_BITS` as 3, and
`PNG_MAX_GAMMA_8` as 10. These are per-translation-unit definitions; applying
them to the other members does not reproduce their identities.

The [zlib patch](../research/reconstruction/v06/dependencies/zlib/source.patch)
enables the upstream `HAVE_UNISTD_H` configuration and reverses the declaration
order of the two local CRC-combination arrays and the `count`/`offs` arrays in
`inflate_table`. These changes affect GCC's stack layout without changing the
algorithms.

For `inftrees`, declaration order alone left 45 differing `.text` bytes, all
in stack offsets. Disabling loop induction-variable canonicalization reduced
that count to 17 but still failed the identity gate. The accepted combination
disables structural alias analysis and tree copy propagation instead, using
the [GCC 4.1.1 optimization controls](https://gcc.gnu.org/onlinedocs/gcc-4.1.1/gcc/Optimize-Options.html): all
1,440 `.text` bytes, 300 read-only-data bytes, relocations, and exported-symbol
metadata then match. The linker includes this member at ARM9 address
`0x02072bfc`. Near matches are not accepted or patched after compilation.

The [libpng patch](../research/reconstruction/v06/dependencies/libpng/source.patch)
reverses two local shift-array declarations and reproduces the historical
`png_zalloc` implementation's absence of the upstream multiplication-overflow
guard. That omission is a historical defect deliberately retained for binary
identity, not a recommended optimization or a patch for modern deployments.
Use the historical build only as a research/reference specimen, particularly
when processing untrusted files.

Disassembly localized the `pngget` mismatch to
`png_get_mmx_bitdepth_threshold`: disabling MNG removes a preceding byte field
and changes its access offset from 597 to 596. The same configuration resolves
`pngset` and `pngrutil`; restoring the 10,000-pixel limits resolves the remaining
constants in `pngread`. This associates matches with source-level settings
rather than edits to generated instruction bytes.

The four final libpng recoveries account for 13,159 of the removed assembly
lines. `png_error` expands the upstream private error handler into its caller,
with its two 16-byte local arrays in the historical stack order.
`png_set_dither` retains the upstream algorithm but orders its five local
declarations as `max_d`, `hash`, `t`, `i`, `num_new_palette`. `pngwrite` and
`pngwutil` reproduce numbered zlib diagnostics using ordinary 100-byte C
buffers and `sprintf`; the last diagnostic includes the input/output/state
values. Both `png_write_sCAL` variants declare `hbuf` before `wbuf`.
The complete object gates, rather than similarity scores, accept these changes.
They preserve the historical implementation, including its error formatting;
they are not proposed error-handling practices for the modern port.

## Object-Level Evidence

The reference object identities come from the libraries distributed with
uLibrary v1.11. Their archive hashes are retained in the manifests. Those
binary libraries are comparison oracles, not build inputs; the published
build requires neither library archive nor a release ROM download.

- [zlib object identities](../research/reconstruction/v06/dependencies/zlib/c-object-identities.json)
- [libpng object identities](../research/reconstruction/v06/dependencies/libpng/c-object-identities.json)
- [ELF identity verifier](../tools/repro/verify_recovered_objects.py)

| Member | Executable-section bytes | Included in ARM9 |
| --- | ---: | --- |
| `adler32` | 948 | Yes |
| `compress` | 212 | No |
| `crc32` | 2,236 | Yes |
| `gzio` | 4,912 | No |
| `infback` | 3,812 | No |
| `inffast` | 1,216 | Yes |
| `inflate` | 7,604 | Yes |
| `inftrees` | 1,440 | Yes |
| `trees` | 8,032 | No |
| `uncompr` | 180 | No |
| `zutil` | 100 | Yes |
| `png` | 2,336 | Yes |
| `pngerror` | 1,064 | Yes |
| `pngget` | 3,136 | Yes |
| `pngmem` | 632 | Yes |
| `pngpread` | 7,384 | No |
| `pngread` | 6,812 | Yes |
| `pngrio` | 216 | Yes |
| `pngrtran` | 22,460 | Yes |
| `pngrutil` | 14,264 | Yes |
| `pngset` | 6,324 | Yes |
| `pngtrans` | 1,716 | Yes |
| `pngwio` | 300 | No |
| `pngwrite` | 6,032 | No |
| `pngwtran` | 1,812 | No |
| `pngwutil` | 12,864 | No |

The canonical identity includes ELF header flags; every allocated section's
bytes, type, flags, size, alignment, and entry size; normalized relocations
including referenced-symbol binding/visibility; and exported symbol metadata.
NOBITS sections contribute layout but have no stored byte payload. Symbol-table
indexes and optional section-symbol names are normalized. Debug data, file
symbols, compiler comments, and nonallocated ARM attributes are excluded.
Thus the claim is link-relevant identity under the pinned toolchain, not raw
object-file identity across assemblers and compilers.

Tests independently mutate code, relocation type, exported-symbol value,
undefined-symbol binding, alignment, and ELF flags. They also check truncated
objects, unsupported architecture, and invalid relocation symbols. Changes to
debug metadata must not change the identity.

The per-object gate runs before archive construction. Whole-ROM verification
then catches link-layout or packaging differences outside that normalized
identity. This second layer is essential, especially for mixed C and assembly
libraries and the historical ARM interworking conventions.

## Reproduction

From the repository root, with Docker, Python 3, curl, and full Git history:

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
```

The second command builds twice in separate clean trees, checks the object
identities during each build, checks the four payload/package hashes, and
byte-compares both generated ELF files and ROM outputs. The final 894,016-byte
ROM must hash to:

```text
9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64
```

## Remaining Recovery Work

All six previously reconstructed [libnds archive members](libnds-source-recovery.md)
now compile from C, removing the reconstructed dependency boundary in the
ARM7 link. Their 7,972 executable-section bytes include 6,288 bytes linked into
the release. All four [TinyXML members](tinyxml-source-recovery.md) also compile
from C++, adding 15,236 linked executable bytes from two further recoveries.
The [triangle compilation unit](triangle-source-recovery.md) adds another
2,708 source-compiled executable bytes and removes its post-link initializer.
The [shape proxy recovery](shape-source-recovery.md) removes a further 284-byte
section replacement by restoring the release's missing-proxy control flow.
The [contact and island solvers](contact-source-recovery.md) now compile their
complete units from upstream r131 with the preserved March 2008 fixed-point
patch. Their final two method recoveries remove another 8,604 residual bytes.
The [UI recovery](ui-source-recovery.md) removes GUI-setup and
thumbnail-rendering replacements, adding 1,572 source-compiled bytes.
The [polygon recovery](polygon-source-recovery.md) compiles the complete
30,768-byte unit from March 2008 forum-archived C++, with a documented
pointer-argument ABI adjustment. No polygon residual assembly remains.
The [font recovery](font-source-recovery.md) adds 808 further source-compiled
bytes without changing any C body, reconstructing compiler units and their
relocatable layout instead of using a post-link font replacement.
The [ordinary ARM9 link recovery](ordinary-arm9-source-recovery.md) adds the
last 1,680 post-link replacement bytes through declaration-only keyboard/FAT
changes. No post-link code replacement remains.

The [PNG loader recovery](png-loader-source-recovery.md) removes the complete
PNG assembly unit and clears the 3,980-byte combined image object's residual
classification. Complete normalized objects and the ordinary ARM9 are exact.
The [alpha-conversion recovery](alpha-source-recovery.md) removes the final
linked reconstructed executable unit, compiling its complete 432-byte object
from C with recovered stride expressions and quantization/compiler controls.

Two uppercase `.S` files remain in the reconstruction corpus: one archive-only
zlib member and a data-only libfat table. Original
low-level assembly in upstream dependencies is a separate category.

The remaining archive-member source-recovery target is `deflate`.
No instruction-byte edits are accepted as substitutes for
recovering a compiler-reproducible source/configuration. No ARM9 section
replacement remains. The [runtime source rebuild](runtime-source-recovery.md)
removes the precompiled startup/runtime boundary for both processor links.

The [executable-byte inventory](executable-source-coverage.md) now covers both
processors, runtime/startup, and the ordinary ARM9 link. It attributes 99.99%
of executable-section bytes to source-compiled implementations, including
original low-level assembly; 80 bytes are linker-generated and none remain
residual executable reconstruction. That byte coverage is not a C-only percentage or
an estimate of remaining research effort. Library member percentages above
must not be presented as completion of the entire reconstruction.
