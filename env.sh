#!/bin/bash
# assure environment configuration — `source env.sh` before any frontend/backend command
#
# Probed from the host environment of 2026-08-18. Three things:
#   1. Python venv (all frontend and backend dependencies live in it)
#   2. Path to the LLVM 14 shared libraries KLEE needs (otherwise klee reports libLLVMipo.so.14 not found)
#   3. rustc pinned at 1.64.0 (aligned with the LLVM 14 backend, see INTEGRATION.md §3.4)

export ASSURE_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# 1. Python
export ASSURE_VENV="${ASSURE_VENV:-/home/gabe/venv}"
if [ -x "$ASSURE_VENV/bin/python" ]; then
    export PATH="$ASSURE_VENV/bin:$PATH"
else
    echo "[env.sh] WARN: venv does not exist: $ASSURE_VENV" >&2
fi

# 2. LLVM 14 shared libraries KLEE depends on
# Note the :- default — callers often run with `set -u`, and an undefined variable would make the source fail outright.
export LD_LIBRARY_PATH="/home/gabe/llvm-target/lib:${LD_LIBRARY_PATH:-}"

# 3. LLVM 14 toolchain (opt / llvm-link / llvm-dis / clang),
#    must match the LLVM_DIR used when building the Symbolizer pass
export ASSURE_LLVM_DIR="/home/gabe/typedefextractor-target"
export PATH="$ASSURE_LLVM_DIR/bin:$PATH"

# 4. rustc 1.64.0
export RUSTUP_TOOLCHAIN="1.64.0"

# 5. API keys — defined in ~/.zshrc, which non-interactive shells do not load automatically.
#    Extract only the three variables needed; do not source the whole file (avoids pulling in unrelated interactive config).
#    Note: no ${!var} indirect expansion — that is bash-only syntax and errors under zsh.
_assure_load_key() {
    # $1 = variable name. If currently unset, extract it from the export line in ~/.zshrc.
    [ -f "$HOME/.zshrc" ] || return 0
    _v=$(sed -n "s/^export $1=[\"']\{0,1\}\([^\"']*\)[\"']\{0,1\}$/\1/p" "$HOME/.zshrc" | tail -1)
    [ -n "$_v" ] && export "$1=$_v"
    unset _v
}
# All in ${VAR:-} form — callers often run with `set -u` (run_eval / the P1 scripts both do),
# and a bare $VAR reference to an undefined variable would fail the whole source and silently abort the caller.
[ -z "${ANTHROPIC_API_KEY:-}" ] && _assure_load_key ANTHROPIC_API_KEY
[ -z "${OPENAI_KEY:-}" ]        && _assure_load_key OPENAI_KEY
[ -z "${GEMINI_API_KEY:-}" ]    && _assure_load_key GEMINI_API_KEY

# PerfAssure reads OPENAI_KEY; the openai SDK reads OPENAI_API_KEY. Align the two.
[ -n "${OPENAI_KEY:-}" ] && [ -z "${OPENAI_API_KEY:-}" ] && export OPENAI_API_KEY="$OPENAI_KEY"

# 6. KLEE time caps (for development iteration; unset both variables to return to 7200/10800 when producing official data)
export ASSURE_KLEE_MAX_TIME_C="${ASSURE_KLEE_MAX_TIME_C:-600}"
export ASSURE_KLEE_MAX_TIME_RUST="${ASSURE_KLEE_MAX_TIME_RUST:-600}"

# 7. Cargo offline — cargo 1.64 uses the git index; one online resolution takes 180s+,
#    which blows past compileWithCargoProject's 120s timeout. libc is version-pinned and in the local
#    registry cache, so offline suffices. To add a new dependency, temporarily unset this variable first to warm the cache.
export CARGO_NET_OFFLINE="${CARGO_NET_OFFLINE:-true}"

echo "[env.sh] python : $(command -v python3)"
echo "[env.sh] rustc  : $(rustc --version 2>/dev/null)"
echo "[env.sh] clang  : $(clang --version 2>/dev/null | head -1)"
echo "[env.sh] opt    : $(opt --version 2>/dev/null | grep -i 'LLVM version' | tr -d ' ')"
echo "[env.sh] klee   : $(klee --version 2>/dev/null | head -1)"
_assure_show_key() {
    eval "_v=\${$1:-}"
    if [ -n "$_v" ]; then echo "[env.sh] $1 : loaded (${#_v} chars)"; else echo "[env.sh] $1 : not set"; fi
    unset _v
}
_assure_show_key ANTHROPIC_API_KEY
_assure_show_key OPENAI_KEY
_assure_show_key GEMINI_API_KEY
echo "[env.sh] klee max-time : C=${ASSURE_KLEE_MAX_TIME_C:-default}s Rust=${ASSURE_KLEE_MAX_TIME_RUST:-default}s"
echo "[env.sh] cargo   : offline=${CARGO_NET_OFFLINE} libc=${ASSURE_CARGO_LIBC_REQ:-=0.2.149}"
