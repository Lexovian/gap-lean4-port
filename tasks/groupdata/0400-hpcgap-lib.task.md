# GAP-0400 — Port hpcgap/lib (groupdata)

- **Task CID:** `baguqeeragk44ob3pzk2oykpul6d7vgzkmduia7ou35vdg63mzeoctbbq466a`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib`
- **Size:** 1 file(s), 954 code lines, 128 definitions
- **Estimated effort:** 7.32 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/basis.gi`  (7.32 person-days)
- source: [hpcgap/lib/basis.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/basis.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Basis`
- 954 code lines, 128 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Thomas Breuer.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file contains generic methods for bases.
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeragk44ob3pzk2oykpul6d7vgzkmduia7ou35vdg63mzeoctbbq466a`, then merge with `tools/merge_tasks.py`.
