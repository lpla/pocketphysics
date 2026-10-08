# Box2D Fixed-Point Forum Patch, March 2008

This directory preserves the unmodified `box2d_fixed_2.patch` from attachment
97 on the original Box2D forum. The patch identifies SVN revision 127 for its
core diffs and adds fixed-point support and standalone convex-decomposition
source. Original embedded copyright and license notices are retained.

## Provenance

- Original attachment: `http://www.box2d.org/forum/download/file.php?id=97`.
- [Internet Archive capture](https://web.archive.org/web/20100705113908id_/http://www.box2d.org/forum/download/file.php?id=97).
- Download filename: `box2d_fixed_2.patch.zip`.
- ZIP member timestamp: March 10, 2008, 06:21, without a timezone field.
- HTTP Last-Modified: March 10, 2008, 05:25:46 GMT.
- ZIP SHA-256: `aafe14a0be3b0abf92cb588bff22af5e779efa167dc2f25c209615440b877f66`.
- Patch SHA-256: `331cd9bbb5de3c6be08c61e57d83ff6741dcd5e498eeaf1010b5c61a740ec6d4`.

The capture is from 2010, not 2008. Upload metadata and patch context support
the historical chronology but do not prove the producer's final checkout.
The patch bytes, including mixed line endings, are preserved exactly.

## Source Extraction

From the repository root, the four unmodified contributed source files can be
extracted without a base SVN checkout:

```sh
git apply -p0 --include='archive/Source/Contrib/*' --directory=archive \
    research/reference/box2d-fixed-20080310/box2d_fixed_2.patch
sha256sum archive/Source/Contrib/b2Polygon.cpp
```

The original extracted `b2Polygon.cpp` has SHA-256
`3d12a6856aadb81199fb2609f64de416e21dad4de223dee88880713cea22a16a`.
GNU patch whitespace warnings describe the preserved source formatting;
automatic whitespace repair would change its archival identity.

The exact build uses tracked source rather than extracting the patch at build
time. Its only substantive polygon change is documented in the
[source-recovery report](../../../docs/polygon-source-recovery.md): the
incoming-node overload uses the released pointer ABI. The two triangle files
are unmodified copies of the contributed source. The full patch is also a
comparison reference for the remaining core solver reconstruction.
