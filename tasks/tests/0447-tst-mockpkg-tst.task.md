# GAP-0447 — Port tst/mockpkg/tst (tests)

- **Task CID:** `baguqeeral4gns4xszdhvaoaumj6j7bwne7y2nckvnn2zroqdl6aglqijuviq`
- **Layer:** `tests`   **Module:** `tst/mockpkg/tst`
- **Size:** 2 file(s), 12 code lines, 0 definitions
- **Estimated effort:** 0.13 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/mockpkg/tst/kext.tst`  (0.08 person-days)
- source: [tst/mockpkg/tst/kext.tst](https://github.com/gap-system/gap/blob/master/tst/mockpkg/tst/kext.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Tst.Kext`
- 8 code lines, 0 definitions

> Try to load its kernel extension

### `tst/mockpkg/tst/testall.g`  (0.05 person-days)
- source: [tst/mockpkg/tst/testall.g](https://github.com/gap-system/gap/blob/master/tst/mockpkg/tst/testall.g)
- suggested Lean module: `RequestProject.Gap.Tests.Mockpkg.Tst.Testall`
- 4 code lines, 0 definitions

> mockpkg: A mock package for use by the GAP test suite
> 
> This file runs package tests. It is also referenced in the package
> metadata in PackageInfo.g.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeral4gns4xszdhvaoaumj6j7bwne7y2nckvnn2zroqdl6aglqijuviq`, then merge with `tools/merge_tasks.py`.
