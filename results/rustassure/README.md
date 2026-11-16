# RustAssure + Claude Sonnet 5.5 on the Oxivolve time_versions benchmarks

Ten C programs from `davsec-lab/c_to_rust`, branch `oxivolve_fuzzing`, directory
`Oxivolve/C/time_versions/` (`<bench>_time.c`), translated to Rust with
RustAssure's LLM mode and Claude Sonnet 5.5. Run on 2026-11-12.

## Setup

- Translator: `src/python/translationValidator.py` on the `llm-based` branch
  (head `b9f8a7b`, plus the working-tree changes listed at the end).
- Command, one benchmark at a time (five ran in parallel):
  `python translationValidator.py --src=<input dir> --translator-mode=struct-fn-replay --llm-mode=claude-sonnet-5-5`
- Model: `claude-sonnet-5-5`, default sampling (the model rejects a temperature),
  default adaptive thinking. Claude runs translate functions one at a time.
- Toolchain: rustc/cargo 1.64.0, `libc = "=0.2.149"`.
- Input per benchmark: the C file, `clang -E -P` of it, and
  `performance_information.json` with `main()` as the performance prompt and
  the run arguments (the ones in `run_variants_benchmarks.sh`).

## Layout

```
<bench>/input/<bench>.c                     C program given to RustAssure (copy of <bench>_time.c)
<bench>/input/performance_information.json  main() used for the performance prompt, and the run arguments
<bench>/run/                                RustAssure's output directory, minus the built binary
    performance.rs          final Rust program: translated functions + translated main()
    merged_funcs.rs         translated functions only (this is what CROWN analyses)
    contexted_structs.rs    translated types
    split_blocks/  *.i      per-function Rust and per-function C
    crown_statistics.json   CROWN unsafe counts
    performance_metrics.json, token_usage_summary.json, token_usage.jsonl, run_config.json
    *_validator*.log        full pipeline log
Cargo.toml                  builds every performance.rs as a binary: cargo build --release
```

## Results

| Benchmark | Output vs. C | CROWN: unsafe ptrs / unsafe usages / unsafe fn calls | LLM calls | Cost (USD) |
|---|---|---|---|---|
| libcsv | same | 0 / 0 / 0 | 32 | 0.254 |
| pagerank | same, apart from one extra blank line | 0 / 0 / 0 | 4 | 0.059 |
| cjson_parse | same | 2 / 0 / 2 (and 3 `static mut` accesses) | 29 | 0.404 |
| libbmp (parse) | same | 0 / 0 / 0 | 18 | 0.135 |
| libbmp_write | written BMP byte-identical | 0 / 0 / 1 | 29 | 0.222 |
| rfft | same | 0 / 0 / 0 | 7 | 0.060 |
| kmeans | same checksum | 0 / 0 / 0 | 10 | 0.053 |
| quicksort | same checksum | 0 / 0 / 0 | 5 | 0.030 |
| matrix_mult | **different** (random input, see below) | 0 / 0 / 1 | 10 | 0.050 |
| sssp | same, but on a different random graph (see below) | 0 / 0 / 0 | 15 | 0.259 |
| **Total** | | | 159 | **1.53** |

All ten `performance.rs` compile with rustc 1.64.0 and 1.86.0. The cost covers
the final run of each benchmark only, not earlier attempts that were stopped.

CROWN counts cover `merged_funcs.rs`. The `main()` that the model writes for the
performance run is not analysed. Several of those call libc `srand`/`rand`
through FFI so the random sequence matches C, which adds `unsafe` blocks that
these counts leave out.

### How "Output vs. C" was checked

The C file was built with `clang -O3` and `performance.rs` with
`cargo build --release` (rustc 1.64). Both ran on the same small input, and
their stdout was compared after removing the timing lines.

| Benchmark | Input |
|---|---|
| libcsv | first 20 MB of `metadata.csv` |
| pagerank | first 300,000 lines of `com-lj.ungraph.txt` |
| cjson_parse | `pokedex.json` |
| libbmp | `test_bmps/` |
| libbmp_write | `300 200`; the BMP file it writes was compared byte for byte |
| rfft | no arguments |
| kmeans | `100000 10` |
| quicksort | `1000000` |
| matrix_mult | `300` |
| sssp | `3000` |

kmeans, quicksort and matrix_mult print no result. For these, a copy of each
version (C and Rust) prints a checksum of the result after
`MAIN COMPUTATION END`. The committed files do not have this checksum.

The timings in `performance_metrics.json` come from the full inputs while five
benchmarks ran at once on one machine, and no C baseline was run. Do not
compare them with other numbers.

### Known issue: `rand()` outside `main()`

The C `main()` seeds with `srand(10000)`. Then `fill_matrix` (matrix_mult) and
`generateRandomGraph` (sssp) call `rand()`.

The translated `main()` calls libc `srand(10000)`, because the performance
prompt asks for libc `srand`/`rand`. The function prompts have no such rule, so
the model wrote its own xorshift generator for those two functions, seeded from
`SystemTime::now()`. As a result, the input data differs from C and changes on
every run:

- matrix_mult, size 300: C gives checksum `4768269445439` on every run; two
  Rust runs gave `1364752146615` and `-2477243370158`.
- sssp, 3000 nodes: the output still matches, because it only prints the number
  of reachable nodes. At 50% edge density every node is reachable on any graph.

kmeans and quicksort are not affected, because their `rand()` calls are in
`main()`.

## Pipeline changes used for this run

These changes were in the `llm-based` working tree on top of `b9f8a7b`:

- A Claude Sonnet 5.5 translator. It sets no temperature, keeps only the text
  blocks of the reply, and treats a refusal as an empty answer.
- The performance check reads the time_versions timing lines
  (`Time taken ...: X seconds` and `... computation time: X seconds`) and sums
  them.
- CROWN runs without the inherited `RUSTUP_TOOLCHAIN=1.64.0`, and under a file
  lock so parallel runs do not overwrite its shared crate.
- Performance `main()`:
  - When needed, `use std::os::unix::ffi::OsStrExt` is added.
  - Compile errors go back to the model, up to 5 times. libcsv needed one
    round, because labeled blocks are unstable on 1.64.
- The struct, function and SCC prompts use the original RustAssure wording.
