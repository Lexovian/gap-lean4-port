# GAP-0445 — Port tst/mockpkg/gap (tests)

- **Task CID:** `baguqeerafo6ptjxbzedwkfxqe2l3fs2w3vhc2rroop2ecxnnipv6nkcbjyna`
- **Layer:** `tests`   **Module:** `tst/mockpkg/gap`
- **Size:** 4 file(s), 16 code lines, 12 definitions
- **Estimated effort:** 0.17 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/mockpkg/gap/mockpkg.gi`  (0.11 person-days)
- source: [tst/mockpkg/gap/mockpkg.gi](https://github.com/gap-system/gap/blob/master/tst/mockpkg/gap/mockpkg.gi)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Gap.Mockpkg`
- 10 code lines, 7 definitions

> mockpkg: A mock package for use by the GAP test suite
> 
> Implementations

### `tst/mockpkg/gap/mockpkg.gd`  (0.04 person-days)
- source: [tst/mockpkg/gap/mockpkg.gd](https://github.com/gap-system/gap/blob/master/tst/mockpkg/gap/mockpkg.gd)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Gap.Mockpkg`
- 4 code lines, 4 definitions

> mockpkg: A mock package for use by the GAP test suite
> 
> Declarations

### `tst/mockpkg/gap/extension1.g`  (0.01 person-days)
- source: [tst/mockpkg/gap/extension1.g](https://github.com/gap-system/gap/blob/master/tst/mockpkg/gap/extension1.g)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Gap.Extension1`
- 1 code lines, 1 definitions

> BindGlobal( "mockpkg_ExtensionData", [ 1, 2, 3 ] );

### `tst/mockpkg/gap/extension2.g`  (0.01 person-days)
- source: [tst/mockpkg/gap/extension2.g](https://github.com/gap-system/gap/blob/master/tst/mockpkg/gap/extension2.g)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Gap.Extension2`
- 1 code lines, 0 definitions

> Error( "this should not happen" );

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerafo6ptjxbzedwkfxqe2l3fs2w3vhc2rroop2ecxnnipv6nkcbjyna`, then merge with `tools/merge_tasks.py`.
