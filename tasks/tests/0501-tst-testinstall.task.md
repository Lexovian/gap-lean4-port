# GAP-0501 — Port tst/testinstall (tests)

- **Task CID:** `baguqeerar6oegvvxmwpbxswfcmrebm4bhr73vilsoloirltu5ytmxo322pkq`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 6 file(s), 977 code lines, 30 definitions
- **Estimated effort:** 10.43 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/grpfp.tst`  (1.86 person-days)
- source: [tst/testinstall/grpfp.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/grpfp.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Grpfp`
- 160 code lines, 0 definitions

> @local a,b,c2,e,f,g,iter,l,s,F,rels,sub,iso,G,hom,m,H

### `tst/testinstall/relation.tst`  (1.85 person-days)
- source: [tst/testinstall/relation.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/relation.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Relation`
- 185 code lines, 0 definitions

> @local br,c,d,dom,e,ec,el,er,er1,er2,g,j1,j2,m,m1,m2,n,r,rc,rel,sc,sgs,tc,tup

### `tst/testinstall/longnumber.tst`  (1.77 person-days)
- source: [tst/testinstall/longnumber.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/longnumber.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Longnumber`
- 177 code lines, 0 definitions

> ############################################################################
> #
> #  these tests deal with various cases in long integer parsing where the number has
> #  to be read in one two or three blocks, which may sometimes be exactly filled or
> #  sometimes end with a partial block.
> #
> #  To be extended with similar tests for all the cases of float and long-float
> #  parsing when I have a reliable way of testing them.
> #
> @local x

### `tst/testinstall/memory.tst`  (1.67 person-days)
- source: [tst/testinstall/memory.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/memory.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Memory`
- 160 code lines, 0 definitions

> @local G, H, g, h, tmp, stabChain, iter, s1, s2, a, S, prod, i, v, s, pow
> @local m, mm

### `tst/testinstall/callfunc.tst`  (1.64 person-days)
- source: [tst/testinstall/callfunc.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/callfunc.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Callfunc`
- 131 code lines, 30 definitions

> @local cat,cat2,f,fam,l,o,o2,result,swallow,type,type2

### `tst/testinstall/pluralize.tst`  (1.64 person-days)
- source: [tst/testinstall/pluralize.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/pluralize.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Pluralize`
- 164 code lines, 0 definitions

> gap> START_TEST("pluralize.tst");
> #
> gap> Pluralize(0);
> Error, Usage: Pluralize([<count>, ]<string>[, <plural>])
> gap> Pluralize(0, fail);

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeerar6oegvvxmwpbxswfcmrebm4bhr73vilsoloirltu5ytmxo322pkq`, then merge with `tools/merge_tasks.py`.
