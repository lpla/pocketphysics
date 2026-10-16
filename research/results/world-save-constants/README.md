# XML Save Validation with Application Header Constants

This strengthens the host part of the [world-save dataset](../world-save/).
The first host fixture used gravity 10 instead of the application's default 2;
it tested author, IDs, ownership, and file preservation, without asserting the
gravity fields. Those earlier raw files remain unchanged and do not represent
the target's gravity value. The independently built ROMs and their replay
measurements always used the actual application headers and are unaffected.

The current runner extracts `DEFAULT_GRAVITY`, density, friction, and restitution
definitions directly from the regenerated application headers. It also checks
both serialized gravity components, retaining the application's swapped-axis
file convention: `gravity_x` contains default gravity 2, `gravity_y` contains 0.

All 534 cases pass on macOS and native case-sensitive Linux: 531 guarded cases
and three specific failing controls. Generated fixtures, compile logs, case
arguments/statuses, complete streams, and every resulting XML or unchanged
sentinel file are packed in the host directories. Case definitions, fixture
hashes, and all 531 guarded output files agree across hosts. Each output retains
its original byte length and SHA-256.

The [validation manifest](validation.json) records the unchanged application
checkpoint, extracted definitions, runner hash, and Linux image identity.
The [archiver](../../../tools/repro/archive_world_save_results.py) checks every
fixture identity, guarded result, required output file, and specific control
diagnostic before packing records. It does not include compiled binaries.

The selected application release remains SHA-256
`6403a17f8c789759a6b571556e5c21285401fe03b097e425a7a0faa7f1120e38`.
The [study's remaining loader, GUI, FAT, and physical boundaries](../../../docs/world-save-study.md)
apply unchanged. This is a host-test correction, not another application change.
