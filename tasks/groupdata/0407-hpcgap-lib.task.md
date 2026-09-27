# GAP-0407 — Port hpcgap/lib (groupdata)

- **Task CID:** `baguqeerarhw3wzkexnjjlvtel5w4y6jmbrfz247ic3r4lt57lpvnybk75yeq`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib`
- **Size:** 1 file(s), 1727 code lines, 261 definitions
- **Estimated effort:** 14.36 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/vecmat.gi`  (14.36 person-days)
- source: [hpcgap/lib/vecmat.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/vecmat.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Vecmat`
- 1727 code lines, 261 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Frank Celler.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file contains  the basic methods for  creating and doing  arithmetic
> #  with GF2 vectors and matrices.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerarhw3wzkexnjjlvtel5w4y6jmbrfz247ic3r4lt57lpvnybk75yeq`, then merge with `tools/merge_tasks.py`.
