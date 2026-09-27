# GAP-0573 — Port tst/teststandard/testLuxPahlings (tests)

- **Task CID:** `baguqeerafeijrnhhahotq6ieswbfc4l4w2hb5v6jrxs6jukog5f7bie7kkxq`
- **Layer:** `tests`   **Module:** `tst/teststandard/testLuxPahlings`
- **Size:** 4 file(s), 64 code lines, 0 definitions
- **Estimated effort:** 0.68 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/teststandard/testLuxPahlings/example_2.5.18.tst`  (0.19 person-days)
- source: [tst/teststandard/testLuxPahlings/example_2.5.18.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_2.5.18.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example2518`
- 18 code lines, 0 definitions

> @local a, c, H, b, cls, pc, norm, chi
> #####################################################################

### `tst/teststandard/testLuxPahlings/example_2.1.17.tst`  (0.18 person-days)
- source: [tst/teststandard/testLuxPahlings/example_2.1.17.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_2.1.17.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example2117`
- 18 code lines, 0 definitions

> @local t
> #####################################################################

### `tst/teststandard/testLuxPahlings/README.md`  (0.16 person-days)
- source: [tst/teststandard/testLuxPahlings/README.md](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/README.md)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.README`
- 13 code lines, 0 definitions

> GAP Examples
> ============
> The book
> [Representations of Groups - A Computational Approach](https://www.math.rwth-aachen.de/~RepresentationsOfGroups/)
> contains several examples involving GAP code.

### `tst/teststandard/testLuxPahlings/example_4.10.8.tst`  (0.15 person-days)
- source: [tst/teststandard/testLuxPahlings/example_4.10.8.tst](https://github.com/gap-system/gap/blob/master/tst/teststandard/testLuxPahlings/example_4.10.8.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Teststandard.TestLuxPahlings.Example4108`
- 15 code lines, 0 definitions

> @local ct, ctmod3, projectives, t, ctn2, ctf, ctfprojectives
> #####################################################################

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerafeijrnhhahotq6ieswbfc4l4w2hb5v6jrxs6jukog5f7bie7kkxq`, then merge with `tools/merge_tasks.py`.
