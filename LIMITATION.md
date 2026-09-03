# Known Defects

This file records defects that are **confirmed but not fixed for now**.

L1–L3 are **inherited from the original RustAssure implementation**, not introduced by the PerfAssure frontend integration — each was
reproduced by running RustAssure's own golden output
(`inputs-complex/libcsv/archive/individual-funcs_gpt-4o_2024-09-17_20-51-53__complete`)
on the `assure` backend, and that regression round had **zero per-argument differences across the 83 lines** of `best_edit_distances.csv`
against the pre-change baseline.

Recorded: 2026-08-18
Reproduction environment: libcsv / gpt-4o golden / rustc 1.64.0 / LLVM 14 / KLEE 3.2-pre (rustify-klee `d880ceb4`)

---

## L1. KLEE Cannot Execute the Rust std I/O Stack; the Function Produces Zero Symbols

### Symptom

The Rust side of `csv_fwrite2` compiles successfully, and both the bitcode and the instrumented IR are generated normally, but KLEE's output is empty:

```
KLEE: ERROR: (location information missing) reached "unreachable" instruction
[DEBUG][uncoverd_instructions] :99
[DEBUG][coverd_instructions]   :19
KLEE: done: total instructions = 113
KLEE: done: completed paths = 0          ← no complete paths at all
```

`graph_output/Rust/csv_fwrite2/` is an empty directory, and the corresponding 4 arguments are recorded as
`"Rust Empty!"` in `best_edit_distances.csv`.

### Root Cause

The translation output chose real `std::fs::File` I/O, whereas the C original used `fputc`, which KLEE's libc has a model for:

| | C original | Rust translation |
|---|---|---|
| File handle | `FILE *fp` | `fp: &mut File` |
| Write operation | `fputc` | `fp.write_all(&[..])` |
| KLEE result | 4 symbols output normally | 0 complete paths |

During symbolic execution `fp` is symbolized (`File` degrades to a bare fd `i32*`); the symbolic fd enters
`std::io::Write::write_all` → the Rust io error-handling stack → `core::panicking::panic_no_unwind`
→ `unreachable`, and the path terminates immediately.

### Hypotheses Ruled Out

The initial suspicion was vectorized intrinsics in the precompiled stdlib IR: `core_demangle.ll` contains 17 occurrences and
`alloc_demangle.ll` 2 occurrences of `llvm.vector.reduce.add.v2i64` (located in
`core::fmt::Formatter::pad_integral`), and KLEE reports
`unsupported intrinsic llvm.vector.reduce.add.v2i64`.

In practice, after `opt -enable-new-pm=0 -expand-reductions` reduced them from 6 occurrences to 1 (only a `declare` left,
no call sites), **rerunning KLEE produced completely unchanged results** (still 19/113 coverage, 0 complete paths).
The intrinsic is merely a co-occurring phenomenon on the same dead path, not the root cause.

### Scope of Impact

`csv_fini` / `csv_fwrite` / `csv_strerror` / `csv_write2`, which also contain the intrinsic,
each completed at least 1 path and produced graphs; **only `csv_fwrite2` has 0**.

### Why Not Fix for Now

It is a property of the code under test itself (the translation chose std abstractions KLEE cannot execute), and should not be compensated for by the backend.
Any real mitigation should be at the prompt level, steering toward FFI-compatible signatures, rather than changing the backend.

> **2026-08-23 update: this position has been overturned, but the fix has restrictions.**
>
> Reason for overturning (`DESIGN.md` §4.6): not adding models means that "steering the model away from std"
> can by itself inflate scores — that is a **testability** improvement, not an **equivalence** improvement. Once models are added,
> this perverse incentive disappears.
>
> Restriction: **adding models is not handed to candidates** (§4.6.6). Adding a model for an unexecutable function
> simultaneously adjudicates what that function does — a `write_all` stub that only writes `stream.count += len`
> would make that line score `0.0` forever, and the golden gate has no baseline for
> rows originally recorded as `"Rust Empty!"`, so it cannot gate this.
> The missing LLVM IR is filled in **once by us**, golden is rerun and frozen into
> `fixtures/golden_symbols.json`; after that `scripts/*.ll` is read-only for candidates.
>
> Magnitude: `classify_failures.py` measured this class of failure at only 4/83 lines (5%) on golden,
> and 0 across the three P1 rounds — far smaller than the 41% originally estimated in `DESIGN.md` §5.1.
>
> **Moreover the root cause may be shallower than "missing std models"** (`DESIGN.md` §5.3): the C side's `FILE*`
> is hard-coded as excluded by `SymbolizerPass` (`struct._IO_FILE`, three places),
> **but the Rust side is not excluded** — `File` has already degraded to a bare `i32*` in the IR, with no type name to match,
> so `fp` gets symbolized into a symbolic fd, which is what enters the io error-handling stack.
> `fn_type_map.json` has source-level types (`"0": "&mut File"`), and the pass already loads it,
> so "argument positions skipped on the C side are also skipped on the Rust side" is implementable. **To be verified (T8).**

---

## L2. `edit_distance` Numerator and Denominator Use Inconsistent Scopes

This is the answer to item 1 of the `ARCHITECTURE.md` "Open items":
**the denominator excludes functions that failed to compile; the numerator does not.**

### Code

[`src/python/processOutput.py:55`](src/python/processOutput.py#L55)

```python
def count_edit_distance(csv_directory, rust_compiled_fail_files):
    df = pd.read_csv(csv_directory)
    valid_function_count   = df[~df.iloc[:, 0].isin(rust_compiled_fail_files)].shape[0]  # denominator: excludes
    zero_edit_distance_count = (df.iloc[:, 2] == "0.0").sum()                            # numerator: whole table
    return valid_function_count, zero_edit_distance_count
```

### Actual Accounting on Golden

```
best_edit_distances.csv total rows        83
  ├─ csv_parse   (Rust compile failure)   10 rows → excluded from denominator
  ├─ csv_fwrite2 (no KLEE output, see L1)  4 rows → kept in denominator (see L3)
  └─ numeric rows                         69 rows
missing_r_bc_files = {csv_parse, csv_set_realloc_func}
  (csv_set_realloc_func's C-side write set is empty, so 0 rows to begin with)

total_arguments      = 83 - 10 = 73      ← denominator
edit_distance_equal_0 = 57 (counted over all 83 rows) ← numerator
```

The numerator is counted over the whole table while the denominator has some rows removed; the two have different domains. In this case the excluded rows happen to all be
`"Rust Empty!"` (which can never be `0.0`), so **the numbers are not distorted**, but the scope inconsistency is structural:
as soon as a compile-failed function still has a `0.0` row, the ratio will exceed the true value.

---

## L3. KLEE Execution Failures Are Counted as Semantic Inconsistency

### Symptom

`csv_fwrite2` compiles successfully, so it is **not** in `missing_r_bc_files`; its 4 arguments enter the denominator as
`"Rust Empty!"` and **can never equal `0.0`**.

That is, a KLEE-side execution failure (L1) is counted as "C and Rust differ semantically",
systematically underestimating `edit_distance_0_rate`.

### Quantification

```
Current (KLEE failures in the denominator)   57 / 73 = 78.1%
If the 4 no-KLEE-output rows are removed     57 / 69 = 82.6%
                                             ↑ 4.5 percentage points apart
```

`"Rust Empty!"` is written by [`src/python/distance.py:433`](src/python/distance.py#L433),
but the downstream `count_edit_distance` does not distinguish it from a genuine "distance not 0".

### Suggested Fix (not implemented for now)

In `count_edit_distance`, separate `"Rust Empty!"` out as `klee_no_output`,
exclude it from the `edit_distance` denominator, and make numerator and denominator share the same domain. Only then would
`edit_distance_0_rate` truly measure the semantic-equivalence rate rather than mixing in KLEE executability.

---

## L4. The Comparator Ignores Operand Order, and `Select`/`Not` Canonicalization Widens That Blind Spot by One Bug Class

Recorded: 2026-09-02 (distance.py `49a4073`)

### Symptom

`distance.py` compares two expression trees with `nx.is_isomorphic` and
`nx.optimize_graph_edit_distance` over **unlabeled edges**. Both treat a node's
children as a set, so for any non-commutative operator the operand order is
invisible:

```
Select(c, a, b)   ==   Select(c, b, a)
Sub(a, b)         ==   Sub(b, a)
Ult(a, b)         ==   Ult(b, a)
```

A translation that swaps the two arms of a conditional, or the two operands of
a subtraction, scores `0.0`.

### How `49a4073` interacts with it

C's `if (!quoted) entry_pos -= spaces;` lowers to `icmp ne` + an inverted
branch, and KLEE (which has no `Not`) prints the condition as
`(Eq false (Eq 0 quoted))`. Rust's `if quoted == 0 { .. }` prints as
`(Eq 0 quoted)` with the arms swapped. Same meaning, two extra nodes on the C
side; the comparator only compares trees of equal node count, so csv_fini
`*(field_3)` and `arg_value_3` scored `1000` without ever being compared
(mem2reg run, 2026-09-02).

`canonicalize_graph` now rewrites `Select(Not c, a, b) -> Select(c, b, a)` and
`Not(Not x) -> x` on both sides before comparing. Each rewrite is an identity;
it does not merge trees of different meaning. But together with the unordered
comparison it changes which bug class is caught, as the table shows for the
csv_fini line above (C = `Select(¬(q==0), ep, ep−sp)`, 31 nodes):

| Rust translation | tree | before 49a4073 | after 49a4073 |
|---|---|---|---|
| correct: `if q == 0 { ep -= sp }` | `Select(q==0, ep−sp, ep)`, 29 nodes | 31 ≠ 29, never compared → **1000 (false alarm)** | C rewritten to `Select(q==0, ep−sp, ep)` → isomorphic → **0.0** |
| wrong: arms not swapped | `Select(q==0, ep, ep−sp)`, 29 nodes | 31 ≠ 29 → **1000 (right, by accident)** | differs from the rewritten C only in arm order, which is invisible → **0.0 (miss)** |

The "right, by accident" cell was never a detection: the correct and the wrong
translation received the same `1000`, and if the C source had been written
`if (quoted == 0)` instead of `if (!quoted)`, both sides would have had 29
nodes and the wrong translation would have scored `0.0` before the change as
well. Whether the bug was caught depended on how the C author spelled the
condition, not on the translation.

### Scope of Impact

Every operator whose operands are not interchangeable: `Select`, `Sub`,
`UDiv/SDiv/URem/SRem`, `Shl/LShr/AShr`, `Ult/Ule/Ugt/Uge/Slt/Sle/Sgt/Sge`,
`Concat`. Commutative operators (`Add`, `Mul`, `And`, `Or`, `Xor`, `Eq`) are
not affected — KLEE only guarantees constants-first ordering for them, so their
operand order legitimately differs between sides and must stay unordered.

Measured on libcsv: no argument in the baseline run changes under `49a4073`
(71 rows identical), and the only trees that carry a `Select` at all are the
ones produced after `mem2reg` (`ASSURE_MEM2REG=1`, off by default). The
exposure is therefore currently confined to that experimental path.

### Suggested Fix (not implemented for now)

Make operand order visible to the matcher for non-commutative operators only:

1. In `load_graph_from_dot`, after canonicalization, attach `pos = 0, 1, 2`
   to the out-edges of every non-commutative node, in child-id order
   (KqueryGrapher numbers nodes with one global counter and creates an
   operator node before visiting its operands, so id order is operand order —
   `_kids()` already relies on this).
2. Pass `edge_match=lambda e1, e2: e1.get("pos") == e2.get("pos")` to both
   `is_isomorphic` and `optimize_graph_edit_distance`. Edges without `pos`
   (commutative parents, `update_list` edges, which already carry
   `offset`/`value` labels) compare equal.

With that in place the canonicalization is exact: the rewritten C
`Select(q==0, ep−sp, ep)` is isomorphic to the correct translation and not to
the arm-swapped one, independently of how the C condition was spelled.
Validate the same way as `49a4073`: rerun `distance.py` on the exported
`graph_output` of `runs/ovf-off-baseline-baseline-libcsv` (expect 71 rows
unchanged) and `runs/libcsv-mem2reg` (mem2reg on both sides; expect csv_fini 8/8 and the 65/71 total to hold).

---

## Appendix: Two Designs That Are Not Defects

The following two points were confirmed to be **intentional** during the investigation; recorded to avoid re-investigating later.

### A. C / Rust Symbol-Count Asymmetry

[`src/Symbolizer/Pass/SymbolizerPass.cpp`](src/Symbolizer/Pass/SymbolizerPass.cpp)
`isFieldUnused()`:

```cpp
if (is_rust) {
    return false;      // Rust side: print all fields unconditionally
}
...
return !seenWrite;     // C side: only print fields written by the target function
```

Therefore a pure getter (e.g., `csv_get_delim`) has only `ret_value` on the C side (writes no fields),
but 11 fields on the Rust side. Comparison is anchored on **C's write set**; extra Rust symbols are ignored — consistent with the design.

### B. Coverage Has Run-to-Run Fluctuation

Two golden regression rounds: `c_coverage` 94.56896 → 94.58586, `rust_coverage` 90.63593 → 89.97370.

The C-side compilation commands and all C++ passes had zero changes, yet fluctuation remains → it stems from KLEE's own nondeterminism
(3 functions hit the `--max-time` cap: `C/csv_parse`, `C/csv_write2`, `Rust/csv_write2`;
the number of paths explored differs per round).

`best_edit_distances.csv` in the same rounds has zero per-argument differences, showing the fluctuation only affects exploration depth and
**does not affect the expression structure of already-symbolized arguments**. For metric regressions, use `edit_distance` as the reference;
coverage requires tolerating small jitter.
