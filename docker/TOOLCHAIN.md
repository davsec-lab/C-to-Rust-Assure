# Toolchain provenance

`docker/build_image.sh` references nine host directories that no repository
carries. This file records where each one came from, so the image can be
rebuilt on a machine that does not already have them.

**Read this first: rebuilding all of it is roughly a day of compiling.** If you
can obtain the prebuilt image (`docker pull`), do that instead — the image is
self-contained and none of the sections below apply. This file exists so that
the image is *reproducible*, not because reproducing it is the normal path.

All paths below are `$HOST_HOME`-relative. `HOST_HOME` defaults to
`/home/gabe` and can be overridden in the environment, but see
[§0](#0-why-the-paths-are-absolute) before you do.

---

## 0. Why the paths are absolute

The Dockerfile replicates the host's absolute paths rather than relocating
anything. Two reasons, both from the Dockerfile header:

1. The binaries are dynamically linked against each other (`opt` →
   `llvm-target/lib`, `crown` → the nightly toolchain's `librustc_driver-*.so`).
2. **The venv's shebangs are baked to `$HOST_HOME/venv/bin/python3`.**

So `HOST_HOME=/home/alice ./docker/build_image.sh` only works if the *whole*
toolchain — the venv especially — was built under `/home/alice`. Overriding the
variable does not relocate an existing toolchain.

---

## 1. `llvm-target` (376 MB) — stock LLVM 14, shared libs

What KLEE links against (`libLLVMipo.so.14` and ~212 others).

| | |
|---|---|
| source | `https://github.com/llvm/llvm-project.git` @ tag **`llvmorg-14.0.0`** (`329fda39c507`) |
| patch | `docker/patches/llvm14-signals-cstdint.patch` — adds `<cstdint>` to `llvm/include/llvm/Support/Signals.h`; LLVM 14 does not compile against newer libstdc++ without it |

```bash
git clone https://github.com/llvm/llvm-project.git && cd llvm-project
git checkout llvmorg-14.0.0
git apply <assure>/docker/patches/llvm14-signals-cstdint.patch
cmake -S llvm -B ../llvm-build -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_PROJECTS=clang \
  -DLLVM_TARGETS_TO_BUILD=all \
  -DBUILD_SHARED_LIBS=ON \
  -DLLVM_ENABLE_ASSERTIONS=OFF \
  -DLLVM_ENABLE_RTTI=OFF -DLLVM_ENABLE_EH=OFF \
  -DCMAKE_INSTALL_PREFIX=$HOST_HOME/llvm-target
ninja -C ../llvm-build install
```

Note `BUILD_SHARED_LIBS=ON` — this tree is the *shared* build. It is not
interchangeable with `typedefextractor-target` (§2), which is static.

## 2. `typedefextractor-target` (5.1 GB) — the patched clang

Provides `opt` / `llvm-link` / `llvm-dis`, the clang static libs, and the five
clang tools including `unused-typedef-extractor`.

| | |
|---|---|
| source | submodule **`tools/typedefextractor`** (`davsec-lab/typedefextractor` @ `c186ff5b`) |
| what it is | a fork of llvm-project 14.0 that **patches clang itself**, not just adds tools |

The patches the pipeline depends on — stock LLVM 14 will **not** substitute:

| commit | file | why it matters |
|---|---|---|
| `4ab2c8e71` | `clang/lib/Tooling/Tooling.cpp` | lets clang tools accept **`.i` files**; the pipeline feeds `.i` to `unused-typedef-extractor` (`typedefFilter.py:229`) |
| `edf9dea70` | `clang/lib/Tooling/CommonOptionsParser.cpp` | do not error when a compilation database is missing |
| `99e8ba371` | `clang/lib/CodeGen/CodeGenModule.cpp`, `LangOptions.def` | always emit bitcode for unused globals — required by the backend |
| `e6a8a9c53` | `clang/lib/Lex/Lexer.cpp` | disable the null-character warning |
| `71fc90d34` | `clang/lib/Driver/ToolChains/Clang.cpp` | always dump full variable names |

Linking the tool against stock clang produces a binary that **silently behaves
differently** (rejects `.i`, demands a compile DB) rather than failing to build.

```bash
cmake -S <assure>/tools/typedefextractor/llvm -B typedefextractor-build -G Ninja \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_ENABLE_PROJECTS="clang;clang-tools-extra" \
  -DLLVM_TARGETS_TO_BUILD=all \
  -DBUILD_SHARED_LIBS=OFF \
  -DLLVM_ENABLE_RTTI=OFF \
  -DCMAKE_INSTALL_PREFIX=$HOST_HOME/typedefextractor-target
ninja -C typedefextractor-build install
```

The build tree is ~7.4 GB and is **not** needed afterwards: the tool itself
rebuilds standalone in ~24 s against the installed headers and static libs
(`SOURCE_CANDIDATE.md` §14).

## 3. KLEE binaries (`/usr/local/bin/klee*`, `/usr/local/lib/klee`)

A modified KLEE — the backend's `coverage.py` and `countKleeTerminate.py` parse
its custom `[DEBUG][state_dumps]` / `Base Address is` output, so upstream KLEE
breaks them.

| | |
|---|---|
| source | submodule **`tools/rustify-klee`** (`davsec-lab/rustify-klee` @ `d880ceb4`) |
| built against | `llvm-target` (§1), **not** `typedefextractor-target` |

```bash
cmake -S <assure>/tools/rustify-klee -B klee-build \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_DIR=$HOST_HOME/llvm-target/lib/cmake/llvm \
  -DENABLE_SOLVER_Z3=ON \
  -DENABLE_POSIX_RUNTIME=ON \
  -DKLEE_UCLIBC_PATH=$HOST_HOME/klee-uclibc \
  -DENABLE_UNIT_TESTS=OFF -DENABLE_SYSTEM_TESTS=ON
```

> ⚠ **Gap.** The recorded build used `KLEE_UCLIBC_PATH=$HOST_HOME/klee-uclibc`,
> and that directory **no longer exists on the reference host** — it was not
> preserved. Building KLEE from scratch needs klee-uclibc obtained separately
> (see the KLEE docs) or `ENABLE_POSIX_RUNTIME=OFF`, which has not been tested
> against this pipeline. This is the least reproducible step.

The Dockerfile copies eight binaries (`klee`, `klee-stats`, `klee-replay`,
`klee-exec-tree`, `klee-zesti`, `ktest-tool`, `ktest-gen`, `ktest-randgen`)
plus `/usr/local/lib/klee`. `klee-stats` is required — `evaluationScripts/
coverage.py` shells out to it, and without it the backend throws
`FileNotFoundError` only after KLEE has already burned its full time budget.

## 4. `crown` (3.1 GB) — the unsafe-code analysis

| | |
|---|---|
| source | submodule **`tools/crown`** (`GabeBai/fork-crown` @ `0f4676a7`, branch `test/gabe`) |
| ⚠ not upstream | `KomaEc/crown` (the upstream) does **not** contain `0f4676a7`. The pipeline uses the fork. |
| toolchain | ships its own `rust-toolchain`: `nightly-2023-01-26` with `rust-src`, `rustc-dev`, `llvm-tools-preview` |

`build_image.sh` copies `$HOST_HOME/crown` — the *built* tree (the 2.9 GB
`target/` included), not the submodule. Build it with the pinned nightly, then
point `HOST_HOME/crown` at the result. `docker/Dockerfile`'s self-check asserts
`$HOST_HOME/crown/analyse.sh` exists.

## 5. `venv` (906 MB, 132 packages, Python 3.12.7)

Now recorded in **`requirements.txt`** at the assure root. Must be created at
`$HOST_HOME/venv` (§0 — the shebangs).

```bash
python3.12 -m venv $HOST_HOME/venv
$HOST_HOME/venv/bin/pip install -r <assure>/requirements.txt
```

Note `tree-sitter` is pinned to a git revision, not a release. The Dockerfile
additionally `pip install clang==14.0` into the system python for the libclang
bindings — that is separate from this venv.

The **outer** framework has its own venv (`.venv-outer/`, 102 packages) recorded
in the parent repository's `requirements.txt`. It is host-side only and never
enters the image.

## 6. `.rustup` / `.cargo`

Reproducible with rustup; only two toolchains are needed and
`build_image.sh` stages just those (the reference host's `.rustup` is 19 GB
across 12 toolchains).

```bash
rustup toolchain install 1.64.0             # backend bitcode, aligned with LLVM 14
rustup toolchain install nightly-2023-01-26 # CROWN only
```

`env.sh` sets `CARGO_NET_OFFLINE=true` because cargo 1.64's git index
resolution takes 180 s+ and blows `compileWithCargoProject`'s 120 s timeout.
That requires the crate in the local registry cache — warm it once with the
variable unset (`libc` is pinned at `0.2.149`).

---

## Summary of what a fresh machine needs

| | from the repo? | effort |
|---|---|---|
| llvm-target | ✅ upstream tag + archived patch | ~1 h build |
| typedefextractor-target | ✅ submodule | ~2 h build, 7.4 GB tree |
| KLEE | ⚠ submodule, but klee-uclibc missing | unresolved |
| crown | ✅ submodule (the fork) | nightly toolchain + build |
| venv | ✅ requirements.txt | minutes |
| .rustup / .cargo | ✅ rustup | minutes + cache warm |

Everything except klee-uclibc is now pinned to a commit or a lockfile.
