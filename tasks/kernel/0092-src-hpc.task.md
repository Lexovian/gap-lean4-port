# GAP-0092 — Port src/hpc (kernel)

- **Task CID:** `baguqeeracyhjckghmpbhr24tb3fsm3lwmtv4dhzws4xl3jwphhkjpnoh4r2q`
- **Layer:** `kernel`   **Module:** `src/hpc`
- **Size:** 10 file(s), 526 code lines, 17 definitions
- **Estimated effort:** 11.92 person-days

## Files to port

### `src/hpc/tls.h`  (2.56 person-days)
- source: [src/hpc/tls.h](https://github.com/gap-system/gap/blob/master/src/hpc/tls.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Tls`
- 110 code lines, 4 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/thread.h`  (2.10 person-days)
- source: [src/hpc/thread.h](https://github.com/gap-system/gap/blob/master/src/hpc/thread.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Thread`
- 95 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/misc.c`  (1.58 person-days)
- source: [src/hpc/misc.c](https://github.com/gap-system/gap/blob/master/src/hpc/misc.c)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Misc`
- 67 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/aobjects.h`  (1.48 person-days)
- source: [src/hpc/aobjects.h](https://github.com/gap-system/gap/blob/master/src/hpc/aobjects.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Aobjects`
- 67 code lines, 4 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/region.c`  (1.32 person-days)
- source: [src/hpc/region.c](https://github.com/gap-system/gap/blob/master/src/hpc/region.c)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Region`
- 58 code lines, 6 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/region.h`  (0.70 person-days)
- source: [src/hpc/region.h](https://github.com/gap-system/gap/blob/master/src/hpc/region.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Region`
- 33 code lines, 2 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/cpu.c`  (0.68 person-days)
- source: [src/hpc/cpu.c](https://github.com/gap-system/gap/blob/master/src/hpc/cpu.c)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Cpu`
- 22 code lines, 1 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/serialize.h`  (0.56 person-days)
- source: [src/hpc/serialize.h](https://github.com/gap-system/gap/blob/master/src/hpc/serialize.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Serialize`
- 28 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/traverse.h`  (0.48 person-days)
- source: [src/hpc/traverse.h](https://github.com/gap-system/gap/blob/master/src/hpc/traverse.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Traverse`
- 24 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/threadapi.h`  (0.46 person-days)
- source: [src/hpc/threadapi.h](https://github.com/gap-system/gap/blob/master/src/hpc/threadapi.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Threadapi`
- 22 code lines, 0 definitions

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

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeracyhjckghmpbhr24tb3fsm3lwmtv4dhzws4xl3jwphhkjpnoh4r2q`, then merge with `tools/merge_tasks.py`.
