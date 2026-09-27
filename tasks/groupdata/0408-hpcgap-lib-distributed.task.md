# GAP-0408 — Port hpcgap/lib/distributed (groupdata)

- **Task CID:** `baguqeerargsehh4rloph66hwnfygt5llhwqchh3cmmq75x5zitc6o6bajb4q`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib/distributed`
- **Size:** 4 file(s), 1430 code lines, 92 definitions
- **Estimated effort:** 11.72 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/distributed/dist_tasks.g`  (4.42 person-days)
- source: [hpcgap/lib/distributed/dist_tasks.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/dist_tasks.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.DistTasks`
- 537 code lines, 27 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/globalobject.gi`  (3.66 person-days)
- source: [hpcgap/lib/distributed/globalobject.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/globalobject.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.Globalobject`
- 450 code lines, 40 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/globalobject_messages.g`  (2.40 person-days)
- source: [hpcgap/lib/distributed/globalobject_messages.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/globalobject_messages.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.GlobalobjectMessages`
- 287 code lines, 16 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/work_stealing.g`  (1.24 person-days)
- source: [hpcgap/lib/distributed/work_stealing.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/work_stealing.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.WorkStealing`
- 156 code lines, 9 definitions

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

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerargsehh4rloph66hwnfygt5llhwqchh3cmmq75x5zitc6o6bajb4q`, then merge with `tools/merge_tasks.py`.
