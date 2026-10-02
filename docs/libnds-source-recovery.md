# Historical libnds C-Source Recovery

## Result and Boundary

Five previously reconstructed archive members now compile from the locked
upstream libnds revision `df7b1022bfb7dc34b34d2d77b2050b0999e7ccfb` with a
[source patch](../research/reconstruction/v06/dependencies/libnds/source.patch).
The patch changes local declaration order, not hardware protocols or algorithms.
All original license notices remain in the downloaded source. The patched
files are altered research versions of that source, not an original release.

| Member | Executable bytes | Allocated bytes | Linked into v0.6 |
| --- | ---: | ---: | --- |
| ARM7 `card.o` | 1,684 | 1,692 | No |
| ARM7 `clock.o` | 976 | 976 | Yes |
| ARM7 `touch.o` | 2,012 | 2,033 | Yes |
| ARM7 `userSettings.o` | 244 | 244 | Yes |
| ARM9 `card.o` | 1,648 | 1,656 | Yes |
| Total | 6,564 | 6,601 | 4,880 executable bytes |

The ARM7 link no longer contains reconstructed dependency implementations.
ARM9 `console.o` remains unresolved: a candidate reproduces every function
except two compiler-commuted comparisons, but still fails complete identity.
It is not accepted, and no generated instruction bytes are edited to complete
a near match. Other ARM9 dependency and post-link replacements also remain.

## Source and Producer Configuration

The historical libnds makefiles supply these effective C compiler settings:

```text
compiler: devkitARM r20 GCC 4.1.1
common:   -g -Wall -O2 -fomit-frame-pointer -ffast-math
          -mthumb -mthumb-interwork
ARM7:     -DARM7 -mcpu=arm7tdmi -mtune=arm7tdmi
ARM9:     -DARM9 -march=armv5te -mtune=arm946e-s
```

Only `touch.o` adds `-fno-tree-fre`, disabling tree full redundancy elimination.
That control reproduces the sampler's register allocation and loop code;
the other five functions in the same object also pass the identity gate.
Applying the override to the whole library is not part of the recipe.
These settings are experimentally sufficient, not a recovered original build
command or a proposed modern compiler configuration.

The source changes reproduce stack-slot allocation:

- `integerToBCD` declares `low` before `high`; both RTC reader functions
  declare `status` before `command`.
- `touchReadXY` declares `dist_max`, `dist_max_x`, `dist_max_y` in that order.
- `readUserSettings` declares `slot2` before `slot1`, followed by `slot2CRC`,
  `slot1count`, `slot2count`, `slot1CRC`.
- `cardEepromGetSize` declares `buf2`, `buf3`, `buf4`, `buf1` in that order.
  The same source reproduces both processor variants independently.

The historical firmware reader retains an uninitialized upper half of
`userSettingsBase` and its original slot-counter self-comparison. These are
historical defects, not fixes. Changing them would invalidate the exact release
baseline. No claim is made that the historical input protocols are robust
against arbitrary hardware states.

## Independent Object Oracles

The comparison objects come from the 2007-10-23 libnds distribution:

| Archive | SHA-256 |
| --- | --- |
| `libnds7.a` | `e84fb53513c80a567f4a2399c924441881c6257fcdc0958b4fc824e593dc9cb9` |
| `libnds9.a` | `4bbd18dfd7d9fc930c935c88337246e0f346e673a5cf11c9f793a72af78f1d9d` |

These archives are comparison oracles only. Neither is downloaded or read by
the exact build. The [identity manifest](../research/reconstruction/v06/dependencies/libnds/c-object-identities.json)
contains hashes and byte counts, not object code. The ordinary
[ELF verifier](../tools/repro/verify_recovered_objects.py) checks allocated
section content/layout, relocations, exported symbols, and ELF flags before
either source-built libnds archive is installed.

## Reproduction and Acceptance

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

The two-build test verifies all historical object gates, both processor
payloads, the packaged ROM, both ELF files, and the executable provenance
reports. The ROM must retain SHA-256
`9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64`.
Source recovery must not be reported as a speed improvement: the release
payloads are unchanged. melonDS tests cover the fixed stylus-to-shape, physics,
hit-test, and render workloads, not physical Nintendo DS behavior or arbitrary
sketches.
