# GAP-0333 — Port lib/hpc (library)

- **Task CID:** `baguqeeracgscvb7dpymjjumvr5usp4m7ks7rh3b6txcsmptlzzvytqo2mcaq`
- **Layer:** `library`   **Module:** `lib/hpc`
- **Size:** 2 file(s), 198 code lines, 21 definitions
- **Estimated effort:** 3.78 person-days
- **Suggested prerequisite layers:** `kernel`

## Files to port

### `lib/hpc/thread1.g`  (3.42 person-days)
- source: [lib/hpc/thread1.g](https://github.com/gap-system/gap/blob/master/lib/hpc/thread1.g)
- suggested Lean module: `RequestProject.Gap.Library.Hpc.Thread1`
- 180 code lines, 17 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Chris Jefferson.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file provides trivial mocks of thread-related primitives for
> #  traditional GAP.

### `lib/hpc/tasks.g`  (0.36 person-days)
- source: [lib/hpc/tasks.g](https://github.com/gap-system/gap/blob/master/lib/hpc/tasks.g)
- suggested Lean module: `RequestProject.Gap.Library.Hpc.Tasks`
- 18 code lines, 4 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Chris Jefferson.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file provides trivial mocks of task-related primitives for
> #  traditional GAP.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeracgscvb7dpymjjumvr5usp4m7ks7rh3b6txcsmptlzzvytqo2mcaq`, then merge with `tools/merge_tasks.py`.
