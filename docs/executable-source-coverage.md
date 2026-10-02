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
| Source-compiled application | 23,416 | 87,224 | 110,640 |
| Source-compiled dependencies | 4,340 | 349,568 | 353,908 |
| Source-compiled runtime | 25,288 | 100,776 | 126,064 |
| Original source-built startup/CRT | 588 | 1,880 | 2,468 |
| Residual dependency reconstruction | 0 | 21,056 | 21,056 |
| Residual ARM9 section replacement | 0 | 61,364 | 61,364 |
| Linker padding/stubs | 0 | 80 | 80 |
| Total executable-section bytes | 53,632 | 621,948 | 675,580 |

Source-compiled implementations account for **593,080 bytes (87.8%)**.
Residual reconstruction accounts for **82,420 bytes (12.2%)**. The remaining
80 bytes are linker-generated. These values describe the build's source
boundary, not reverse-engineering effort, lines of code, instruction counts,
semantic correctness, or the fraction of all ROM bytes recovered.

The denominator is the union of allocated executable ELF sections in both
processors. Such sections include literal pools and padding. Ordinary assets,
read-only data outside executable sections, initialized data, zero-initialized
storage, cartridge headers, and packaging padding are excluded. In particular,
the four-byte reconstructed `b2Triangle` initializer is outside this denominator
and still remains unresolved high-level-source work.

The source categories include original upstream hardware assembly where the
CPU requires low-level operations. They must not be read as a C/C++-only
percentage. Mixed reconstructed objects are conservatively counted in full as
residual even when a subset of their functions already compiles from C/C++.

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
outside executable sections. This is a reproducible build-provenance audit,
not independent proof that each source algorithm has been semantically
validated. The object identity gates and final ROM hash tests remain separate.
