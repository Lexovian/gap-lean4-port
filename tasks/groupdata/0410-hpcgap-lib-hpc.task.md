# GAP-0410 — Port hpcgap/lib/hpc (groupdata)

- **Task CID:** `baguqeerata6qptmssix2ny6xj7t5yzm6ilms5jenoc6gxbkgllhkye7mqanq`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib/hpc`
- **Size:** 4 file(s), 193 code lines, 33 definitions
- **Estimated effort:** 1.40 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/hpc/actor.g`  (0.55 person-days)
- source: [hpcgap/lib/hpc/actor.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/actor.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Actor`
- 70 code lines, 5 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/hpc/serialize.g`  (0.44 person-days)
- source: [hpcgap/lib/hpc/serialize.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/serialize.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Serialize`
- 63 code lines, 21 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/hpc/smallrgn.g`  (0.26 person-days)
- source: [hpcgap/lib/hpc/smallrgn.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/smallrgn.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Smallrgn`
- 36 code lines, 3 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Reimer Behrends.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file introduces support for regions for small objects. Multiple
> #  small objects can share the same region at the potential cost of

### `hpcgap/lib/hpc/altview.g`  (0.15 person-days)
- source: [hpcgap/lib/hpc/altview.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/altview.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Altview`
- 24 code lines, 4 definitions

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

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerata6qptmssix2ny6xj7t5yzm6ilms5jenoc6gxbkgllhkye7mqanq`, then merge with `tools/merge_tasks.py`.
