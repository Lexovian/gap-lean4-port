# GAP-0570 — Port tst/teststandard/hpc (tests)

- **Task CID:** `baguqeerax6sp5xxgc6qj56h5ianele35eetv3pnrt6x5ncgmwngmfy7lnp4a`
- **Layer:** `tests`   **Module:** `tst/teststandard/hpc`
- **Size:** 1 file(s), 55 code lines, 3 definitions
- **Estimated effort:** 0.83 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/hpc/alist.tst`  (0.83 person-days)
- source: [tst/teststandard/hpc/alist.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/hpc/alist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Hpc.Alist`
- 55 code lines, 3 definitions

> @if IsHPCGAP

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerax6sp5xxgc6qj56h5ianele35eetv3pnrt6x5ncgmwngmfy7lnp4a`, then merge with `tools/merge_tasks.py`.
