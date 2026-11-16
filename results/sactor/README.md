# SACToR + Claude Sonnet 5.5 on the Oxivolve time_versions benchmarks

The same ten C programs as `../rustassure` were translated to Rust with SACToR and Claude Sonnet 5.5. They come from
`davsec-lab/c_to_rust@b06d5c10`, branch `oxivolve_fuzzing`, directory `Oxivolve/C/time_versions/` (`<bench>_time.c`).
The run was on 2026-11-16.

## Setup

- **Translator:** SACToR, from the `qsdrqs/sactor` fork.
  - Local branch `perfassure-fixes` at `3c07e5a`, which is not on GitHub. It is 19 commits ahead of upstream `main`
    (`577c3d2`), listed in `reproduce/sactor-local-commits.txt`, with the diff in
    `reproduce/sactor-upstream-to-3c07e5a.patch`.
  - The working-tree changes on top are in `reproduce/sactor-local-changes.patch` and listed under
    "SACToR changes used for this run".
- **Command:** one per benchmark, three running in parallel (`reproduce/run_sactor_sonnet55.sh`):
  `sactor translate <bench>.c test_cmd.json --type bin --link-args=-lm -c sactor.sonnet55.toml -r <result dir>`
- **Mode:** `--type bin` translates the whole program, `main()` included.
  - The test list is empty, because these programs print timings, not results that can be compared. Each item is
    therefore checked only by compiling it.
  - The idiomatic code must not contain `unsafe`, which is SACToR's default (`allow_unsafe_in_idiomatic = false`).
  - Each item gets up to 6 attempts. The verifier self-test is off.
- **Model:** `claude-sonnet-5-5` through the Anthropic API, called via litellm 1.76.1
  (`reproduce/sactor.sonnet55.toml`).
  - No temperature is set. The model uses its default adaptive thinking.
  - `max_tokens = 32000`, because litellm defaults to 4096 and thinking tokens count against that cap.
- **Toolchain:** rustc/cargo 1.86.0, `libc` 0.2.191 (SACToR's build crate asks for `0.2.159`), c2rust 0.20.0,
  clang 14.
- **Input per benchmark:** `<bench>_time.c` with `#define _GNU_SOURCE 1` added as the first line.

## Layout

```
<bench>/input/<bench>.c         C program given to SACToR
<bench>/input/test_cmd.json     empty test list (compile-only verification)
<bench>/run/                    SACToR's result directory
    translated_code_unidiomatic/   step 1: Rust close to the C (unsafe allowed)
        combined.rs                    the whole program
        functions/ structs/ global_vars/ enums/   one file per translated item
        clippy_stat.json               clippy warnings and the unsafe-token count
    translated_code_idiomatic/     step 2: safe Rust; same layout, and combined.rs is the final program
    unidiomatic_failure_info.json, idiomatic_failure_info.json   per item: status and every failed attempt
                                                                 with its compiler error
    llm_stat_unidiomatic.json, llm_stat_idiomatic.json           LLM calls and tokens
    *.bak                          the same files from an earlier, resumed run of the benchmark
    logs/                          SACToR debug logs (API keys are redacted)
    sactor_console.log             console output of every SACToR invocation for the benchmark
Cargo.toml                      builds every idiomatic combined.rs as a binary: cargo build --release
reproduce/                      config, SACToR patches, run/collect/check scripts, checksum copies
summary.json                    the numbers in the table below, per stage
```

## Results

| Benchmark | Unidiomatic ok | Idiomatic ok | Items that needed retries (attempts used) | LLM calls | Cost (USD) | combined.rs lines | Clippy warnings | Unsafe tokens | Output vs. C |
|---|---|---|---|---|---|---|---|---|---|
| libcsv | 27/27 | 27/27 | unidiomatic: `csv_strerror` 2, `csv_errors` 4 | 57 | 0.432 | 505 | 15 | 0 / 2039 | same |
| pagerank | 3/3 | 3/3 | unidiomatic: `main` 2 | 7 | 0.133 | 226 | 1 | 0 / 1484 | same |
| cjson_parse | 26/26 | 26/26 | - | 46 | 0.446 | 637 | 13 | 0 / 3189 | same |
| libbmp (parse) | 14/14 | 14/14 | - | 25 | 0.236 | 297 | 17 | 0 / 1609 | same |
| libbmp_write | 27/27 | 27/27 | unidiomatic: `md5_update` 2; idiomatic: `md5_ctx` 2 | 52 | 0.423 | 476 | 18 | 0 / 2543 | written BMP byte-identical (one hand fix, see below) |
| rfft | 4/4 | 4/4 | - | 8 | 0.082 | 152 | 4 | 0 / 994 | same |
| kmeans | 8/8 | 8/8 | - | 14 | 0.118 | 159 | 0 | 0 / 1303 | same checksum |
| quicksort | 5/5 | 5/5 | unidiomatic: `quicksort` 2 | 11 | 0.070 | 86 | 0 | 0 / 632 | **different input** (sorted, see below) |
| matrix_mult | 7/7 | 7/7 | - | 14 | 0.107 | 121 | 1 | 0 / 812 | **different** (random input, see below) |
| sssp | 11/11 | 11/11 | - | 19 | 0.155 | 164 | 5 | 0 / 866 | same, but on a different random graph |
| **Total** | | | | 253 | **2.20** | | | | |

### How the columns are counted

- **"ok" columns:** the number of items (functions, structs, unions, enums and globals) that SACToR translated and
  verified, out of all items in the program.
- **Attempts:** the failed attempts plus the successful one.
- **Clippy warnings and unsafe tokens:** SACToR's counts for the idiomatic `combined.rs`. No idiomatic program has an
  `unsafe` block or `unsafe fn`.
  - cjson_parse's `internal_hooks` struct keeps `unsafe extern "C" fn` pointer types for `malloc`/`free`, but nothing
    calls them; the Rust code allocates with `Box` and `Vec`.
- **Cost:** SACToR's input and output token counts × $2 / $10 per million tokens. Output tokens include thinking.
  - The cost covers the runs whose results are here, including the first run of libbmp_write, recorded in the `.bak`
    files.
  - It leaves out a failed first run of sssp (26 calls, $0.16), described under "Problems hit during the run".

### How "Output vs. C" was checked

`reproduce/verify_sactor_oxivolve.sh` compared the C and Rust versions of each benchmark:

1. **Build:** the C input with `clang -O3 -lm`, and the idiomatic `combined.rs` with `cargo build --release`.
2. **Run:** both versions on the same small inputs as `../rustassure`:
   - libcsv: the first 20 MB of `metadata.csv`
   - pagerank: the first 300,000 lines of `com-lj.ungraph.txt`
   - cjson_parse: `pokedex.json`
   - libbmp: `test_bmps/`
   - libbmp_write: `300 200`
   - rfft: no arguments
   - kmeans: `100000 10`
   - quicksort: `1000000`
   - matrix_mult: `300`
   - sssp: `3000`
3. **Compare:** stdout, after removing the timing lines. For libbmp_write, the written BMP was compared byte for byte.

kmeans, quicksort and matrix_mult print no result. For these three, copies of each version print a checksum of the
result. The C copy is `../rustassure`'s; the Rust copy adds the same checksum after the computation. They are in
`reproduce/check/`, and the full check output is `reproduce/check/verify_output.txt`.

| Benchmark | C checksum | Rust checksum |
|---|---|---|
| kmeans | `501050.832686 22917409` | `501050.832686 22917409` |
| quicksort | `537556244823891398`, sorted | `537876225296013093`, sorted |
| matrix_mult | `4768269445439` | changes on every run, e.g. `3383599224285`, `5079332420409`, `-5475290046583` |

### Known issue: `rand()`

Each C `main()` seeds glibc with `srand(...)` and builds its input with `rand()`. Because the whole program is
translated, the model writes its own generator in Rust, and how faithful it is varies:

- **kmeans and libbmp_write:** reimplement glibc's `random()` (the additive feedback generator, seeded through the
  16807 LCG), so the data matches C exactly.
- **quicksort:** uses a 64-bit LCG seeded with the same `10000`. The array differs from C's but is the same on
  every run, and the result is sorted.
- **matrix_mult** (`fill_matrix`) and **sssp** (`generateRandomGraph`): seed from `std::collections::hash_map::RandomState`,
  so the input changes on every run.
  - sssp still matches, because it prints only the number of reachable nodes. At 50% edge density, every node is
    reachable on any graph.

The timing comparisons are affected too. quicksort sorts different data, and matrix_mult multiplies different
matrices, though at the same size.

## Problems hit during the run

1. **c2rust temporary file race.**
   - **What happened:** c2rust 0.20 always writes its temporary compile database to `$TMPDIR/compile_commands.json`.
     On the first launch, the parallel runs deleted each other's copy, and libcsv, pagerank, cjson_parse and rfft
     stopped before any LLM call.
   - **Fix:** each benchmark now gets its own `TMPDIR` (`reproduce/run_sactor_sonnet55.sh`), and those four were rerun.
   - Their `logs/` and `sactor_console.log` still contain the failed launch.
2. **sssp: c2rust `use` lines in struct definitions (fixed in SACToR).**
   - **Cause:** `<linux/perf_event.h>` brings in header functions with inline asm, so c2rust adds
     `use c2rust_asm_casts::AsmCastTrait; use core::arch::asm;` to its file. SACToR copies the unidiomatic structs
     from c2rust's output, uses included.
   - **Effect:** `c2rust_asm_casts` is not a dependency of SACToR's build crate, so every function's compile check
     failed on that import, whatever the model wrote. `createGraph`, `addEdge`, `freeGraph` and `sssp` each used all
     6 attempts.
   - **Fix:** `unidiomatic_translator.py` now drops those two lines from struct definitions
     (`reproduce/sactor-local-changes.patch`), and sssp was rerun from scratch.
3. **libbmp_write: one hand fix in the unidiomatic code.**
   - **Cause:** the C globals `s` (the MD5 shift table) and `pad` become Rust `static`s. `md5_final` has a local
     `s`, and `bmp_header_init_df` a local `pad`. That is legal in C, but a Rust `let` cannot shadow a static
     (E0530).
   - **Effect:** each function compiled alone, but SACToR's combine step failed.
   - **Fix:** the two locals were renamed (`st`, `row_pad`; `libbmp_write/hand_fix_unidiomatic.patch`), and the run was
     resumed. The idiomatic step then completed with no further changes.

## SACToR changes used for this run

These changes are in `reproduce/sactor-local-changes.patch`, on top of `3c07e5a`:

- The c2rust `use`-line fix for struct definitions described above.
- A `verifier.allow_unsafe_in_idiomatic` option, default `false`. It was not enabled for this run.
