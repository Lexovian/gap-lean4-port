# GAP-0090 — Port src/hpc (kernel)

- **Task CID:** `baguqeeraqo2v5a34ass5ahqdkuykcwwuo6ulh7hkx7jowgfkyyjp2fe65m4q`
- **Layer:** `kernel`   **Module:** `src/hpc`
- **Size:** 1 file(s), 1181 code lines, 67 definitions
- **Estimated effort:** 29.84 person-days

## Files to port

### `src/hpc/thread.c`  (29.84 person-days)
- source: [src/hpc/thread.c](https://github.com/gap-system/gap/blob/master/src/hpc/thread.c)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Thread`
- 1181 code lines, 67 definitions

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

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraqo2v5a34ass5ahqdkuykcwwuo6ulh7hkx7jowgfkyyjp2fe65m4q`, then merge with `tools/merge_tasks.py`.
