# GAP-0512 — Port tst/testinstall (tests)

- **Task CID:** `baguqeera4gfirfo4szuuucqojlpf7wg3vpqxukrreeuyfjzh7mm4gngsgtka`
- **Layer:** `tests`   **Module:** `tst/testinstall`
- **Size:** 7 file(s), 1005 code lines, 8 definitions
- **Estimated effort:** 10.77 person-days
- **Suggested prerequisite layers:** `kernel`, `library`, `groupdata`, `misc`, `build`

## Files to port

### `tst/testinstall/randlist.tst`  (1.59 person-days)
- source: [tst/testinstall/randlist.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/randlist.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Randlist`
- 159 code lines, 0 definitions

> @if 8*GAPInfo.BytesPerVariable = 32

### `tst/testinstall/recordname.tst`  (1.56 person-days)
- source: [tst/testinstall/recordname.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/recordname.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Recordname`
- 154 code lines, 0 definitions

> ############################################################################
> #
> #  This file tests record comparison and names, in particular long names.
> #
> @local aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa…

### `tst/testinstall/smgrpfre.tst`  (1.54 person-days)
- source: [tst/testinstall/smgrpfre.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/smgrpfre.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Smgrpfre`
- 152 code lines, 0 definitions

> @local F

### `tst/testinstall/compressed.tst`  (1.53 person-days)
- source: [tst/testinstall/compressed.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/compressed.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Compressed`
- 145 code lines, 1 definitions

> @local o,dir,fname,rawfname,checkGzippedFile,stream,str

### `tst/testinstall/integer.tst`  (1.53 person-days)
- source: [tst/testinstall/integer.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/integer.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Integer`
- 150 code lines, 0 definitions

> I  FactorsInt: used the following factor(s) which are probably primes:
> I        57896044618658097711785492504343953926634992332820282019728792003956564819949

### `tst/testinstall/localvars.tst`  (1.53 person-days)
- source: [tst/testinstall/localvars.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/localvars.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Localvars`
- 98 code lines, 7 definitions

> @local a,f,func,g

### `tst/testinstall/monofree.tst`  (1.49 person-days)
- source: [tst/testinstall/monofree.tst](https://github.com/gap-system/gap/blob/master/tst/testinstall/monofree.tst)
- suggested Lean module: `RequestProject.Gap.Tests.Testinstall.Monofree`
- 147 code lines, 0 definitions

> @local F,M,M2,a,b,enum,first50,firstfifty,gens,iter,i

## Definition of done

- [ ] Each listed GAP source file has a corresponding Lean 4 file at its suggested module path (or a documented alternative).
- [ ] Definitions are faithful to the GAP semantics (cite the source).
- [ ] Stated correctness lemmas are PROVED: no `sorry`, no `admit`, no new `axiom`, no `@[implemented_by]`.
- [ ] `#print axioms` of the key results lists only the standard axioms (propext, Classical.choice, Quot.sound; Lean.ofReduceBool / Lean.trustCompiler only if genuinely needed).
- [ ] The project builds (`lake build`) with the new files imported.

## How to submit

Append a result record (see `../README.md`) to your fork of `../results.template.json` keyed by this task's CID `baguqeera4gfirfo4szuuucqojlpf7wg3vpqxukrreeuyfjzh7mm4gngsgtka`, then merge with `tools/merge_tasks.py`.
