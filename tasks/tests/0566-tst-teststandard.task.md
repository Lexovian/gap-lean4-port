# GAP-0566 — Port tst/teststandard (tests)

- **Task CID:** `baguqeeraaitkokuawitescg7kqveyv5kl6lexs7gdyajxwu4araldpor24bq`
- **Layer:** `tests`   **Module:** `tst/teststandard`
- **Size:** 1 file(s), 1774 code lines, 2 definitions
- **Estimated effort:** 17.85 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/grpprmcs.tst`  (17.85 person-days)
- source: [tst/teststandard/grpprmcs.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/grpprmcs.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Grpprmcs`
- 1774 code lines, 2 definitions

> ############################################################################
> #
> #  Exclude from testinstall.g as it takes considerable time.
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraaitkokuawitescg7kqveyv5kl6lexs7gdyajxwu4araldpor24bq`, then merge with `tools/merge_tasks.py`.
