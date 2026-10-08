# Executable-Section Source Coverage

## Measurement

The inventory traces linked input sections to the exact-build recipe using the
ARM7 and ARM9 ELF section tables and GNU linker maps. It then applies the ARM9
residual replacement ranges, overriding their original input classifications.
Every executable-section byte is counted once. Overlapping attribution fails
the audit, and gaps remain unattributed rather than being credited as recovered
source. The current outputs have no unattributed executable-section bytes.

| Category | ARM7 bytes | ARM9 bytes | Combined bytes |
| --- | ---: | ---: | ---: |
| Source-compiled application | 23,416 | 88,796 | 112,212 |
| Source-compiled dependencies | 4,340 | 423,516 | 427,856 |
| Source-compiled runtime | 25,288 | 100,776 | 126,064 |
| Original source-built startup/CRT | 588 | 1,880 | 2,468 |
| Residual dependency reconstruction | 0 | 4,412 | 4,412 |
| Residual ARM9 section replacement | 0 | 2,488 | 2,488 |
| Linker padding/stubs | 0 | 80 | 80 |
| Total executable-section bytes | 53,632 | 621,948 | 675,580 |

Source-compiled implementations account for **668,600 bytes (98.97%)**.
Residual reconstruction accounts for **6,900 bytes (1.02%)**. The remaining
80 bytes are linker-generated. These values describe the build's source
boundary, not reverse-engineering effort, lines of code, instruction counts,
semantic correctness, or the fraction of all ROM bytes recovered.

The denominator is the union of allocated executable ELF sections in both
processors. Such sections include literal pools and padding. Ordinary assets,
read-only data outside executable sections, initialized data, zero-initialized
storage, cartridge headers, and packaging padding are excluded. In particular,
the four-byte `b2Triangle` initializer is outside this denominator. That entry
and its complete executable unit now compile from [C++ source](triangle-source-recovery.md).

The source categories include original upstream hardware assembly where the
CPU requires low-level operations. They must not be read as a C/C++-only
percentage. Mixed reconstructed objects are conservatively counted in full as
residual unless source and residual code have independently identifiable input
sections. The [contact and island solvers](contact-source-recovery.md) compile
their complete 20,100-byte and 6,952-byte executable units from archival C++;
their unknown executable input sections fail the audit. The
[polygon member](polygon-source-recovery.md) now compiles its complete
30,768-byte executable unit from archived March 2008 C++. The complete-object
identity and method-boundary gates constrain its source classification;
unknown executable input sections remain rejected.

## Remaining Boundary

| Linked residual implementation | Executable-section bytes |
| --- | ---: |
| uLibrary historical mixed unit | 3,980 |
| FAT directory entry creation | 1,448 |
| Font creation | 808 |
| Paletted-alpha image conversion | 432 |
| Keyboard label rendering | 232 |
| Total | 6,900 |

The archive-only zlib `deflate` reconstruction is an additional source-recovery
task, but contributes no code to this release ROM and is excluded from the
table. Clearing the listed boundary requires source/compiler reconstruction
and identity gates, not moving residual instructions into another container or
reclassifying them as source.

## Reproduction

```sh
tools/repro/test_v06_exact.sh
```

This builds twice, verifies the payload/ROM hashes and ELF byte identity, and
creates `executable-provenance.json` in each build output. The two reports must
also be byte-identical. To audit an existing exact build:

```sh
python3 tools/repro/audit_executable_provenance.py \
    research-artifacts/build/v06-exact \
    research-artifacts/build/v06-exact/executable-provenance.json
```

The [auditor](../tools/repro/audit_executable_provenance.py) records ELF and
linker-map hashes, executable-section identities, and disjoint address ranges
with their owning object and category. It rejects unknown input-object owners.
Its residual-member inventory follows the exact build script; changes to the
source/assembly boundary must update that inventory and the published counts.

The [unit tests](../tools/repro/test_executable_provenance.py) cover discarded
input exclusion, multiline section names, padding, unknown owners, residual
classification, replacement precedence, gaps, overlaps, and replacements
outside executable sections, including complete solver/polygon attribution
and unknown-section rejection. This is a reproducible build-provenance audit,
not independent proof that each source algorithm has been semantically
validated. The object identity gates and final ROM hash tests remain separate.
