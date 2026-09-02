# Skip List Benchmark (C)

Benchmarks the [jrsl](https://github.com/Garfield1002/jrsl) skip list
implementation against a workload of integer key inserts, updates, removes,
and searches.

The driver in `skiplist.c::main` reads its input data from a binary file
(passed as `argv[1]`); `generate_data.py` produces that file deterministically
from a seeded `xorshift64*` RNG, mirroring the convention used by the other
`inputs-complex/*` benchmarks (cjson reads `pokedex.json`, libcsv reads a
`.csv`, pageRank reads an edge list, etc.).

## Files

| File | Description |
|---|---|
| `skiplist.c` | Skip list implementation + benchmark driver |
| `skiplist.i` | Preprocessed C consumed by the perfassure translation pipeline |
| `skiplist.ll` | LLVM bitcode (emitted by `clang-wrapper.sh`) |
| `performance_information.json` | Main-function prompt + CLI args for perfassure's perf stage |
| `generate_data.py` | Writes `data.bin` from a seeded xorshift64\* RNG |
| `data.bin` | Default N=100,000 input file consumed by the binary (regenerate as needed) |
| `clang-wrapper.sh` | Local copy of the shared wrapper that builds the binary AND emits `skiplist.i` / `skiplist.ll` in one shot |
| `Makefile` | Builds via `clang-wrapper.sh` |

## Binary file layout

`data.bin` is little-endian, no padding:

```
header   4 x uint64   N, UPDATES, REMOVES, SEARCHES
arrays
    int32   INSERT_KEYS[N]
    char    INSERT_DATA[N]
    int32   UPDATE_KEYS[UPDATES]
    char    UPDATE_DATA[UPDATES]
    int32   REMOVE_KEYS[REMOVES]
    int32   SEARCH_KEYS[SEARCHES]
```

The RNG is seeded with `0xDEADBEEFCAFEBABE`, so the file is byte-reproducible
given `N`.

## Standalone build / run

```bash
python3 generate_data.py 100000     # writes data.bin
make                                # invokes clang-wrapper.sh: emits skiplist_c + skiplist.i + skiplist.ll
./skiplist_c data.bin
make clean                          # removes binary, .i, .ll
```

Regenerate `skiplist.i` (the file the perfassure pipeline ingests) any time
`skiplist.c` changes — `make` does this automatically via the wrapper.

`N` is clamped to `[1000, 10000000]` by the generator.

## Operation counts derived from N

| Operation | Count |
|---|---|
| Inserts | N |
| Updates | N / 2 |
| Removes | N / 2 (half hits, half misses) |
| Searches | N (half hits, half misses before remove effects) |

## Output

```
=== SkipList Benchmark Results ===
Operations completed:
  Inserts:  100000
  Updates:  50000
  Removes:  50000 (hits: 25000, misses: 25000)
  Searches: 100000 (hits: 37443, misses: 62557)
Final skiplist length: 75000
Checksum: 137443
elapsed_ms: 261
```

`Checksum:` and `elapsed_ms:` are the lines the perfassure pipeline parses
(see `extractElapsedMs` / `extractChecksum` in
`src/python/gpt_translation/performance_mixin.py`).

## Use with perfassure

```bash
cd src/python
python3 translationValidator.py --src=./inputs-complex/skiplist
```

`performance_information.json` ships `input_arguments = "../data.bin"`; the
performance stage runs from inside `individual-funcs_*/temp/` (or similar)
and resolves that relative path back to this directory.
