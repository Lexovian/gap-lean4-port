import Mathlib
import RequestProject.Gap.Permutation

/-!
# A Lean 4 port of the ATLAS of Finite Simple Groups

This file ports the catalogue of finite simple groups — the data underlying the
*ATLAS of Finite Simple Groups* (Conway, Curtis, Norton, Parker & Wilson, 1985)
and the corresponding data libraries shipped with
[GAP](https://github.com/gap-system/gap) (e.g. the character-table and
`AtlasRep` packages).

By the **Classification of Finite Simple Groups (CFSG)** every finite simple
group is one of:

1. a **cyclic** group `Z_p` of prime order;
2. an **alternating** group `A_n` with `n ≥ 5`;
3. a group of **Lie type** — one of 16 infinite families (classical and
   exceptional, including the twisted Suzuki and Ree groups); or
4. one of the **26 sporadic** simple groups.

We faithfully encode all of these as an inductive type `Atlas.Group`, together
with an *order function* `Atlas.order` that, for each group, returns its order
as a natural number using the standard order formulas (see e.g. the ATLAS
introduction, or Wilson, *The Finite Simple Groups*, 2009).

All order formulas are **computable** (`#eval`-able) natural-number expressions,
and we verify a large number of facts about them:

* numerical *coincidences* between families reflecting exceptional isomorphisms
  (`A_5 ≅ PSL₂(4) ≅ PSL₂(5)`, `A_6 ≅ PSL₂(9)`, `A_8 ≅ PSL₄(2)`,
  `PSL₂(7) ≅ PSL₃(2)`);
* the prime factorisations of the orders of all 26 sporadic groups, including
  the Monster `M` and Baby Monster `B`;
* a link back to Mathlib's group theory: the order formula for `A_5` agrees with
  `Nat.card (alternatingGroup (Fin 5))`, which Mathlib proves is simple, and the
  cyclic family genuinely yields simple groups via `isSimpleGroup_of_prime_card`.
-/

namespace Atlas

/-! ## Order formulas for the families of Lie type

We collect the standard order formulas.  Everything is phrased over `ℕ`; the
subtractions `q^i - 1` etc. never underflow for the intended arguments `q ≥ 2`,
and the divisions are all exact. -/

/-- Order of the general linear group `GL_n(q) = ∏_{i=0}^{n-1} (qⁿ − qⁱ)`. -/
def glOrder (n q : ℕ) : ℕ := (Finset.range n).prod (fun i => q ^ n - q ^ i)

/-- Order of the special linear group `SL_n(q) = |GL_n(q)| / (q − 1)`. -/
def slOrder (n q : ℕ) : ℕ := glOrder n q / (q - 1)

/-- Order of the projective special linear group (linear family `A_{n-1}(q)`)
`PSL_n(q) = |SL_n(q)| / gcd(n, q − 1)`. -/
def pslOrder (n q : ℕ) : ℕ := slOrder n q / Nat.gcd n (q - 1)

/-- Order of the general unitary group
`GU_n(q) = q^{n(n-1)/2} ∏_{i=1}^{n} (qⁱ − (−1)ⁱ)`. -/
def guOrder (n q : ℕ) : ℕ :=
  q ^ (n * (n - 1) / 2) *
    (Finset.Icc 1 n).prod (fun i => if i % 2 = 0 then q ^ i - 1 else q ^ i + 1)

/-- Order of the special unitary group `SU_n(q) = |GU_n(q)| / (q + 1)`. -/
def suOrder (n q : ℕ) : ℕ := guOrder n q / (q + 1)

/-- Order of the projective special unitary group (unitary family `²A_{n-1}(q)`)
`PSU_n(q) = |SU_n(q)| / gcd(n, q + 1)`. -/
def psuOrder (n q : ℕ) : ℕ := suOrder n q / Nat.gcd n (q + 1)

/-- Order of the symplectic group
`Sp_{2n}(q) = q^{n²} ∏_{i=1}^{n} (q^{2i} − 1)`. -/
def spOrder (n q : ℕ) : ℕ :=
  q ^ (n * n) * (Finset.Icc 1 n).prod (fun i => q ^ (2 * i) - 1)

/-- Order of the projective symplectic group (symplectic family `C_n(q)`)
`PSp_{2n}(q) = |Sp_{2n}(q)| / gcd(2, q − 1)`. -/
def pspOrder (n q : ℕ) : ℕ := spOrder n q / Nat.gcd 2 (q - 1)

/-- Order of the simple orthogonal group in odd dimension (family `B_n(q)`)
`PΩ_{2n+1}(q) = (1/gcd(2,q−1)) q^{n²} ∏_{i=1}^{n} (q^{2i} − 1)`. -/
def omegaOddOrder (n q : ℕ) : ℕ :=
  (q ^ (n * n) * (Finset.Icc 1 n).prod (fun i => q ^ (2 * i) - 1)) / Nat.gcd 2 (q - 1)

/-- Order of the simple orthogonal group of `+` type (family `D_n(q)`)
`PΩ⁺_{2n}(q) = (1/gcd(4,qⁿ−1)) q^{n(n−1)} (qⁿ − 1) ∏_{i=1}^{n−1} (q^{2i} − 1)`. -/
def omegaPlusOrder (n q : ℕ) : ℕ :=
  (q ^ (n * (n - 1)) * (q ^ n - 1) *
      (Finset.Icc 1 (n - 1)).prod (fun i => q ^ (2 * i) - 1)) / Nat.gcd 4 (q ^ n - 1)

/-- Order of the simple orthogonal group of `−` type (family `²D_n(q)`)
`PΩ⁻_{2n}(q) = (1/gcd(4,qⁿ+1)) q^{n(n−1)} (qⁿ + 1) ∏_{i=1}^{n−1} (q^{2i} − 1)`. -/
def omegaMinusOrder (n q : ℕ) : ℕ :=
  (q ^ (n * (n - 1)) * (q ^ n + 1) *
      (Finset.Icc 1 (n - 1)).prod (fun i => q ^ (2 * i) - 1)) / Nat.gcd 4 (q ^ n + 1)

/-! ### Exceptional and twisted families of Lie type -/

/-- Order of `G₂(q) = q⁶ (q⁶ − 1)(q² − 1)`. -/
def g2Order (q : ℕ) : ℕ := q ^ 6 * (q ^ 6 - 1) * (q ^ 2 - 1)

/-- Order of `F₄(q) = q²⁴ (q¹² − 1)(q⁸ − 1)(q⁶ − 1)(q² − 1)`. -/
def f4Order (q : ℕ) : ℕ :=
  q ^ 24 * (q ^ 12 - 1) * (q ^ 8 - 1) * (q ^ 6 - 1) * (q ^ 2 - 1)

/-- Order of `E₆(q) = (1/gcd(3,q−1)) q³⁶ (q¹²−1)(q⁹−1)(q⁸−1)(q⁶−1)(q⁵−1)(q²−1)`. -/
def e6Order (q : ℕ) : ℕ :=
  (q ^ 36 * (q ^ 12 - 1) * (q ^ 9 - 1) * (q ^ 8 - 1) * (q ^ 6 - 1) * (q ^ 5 - 1) *
      (q ^ 2 - 1)) / Nat.gcd 3 (q - 1)

/-- Order of `²E₆(q) = (1/gcd(3,q+1)) q³⁶ (q¹²−1)(q⁹+1)(q⁸−1)(q⁶−1)(q⁵+1)(q²−1)`. -/
def e6twistOrder (q : ℕ) : ℕ :=
  (q ^ 36 * (q ^ 12 - 1) * (q ^ 9 + 1) * (q ^ 8 - 1) * (q ^ 6 - 1) * (q ^ 5 + 1) *
      (q ^ 2 - 1)) / Nat.gcd 3 (q + 1)

/-- Order of
`E₇(q) = (1/gcd(2,q−1)) q⁶³ (q¹⁸−1)(q¹⁴−1)(q¹²−1)(q¹⁰−1)(q⁸−1)(q⁶−1)(q²−1)`. -/
def e7Order (q : ℕ) : ℕ :=
  (q ^ 63 * (q ^ 18 - 1) * (q ^ 14 - 1) * (q ^ 12 - 1) * (q ^ 10 - 1) * (q ^ 8 - 1) *
      (q ^ 6 - 1) * (q ^ 2 - 1)) / Nat.gcd 2 (q - 1)

/-- Order of
`E₈(q) = q¹²⁰ (q³⁰−1)(q²⁴−1)(q²⁰−1)(q¹⁸−1)(q¹⁴−1)(q¹²−1)(q⁸−1)(q²−1)`. -/
def e8Order (q : ℕ) : ℕ :=
  q ^ 120 * (q ^ 30 - 1) * (q ^ 24 - 1) * (q ^ 20 - 1) * (q ^ 18 - 1) * (q ^ 14 - 1) *
    (q ^ 12 - 1) * (q ^ 8 - 1) * (q ^ 2 - 1)

/-- Order of the Steinberg triality group `³D₄(q) = q¹² (q⁸+q⁴+1)(q⁶−1)(q²−1)`. -/
def d4twistOrder (q : ℕ) : ℕ :=
  q ^ 12 * (q ^ 8 + q ^ 4 + 1) * (q ^ 6 - 1) * (q ^ 2 - 1)

/-- Order of the Suzuki group `²B₂(q) = q² (q²+1)(q−1)`, `q = 2^{2m+1}`. -/
def suzukiOrder (q : ℕ) : ℕ := q ^ 2 * (q ^ 2 + 1) * (q - 1)

/-- Order of the small Ree group `²G₂(q) = q³ (q³+1)(q−1)`, `q = 3^{2m+1}`. -/
def reeGOrder (q : ℕ) : ℕ := q ^ 3 * (q ^ 3 + 1) * (q - 1)

/-- Order of the large Ree group `²F₄(q) = q¹² (q⁶+1)(q⁴−1)(q³+1)(q−1)`,
`q = 2^{2m+1}`. -/
def reeFOrder (q : ℕ) : ℕ :=
  q ^ 12 * (q ^ 6 + 1) * (q ^ 4 - 1) * (q ^ 3 + 1) * (q - 1)

/-! ## The alternating and cyclic families -/

/-- Order of the alternating group `A_n = n! / 2`. -/
def alternatingOrder (n : ℕ) : ℕ := Nat.factorial n / 2

/-- Order of the cyclic group `Z_p` of prime order: simply `p`. -/
def cyclicOrder (p : ℕ) : ℕ := p

/-! ## The 26 sporadic simple groups

The orders are taken from the ATLAS.  We list them by their standard names. -/

/-- The 26 sporadic simple groups, in the usual grouping
(Mathieu, Leech-lattice / Conway, Fischer, Monster sections, and the six
pariahs). -/
inductive Sporadic
  -- Mathieu groups
  | M11 | M12 | M22 | M23 | M24
  -- Leech lattice (Conway) groups and friends
  | Co1 | Co2 | Co3 | McL | HS | Suz | J2
  -- Fischer groups
  | Fi22 | Fi23 | Fi24'
  -- Monster section
  | HN | Th | B | M | He
  -- Pariahs
  | J1 | J3 | J4 | Ly | ON | Ru
  deriving DecidableEq, Repr

namespace Sporadic

/-- The order of each sporadic simple group, taken from the ATLAS. -/
def order : Sporadic → ℕ
  | M11   => 7920
  | M12   => 95040
  | M22   => 443520
  | M23   => 10200960
  | M24   => 244823040
  | Co1   => 4157776806543360000
  | Co2   => 42305421312000
  | Co3   => 495766656000
  | McL   => 898128000
  | HS    => 44352000
  | Suz   => 448345497600
  | J2    => 604800
  | Fi22  => 64561751654400
  | Fi23  => 4089470473293004800
  | Fi24' => 1255205709190661721292800
  | HN    => 273030912000000
  | Th    => 90745943887872000
  | B     => 4154781481226426191177580544000000
  | M     => 808017424794512875886459904961710757005754368000000000
  | He    => 4030387200
  | J1    => 175560
  | J3    => 50232960
  | J4    => 86775571046077562880
  | Ly    => 51765179004000000
  | ON    => 460815505920
  | Ru    => 145926144000

/-- The complete list of the 26 sporadic simple groups. -/
def all : List Sporadic :=
  [M11, M12, M22, M23, M24, Co1, Co2, Co3, McL, HS, Suz, J2, Fi22, Fi23, Fi24',
   HN, Th, B, M, He, J1, J3, J4, Ly, ON, Ru]

/-- There are exactly 26 sporadic simple groups. -/
theorem card_all : all.length = 26 := by decide

/-- The list of all sporadic groups has no repetitions. -/
theorem nodup_all : all.Nodup := by decide

end Sporadic

/-! ## The unified ATLAS catalogue

A single inductive type covering every finite simple group (up to isomorphism),
following the CFSG.  The parameters carry the family data (the rank `n` and the
field size `q`, or the degree `n`, or the prime `p`, or the sporadic name). -/

/-- A finite simple group, named according to the ATLAS / CFSG.  The numeric
parameters are the standard ones (`n` a rank/degree, `q` a prime power, `p` a
prime).

**Convention.** For the linear/unitary families the parameter `n` is the matrix
*dimension*: `PSL n q = PSL_n(q)` and `PSU n q = PSU_n(q)`.  For the symplectic
and orthogonal families the parameter `n` is the Lie *rank*, so
`PSp n q = PSp_{2n}(q)`, `POmegaOdd n q = PΩ_{2n+1}(q)`,
`POmegaPlus n q = PΩ⁺_{2n}(q)` and `POmegaMinus n q = PΩ⁻_{2n}(q)`. -/
inductive Group
  | cyclic (p : ℕ)
  | alternating (n : ℕ)
  | PSL (n q : ℕ)
  | PSU (n q : ℕ)
  | PSp (n q : ℕ)
  | POmegaOdd (n q : ℕ)
  | POmegaPlus (n q : ℕ)
  | POmegaMinus (n q : ℕ)
  | G2 (q : ℕ)
  | F4 (q : ℕ)
  | E6 (q : ℕ)
  | E6twist (q : ℕ)
  | E7 (q : ℕ)
  | E8 (q : ℕ)
  | D4twist (q : ℕ)
  | Suzuki (q : ℕ)
  | ReeG (q : ℕ)
  | ReeF (q : ℕ)
  | spor (s : Sporadic)

namespace Group

/-- The order of a finite simple group, computed from its ATLAS data. -/
def order : Group → ℕ
  | cyclic p        => cyclicOrder p
  | alternating n   => alternatingOrder n
  | PSL n q         => pslOrder n q
  | PSU n q         => psuOrder n q
  | PSp n q         => pspOrder n q
  | POmegaOdd n q   => omegaOddOrder n q
  | POmegaPlus n q  => omegaPlusOrder n q
  | POmegaMinus n q => omegaMinusOrder n q
  | G2 q            => g2Order q
  | F4 q            => f4Order q
  | E6 q            => e6Order q
  | E6twist q       => e6twistOrder q
  | E7 q            => e7Order q
  | E8 q            => e8Order q
  | D4twist q       => d4twistOrder q
  | Suzuki q        => suzukiOrder q
  | ReeG q          => reeGOrder q
  | ReeF q          => reeFOrder q
  | spor s          => s.order

end Group

/-! ## Sanity checks: known small orders -/

example : Group.order (.alternating 5) = 60 := by decide
example : Group.order (.PSL 2 7) = 168 := by decide
example : Group.order (.PSp 2 3) = 25920 := by decide
example : Group.order (.PSU 3 3) = 6048 := by decide
example : Group.order (.G2 3) = 4245696 := by decide
example : Group.order (.Suzuki 8) = 29120 := by decide
example : Group.order (.spor .M) = 808017424794512875886459904961710757005754368000000000 := by
  decide

/-! ## Exceptional isomorphisms, seen through orders

These are the famous "coincidences" of small simple groups.  Equality of orders
is of course only a *necessary* condition for isomorphism, but for these classic
cases the groups are genuinely isomorphic; the order identities are exactly the
numerical content recorded in the ATLAS. -/

/-- `A₅ ≅ PSL₂(4) ≅ PSL₂(5)`: all have order 60. -/
theorem iso_A5 :
    Group.order (.alternating 5) = 60 ∧
    Group.order (.PSL 2 4) = 60 ∧
    Group.order (.PSL 2 5) = 60 := by decide

/-- `A₆ ≅ PSL₂(9)`: both have order 360. -/
theorem iso_A6 :
    Group.order (.alternating 6) = Group.order (.PSL 2 9) := by decide

/-- `PSL₂(7) ≅ PSL₃(2)`: both have order 168. -/
theorem iso_PSL27 :
    Group.order (.PSL 2 7) = Group.order (.PSL 3 2) := by decide

/-- `A₈ ≅ PSL₄(2)`: both have order 20160. -/
theorem iso_A8 :
    Group.order (.alternating 8) = Group.order (.PSL 4 2) := by decide

/-- The symplectic and odd-orthogonal families coincide in order:
`PSp_{2n}(q)` and `PΩ_{2n+1}(q)` share the order formula (here for `B₂ = C₂`,
i.e. `PSp₄(3) ≅ PΩ₅(3)`, both of rank `2`). -/
theorem iso_B2C2 :
    Group.order (.PSp 2 3) = Group.order (.POmegaOdd 2 3) := by decide

/-! ## Prime factorisations of the sporadic orders

We record the prime factorisation of every sporadic group's order, as in the
ATLAS.  Each is checked by kernel computation. -/

theorem M11_factorization : Sporadic.M11.order = 2 ^ 4 * 3 ^ 2 * 5 * 11 := by decide
theorem M12_factorization : Sporadic.M12.order = 2 ^ 6 * 3 ^ 3 * 5 * 11 := by decide
theorem M22_factorization : Sporadic.M22.order = 2 ^ 7 * 3 ^ 2 * 5 * 7 * 11 := by decide
theorem M23_factorization : Sporadic.M23.order = 2 ^ 7 * 3 ^ 2 * 5 * 7 * 11 * 23 := by decide
theorem M24_factorization :
    Sporadic.M24.order = 2 ^ 10 * 3 ^ 3 * 5 * 7 * 11 * 23 := by decide
theorem J1_factorization : Sporadic.J1.order = 2 ^ 3 * 3 * 5 * 7 * 11 * 19 := by decide
theorem J2_factorization : Sporadic.J2.order = 2 ^ 7 * 3 ^ 3 * 5 ^ 2 * 7 := by decide
theorem J3_factorization : Sporadic.J3.order = 2 ^ 7 * 3 ^ 5 * 5 * 17 * 19 := by decide
theorem HS_factorization : Sporadic.HS.order = 2 ^ 9 * 3 ^ 2 * 5 ^ 3 * 7 * 11 := by decide
theorem McL_factorization :
    Sporadic.McL.order = 2 ^ 7 * 3 ^ 6 * 5 ^ 3 * 7 * 11 := by decide
theorem He_factorization :
    Sporadic.He.order = 2 ^ 10 * 3 ^ 3 * 5 ^ 2 * 7 ^ 3 * 17 := by decide
theorem Ru_factorization :
    Sporadic.Ru.order = 2 ^ 14 * 3 ^ 3 * 5 ^ 3 * 7 * 13 * 29 := by decide
theorem Suz_factorization :
    Sporadic.Suz.order = 2 ^ 13 * 3 ^ 7 * 5 ^ 2 * 7 * 11 * 13 := by decide
theorem ON_factorization :
    Sporadic.ON.order = 2 ^ 9 * 3 ^ 4 * 5 * 7 ^ 3 * 11 * 19 * 31 := by decide
theorem Co3_factorization :
    Sporadic.Co3.order = 2 ^ 10 * 3 ^ 7 * 5 ^ 3 * 7 * 11 * 23 := by decide
theorem Co2_factorization :
    Sporadic.Co2.order = 2 ^ 18 * 3 ^ 6 * 5 ^ 3 * 7 * 11 * 23 := by decide
theorem Co1_factorization :
    Sporadic.Co1.order = 2 ^ 21 * 3 ^ 9 * 5 ^ 4 * 7 ^ 2 * 11 * 13 * 23 := by decide
theorem Fi22_factorization :
    Sporadic.Fi22.order = 2 ^ 17 * 3 ^ 9 * 5 ^ 2 * 7 * 11 * 13 := by decide
theorem Fi23_factorization :
    Sporadic.Fi23.order = 2 ^ 18 * 3 ^ 13 * 5 ^ 2 * 7 * 11 * 13 * 17 * 23 := by decide
theorem Fi24'_factorization :
    Sporadic.Fi24'.order =
      2 ^ 21 * 3 ^ 16 * 5 ^ 2 * 7 ^ 3 * 11 * 13 * 17 * 23 * 29 := by decide
theorem HN_factorization :
    Sporadic.HN.order = 2 ^ 14 * 3 ^ 6 * 5 ^ 6 * 7 * 11 * 19 := by decide
theorem Th_factorization :
    Sporadic.Th.order = 2 ^ 15 * 3 ^ 10 * 5 ^ 3 * 7 ^ 2 * 13 * 19 * 31 := by decide
theorem Ly_factorization :
    Sporadic.Ly.order = 2 ^ 8 * 3 ^ 7 * 5 ^ 6 * 7 * 11 * 31 * 37 * 67 := by decide
theorem J4_factorization :
    Sporadic.J4.order =
      2 ^ 21 * 3 ^ 3 * 5 * 7 * 11 ^ 3 * 23 * 29 * 31 * 37 * 43 := by decide
theorem B_factorization :
    Sporadic.B.order =
      2 ^ 41 * 3 ^ 13 * 5 ^ 6 * 7 ^ 2 * 11 * 13 * 17 * 19 * 23 * 31 * 47 := by decide
theorem M_factorization :
    Sporadic.M.order =
      2 ^ 46 * 3 ^ 20 * 5 ^ 9 * 7 ^ 6 * 11 ^ 2 * 13 ^ 3 * 17 * 19 * 23 * 29 *
        31 * 41 * 47 * 59 * 71 := by decide

/-- The Monster is the largest sporadic group: its order strictly exceeds that of
every other sporadic group. -/
theorem monster_largest (s : Sporadic) (h : s ≠ .M) :
    s.order < Sporadic.M.order := by
  cases s <;> first | (exact absurd rfl h) | decide

/-! ## Connection to Mathlib's group theory

The catalogue above is a *data* port.  We now tie a couple of entries to honest
group-theoretic content already formalised in Mathlib. -/

/-- The ATLAS order of `A_n` agrees with the actual cardinality of Mathlib's
alternating group `alternatingGroup (Fin n)`. -/
theorem alternating_order_eq_card (n : ℕ) [Nontrivial (Fin n)] :
    Group.order (.alternating n) = Nat.card (alternatingGroup (Fin n)) := by
  rw [nat_card_alternatingGroup]
  simp [Group.order, alternatingOrder]

/-- The order of `A₅` in the catalogue is the cardinality of `A₅ = alternatingGroup (Fin 5)`. -/
theorem A5_card : Group.order (.alternating 5) = Nat.card (alternatingGroup (Fin 5)) :=
  alternating_order_eq_card 5

/-- `A₅` really is a (nonabelian) finite simple group — this is Mathlib's
`alternatingGroup.isSimpleGroup_five`. -/
theorem A5_isSimpleGroup : IsSimpleGroup (alternatingGroup (Fin 5)) :=
  alternatingGroup.isSimpleGroup_five

/-- The cyclic family really does consist of simple groups: any group whose
cardinality equals `cyclicOrder p` for a prime `p` is simple.  (We use any
finite group `G` of order `p`, e.g. `ZMod p`.) -/
theorem cyclic_isSimpleGroup {G : Type*} [_root_.Group G] {p : ℕ} [Fact p.Prime]
    (h : Nat.card G = cyclicOrder p) : IsSimpleGroup G :=
  isSimpleGroup_of_prime_card (α := G) (show Nat.card G = p from h)

end Atlas
