# GAP-0404 — Port hpcgap/lib (groupdata)

- **Task CID:** `baguqeerarwethbpyfa54tpdjykmeum7jrwjjjfdn5vxxwrh63ldxqy3e4nsa`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib`
- **Size:** 1 file(s), 1385 code lines, 189 definitions
- **Estimated effort:** 11.00 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/ratfun.gi`  (11.00 person-days)
- source: [hpcgap/lib/ratfun.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/ratfun.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Ratfun`
- 1385 code lines, 189 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Frank Celler, Andrew Solomon, Juergen Mueller, Alexander Hulpke.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file  contains    methods  for    rational  functions,  laurent
> #  polynomials and polynomials and their families.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerarwethbpyfa54tpdjykmeum7jrwjjjfdn5vxxwrh63ldxqy3e4nsa`, then merge with `tools/merge_tasks.py`.
