# Ordinary ARM9 Link Source Recovery

## Result

The exact build now obtains the canonical 827,636-byte ARM9 payload directly
from the ordinary application/dependency link. No post-link code replacement,
instruction-byte edit, or replacement application linker script is used.
The unmodified historical producer linker script is retained. ARM9 source-link SHA-256 is
`0fd7bb49061be1d25dfa09dda2185c68ca61d149f76c67a93707971aab7ecb89`;
the packaged ROM retains its independent public-release identity.

The last two ARM9 replacements were a 232-byte keyboard label method and a
1,448-byte FAT directory entry method. Both recoveries change declaration
order only. All expressions, control flow, types, constants, and function
bodies remain otherwise unchanged. This is binary-constrained source/compiler
reconstruction, not proof that the original source used these declaration
orders and not a performance optimization.

## Keyboard Labels

The [source patch](../research/reconstruction/v06/arm9/keyboard-source.patch)
changes `u8 xpos, ypos, offset;` to `u8 ypos, offset, xpos;` in
`Keyboard::drawKeyLabel`. The ordinary historical `-O3` compile inlines this
helper into `showKeyLabels` and reproduces the released allocation/scheduling.
All other complete functions retain their prior compiled bytes and offsets.

The [complete-object gate](../research/reconstruction/v06/arm9/ui-object-identities.json)
covers the 3,362 allocated bytes of `keyboard.o`, including 3,276 executable
bytes. Its normalized identity is
`7f455b607147d73f6ef71bbf2e07c6ac05e563752baaefa16a4ce35bfb03451c`.
No method selection or keyboard compiler override is necessary.

## FAT Directory Entries

The [release-constrained directory source](../research/reconstruction/v06/dependencies/libfat/directory.c)
places `lfnEntry` immediately before `entrySize` in `_FAT_directory_addEntry`.
The preserved [comparison source](../research/reconstruction/v06/dependencies/libfat/source/directory.c)
places them in the opposite order; every other byte is unchanged. The normal
historical `-O2` compile reproduces the released stack slots and comparison
operands. Other complete functions retain their prior compiled bytes/offsets.

The [complete-object gate](../research/reconstruction/v06/dependencies/libfat/directory-object-identity.json)
covers 3,844 allocated bytes, including 3,784 executable bytes. Its normalized
identity is
`e39f41283b2f28a22e141f9c85b4c8b05f13f0f769a086d6b105093b93740e2c`.
No function extraction or FAT compiler override is needed.

## Acceptance

The [source-delta tests](../tools/repro/test_small_source_recovery.py) verify
both complete source differences, reject residual ARM9 region files, and
check that the build never invokes post-link replacement. The provenance
auditor also rejects changed ARM9 payloads and stale reconstruction artifacts.
Object normalization covers allocated layout/data, relocations, exports, and
ELF flags. Complete unmasked ARM9 and final ROM identities remain independent
acceptance gates, followed by two clean builds and deterministic melonDS replay.

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

Removal of post-link replacement is not completion of high-level source
recovery. The [remaining inventory](executable-source-coverage.md) still
attributes two uLibrary archive members to residual reconstruction; the
archive-only zlib `deflate` member is a separate unlinked target. Emulator
measurements do not establish physical Nintendo DS timing.
