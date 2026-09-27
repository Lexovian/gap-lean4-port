# GAP-0563 — Port tst/teststandard (tests)

- **Task CID:** `baguqeeraqkj6rh5iwjd76r2e6uotzcmn4qody5hr5pvyzucmnnlh4p6y2fea`
- **Layer:** `tests`   **Module:** `tst/teststandard`
- **Size:** 1 file(s), 452 code lines, 23 definitions
- **Estimated effort:** 6.40 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/arithlst.g`  (6.40 person-days)
- source: [tst/teststandard/arithlst.g](https://github.com/gap-system/gap/blob/master/tst/teststandard/arithlst.g)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.Arithlst`
- 452 code lines, 23 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraqkj6rh5iwjd76r2e6uotzcmn4qody5hr5pvyzucmnnlh4p6y2fea`, then merge with `tools/merge_tasks.py`.
