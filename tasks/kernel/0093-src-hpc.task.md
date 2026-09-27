# GAP-0093 — Port src/hpc (kernel)

- **Task CID:** `baguqeerawlrdzm43kmko6wmnp2gty5g6ztebz2ousjc5u7qawp5ut4x4gx2q`
- **Layer:** `kernel`   **Module:** `src/hpc`
- **Size:** 2 file(s), 437 code lines, 24 definitions
- **Estimated effort:** 11.74 person-days

## Files to port

### `src/hpc/traverse.c`  (9.06 person-days)
- source: [src/hpc/traverse.c](https://github.com/gap-system/gap/blob/master/src/hpc/traverse.c)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Traverse`
- 341 code lines, 17 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/guards.h`  (2.68 person-days)
- source: [src/hpc/guards.h](https://github.com/gap-system/gap/blob/master/src/hpc/guards.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Guards`
- 96 code lines, 7 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerawlrdzm43kmko6wmnp2gty5g6ztebz2ousjc5u7qawp5ut4x4gx2q`, then merge with `tools/merge_tasks.py`.
