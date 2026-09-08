# assure runtime image (DESIGN.md §7 "Prebuilt image")
#
# Strategy: **full COPY, replicating the host's absolute paths**.
#
# Why no slimming and no path changes — both were forced by real-world testing:
#
#   1. The binaries are all dynamically linked. opt depends on the .so files under
#      llvm-target/lib, crown depends on the nightly toolchain's librustc_driver-*.so.
#      Cherry-picking binaries requires resolving dependencies transitively; missing one
#      means the runtime error we already hit twice (libLLVMipo.so.14 / librustc_driver-*.so not found).
#   2. The venv shebangs are hard-bound to #!/home/gabe/venv/bin/python3. Changing paths
#      means rebuilding the venv or rewriting all scripts; replicating the paths lets
#      env.sh be reused with zero modifications.
#
# Base image: Ubuntu 24.04 LTS.
#
# The host is 24.10 (Oracular), but **ubuntu:24.10 cannot be used** — it is EOL:
# oracular / oracular-updates / oracular-security on archive.ubuntu.com
# all 404, and apt-get update fails outright (measured exit 100).
#
# Dropping to 24.04 LTS passed ABI verification, all satisfied:
#   klee / opt / clang tools   need GLIBC_2.38   ≤ 24.04's 2.39      ✅
#   klee                       needs GLIBCXX_3.4.32 ≤ 24.04's 3.4.33 ✅
#   venv (python 3.12.7)       24.04 is 3.12.x, same minor, compatible ✅
#     (venv/bin/python3 is a symlink pointing to /usr/bin/python3)
FROM ubuntu:24.04

ARG HOST_HOME=/home/gabe

# System dependencies. z3 and zlib are KLEE's dynamic dependencies (confirmed via ldd), graphviz serves pydot/pygraphviz,
# universal-ctags serves the frontend's symbol extraction.
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        ca-certificates git curl bash make cmake \
        z3 libz3-4 zlib1g \
        graphviz libgraphviz-dev \
        universal-ctags \
        python3 python3-venv \
        build-essential \
    && rm -rf /var/lib/apt/lists/*

# ── Toolchain: always replicate host paths ──────────────────────────────
# LLVM 14 + clang fork. Provides opt / llvm-link / llvm-dis plus the 5 clang static analysis tools.
# Must match the LLVM_DIR used when building the Symbolizer pass, otherwise the pass's .so ABI will not match.
COPY --from=typedefextractor / ${HOST_HOME}/typedefextractor-target/

# The LLVM 14 shared libraries KLEE depends on (confirmed via ldd: libLLVMipo.so.14 and a dozen others)
COPY --from=llvmtarget / ${HOST_HOME}/llvm-target/

# Modified KLEE (davsec-lab/rustify-klee @ fae6e1b7 = d880ceb4 + SOR base-mapping
# propagation, -base-object-resolution, -debug-sor; see TOOLCHAIN.md §3).
# The binary contains custom output like [DEBUG][state_dumps] / Base Address is;
# the backend's coverage.py and countKleeTerminate.py parse exactly these — upstream KLEE would break them.
# Copying only the klee binary is not enough — evaluationScripts/coverage.py calls klee-stats
# to compute coverage; without it the backend throws FileNotFoundError at the process_output
# stage and never gets result.csv (measured 2026-08-20: 21 minutes of KLEE wasted before it blew up).
# The P1 rounds ran on the host, which has the full set installed, so this never surfaced.
COPY --from=kleebin klee            /usr/local/bin/klee
COPY --from=kleebin klee-stats      /usr/local/bin/klee-stats
COPY --from=kleebin klee-replay     /usr/local/bin/klee-replay
COPY --from=kleebin klee-exec-tree  /usr/local/bin/klee-exec-tree
COPY --from=kleebin klee-zesti      /usr/local/bin/klee-zesti
COPY --from=kleebin ktest-tool      /usr/local/bin/ktest-tool
COPY --from=kleebin ktest-gen       /usr/local/bin/ktest-gen
COPY --from=kleebin ktest-randgen   /usr/local/bin/ktest-randgen
COPY --from=kleelib / /usr/local/lib/klee/

# CROWN (safety analysis). Note it ships its own rust-toolchain requiring nightly-2023-01-26.
COPY --from=crown / ${HOST_HOME}/crown/

# rustup: only carry the two toolchains in use (the host's .rustup totals 19G; the other 17 are unused)
#   1.64.0             backend bitcode generation, aligned with LLVM 14
#   nightly-2023-01-26 CROWN-only (calls rustc internal APIs)
COPY --from=rustup / ${HOST_HOME}/.rustup/
COPY --from=cargo / ${HOST_HOME}/.cargo/

# Python venv (all frontend and backend dependencies). The path must be ${HOST_HOME}/venv — see the header note.
COPY --from=venv / ${HOST_HOME}/venv/

ENV PATH="${HOST_HOME}/.cargo/bin:${HOST_HOME}/typedefextractor-target/bin:${HOST_HOME}/venv/bin:${PATH}" \
    RUSTUP_HOME="${HOST_HOME}/.rustup" \
    CARGO_HOME="${HOST_HOME}/.cargo" \
    LD_LIBRARY_PATH="${HOST_HOME}/llvm-target/lib" \
    RUSTUP_TOOLCHAIN="1.64.0" \
    CARGO_NET_OFFLINE="true"

# ── extra toolchain bits ─────────────────────────────────────────────────
# Deliberately placed after all the multi-GB COPYs: these lines change as the
# design evolves, and putting them earlier would invalidate those layers.
#
#   dev packages  llvm-config --system-libs wants -lz -ltinfo -lxml2; needed if
#                 anything in the tree is rebuilt against LLVM inside the image
#   clang         Python bindings for libclang; libclang.so is already in
#                 typedefextractor-target, this only adds the bindings so the
#                 pipeline can get a full C AST in pure Python
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
        zlib1g-dev libtinfo-dev libxml2-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir clang==14.0

# ── Workspace ────────────────────────────────────────────────────────────
# The container is L0's batch subprocess: no agent inside, no interactive shell.
#
# assure is COPY'd in **including its .git directory**, and the tree must be a
# clean checkout of BASE_SHA. That is the whole delivery mechanism
# (SOURCE_CANDIDATE.md §3): at run time the container fetches a candidate branch
# from a read-only mount of the host repo and checks it out. The pre-run
# self-check compares `git status --porcelain` and `git rev-parse HEAD` against
# BASE_SHA, so a stale image fails loudly instead of silently evaluating the
# wrong source.
#
# **This COPY is deliberately the last layer.** Advancing the base then rebuilds
# only this layer plus the self-check below — not the apt/pip layer above, which
# would otherwise need the network on every base advance.
COPY --from=assure / /work/assure/

# /work/assure is root-owned (COPY), so ownership already matches; that entry is
# belt-and-braces for any non-root invocation.
#
# /repo is NOT: it is the host's assure/.git bind-mounted in, owned by the host
# user while this container runs as root, and git refuses to read it —
# "fatal: detected dubious ownership in repository at '/repo'" — which fails the
# fetch and therefore every candidate. Measured 2026-08-31.
RUN git config --global --add safe.directory /work/assure \
 && git config --global --add safe.directory /repo

WORKDIR /work/assure

# Build-time self-check: any missing item fails here, instead of blowing up halfway through an agent run.
RUN set -eux; \
    klee --version | head -1; \
    klee-stats --help >/dev/null; \
    opt --version | grep -i "LLVM version 14"; \
    llvm-link --version >/dev/null; \
    unused-typedef-extractor --help >/dev/null 2>&1 || true; \
    rustc --version | grep -q "1.64.0"; \
    RUSTUP_TOOLCHAIN=nightly-2023-01-26 rustc --version | grep -q nightly; \
    python3 -c "import tree_sitter_c, tree_sitter_rust, tree_sitter_cpp, networkx, pandas, sympy, openai, anthropic"; \
    test -f ${HOST_HOME}/crown/analyse.sh; \
    test -f /work/assure/env.sh; \
    test -x /work/assure/prepare_and_run.sh; \
    python3 -c "import clang.cindex"; \
    git -C /work/assure rev-parse HEAD; \
    test -z "$(git -C /work/assure status --porcelain --ignore-submodules=all)"; \
    git -C /work/assure rev-parse HEAD > /work/base_sha; \
    printf '%s\n' '#include "clang/Tooling/Tooling.h"' 'int main(){return 0;}' > /tmp/_t.cpp; \
    clang++ -fno-rtti -O2 -s /tmp/_t.cpp $(${HOST_HOME}/typedefextractor-target/bin/llvm-config --cxxflags) \
        -lclangTooling -lclangBasic -lclangAST \
        $(${HOST_HOME}/typedefextractor-target/bin/llvm-config --ldflags --libs --system-libs) \
        -o /tmp/_t && rm -f /tmp/_t /tmp/_t.cpp

CMD ["/bin/bash"]
