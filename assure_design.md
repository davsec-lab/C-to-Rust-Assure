# assure Design Document

`assure` = **PerfAssure's frontend** (C→Rust translation) + **RustAssure's backend** (differential symbolic execution).

This file records the capabilities of the two upstream projects, how they were integrated, and what was discovered during integration.
Written: 2026-08-18. The two upstream local repositories `rustassure` / `PerfAssure` were deleted after this file was written;
their content has been fully merged into this repository or recorded here.

Related documents:
- [`INTEGRATION.md`](INTEGRATION.md) — integration plan and implementation plan (decision process)
- [`LIMITATION.md`](LIMITATION.md) — known defects (not fixed for now)
- [`env.sh`](env.sh) — toolchain and environment configuration

---

## 1. Lineage

The two upstreams **share a common origin**; both are repositories under `davsec-lab`:

```
ecccffa1  initial commit
    │
    ⋮   shared history
    │
27bd62d6  2025-10-08  "Update README.md"        ← most recent common commit (merge base)
    │
    ├──────► rustassure   +6  commits   backend intact, frontend stuck in early form
    │        git@github.com:davsec-lab/rustassure.git
    │
    └──────► PerfAssure   +61 commits   frontend rewritten, **entire backend deleted**
             git@github.com:davsec-lab/PerfAssure.git
```

After the fork, rustassure barely moved (6 trivial commits), while PerfAssure heavily rewrote the frontend and deleted
`src/Symbolizer` / `src/AnchorNodesExtractor` / `src/c++` / `src/Link` and all backend Python.

**The shared origin is the fundamental reason integration is feasible**: file names, module structure, and data structures
(`FunctionAndDependencies`, `funcMap`, the `individual-funcs_*` directory convention) are identical on both sides,
so reattaching the backend produced almost no conflicts.

---

## 2. RustAssure's Capabilities (the part we keep: the backend)

A paper tool that performs **differential symbolic testing**: verifying whether the semantics are equivalent after an LLM translates C into Rust.

### 2.1 Pipeline

```
<fn>.i  ──clang -c -femit-all-decls -emit-llvm──→ <fn>.i.bc ─┐
                                                             ├─ llvm-link precompiled stdlib IR
<fn>.rs ──rustc --emit=llvm-bc --crate-type=lib──→ <fn>.rs.bc┘
                          │
                          ▼
              opt -load-pass-plugin SymbolizerPass.so
                (Rust side goes through DemanglePass first)
                          │
                          ▼   synthesize main: klee_make_symbolic per argument,
                          │   call the target function, klee_print_expr per argument/return value
              opt -internalize -internalize-public-api-list=main -globaldce
                          │
                          ▼
              klee --libc=klee --target-function-name=<fn>
                          │
                          ▼
              KqueryConverter  KLEE symbolic expressions → trees/graphs (.dot/.png)
                          │
                          ▼
              distance.py      graph edit distance → best_edit_distances.csv
                          │
                          ▼
              processOutput.py → result.csv
```

### 2.2 Components

| Component | Size | Responsibility |
|---|---|---|
| `src/Symbolizer/Pass/SymbolizerPass.cpp` | 1649 lines C++ | Core. Synthesizes main, symbolizes arguments, inserts prints |
| `src/Symbolizer/DemanglePass` | C++ | Demangles Rust symbols, strips version hashes |
| `src/Symbolizer/scripts/*.ll` | 14 MB | **Precompiled stdlib IR**: `libc_merged.ll`(C) / `core_demangle.ll` + `alloc_demangle.ll`(Rust) |
| `src/python/kquery-parser/` | 4226 lines | KLEE kquery expressions → graphs |
| `src/python/distance.py` | 470 lines | Graph edit distance |
| Rest of backend Python | 2062 lines | Driver, bitcode generation, result statistics |
| `src/AnchorNodesExtractor` | C++ | LLVM analysis pass |

### 2.3 Two Key Designs (easily mistaken for bugs; recorded in the LIMITATION.md appendix)

**Target function selection by file name** (`SymbolizerPass.cpp:663-708`): the module file name is matched against
(demangled) function names, and the one with the smallest edit distance wins. **This makes "one function per file" a hard constraint**,
not merely a directory convention — feeding it `merged_funcs.rs.bc` returns `Error: target function not found` immediately.

**C / Rust symbolization asymmetry** (`isFieldUnused()`):
```cpp
if (is_rust) return false;   // Rust side: print all fields unconditionally
...
return !seenWrite;           // C side: only print fields written by the target function
```
Comparison is anchored on **C's write set**; extra Rust symbols are ignored.

### 2.4 Version Compatibility via Demangling

The symbol names of the 785 function definitions in `core_demangle.ll` are all in de-hashed readable form
(`core::ops::function::FnOnce::call_once`), rather than the crate-disambiguator form
`_ZN4core...17h<16-hex>E`. The translation-artifact side also goes through `DemanglePass` for the same normalization,
so both sides meet in a **hash-free namespace** — hence insensitivity to the rustc version.

(Residual risk: `core_demangle.ll` still contains 116 hashed **call-site** references not covered by demangling.
libcsv does not trigger them; if triggered, KLEE reports `undefined reference to function: _ZN4core...`.)

### 2.5 Metrics

`result.csv`: `total_functions` / `total_rust_functions_compiled` / `total_arguments` /
`edit_distance_equal_0` / `overall_lines_sum` / `overall_unsafe_sum` /
`rust_coverage` / `c_coverage`.

---

## 3. PerfAssure's Capabilities (the part we keep: the frontend)

Rewritten on top of the rustassure frontend, roughly 40x larger:

| Module | rustassure | PerfAssure |
|---|---|---|
| `translationValidator.py` | 298 | 1554 |
| `functionAndDepsExtractor.py` | 287 | 1436 |
| `createArgumentMap.py` | 337 | 570 |
| `typedefFilter.py` | 78 | 272 |
| `gpt_translation/` (new package) | — | **11244** |
| `dependencyExtractor.py` (new) | — | 523 |
| `type_registry.py` (new) | — | 303 |
| `tests/` (new) | — | 14173 |

### 3.1 Capabilities

- **Type dependency graph + topological batch translation** (`type_registry.py` / `preTranslateComplexStructs`)
- **SCC detection** (Tarjan) to handle mutually recursive function groups
- **Staged pipeline** `Stage_1..Stage_10`, with checkpoint / resume
- **Performance measurement + regression retry** (`performance_mixin.py`, multi-round `-O3` timing)
- **CROWN unsafe analysis**
- callback contracts, typedef signature-change propagation, byte-buffer classification, compilation retry self-repair
- token statistics (`tokenUsageTracker.py`)
- modern models: claude-opus / sonnet / haiku, gpt-5, gemini
- complete unit test suite

### 3.2 The Key Mode Dichotomy

`translation_pipeline_mixin.py:4393`:

```python
if self.translatorMode in [BASIC_CHUNK_CHAIN, COMPILATION_FEEDBACK, CF_STRUCT_REPLAY]:
    → translateAndCreateRustFiles()   # one <fn>.rs per function   ← the form the backend needs
else:                                  # CF_STRUCT_FN_REPLAY / NEW_MODE*
    → _runSccTopoTranslateLoop() ...  # a single merged_funcs.rs
```

| `--translator-mode` | Output |
|---|---|
| `basic` / `feedback` / **`cf-struct-replay`** | per-function `.rs` |
| `struct-fn-replay` / `new-mode*` (PerfAssure default) | `merged_funcs.rs` |

**This is the pivot of the integration**: PerfAssure defaults to merged, while the backend strictly requires per-function (see §2.3).

---

## 4. Integration Approach

### 4.1 Decision: use `cf-struct-replay`, zero backend changes

```bash
python3 translationValidator.py --src=<codebase> \
    --translator-mode=cf-struct-replay --llm-mode=<model>
python3 performSymbolExecution.py --src=<individual-funcs_...>
```

We chose it over `basic`/`feedback` because it goes through `compileWithFeedback` → `compileAndRetryLoop`,
so the output is compile-verified; and it is on the `preTranslateComplexStructs` whitelist, so structs get pre-translated.

**Cost (confirmed and accepted)**: giving up performance measurement, CROWN, SCC topological translation, the Stage_1..10 staged pipeline,
and token dump — those only trigger on the merged branch. The eval metrics fall back to the original set in `ARCHITECTURE.md`
(`compile_success_rate` / `edit_distance_0_rate` / `unsafe_usage` / `R_std`),
where `unsafe_usage` is provided by the backend's `evaluationScripts/unsafeCaculate.py` and does not depend on CROWN.

Two rejected paths (see `INTEGRATION.md` §3.4 for details):
- **Parameterizing SymbolizerPass** to support merged output — no longer needed once merged is dropped
- **Source-level splitting of `merged_funcs.rs`** — the split-out code ≠ the code whose performance was actually measured; a validity crack

### 4.2 The Seam: One Contract Directory

The frontend only produces, and the backend only consumes, **one directory that satisfies the contract**:

```
individual-funcs_<prefix>_<model>_<timestamp>__complete/
    <fn>.i     ── N files, each containing a single function + its typedef/struct closure
    <fn>.rs    ── N files, basenames in strict one-to-one correspondence with the .i files
```

The backend's `divide_script.sh` splits by extension into `testcase/C` and `testcase/Rust`,
and `symbolicExecution.py` pairs by basename.

### 4.3 Shared Modules Always Take the PerfAssure Version

`createArgumentMap.py` / `fetchTargetFunction.py` / `util.py` / `typedefFilter.py` /
`functionAndDeps.py` / `loggerFactory.py` exist on both sides. The PerfAssure version is a **strict superset**
(the function-signature semantics the backend depends on are unchanged; only C++ support was added).

Verified at runtime: all 9 backend modules **import successfully** on top of the PerfAssure versions.

### 4.4 Backend Change List (only 3 files, 46 lines)

| File | Change |
|---|---|
| `symbolicExecution.py` | KLEE `max-time` made configurable via environment variable, **defaults remain 7200/10800** |
| `llvmBitcodeEmitter.py` | rustc gains `--edition` (default 2021, **Rust path only**; the C-side clang command is untouched) |
| `evaluationScripts/unsafeCaculate.py` | Fix the bug where `safe_lines` was always negative + sync the edition |

**Zero changes**: `distance.py`, `processOutput.py`, `process_{c,rust}_file.py`,
`performSymbolExecution.py`, and **all C++ passes and scripts**.

### 4.5 Frontend Change List

| Change | Reason |
|---|---|
| New `TranslationUtilsMixin.buildSelfContainedTranslation` | See §5.1 |
| Add `system_rust.prompt` | Missing file causes `FileNotFoundError`; content = rustassure's `system.prompt` |
| `CARGO_LIBC_REQUIREMENT` (default `=0.2.149`) | See §5.2 |
| Wire up `gpt-5-mini` / `gpt-5-nano` | Previously only `gpt-5` on the OpenAI side |

---

## 5. Problems Found and Fixed During Integration

### 5.1 Per-function `.rs` Not Self-Contained (E0412)

The backend compiles file by file with `rustc --crate-type=lib`, so every `.rs` must be self-contained.

rustassure's prompt explicitly demands "**Please include the original struct translation in
your response.**", so the LLM inlines the structs. After PerfAssure moved to merged, types are instead assembled
centrally by `typeRegistry`, and the prompt became "**Translate ONLY the provided function**" coexisting with
"include the original translation in your response" — the model compromises by emitting
`use crate::{csv_parser, size_t};`, which cannot resolve in a standalone file.

The after-the-fact `checkStructDefination` retry does not converge: on libcsv/gpt-5.4-mini, **17/25 exhausted all
`COMPILATION_RETRIES`**, leaving only 5/25 compilable.

**Fix**: when writing to disk, prepend the function's dependency types (in topological order) to the translation, reusing existing machinery —
`getOrderedTypeKeysForFunction` + `_sanitizeResultAgainstDependencies` + `cleanCode`.
This **restores a result rustassure already had**, rather than adding a new capability.

### 5.2 rustc 1.64 Incompatible with Cargo Dependencies

After pinning rustc 1.64.0 (to align with the LLVM 14 backend), the frontend crashed in `preTranslateComplexStructs`:
`cargo check --quiet` timed out at 120 seconds. Two compounding causes:

1. `libc = "0.2"` resolves to 0.2.189+, whose MSRV is **1.65** — it simply cannot compile under 1.64
2. cargo 1.64 uses the **git index** (the sparse protocol only stabilized in 1.68); online resolution takes 180s+

**Fix**: pin `libc = "=0.2.149"` + `CARGO_NET_OFFLINE=true` → `cargo check` drops to about 1 second.

### 5.3 Frontend/Backend Rust Edition Mismatch (E0433)

The frontend's `compileWithCargoProject` uses `edition = "2021"`, while the backend's bare `rustc` defaults to **edition 2015**
— code that passes frontend validation fails to compile on the backend, typically `use core::ffi::c_void;` (under 2015, `core`
is not in the extern prelude).

**This is a structural defect introduced by the integration**: each project was internally consistent; it only surfaced when they were combined.

Same batch of outputs: edition 2015 gives 3/25, editions 2018/2021 both give 18/25.
The gpt-4o golden is **27/29 under all three editions**, so this change does not break baseline comparability.

### 5.4 `unsafeCaculate` Metric Bug (pre-existing in RustAssure)

In `analyze_rs_files`, two accumulator variables were swapped (`unsafe_sum` accumulated `total_lines`,
`lines_sum` accumulated `unsafe_lines`), making `safe_lines = unsafe - total` always negative.
On the libcsv golden, `10 / 307 / -297` → corrected to `307 / 10 / 297` (unsafe 3.26%).

**This affects one of the four `ARCHITECTURE.md` metrics; if past experimental data used this column, those numbers are wrong.**

### 5.5 Intentionally Kept Consistent with rustassure, Unfixed

**Dependency functions not self-contained (E0425)**: rustassure's legacy branch likewise provides no signatures and no topological order
(`previouslyTranslatedFunctions` is annotated in `functionAndDeps.py` as "Used for the merged
modes"). In the golden, only 2/29 files inlined callee functions — purely spontaneous gpt-4o behavior.

Rationale for leaving it alone: patching it would amount to using the pipeline to compensate for the model's weakness, and `compile_success_rate` would lose its meaning —
it should truthfully reflect "whether the model can produce self-contained translations".

---

## 6. Verification Conclusions

### 6.1 Backend Equivalent to RustAssure

Regression using RustAssure's own golden output
(`individual-funcs_gpt-4o_2024-09-17_20-51-53__complete`):

| | Pre-change baseline | Current code |
|---|---|---|
| total_functions / compiled | 29 / 27 | 29 / 27 ✅ |
| total_arguments | 73 | 73 ✅ |
| **edit_distance_equal_0** | **57** | **57** ✅ |

**The per-argument 83-line diff of `best_edit_distances.csv` is empty**; all 56 symbol sets (C 29 + Rust 27) are identical.

Confirmed link by link: 29/29 C + 27/27 Rust `_klee.ll` files all contain the synthesized `define @main`,
`klee_make_symbolic` counts are all nonzero, and `klee_print_expr` matches the write-set design.

(`coverage` has minor run-to-run fluctuation stemming from KLEE nondeterminism — the C side fluctuates even with zero changes.
Use `edit_distance` as the reference for regressions.)

### 6.2 End-to-End Runs Through

libcsv / `cf-struct-replay` / `gpt-5.4-mini`, 21 minutes:

```
25 functions / 18 compiled successfully (72%) / 29 arguments / edit_distance=0 on 28 (96.6%)
unsafe 170/179 / rust_cov 90.85 / c_cov 94.88
```

Compile success rate evolution: 5/25 (20%) → 15/25 (60%) → 18/25 (72%), corresponding to the fixes in §5.1 and §5.3.

---

## 7. Toolchain

See [`env.sh`](env.sh). Key components and their origins:

| Component | Origin | Notes |
|---|---|---|
| **KLEE** | `git@github.com:davsec-lab/rustify-klee.git` | **Lab-modified version**, not upstream. Contains custom output such as `[DEBUG][state_dumps]` / `Base Address is` |
| **Static analysis tools** | `git@github.com:davsec-lab/typedefextractor.git` | clang fork. Provides `unused-typedef-extractor` / `static-and-struct-def` / `struct-field-use-printer`, etc. |
| nlohmann/json | upstream | `src/Symbolizer/json` submodule, SymbolizerPass dependency |
| LLVM / clang | 14.0.0 | Must match the `LLVM_DIR` used to build the Symbolizer pass |
| rustc | 1.64.0 | Aligned with the LLVM 14 backend |

Historical submodules confirmed **no longer needed**: `rustify-SVF` (no references left in the code),
`davsec-lab/networkx` (submodule directory is empty; `distance.py` uses standard networkx).
