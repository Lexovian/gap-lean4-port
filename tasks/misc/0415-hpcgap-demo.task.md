# GAP-0415 — Port hpcgap/demo (misc)

- **Task CID:** `baguqeeraecm2m64qzaf4mlkn4j7c2myhhczw2accfidlebh4opk3jgpckshq`
- **Layer:** `misc`   **Module:** `hpcgap/demo`
- **Size:** 2 file(s), 354 code lines, 0 definitions
- **Estimated effort:** 4.36 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`

## Files to port

### `hpcgap/demo/testcvec.unit`  (2.85 person-days)
- source: [hpcgap/demo/testcvec.unit](https://github.com/gap-system/gap/blob/master/hpcgap/demo/testcvec.unit)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Testcvec`
- 222 code lines, 0 definitions

> # Testing how vectors are converted into the compressed representation
> local F, V, q, d, v, z, z1, z2, z3, oldlevel, HOWCOPY, WHICHREP;
> q := arg[1];
> d := arg[2];
> # Optionally perform some setup whenever an instance of this test suite is run.

### `hpcgap/demo/shellui.html`  (1.51 person-days)
- source: [hpcgap/demo/shellui.html](https://github.com/gap-system/gap/blob/master/hpcgap/demo/shellui.html)
- suggested Lean module: `RequestProject.Gap.HpcGap.Demo.Shellui`
- 132 code lines, 0 definitions

> </body>
> </html>
> <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN"
>       "http://www.w3.org/TR/html4/strict.dtd">
> <html>

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeeraecm2m64qzaf4mlkn4j7c2myhhczw2accfidlebh4opk3jgpckshq`, then merge with `tools/merge_tasks.py`.
