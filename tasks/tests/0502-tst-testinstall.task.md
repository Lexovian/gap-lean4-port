# GAP-0502 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera4aozga64n675hyjxdyo3wr4ukfs4kesmr3y3tf4ia5iysm4bspmq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 8 file(s), 1013 code lines, 33 definitions
- **Estimated effort:** 11.13 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/grpperm.tst`  (1.47 person-days)
- source: [tst/testinstall/grpperm.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grpperm.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grpperm`
- 143 code lines, 0 definitions

> @local F,G,N,cube,g,s,x,y,a,b,sym,h,iso

### `tst/testinstall/infinity.tst`  (1.46 person-days)
- source: [tst/testinstall/infinity.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/infinity.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Infinity`
- 89 code lines, 0 definitions

> @local cycls,i,j,op

### `tst/testinstall/objmap.tst`  (1.42 person-days)
- source: [tst/testinstall/objmap.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/objmap.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Objmap`
- 120 code lines, 0 definitions

> @local MAPvals,a,b,c,p,x,i,y,keyresult,valresult

### `tst/testinstall/immutable.tst`  (1.40 person-days)
- source: [tst/testinstall/immutable.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/immutable.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Immutable`
- 140 code lines, 0 definitions

> @local v,x

### `tst/testinstall/matblock.tst`  (1.38 person-days)
- source: [tst/testinstall/matblock.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/matblock.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Matblock`
- 138 code lines, 0 definitions

> @local dim,m1,m2,m3,mm,o1,o2,p1,p2,p3,p4,tmp,z,R,G,H,reps,ind,img

### `tst/testinstall/ratfun_gf5.tst`  (1.34 person-days)
- source: [tst/testinstall/ratfun_gf5.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/ratfun_gf5.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.RatfunGf5`
- 134 code lines, 0 definitions

> test basic properties

### `tst/testinstall/boolean.tst`  (1.33 person-days)
- source: [tst/testinstall/boolean.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/boolean.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Boolean`
- 116 code lines, 33 definitions

> No local variables
> @local

### `tst/testinstall/semirel.tst`  (1.33 person-days)
- source: [tst/testinstall/semirel.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/semirel.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Semirel`
- 133 code lines, 0 definitions

> @local H,L,R,S,a,b,f,gjp,gjp1,glp,glp1,grp,grp1,rels,s1,s2,s3,sc,t1,t2,t20
> @local t3,t4,t5,D

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera4aozga64n675hyjxdyo3wr4ukfs4kesmr3y3tf4ia5iysm4bspmq`, then merge with `tools/merge_tasks.py`.
