# GAP-0401 — Port hpcgap/lib (groupdata)

- **Task CID:** `baguqeerazk3mkvlrlxwmax7j3rql5cy3o2tr4ytgo65kpmsmfkzeow3ts4qa`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib`
- **Size:** 1 file(s), 1092 code lines, 113 definitions
- **Estimated effort:** 9.01 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/ffeconway.gi`  (9.01 person-days)
- source: [hpcgap/lib/ffeconway.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/ffeconway.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Ffeconway`
- 1092 code lines, 113 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Steve Linton.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file contains methods for `FFE's represented as library objects by
> #  coefficients of polynomials modulo the Conway polynomial.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerazk3mkvlrlxwmax7j3rql5cy3o2tr4ytgo65kpmsmfkzeow3ts4qa`, then merge with `tools/merge_tasks.py`.
