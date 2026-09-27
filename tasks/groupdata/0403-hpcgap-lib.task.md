# GAP-0403 — Port hpcgap/lib (groupdata)

- **Task CID:** `baguqeeraegkxostycnnvas2ot5wn2nnkpjszjjj6egsvrtzb7z2f4fbhannq`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib`
- **Size:** 7 file(s), 1279 code lines, 153 definitions
- **Estimated effort:** 10.61 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/polyconw.gi`  (2.79 person-days)
- source: [hpcgap/lib/polyconw.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/polyconw.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Polyconw`
- 325 code lines, 15 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Thomas Breuer, Frank Lübeck.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file contains the implementation part of functions and data around
> #  Conway polynomials.

### `hpcgap/lib/tuples.gi`  (2.72 person-days)
- source: [hpcgap/lib/tuples.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/tuples.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Tuples`
- 339 code lines, 61 definitions

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
> #  This file declares the operations for direct product elements.
> #

### `hpcgap/lib/cmdleditx.g`  (2.57 person-days)
- source: [hpcgap/lib/cmdleditx.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/cmdleditx.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Cmdleditx`
- 292 code lines, 16 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Frank Lübeck.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This is outdated experimental code for command line editing and a history
> #  and demo mechanism which is only used when GAP is not compiled with

### `hpcgap/lib/variable.g`  (1.44 person-days)
- source: [hpcgap/lib/variable.g](https://github.com/gap-system/gap/blob/master/hpcgap/lib/variable.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Variable`
- 177 code lines, 18 definitions

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
> #  This file contains the functions for the special handling of those global
> #  variables in {\GAP} library files that are *not* functions;

### `hpcgap/lib/basis.gd`  (0.40 person-days)
- source: [hpcgap/lib/basis.gd](https://github.com/gap-system/gap/blob/master/hpcgap/lib/basis.gd)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Basis`
- 65 code lines, 36 definitions

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
> #  This file declares the operations for bases of free left modules.
> #

### `hpcgap/lib/filter.gi`  (0.39 person-days)
- source: [hpcgap/lib/filter.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/filter.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Filter`
- 45 code lines, 4 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #

### `hpcgap/lib/mapping1.gi`  (0.31 person-days)
- source: [hpcgap/lib/mapping1.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/mapping1.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Mapping1`
- 36 code lines, 3 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Thomas Breuer, Martin Schönert, Frank Celler.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file contains
> #  1. the design of families of general mappings

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraegkxostycnnvas2ot5wn2nnkpjszjjj6egsvrtzb7z2f4fbhannq`, then merge with `tools/merge_tasks.py`.
