# World XML Save Boundaries

`World::save` copies ten low bytes of the firmware username into a ten-byte
array. A full-length name leaves no terminator for `TiXmlText`, so serialization
reads beyond the stack buffer. The save-side pin lookup also reads its table
before testing the index bound, leaves entry zero uninitialized, and fills
later entries only as serialization reaches them. An endpoint absent from the
world or serialized after its pin can therefore overrun the table.

## Selected Correction

The [storage transform](../tools/repro/patch_storage_source.py) adds these
changes behind `PP_RUNTIME_FIXES`:

- Reserve an eleventh author byte for the terminator, retaining the existing
  ten-low-byte conversion. This is not a Unicode conversion change.
- Initialize the complete save-side ID table before serializing any object,
  including the null/background entry.
- Test the lookup bound before reading the table.
- Abort before writing the destination when an endpoint is unresolved or the
  ID-table allocation fails. Release the partially constructed XML and table.

The frozen modern specimen and historical reconstruction keep their existing
source behavior. Save failure feedback in the GUI remains separate work.

## Host Protocol

The [runner](../tools/repro/test_world_save.py) extracts unchanged `World::save`,
the directory selector, and actual Thing/Circle/Pin XML methods. It compiles
them with the same checksum-pinned TinyXML 2.6.2 source used by the modern port,
AddressSanitizer, and UndefinedBehaviorSanitizer. Temporary POSIX files are
written and parsed using real TinyXML. Firmware, physics, drawing, and DLDI are
outside this host fixture. Unix directory modes are normalized because libfat
ignores the mode argument.

The 534 cases comprise 531 guarded cases and three specific failing controls:

- Author lengths zero through ten, 1/2/3/49/50 total objects, pin before/
  between/after bodies, and legacy/modern/coexisting directories: 495 cases.
- Missing endpoints and injected failure of the ID-table allocation, with
  existing-file preservation checked across object counts, order, and directories:
  36 cases.
- Immutable pre-correction checkpoint `3bd6a14`: a full-length author must report
  stack-buffer-overflow; a forward endpoint and an absent endpoint must each
  report heap-buffer-overflow.

Guarded files must retain the exact author bytes, every body ID, both pin
endpoint IDs, object count, and thumbnail text. An early rejection must preserve
the existing file byte for byte. A failed process without the expected sanitizer
diagnostic does not satisfy a negative control.

```sh
tools/repro/test_source_patches.sh
```

These are bounded serialization and ownership checks. They do not establish a
complete sketch round trip: the existing loader resolves pin endpoints in one
pass, and forward-reference loading remains unvalidated. Malformed XML,
load-side maximum IDs, scene preservation on failed loads, every allocation
site, GUI interaction, thumbnails, native FAT saves, and physical flashcart
behavior remain on the [worklist](research-worklist.md).
