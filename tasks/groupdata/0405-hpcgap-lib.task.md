# GAP-0405 — Port hpcgap/lib (groupdata)

- **Task CID:** `baguqeeravqdc5lz6f4pkv6ka5hqmgunwb5aqmcdfdqqlfxogx6lslnnpn55a`
- **Layer:** `groupdata`   **Module:** `hpcgap/lib`
- **Size:** 2 file(s), 1279 code lines, 111 definitions
- **Estimated effort:** 10.61 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/lib/rwspcgrp.gi`  (5.63 person-days)
- source: [hpcgap/lib/rwspcgrp.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/rwspcgrp.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Rwspcgrp`
- 755 code lines, 72 definitions

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
> #  This file   contains  the methods  for  groups  defined  by  a polycyclic
> #  collector.

### `hpcgap/lib/primality.gi`  (4.98 person-days)
- source: [hpcgap/lib/primality.gi](https://github.com/gap-system/gap/blob/master/hpcgap/lib/primality.gi)
- suggested Lean module: `RequestProject.Gap.HpcGap.Lib.Primality`
- 524 code lines, 39 definitions

> ############################################################################
> #
> #  This file is part of GAP, a system for computational discrete algebra.
> #  This file's authors include Jack Schmidt.
> #
> #  Copyright of GAP belongs to its developers, whose names are too numerous
> #  to list here. Please refer to the COPYRIGHT file for details.
> #
> #  SPDX-License-Identifier: GPL-2.0-or-later
> #
> #  This file contains declarations for the primality test in the integers.
> #

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeravqdc5lz6f4pkv6ka5hqmgunwb5aqmcdfdqqlfxogx6lslnnpn55a`, then merge with `tools/merge_tasks.py`.
