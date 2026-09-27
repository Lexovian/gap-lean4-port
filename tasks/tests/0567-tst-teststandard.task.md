# GAP-0567 — Port tst/teststandard (tests)

- **Task CID:** `baguqeera4jejxeqaxvmf3bsjk5jcb7s4xnooijmojnu3nxueolojjvepc77q`
- **Layer:** `tests`   **Module:** `tst/teststandard`
- **Size:** 3 file(s), 886 code lines, 17 definitions
- **Estimated effort:** 9.99 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/minimalgeneratingset.tst`  (5.21 person-days)
- source: [tst/teststandard/minimalgeneratingset.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/minimalgeneratingset.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Minimalgeneratingset`
- 521 code lines, 0 definitions

> ############################################################################
> #
> #  Some tests for computing MinimalGeneratingSet of permutation groups
> #  (takes on the order of a seconds to run)
> #
> @local groups

### `tst/teststandard/sort.tst`  (2.61 person-days)
- source: [tst/teststandard/sort.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/sort.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Sort`
- 172 code lines, 16 definitions

> This aims to test the various implementations of Sort. There are a few cases
> we must cover:
> 
> * We can choose if we pass a comparator
> * We can do Sort or SortParallel
> * We specialise for plain lists
> Most of these checks are generate a whole bunch of random tests

### `tst/teststandard/helptools.tst`  (2.17 person-days)
- source: [tst/teststandard/helptools.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/helptools.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Helptools`
- 193 code lines, 1 definitions

> This test checks various auxiliary functions used by the help system.
> 
> For the test that systematically checks each manual section, see
> tst/testextra/helpsys.tst

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera4jejxeqaxvmf3bsjk5jcb7s4xnooijmojnu3nxueolojjvepc77q`, then merge with `tools/merge_tasks.py`.
