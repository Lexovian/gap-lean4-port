# GAP-0412 — Port hpcgap/lib/hpc (groupdata)

- **Task CID:** `baguqeera6zvhkdqx7x65aigtifjerusjy64ktnnhvzj5cta2k5bivjcgfhfq`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib/hpc`
- **Size:** 5 file(s), 1482 code lines, 147 definitions
- **Estimated effort:** 11.87 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/hpc/stdtasks.g`  (4.50 person-days)
- source: [hpcgap/lib/hpc/stdtasks.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/stdtasks.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Stdtasks`
- 564 code lines, 46 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/hpc/tasks.g`  (3.54 person-days)
- source: [hpcgap/lib/hpc/tasks.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/tasks.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Tasks`
- 429 code lines, 24 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/hpc/thread1.g`  (1.67 person-days)
- source: [hpcgap/lib/hpc/thread1.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/thread1.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Thread1`
- 204 code lines, 28 definitions

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
> #  This file provides the necessary thread initialization code code needed
> #  early in GAP's initialization process. The rest can be found in thread.g.

### `hpcgap/lib/hpc/queue.g`  (1.23 person-days)
- source: [hpcgap/lib/hpc/queue.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/queue.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Queue`
- 157 code lines, 10 definitions

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
> #  This file implements queues. These can be used both as FIFO queues,
> #  as deques, and as stacks.

### `hpcgap/lib/hpc/thread.g`  (0.94 person-days)
- source: [hpcgap/lib/hpc/thread.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/hpc/thread.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Hpc.Thread`
- 128 code lines, 39 definitions

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
> #  Types and threading primitives for shared memory concurrency.
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera6zvhkdqx7x65aigtifjerusjy64ktnnhvzj5cta2k5bivjcgfhfq`, then merge with `tools/merge_tasks.py`.
