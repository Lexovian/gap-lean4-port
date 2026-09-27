# GAP-0409 — Port hpcgap/lib/distributed (groupdata)

- **Task CID:** `baguqeeranngj4no2h7qgndqrehdmv3azuk6pzyjr677djrqyvxapnmbdoumq`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib/distributed`
- **Size:** 8 file(s), 467 code lines, 58 definitions
- **Estimated effort:** 3.68 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/distributed/loutils.g`  (1.20 person-days)
- source: [hpcgap/lib/distributed/loutils.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/loutils.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.Loutils`
- 152 code lines, 9 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/messageman.g`  (0.81 person-days)
- source: [hpcgap/lib/distributed/messageman.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/messageman.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.Messageman`
- 88 code lines, 6 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/locomm.g`  (0.61 person-days)
- source: [hpcgap/lib/distributed/locomm.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/locomm.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.Locomm`
- 86 code lines, 8 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/globalobject_io.g`  (0.37 person-days)
- source: [hpcgap/lib/distributed/globalobject_io.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/globalobject_io.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.GlobalobjectIo`
- 38 code lines, 5 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/collective.g`  (0.26 person-days)
- source: [hpcgap/lib/distributed/collective.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/collective.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.Collective`
- 30 code lines, 5 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/hicomm.g`  (0.20 person-days)
- source: [hpcgap/lib/distributed/hicomm.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/hicomm.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.Hicomm`
- 35 code lines, 0 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/globalobject.gd`  (0.15 person-days)
- source: [hpcgap/lib/distributed/globalobject.gd](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/globalobject.gd)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.Globalobject`
- 26 code lines, 25 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/distributed/distgap.g`  (0.07 person-days)
- source: [hpcgap/lib/distributed/distgap.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/distributed/distgap.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Distributed.Distgap`
- 12 code lines, 0 definitions

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

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeranngj4no2h7qgndqrehdmv3azuk6pzyjr677djrqyvxapnmbdoumq`, then merge with `tools/merge_tasks.py`.
