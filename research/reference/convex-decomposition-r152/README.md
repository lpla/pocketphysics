# Box2D Convex Decomposition, SVN r152

These unmodified source files are comparison references, not exact-build
inputs and not the original Pocket Physics dependency revision. Their embedded
Eric Jordan license is retained.

## Provenance

The Box2D SourceForge repository first records `Contrib/ConvexDecomposition` at
revision 152, dated **2008-05-03 00:19:41 UTC**, with the log message
`Convex Decomposition`. This is later than Pocket Physics v0.6. The reference
cannot establish the contents of a standalone contribution used before its
upstream import.

| File | Primary source | SHA-256 |
| --- | --- | --- |
| `b2Polygon.cpp` | [SVN r152](https://svn.code.sf.net/p/box2d/code/!svn/bc/152/Contrib/ConvexDecomposition/b2Polygon.cpp) | `68953e5e9a41375a0ca0eb8e4f73e614af97acf5020ad58dc1c80cfa102bef69` |
| `b2Polygon.h` | [SVN r152](https://svn.code.sf.net/p/box2d/code/!svn/bc/152/Contrib/ConvexDecomposition/b2Polygon.h) | `26f3bc4af91c469e083400c0e3e85f4d7fdff6f8ba2f51cdeb48f47a276fab75` |

Both files are byte-identical to the copy in
[entonetics commit 877f8efd](https://github.com/deft-code/entonetics/commit/877f8efd13e26f8262aba5add35901184d64cab3),
dated 2008-05-23. This corroborates that snapshot, not the March release.
The Google Code archive's `Box2D_v2.0.1.zip` has no convex-decomposition
directory; the later WCK working copy identifies Google Code revision 2 from
August 2009 in its SVN metadata. Neither supplies the early revision; that
source is preserved separately in the [March 2008 forum patch](../box2d-fixed-20080310/).

## Relevant Differences

The imported node has an additional `visited` field and constructors initialize
it. The release instead uses a 140-byte ARM node stride and constructors that
do not store that field. Its direction wrapper also reserves the corresponding
smaller temporary node. The r152 tracing routine returns a polygon by value,
uses `goto SkipOut` after an intersection, and allocates `4*nNodes` result
vectors. The release routine has a pointer-return ABI and different control
flow and allocation bounds. These distinctions prevent treating the later
source as the original release implementation.

The [recovery report](../../../docs/polygon-source-recovery.md) records the
complete archived C++ recovery and its ABI adjustment. Source dates, textual
similarity, and matching method sizes are not acceptance criteria by themselves.
