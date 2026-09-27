# GAP-0086 — Port src/extra (kernel)

- **Task CID:** `baguqeera7g3ym3mgpko7gt3pth65qouhfoh5n2ru4fdtfxeb43twkev6xpsq`
- **Layer:** `kernel`   **Module:** `src/extra`
- **Size:** 3 file(s), 12 code lines, 0 definitions
- **Estimated effort:** 0.24 person-days

## Files to port

### `src/extra/compiled.h`  (0.08 person-days)
- source: [src/extra/compiled.h](https://github.com/gap-system/gap/blob/master/src/extra/compiled.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Extra.Compiled`
- 4 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later
> 
> This header is provided for backwards compatibility with GAP kernel
> extensions that are not yet using the `gap_all.h` header (available since
> GAP 4.12). Most of these used `compiled.h` instead.

### `src/extra/gap_all.h`  (0.08 person-days)
- source: [src/extra/gap_all.h](https://github.com/gap-system/gap/blob/master/src/extra/gap_all.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Extra.GapAll`
- 4 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later
> 
> This header includes most of the other GAP headers, and is meant to be
> included by GAP kernel extensions.

### `src/extra/libgap-api.h`  (0.08 person-days)
- source: [src/extra/libgap-api.h](https://github.com/gap-system/gap/blob/master/src/extra/libgap-api.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Extra.LibgapApi`
- 4 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later
> 
> This header includes LibGAP API, the API for using GAP as shared library.

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera7g3ym3mgpko7gt3pth65qouhfoh5n2ru4fdtfxeb43twkev6xpsq`, then merge with `tools/merge_tasks.py`.
