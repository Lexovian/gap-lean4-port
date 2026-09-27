# GAP-0514 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerankxm6fhomjpu7baa5ylpzhlz3jko2xephspzfptvo65qzxqo2fja`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 6 file(s), 1148 code lines, 15 definitions
- **Estimated effort:** 11.78 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/ratfun.tst`  (2.09 person-days)
- source: [tst/testinstall/ratfun.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ratfun.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Ratfun`
- 209 code lines, 0 definitions

> @local det,mat,p0,p1,p2,q0,q1,q2,t,y1,y2,y3,u,f,g,data,fam,helper,data2

### `tst/testinstall/matrix.tst`  (2.02 person-days)
- source: [tst/testinstall/matrix.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/matrix.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Matrix`
- 202 code lines, 0 definitions

> #
> gap> empty_0x2 := NewZeroMatrix(IsPlistMatrixRep, Integers, 0, 2);
> <0x2-matrix over Integers>
> gap> empty_2x0 := NewZeroMatrix(IsPlistMatrixRep, Integers, 2, 0);
> <2x0-matrix over Integers>

### `tst/testinstall/testing.tst`  (1.94 person-days)
- source: [tst/testinstall/testing.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/testing.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Testing`
- 191 code lines, 0 definitions

> Some very basic tests of GAP's Test function

### `tst/testinstall/tilde.tst`  (1.94 person-days)
- source: [tst/testinstall/tilde.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/tilde.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Tilde`
- 188 code lines, 15 definitions

> @local aqq,bool,f,l,r,l2,r2,l3,r3,list1,list2,rec1,rec2,rem,i

### `tst/testinstall/modfree.tst`  (1.92 person-days)
- source: [tst/testinstall/modfree.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/modfree.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Modfree`
- 182 code lines, 0 definitions

> @local c,enum,f,i,iter,l,len,u,v,v1,v2,w

### `tst/testinstall/streams.tst`  (1.87 person-days)
- source: [tst/testinstall/streams.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/streams.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Streams`
- 176 code lines, 0 definitions

> @local dir,fname,file,line,stream,tmpdir,res,streams,i

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerankxm6fhomjpu7baa5ylpzhlz3jko2xephspzfptvo65qzxqo2fja`, then merge with `tools/merge_tasks.py`.
