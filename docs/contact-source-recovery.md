# Historical Contact and Island Solver Source Recovery

## Result

Both complete release solver units compile from archival C++ using the ordinary
Box2D build recipe, devkitARM r21 GCC 4.1.2, and the recovered historical headers.
No method selection, residual solver assembly, custom solver linker script,
instruction rewriting, or post-link solver replacement is used.

| Compilation unit | Executable-section bytes | Allocated bytes |
| --- | ---: | ---: |
| Contact solver | 20,100 | 20,396 |
| Island solver | 6,952 | 7,008 |

The contact velocity method contributes 5,160 executable bytes and the island
`Solve` method 3,444 bytes. Recovering these methods removes 8,604 bytes from
the linked residual boundary. This is source recovery, not a performance
optimization: the final historical ROM remains byte-identical.

## Archival Inputs

The original forum's attachment 109 preserves `box2d_fixed_r131_2.patch.zip`.
Its member, [box2d_fixed.patch](../research/reference/box2d-fixed-20080315/),
identifies upstream SVN revision 131. ZIP member and HTTP Last-Modified
metadata date it to March 15, 2008; the preserved Internet Archive capture
is from 2010. Those observations support chronology but do not prove which
checkout the release producer used.

The [unmodified upstream r131 files](../research/reference/box2d-r131/) were
independently retrieved from the original SVN repository. Applying only the
two corresponding forum diffs produces the tracked
[island source](../research/reconstruction/v06/dependencies/box2d/Dynamics/b2Island.cpp)
and [contact source](../research/reconstruction/v06/dependencies/box2d/Dynamics/Contacts/b2ContactSolver.cpp)
byte for byte. No additional local source edits are needed. Copyright,
license notices, and original line endings are preserved.

The forum patch supplies the fixed-point force-scaling definitions, deferred
velocity-update structure, and component-wise sleep threshold checks absent
from other historical variants. These details are retained for archival
fidelity, including historical behavior; they are not silently corrected
in the exact build. The modern and optimized builds remain separate.

## Independent Acceptance Gates

The [object manifest](../research/reconstruction/v06/dependencies/box2d/reconstructed/solver-object-identities.json)
guards each complete relocatable object: ELF flags, allocated sections,
relocations, exported symbols, and section layout. Debug information and file
symbols are excluded from normalization. The manifest is a comparison gate,
not a binary build input or a claim that an original producer object archive
survived.

The unmodified producer `ds_arm9.ld` has SHA-256
`e0b7f28bd015da38851d0699f9344df02b8a6b0426093815ecba576b5b1a8260`.
Before applying the remaining unrelated replacements, the entire unmasked
827,636-byte linked ARM9 payload must have SHA-256
`b889ac4a411285d7427309ea08999c82df7051f972bebdff76273e634476a17c`
in the current build, which also incorporates the subsequent font recovery.
The final ARM9, ARM7, and complete 894,016-byte release ROM must independently
match their canonical identities. A near-matching method cannot pass these
gates by hiding differences behind a solver replacement.

The provenance auditor credits only the expected `.text` input sections for
these two members and rejects unknown solver executable sections. Neither
contains residual assembly.

## Reproduction

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
REPEATS=3 tools/repro/test_v06_inrom.sh
```

The [archival source tests](../tools/repro/test_archived_solver.py) independently
apply the preserved patch to the preserved originals, check all input/output
hashes, compare complete source bytes, and reject solver substitutions.
The exact-build test compiles all target components twice in independent
directories and compares ROMs, payloads, ELF files, and provenance reports.
The last command builds all three instrumented roles and replays the same
touch/physics/render workload in melonDS. In-ROM DS timer measurements are
separate from binary-identity evidence and remain emulator-only until tested
on physical hardware.

The [solver-recovery dataset](../research/results/archived-solver-source/)
preserves two clean build identities and nine fresh melonDS runs at the solver
recovery revision, before the subsequent font compiler-unit reconstruction.
