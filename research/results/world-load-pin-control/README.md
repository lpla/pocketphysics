# Saved-Pin XML Constructor Failure

This is an unresolved loader regression control for application checkpoint
`e04656ace94017d97ad591bffdebb9cfebf391dc`, separate from the accepted save-side
correction. The [input](scene.pp) was emitted by the actual `World::save` body
with application header constants in the [host save protocol](../world-save-constants/).
Its pin correctly has `x`, `y`, and two endpoint IDs, but no `type` attribute.

The [fixture](probe.cpp) compiles the unchanged actual Thing and Pin XML
constructor bodies with real pinned TinyXML. `Pin(TiXmlElement*)` delegates to
`Thing(TiXmlElement*)`; that constructor passes the absent `type` attribute to
`strcmp`. The retained [AddressSanitizer diagnostic](stderr.log) reports a
zero-page read at that call. The [manifest](metadata.json) retains the input,
fixture, dependency, compiler, flags, status, and scope identities.

This confirms a host source-level failure before physics construction. It is
not a full GUI load test, native ARM9 execution, or physical-console result.
The current `World::load` also reads `type` before its shape branch, so fixing
only the constructor will not complete pin loading. Full-capacity IDs,
forward references, missing/damaged XML, object lifetimes, and preserving the
previous scene on failure remain on the [worklist](../../../docs/research-worklist.md).

The preserved fixture can be rebuilt against checksum-pinned TinyXML 2.6.2
with the flags in the manifest and its four ordinary source files
(`tinystr.cpp`, `tinyxml.cpp`, `tinyxmlerror.cpp`, `tinyxmlparser.cpp`), then run
with `scene.pp`. Require the specific diagnostic at the actual constructor;
an unrelated unsuccessful exit is not equivalent evidence. This control does
not promote a loader fix.
