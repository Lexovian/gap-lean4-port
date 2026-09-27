# GAP-0421 — Port hpcgap/demo/parorbit (misc)

- **Task CID:** `baguqeera7rus7z35tihmzn3fz6allh6pfkf5mdqls2ikjnacsy7w2r5rrhkq`
- **Layer:** `misc`   **Module:** `hpcgap/demo/parorbit`
- **Size:** 1 file(s), 1785 code lines, 0 definitions
- **Estimated effort:** 18.34 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`

## Files to port

### `hpcgap/demo/parorbit/speedupHNhash2.eps`  (18.34 person-days)
- source: [hpcgap/demo/parorbit/speedupHNhash2.eps](https://github.com/gap-system/gap/blob/master/hpcgap/demo/parorbit/speedupHNhash2.eps)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Parorbit.SpeedupHNhash2`
- 1785 code lines, 0 definitions

> %!PS-Adobe-3.0 EPSF-3.0
> %%BoundingBox: 20 118 575 673
> %%Creator: FreeHEP Graphics2D Driver
> %%Producer: com.maplesoft.mathdoc.view.plot.paint.PlotPSGraphics2D Revision: 12753 
> %%For:

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera7rus7z35tihmzn3fz6allh6pfkf5mdqls2ikjnacsy7w2r5rrhkq`, then merge with `tools/merge_tasks.py`.
