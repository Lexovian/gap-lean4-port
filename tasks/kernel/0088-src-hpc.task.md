# GAP-0088 — Port src/hpc (kernel)

- **Task CID:** `baguqeerafuku2rtfc5mze6qttcrrs4npd5mmhw2meadjgbsa3kb3ssj7fqfa`
- **Layer:** `kernel`   **Module:** `src/hpc`
- **Size:** 5 file(s), 75 code lines, 1 definitions
- **Estimated effort:** 1.56 person-days

## Files to port

### `src/hpc/atomic.h`  (0.40 person-days)
- source: [src/hpc/atomic.h](https://github.com/gap-system/gap/blob/master/src/hpc/atomic.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Atomic`
- 19 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/tls.c`  (0.34 person-days)
- source: [src/hpc/tls.c](https://github.com/gap-system/gap/blob/master/src/hpc/tls.c)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Tls`
- 17 code lines, 1 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/tlsconfig.h`  (0.34 person-days)
- source: [src/hpc/tlsconfig.h](https://github.com/gap-system/gap/blob/master/src/hpc/tlsconfig.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Tlsconfig`
- 15 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/misc.h`  (0.30 person-days)
- source: [src/hpc/misc.h](https://github.com/gap-system/gap/blob/master/src/hpc/misc.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Misc`
- 15 code lines, 0 definitions

> *********************************************************************
> 
> This file is part of GAP, a system for computational discrete algebra.
> 
> Copyright of GAP belongs to its developers, whose names are too numerous
> to list here. Please refer to the COPYRIGHT file for details.
> 
> SPDX-License-Identifier: GPL-2.0-or-later

### `src/hpc/cpu.h`  (0.18 person-days)
- source: [src/hpc/cpu.h](https://github.com/gap-system/gap/blob/master/src/hpc/cpu.h)
- suggested Lean module: `RequestProject.Gap.Kernel.Hpc.Cpu`
- 9 code lines, 0 definitions

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

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerafuku2rtfc5mze6qttcrrs4npd5mmhw2meadjgbsa3kb3ssj7fqfa`, then merge with `tools/merge_tasks.py`.
