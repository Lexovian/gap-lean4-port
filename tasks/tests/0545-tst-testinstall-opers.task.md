# GAP-0545 — Port tst/testinstall/opers (tests)

- **Task CID:** `baguqeerakxa25b6ctfhu5lcv4rwit4q6h6wtzkubczarwpphppr4a5vzol5q`
- **Layer:** `tests`   **Module:** `tst/testinstall/opers`
- **Size:** 2 file(s), 11 code lines, 0 definitions
- **Estimated effort:** 0.11 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/opers/AbelianInvariants.tst`  (0.06 person-days)
- source: [tst/testinstall/opers/AbelianInvariants.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/AbelianInvariants.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.AbelianInvariants`
- 6 code lines, 0 definitions

> gap> START_TEST("AbelianInvariants.tst");
> #
> gap> G := Group( [ [ [ 2, 1 ], [ 17, 8 ] ] ] );
> Group([ [ [ 2, 1 ], [ 17, 8 ] ] ])
> gap> AbelianInvariants(G);

### `tst/testinstall/opers/SylowSystem.tst`  (0.05 person-days)
- source: [tst/testinstall/opers/SylowSystem.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/opers/SylowSystem.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Opers.SylowSystem`
- 5 code lines, 0 definitions

> gap> START_TEST("SylowSystem.tst");
> gap> G := Group([], IdentityMat (4, GF(2)));;
> gap> IsEmpty(SylowSystem(G));
> true
> gap> STOP_TEST("SylowSystem.tst");

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerakxa25b6ctfhu5lcv4rwit4q6h6wtzkubczarwpphppr4a5vzol5q`, then merge with `tools/merge_tasks.py`.
