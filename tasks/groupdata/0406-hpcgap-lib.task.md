# GAP-0406 — Port hpcgap/lib (groupdata)

- **Task CID:** `baguqeerajxpguoagemhl6ypp62gr3re3spu422rxrzrugpbagt7epbskzcpa`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib`
- **Size:** 1 file(s), 821 code lines, 152 definitions
- **Estimated effort:** 6.50 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/vec8bit.gi`  (6.50 person-days)
- source: [hpcgap/lib/vec8bit.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/vec8bit.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Vec8bit`
- 821 code lines, 152 definitions

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
> #  This file mainly installs the kernel methods for 8 bit vectors
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerajxpguoagemhl6ypp62gr3re3spu422rxrzrugpbagt7epbskzcpa`, then merge with `tools/merge_tasks.py`.
