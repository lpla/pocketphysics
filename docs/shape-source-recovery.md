# Historical Shape Proxy Source Recovery

## Result

`b2Shape::ResetProxy` now compiles from C++ without its 284-byte ARM9 section
replacement. The complete `b2Shape.o` contains 1,932 executable-section bytes
and 2,104 allocated bytes. Two independent clean builds pass its normalized
object gate and reproduce the unchanged 2008 ROM SHA-256:

```text
9e0f44b5bc817ea0c91ab889abcbc64c0f09f2439208679f67542a77bce4de64
```

## Recovered Behavior

The available source returned immediately when `m_proxyId == b2_nullProxy`.
The release instead skips only `DestroyProxy` in that case, then continues to
compute an AABB and create a proxy. The reconstructed C++ therefore guards
the destruction call with `m_proxyId != b2_nullProxy`, rather than returning.
This changes one ARM branch byte; the other function bytes remain unchanged.

This recovers historical behavior, not a modern physics optimization. Only the
historical reconstruction tree consumes the change.

## Acceptance

The [object manifest](../research/reconstruction/v06/dependencies/box2d/reconstructed/shape-object-identity.json)
constrains allocated sections, relocations, symbols, and ELF flags before the
normal Box2D archive is installed. It describes a release-constrained recovery,
not an independently preserved original archive member. No generated
instruction, literal, or relocation is patched.

```sh
tools/repro/test_source_patches.sh
tools/repro/test_v06_exact.sh
```

The second command rebuilds all target components twice, verifies the final
processor and ROM hashes, and compares ELF files and executable-provenance
reports. Removing the proxy replacement increases source-compiled executable
coverage by 284 bytes; it does not change the release program or its timing.
