# GAP-0396 — Port hpcgap/demo (groupdata)

- **Task CID:** `baguqeera5ekmwi74ikini2wm6g5aogoqtu2j2q2f3d6fw3qxsra3yktiny3q`
- **Layer:** `groupdata`   **Module:** `hpcgap/demo`
- **Size:** 5 file(s), 1402 code lines, 72 definitions
- **Estimated effort:** 10.91 person-days
- **Suggested prerequisite layers:** `kernel`, `library`

## Files to port

### `hpcgap/demo/parkit.g`  (3.27 person-days)
- source: [hpcgap/demo/parkit.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parkit.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parkit`
- 414 code lines, 20 definitions

> ParkitManagerDefaultOpts := rec(maxRunningTasks := 4);
> if not IsBound(InfoParkit) then
>     DeclareInfoClass("InfoParkit");
> fi;
> NewSimpleMap := function()

### `hpcgap/demo/karatsuba.g`  (2.58 person-days)
- source: [hpcgap/demo/karatsuba.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/karatsuba.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Karatsuba`
- 309 code lines, 5 definitions

> ############################################################################
> 
> KARATSUBA MULTIPLICATION FOR POLYNOMIALS
> 
> ############################################################################

### `hpcgap/demo/Echelon.g`  (1.86 person-days)
- source: [hpcgap/demo/Echelon.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/Echelon.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Echelon`
- 234 code lines, 11 definitions

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
> #  This file contains functions to compute echelon forms of matrices using
> #  multiple threads.

### `hpcgap/demo/orbit2.g`  (1.74 person-days)
- source: [hpcgap/demo/orbit2.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/orbit2.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Orbit2`
- 228 code lines, 20 definitions

> Hash orbits using tasks

### `hpcgap/demo/demo.g`  (1.46 person-days)
- source: [hpcgap/demo/demo.g](https://github.com/gap-system/gap/blob/master/hpcgap/demo/demo.g)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Demo`
- 217 code lines, 16 definitions

> ############################################################################
> 
> The code in this file should run in the HPC-GAP version
> 
> ############################################################################

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera5ekmwi74ikini2wm6g5aogoqtu2j2q2f3d6fw3qxsra3yktiny3q`, then merge with `tools/merge_tasks.py`.
