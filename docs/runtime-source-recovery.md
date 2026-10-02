# Historical Target Runtime Source Rebuild

## Scope

The exact-build recipe rebuilds every target startup object and runtime archive
used by the ARM7 and ARM9 links. It compiles locked GNU sources and the original
devkitPro producer patches, verifies normalized ELF identities, and restores
historical archive order. No reference object or archive supplies output bytes.
The SDK's precompiled target archives and objects are deleted before the verified
source-built replacements are installed.

| Component | ARM member instances | Thumb member instances |
| --- | ---: | ---: |
| newlib `libc.a` | 435 | 435 |
| newlib `libm.a` | 196 | 196 |
| devkitPro `libsysbase.a` | 29 | 29 |
| GCC `libstdc++.a` | 84 | 84 |
| GCC `libsupc++.a` | 29 | 29 |
| GCC `libgcc.a` | 100 | 100 |
| GCC `libgcov.a` | 14 | 14 |
| Total | 887 | 887 |

There are 1,774 archive-member instances, not 1,774 unique implementations:
`libstdc++` also contains the `libsupc++` members. `libg.a` is an alias of the
rebuilt `libc.a`, matching the producer's installation rule. Twelve standalone
objects are also verified: `ds_arm7_crt0`, `ds_arm9_crt0`, `crti`, `crtn`,
`crtbegin`, and `crtend` in both multilib directories. The four DS linker/spec
files are copied from the producer source and checked by SHA-256.

This is not a claim to have rebuilt every unused library in the SDK, nor to have
recovered the entire Pocket Physics program to high-level source. Residual
dependency assembly and ARM9 section replacement remain. Genuine upstream
boot, interworking, and arithmetic assembly is source code for low-level CPU
operations, distinct from transcriptions replacing an unresolved C/C++ unit.

## Source Provenance

The [input lock](../research/provenance/input-locks.csv) pins:

- [newlib 1.15.0](https://sourceware.org/pub/newlib/newlib-1.15.0.tar.gz);
- [GCC 4.1.2 core and C++ archives](https://ftp.gnu.org/gnu/gcc/gcc-4.1.2/);
- [devkitPro producer revision 8007fd4](https://github.com/devkitPro/buildscripts/tree/8007fd4bcb992f8aa9376331104d8bc8d3c7cf45),
  dated 23 October 2007.

The producer includes `newlib-1.15.0.patch`, `gcc-4.1.2.patch`, DS startup source,
linker scripts, specifications, and the historical build recipe. Both patches
must apply with zero fuzz. Original licenses remain in the downloaded sources.
The r21 SDK archive is used to derive the published reference identities and
provide bootstrap executables, not as a target-library fallback.

The [identity manifest](../research/reconstruction/v06/runtime/object-identities.json)
contains member names, reference archive hashes, normalized object hashes, and
allocated/executable section sizes. It contains no machine-code payload.
Member inventories must match exactly, including duplicate detection. Archive
ordering is explicit because parallel upstream archive construction can change
member order even when the member contents match.

## Compiler Configuration

[`build_r21_runtime.sh`](../tools/repro/build_r21_runtime.sh) builds newlib with
`CFLAGS=-DREENTRANT_SYSCALLS_PROVIDED` and
`--disable-newlib-supplied-syscalls`. The historical build system supplies its
target `-O2` settings and builds the `libsysbase` syscalls from the producer patch.
Its generated/installed headers are used by the subsequent runtime builds.

GCC is configured for `arm-eabi`, `arm7tdmi`, interworking, multilib, and newlib,
with shared libraries, threads, NLS, libmudflap, and libssp disabled. Building
`all-gcc` produces the target arithmetic/unwinding library and CRT objects using
the rebuilt compiler. The host compilation uses GNU89 semantics to build the
unmodified GCC 4.1.2 source with the pinned Debian host compiler. Host compiler
executable identity is not asserted; target object identity is checked.

libstdc++ and libsupc++ use `-g -O2`, single-thread/newlib configuration, and
`-mthumb` for the Thumb variant. The source paths supplied to compilation match
the historical relative filenames: five parent directories from the ARM
`src`/`libsupc++` directories, six from the Thumb directories. This reproduces
the allocated `__FILE__` string in `debug.o` without changing that source.

GCC 4.1.2 incorporates a CRC of its random seed into anonymous-namespace names.
Only `vec.o` remained different after the path was recovered: allocated bytes
matched, but exported names and relocation targets did not. The following
deterministic seeds reproduce the observed name suffixes through the compiler:

| Variant | `-frandom-seed` | Generated CRC suffix |
| --- | --- | --- |
| ARM | `0xce997cde` | `38E38B35` |
| Thumb | `0xcea245db` | `C7288D79` |

The derivation is reproducible:

```sh
python3 tools/repro/recover_gcc_seed.py 38E38B35 C7288D79
```

This meet-in-the-middle search inverts the non-reflected CRC in GCC's `tree.c`,
including the terminating NUL, over eight hexadecimal digits with a `0x` prefix.
It establishes equivalent naming seeds, not the original build time or process
ID. No generated symbol is renamed after compilation.

## Acceptance and Limits

[`verify_runtime_objects.py`](../tools/repro/verify_runtime_objects.py) checks
all 14 archive inventories and all 12 standalone objects using the
[ELF identity definition](c-source-recovery.md#object-level-evidence). Debug and
compiler metadata may differ from the stripped SDK objects; allocated contents,
relocations, exported symbols, and ELF flags may not. Size fields are also
checked. Linker/specification text must match its reference hash.

The test suite checks missing, extra, duplicated, and unsafe member names;
object and size changes; archive-order restoration and failed restoration;
changed linker scripts; and forward/reverse CRC recovery. The final ARM7,
pre-reconstruction ARM9, reconstructed ARM9, and ROM hash guards remain
independent acceptance gates.

Run the complete clean-build comparison:

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
```

Each clean build writes `build/runtime/identity-report.json` under its output
directory. The historical ROM must still hash to
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
This unchanged ROM cannot acquire a speed improvement from source recovery.
In-ROM timing experiments belong to independently instrumented builds, and
melonDS evidence does not substitute for a physical Nintendo DS measurement.
