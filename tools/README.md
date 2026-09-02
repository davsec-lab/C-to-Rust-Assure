# Backend Tool Dependencies

The **lab-modified** tools the RustAssure backend depends on, pinned here as submodules.
The upstream `rustassure` repository once kept KLEE in `src/klee`, then removed it in commit `5e16a936
"remove unused submodules"`, leaving the dependency existing only on the development machine, with no record in the repository.
This directory brings them back under version control.

Initialization:

```bash
git submodule update --init --recursive
```

---

## rustify-klee — Modified KLEE

`git@github.com:davsec-lab/rustify-klee.git`, pinned at `d880ceb4` (2025-08-08 "feat : add base address").

**Not upstream KLEE.** Contains lab-added debugging and state-export output that the backend pipeline depends on:
`[DEBUG][before_execution]` / `[DEBUG][state_dumps]` / `[DEBUG][halt_execution]` /
`[DEBUG][uncoverd_instructions]` / `Base Address is :`.

`evaluationScripts/coverage.py` parses `[DEBUG][coverd_instructions]`,
and `countKleeTerminate.py` parses `[DEBUG][halt_execution]` — switching to upstream KLEE would break them outright.

Build (requires LLVM 14 + z3):

```bash
mkdir -p klee-build && cd klee-build
cmake -DCMAKE_BUILD_TYPE=Release -DENABLE_TCMALLOC=0 -DENABLE_SOLVER_Z3=ON ../rustify-klee
make -j$(nproc) && sudo make install
```

> Current state on this machine: installed at `/usr/local/bin/klee`; build revision matches this submodule's HEAD.
> Running requires `LD_LIBRARY_PATH=/home/gabe/llvm-target/lib` (see `../env.sh`),
> otherwise it reports `libLLVMipo.so.14: cannot open shared object file`.

## typedefextractor — Static Analysis Tools (clang fork)

`git@github.com:davsec-lab/typedefextractor.git`, pinned at `c186ff5b3` (2026-06-23).

The frontend's `typedefFilter.py` / `functionAndDepsExtractor.py` call it to prune unused type definitions
from preprocessed `.i` files and to extract structs and static symbols. Binaries provided:

| Tool | Purpose |
|---|---|
| `unused-typedef-extractor` | Remove typedefs the function does not reference (`--root-function=<fn>`) |
| `static-and-struct-def` | Extract static and struct definitions |
| `struct-field-use-printer` | Struct field usage |
| `struct-with-generic-pointer-printer` | Structs containing generic pointers |
| `duplicate-struct-remover` | Deduplicate struct definitions |

After building, the build directory must be added to `PATH` (on this machine: `/home/gabe/typedefextractor-target/bin`,
which is also the source of the backend's `opt` / `llvm-link` / `clang` — **must match the `LLVM_DIR`
used when building the Symbolizer pass**, otherwise the pass's `.so` ABI will not match).

---

## Historical Submodules Confirmed No Longer Needed

The remaining entries in `rustassure`'s early `.gitmodules`, verified to have no references left in the current code, hence not included:

| Submodule | Basis for the verdict |
|---|---|
| `rustify-SVF` | No references left anywhere in the code |
| `davsec-lab/networkx` | Submodule directory is empty; `distance.py` uses standard `networkx` (3.4.2 in the venv) |
| `rustify-core-utils` / `minutils` | Evaluation input corpora, not tool dependencies |
