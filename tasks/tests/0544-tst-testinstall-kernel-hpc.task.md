# GAP-0544 — Port tst/testinstall/kernel/hpc (tests)

- **Task CID:** `baguqeerallvq37gqrysed2plfipgjvfvth5eaglqdtjbzyebe3bcwdwdgzoa`
- **Layer:** `tests`   **Module:** `tst/testinstall/kernel/hpc`
- **Size:** 1 file(s), 301 code lines, 8 definitions
- **Estimated effort:** 3.10 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/kernel/hpc/threadapi.tst`  (3.10 person-days)
- source: [tst/testinstall/kernel/hpc/threadapi.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/kernel/hpc/threadapi.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Kernel.Hpc.Threadapi`
- 301 code lines, 8 definitions

> Tests for functions defined in src/threadapi.c
> 
> @local t, t2, region, ch, f, sem, b, sv, old_state, tmp, tmp2
> 
> @if IsHPCGAP

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerallvq37gqrysed2plfipgjvfvth5eaglqdtjbzyebe3bcwdwdgzoa`, then merge with `tools/merge_tasks.py`.
