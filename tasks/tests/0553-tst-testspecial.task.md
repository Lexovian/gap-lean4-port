# GAP-0553 — Port tst/testspecial (tests)

- **Task CID:** `baguqeeraom735zofqraiv3o7rgwcazxwxyccqyhn3bde5lsggjl4edub4p7a`
- **Layer:** `tests`   **Module:** `tst/testspecial`
- **Size:** 2 file(s), 857 code lines, 0 definitions
- **Estimated effort:** 10.27 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testspecial/backtrace.g.out`  (6.93 person-days)
- source: [tst/testspecial/backtrace.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/backtrace.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.BacktraceG`
- 535 code lines, 0 definitions

> gap> #############################################################################
> gap> ##
> gap> ##  This file tests Where and WhereWithVars, and in particular how backtraces
> gap> ##  are reported for different kinds of statements; there used to be various
> gap> ##  bugs related to that in the past.

### `tst/testspecial/backtrace2.g.out`  (3.34 person-days)
- source: [tst/testspecial/backtrace2.g.out](https://github.com/gap-system/gap/blob/master/tst/testspecial/backtrace2.g.out)
- suggested Lean module: `RequestProject.Gap.Tests.Testspecial.Backtrace2G`
- 322 code lines, 0 definitions

> gap> #############################################################################
> gap> ##
> gap> ##
> gap> ##  This file tests the combination of Where and DownEnv/UpEnv, and also the
> gap> ##  initial backtrace (for which Where is executed in a slightly different

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraom735zofqraiv3o7rgwcazxwxyccqyhn3bde5lsggjl4edub4p7a`, then merge with `tools/merge_tasks.py`.
