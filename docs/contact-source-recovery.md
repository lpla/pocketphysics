# Historical Contact Solver Source Recovery

## Scope

The 20,100-byte release contact-solver unit is now linked as three separately
attributed executable input sections. C++ produces 14,940 bytes; the unresolved
velocity method contributes 5,160 bytes of explicitly residual mnemonic
assembly. The former whole-unit ARM9 section replacement is removed.

| Release implementation | Executable-section bytes | Source form |
| --- | ---: | --- |
| Destructors, force finalization, static initialization | 448 | C++ |
| Velocity constraint initialization | 2,548 | C++ |
| Two constructor entry points | 8,328 | C++ |
| Position constraint solver | 3,616 | C++ |
| Velocity constraint solver | 5,160 | Residual assembly |

The complete mixed object has 20,396 allocated bytes, including its 52-byte
zero-initialized storage, 240-byte assertion strings, and four-byte initializer.
This is partial source recovery, not recovery of the complete solver and not
a performance optimization. The historical ROM remains unchanged.

## Source Lineage

The release-constrained hybrid retains the older local-anchor constraint
layout while using fixed-point force scaling also present in Box2D r134.
Restoring the nine-line `B2FORCE_SCALE2`/`B2FORCE_INV_SCALE2` definition block
preserves the release constructor's assertion line numbers. Warm starting
multiplies by the scaled time step, `B2FORCE_SCALE2(m_step.dt)`, rather than the
unscaled step. No compiled assertion constants or instruction encodings are
rewritten to obtain the match.

The available C++ velocity loop does not reproduce the released method and is
not installed in the exact archive. Similar-looking instruction sequences and
semantically plausible loop variants are insufficient evidence of recovery.

## Compilation and Attribution

The build compiles the unit with devkitARM r21 GCC 4.1.2, the recovered Box2D
flags, and `-ffunction-sections`. `objcopy` removes the unmatched velocity
function section and debug information referring to it; it does not edit any
retained code or relocation. The
[relocatable layout](../research/reconstruction/v06/dependencies/box2d/reconstructed/contact-object-layout.ld)
orders the retained C++ sections and the
[residual method](../research/reconstruction/v06/dependencies/box2d/reconstructed/contact-velocity-residual.S).
All relocatable output sections start at zero; the final linker determines
their runtime addresses.

A [reviewed linker-script patch](../research/reconstruction/v06/arm9/contact-sections.patch)
places these three sections together in the ordinary archive-member position.
The unchanged producer linker script is verified before this source patch is
applied; the patched script also has a fixed hash gate. The source/residual
section names survive into the final GNU linker map. The provenance auditor
classifies each separately and rejects unknown contact-solver executable
sections. The residual method is never credited as C++.

## Acceptance

The [mixed-object gate](../research/reconstruction/v06/dependencies/box2d/reconstructed/contact-object-identity.json)
records a release-constrained recovered identity, not an independently
preserved original distribution object. Object normalization is only the first
gate: the entire final ARM9 payload, ARM7 payload, and packaged ROM must also
match their canonical hashes without the former solver section replacement.

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
```

The second command performs two independent clean builds of all target
components and compares their payloads, ELF files, and provenance reports.
The unresolved velocity method remains a source-recovery target; exact ROM
identity alone does not establish completion of high-level reconstruction.
