# Box2D SVN r131 Solver Sources

These two files are unmodified downloads from the original upstream Subversion
repository, revision 131. Original copyright, license notices, and CRLF line
endings are preserved.

| File | SHA-256 |
| --- | --- |
| [Island solver](Dynamics/b2Island.cpp) | `6df0b2af009cc9b58bed3f5a9491ead868caaa3c4aa513baa68239a5e53cd6b6` |
| [Contact solver](Dynamics/Contacts/b2ContactSolver.cpp) | `7608d0acd9c6dd410f742a9f42d07010c661d49a1647e93579fa573265686e79` |

Primary download URLs:

- [b2Island.cpp at r131](https://svn.code.sf.net/p/box2d/code/!svn/bc/131/Source/Dynamics/b2Island.cpp).
- [b2ContactSolver.cpp at r131](https://svn.code.sf.net/p/box2d/code/!svn/bc/131/Source/Dynamics/Contacts/b2ContactSolver.cpp).

## Reconstructing the Historical Variant

From the repository root:

```sh
mkdir -p archive/Source
cp -R research/reference/box2d-r131/Dynamics archive/Source/
git apply -p0 --directory=archive \
  --include='archive/Source/Dynamics/b2Island.cpp' \
  --include='archive/Source/Dynamics/Contacts/b2ContactSolver.cpp' \
  research/reference/box2d-fixed-20080315/box2d_fixed.patch
shasum -a 256 archive/Source/Dynamics/b2Island.cpp \
  archive/Source/Dynamics/Contacts/b2ContactSolver.cpp
```

Expected output identities are, respectively,
`24996c27aa12e6e273b8246812b8c7b876bb4deb69fc83018cc069487414475a` and
`9159983a4a0aea8bd30aa644c7bc48ac8d8090925e7d89baa150787ea573a8ac`.
The [archival test](../../../tools/repro/test_archived_solver.py) independently
performs this extraction and compares every byte with the build sources.
