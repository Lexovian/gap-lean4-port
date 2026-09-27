# GAP-0477 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeeranymtxmcrihgk6r34l6gp5fq3v5cg3d55z2ymubnuvpyogxicabja`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 3 file(s), 1012 code lines, 0 definitions
- **Estimated effort:** 11.35 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2019-11-19-backtrack.tst`  (6.27 person-days)
- source: [tst/testbugfix/2019-11-19-backtrack.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2019-11-19-backtrack.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20191119Backtrack`
- 627 code lines, 0 definitions

> Work-around a problem in backtrack

### `tst/testbugfix/2024-03-20-Test-rewriteToFile-option.tst`  (4.24 person-days)
- source: [tst/testbugfix/2024-03-20-Test-rewriteToFile-option.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2024-03-20-Test-rewriteToFile-option.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20240320TestRewriteToFileOption`
- 330 code lines, 0 definitions

> Fix issue with `rewriteToFile` option in test cases with mixed input/output
> See https://github.com/gap-system/gap/issues/5685

### `tst/testbugfix/2018-02-21-int-mul-pow.tst`  (0.84 person-days)
- source: [tst/testbugfix/2018-02-21-int-mul-pow.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2018-02-21-int-mul-pow.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20180221IntMulPow`
- 55 code lines, 0 definitions

> in the past, the kernel functions IsNegInt ProdIntObj and PowObjInt were
> applicable to almost arbitrary objects, which lead to some strange
> expressions being evaluated by GAP. Here we verify that these now produce
> errors instead.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeranymtxmcrihgk6r34l6gp5fq3v5cg3d55z2ymubnuvpyogxicabja`, then merge with `tools/merge_tasks.py`.
