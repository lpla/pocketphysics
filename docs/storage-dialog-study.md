# Filename and Dialog Lifetime Study

The selected port's save callback reads before the typewriter buffer when a
one- or two-character name reaches its extension comparison. Its overwrite
probe also leaves an existing file open and checks only the legacy directory,
although the application normally saves under `data/pocketphysics/sketches`.
When both directories exist, the former save preference disagrees with the
loader's modern-directory preference.

The typewriter's backspace loop reads and writes one byte beyond its 21-byte
allocation when the text has reached the 20-character limit. Load-dialog
enumeration has the same short-name extension problem as the save callback.
Its directory-existence probes and early empty/error returns also retain
directory handles or the filename allocation.

## Correction

The [storage transform](../tools/repro/patch_storage_source.py) applies these
corrections only when `PP_RUNTIME_FIXES` is selected:

- Test the filename length before subtracting the three-byte extension.
- Use one directory selector for saving and overwrite probing: existing modern
  directory first, then an existing legacy directory, then the modern creation
  path. This agrees with the existing loader preference.
- Close a successful read-only overwrite probe before showing the confirmation.
- Shift backspace bytes only through the old terminator's valid index.
- Close temporary directory-existence probes and release enumeration resources
  on empty or failed reads.

The frozen modern compatibility specimen retains its previous behavior and
ROM identity. The historical source reconstruction is outside this transform.

## Host Regression Protocol

The [regression runner](../tools/repro/test_storage_dialogs.py) extracts the
actual save callback, directory selector, typewriter `penDown`, load-dialog
constructor, enumeration, cleanup, and destructor bodies from regenerated
application source. It inserts them unchanged into controlled fixtures and
compiles them with AddressSanitizer and UndefinedBehaviorSanitizer.

The pre-correction transform is read from immutable source checkpoint
`b9cede1b54b044c703187fa4a8ba3ad3dba8a42e`. Controls require the specific
buffer diagnostic or explicit ownership/workflow failure, not any arbitrary
unsuccessful exit. The 284 cases comprise:

- 39 guarded save cases across empty, short, extended, and maximum-length names;
  absent, legacy, modern, and coexisting directories; and new/existing files.
- All 231 combinations of buffer length 0–20 and valid backspace cursor position.
- Six guarded directory enumeration/ownership cases, including short entries,
  hidden files, directory entries, empty directories, and missing directories.
- Eight failing controls for the corresponding defects.

The ownership fixture reports its failure before releasing objects left behind
by the deliberately broken control. This fixture cleanup preserves the explicit
failure status on Linux, where LeakSanitizer otherwise replaces it at process
exit. Guarded application paths must still release every tracked resource
themselves; AddressSanitizer, UndefinedBehaviorSanitizer, and Linux leak checking
remain enabled.

Save probes use actual temporary POSIX files. GUI/audio drawing, world XML
serialization, and thumbnail decoding are stubs. Directory enumeration uses a
controlled backend with tracked ownership. These are method-body and lifetime
tests, not complete GUI, FAT, or physical-console workflow validation.

```sh
tools/repro/test_source_patches.sh
```

The workflow preserves case results, compiler output, generated fixture source,
and sanitizer diagnostics under
`research-artifacts/test/source-patches/storage-dialogs`.
The [published validation](../research/results/storage-dialogs/) also includes
independent release/runtime ROM and ELF identities and 15 repeated emulator runs.
The frozen modern ROM/ELF identity is unchanged. Recorded improved body states
match the preceding checkpoint; the ordinary replay does not open storage dialogs.

## Remaining Storage Acceptance

Real FAT save/load and overwrite/cancel interaction, thumbnails and capture
mapping, damaged XML and absent attributes, failed I/O feedback, allocation
failures, pin serialization/removal, and preserving the current scene when
loading fails still require dedicated application tests. Existing loader code
clears the scene before parsing a file and assumes several XML nodes exist.
These remaining paths must not be described as repaired by the bounded dialog
correction. See the [worklist](research-worklist.md).
