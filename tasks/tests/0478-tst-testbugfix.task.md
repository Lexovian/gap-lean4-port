# GAP-0478 — Port tst/testbugfix (tests)

- **Task CID:** `baguqeerae6urljg6cz4oghijb6vdjhrnh6g7nmwklou2gn6lw452zecc5uyq`
- **Layer:** `tests`   **Module:** `tst/testbugfix`
- **Size:** 1 file(s), 6903 code lines, 0 definitions
- **Estimated effort:** 69.03 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testbugfix/2022-03-05-Centralizer.tst`  (69.03 person-days)
- source: [tst/testbugfix/2022-03-05-Centralizer.tst](https://github.com/gap-system/gap/blob/master/tst/testbugfix/2022-03-05-Centralizer.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testbugfix.20220305Centralizer`
- 6903 code lines, 0 definitions

> Fix a bug introduced in #4787

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerae6urljg6cz4oghijb6vdjhrnh6g7nmwklou2gn6lw452zecc5uyq`, then merge with `tools/merge_tasks.py`.
