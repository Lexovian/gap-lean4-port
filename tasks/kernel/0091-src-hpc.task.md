# GAP-0091 — Port src/hpc (kernel)

- **Task CID:** `baguqeeraeev3m6ywbvm7w2ydts7tj2emmyzcklnazyva3mjd36sg2wkr6pwa`
- **Layer:** `kernel`   **Module:** `src/hpc`
- **Size:** 1 file(s), 2192 code lines, 189 definitions
- **Estimated effort:** 54.22 person-days

## Files to port

### `src/hpc/threadapi.c`  (54.22 person-days)
- source: [src/hpc/threadapi.c](https://github.com/gap-system/gap/blob/master/src/hpc/threadapi.c)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Threadapi`
- 2192 code lines, 189 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later
> 
> This file contains the GAP interface for thread primitives.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraeev3m6ywbvm7w2ydts7tj2emmyzcklnazyva3mjd36sg2wkr6pwa`, then merge with `tools/merge_tasks.py`.
