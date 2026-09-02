#!/bin/bash
# Build the assure runtime image.
#
#   ./docker/build_image.sh [-t TAG] [--stage-rustup DIR]
#
# Uses BuildKit's **named build contexts** (--build-context) to reference host directories one by one,
# instead of stuffing 14 GB into a single build context — the latter requires a tar pass first, extremely slow.
#
# The only thing needing staging is .rustup: the host has 19 GB / 12 toolchains, the image needs only 2,
# and --build-context cannot take just a subdirectory, so a slimmed copy is hard-linked out first (seconds, no extra space).
set -euo pipefail

TAG="assure-dev:1.0"
STAGE="${TMPDIR:-/tmp}/assure-rustup-stage"
# Absolute paths are replicated into the image (see the Dockerfile header: the venv
# shebangs are baked to $HOST_HOME/venv/bin/python3). Override only if you rebuilt
# the whole toolchain under a different home -- see docker/TOOLCHAIN.md.
HOST_HOME="${HOST_HOME:-/home/gabe}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

while [[ $# -gt 0 ]]; do
  case "$1" in
    -t|--tag) TAG="$2"; shift 2 ;;
    --stage-rustup) STAGE="$2"; shift 2 ;;
    -h|--help) sed -n '2,14p' "$0"; exit 0 ;;
    *) echo "Unknown argument: $1" >&2; exit 2 ;;
  esac
done

# ── The image IS the base (SOURCE_CANDIDATE.md §9) ───────────────────────
# Candidates are branches of this repository, delivered by fetching into the
# image's own checkout. That only works if the image ships a **clean** checkout:
# the container refuses to run (exit 90) when `git status --porcelain` is
# non-empty. Catch it here rather than after a 20-minute build.
cleanCheck() {
  local dirty
  dirty="$(git -C "$ROOT" status --porcelain)"
  if [ -n "$dirty" ]; then
    echo "❌ assure's working tree is not clean — the image would ship an unbuildable base:" >&2
    echo "$dirty" | head -20 >&2
    echo "   Commit or stash first; the commit you build from becomes BASE_SHA." >&2
    exit 1
  fi
}
cleanCheck
BASE_SHA="$(git -C "$ROOT" rev-parse HEAD)"
echo "BASE_SHA = $BASE_SHA"

need() { [ -e "$1" ] || { echo "❌ Missing: $1" >&2; exit 1; }; }
need "$HOST_HOME/typedefextractor-target"
need "$HOST_HOME/llvm-target"
need "$HOST_HOME/crown"
need "$HOST_HOME/venv"
need "$HOST_HOME/.cargo"
need /usr/local/bin/klee
need /usr/local/lib/klee
need "$ROOT/env.sh"

# ── Slim down .rustup (19 GB → about 3 GB) ───────────────────────────────
echo "[1/2] Staging rustup toolchains → $STAGE"
rm -rf "$STAGE"; mkdir -p "$STAGE/toolchains"
for t in 1.64.0-x86_64-unknown-linux-gnu nightly-2023-01-26-x86_64-unknown-linux-gnu; do
  src="$HOST_HOME/.rustup/toolchains/$t"
  [ -d "$src" ] || { echo "❌ Missing toolchain: $t" >&2; exit 1; }
  # Prefer hard links (instant on the same partition, no extra space), fall back to copying on failure.
  # Note the half-finished result must be cleaned before falling back: cp -al fails across filesystems,
  # but it **has already created the target directory**; a direct cp -a src dest then copies the source
  # into that directory, producing a nested toolchains/<t>/<t>/... layout, which makes rustup report
  # "Missing manifest in toolchain" (the manifest hierarchy under lib/rustlib no longer lines up).
  dst="$STAGE/toolchains/$t"
  if ! cp -al "$src" "$dst" 2>/dev/null; then
    rm -rf "$dst"
    cp -a "$src" "$dst"
  fi
  echo "    $t"
done
cp -a "$HOST_HOME/.rustup/settings.toml" "$STAGE/" 2>/dev/null || true
# Self-check the hierarchy after staging, to avoid carrying a broken copy all the way to the last step of a 14 GB build
for t in 1.64.0-x86_64-unknown-linux-gnu nightly-2023-01-26-x86_64-unknown-linux-gnu; do
  [ -f "$STAGE/toolchains/$t/lib/rustlib/multirust-channel-manifest.toml" ] \
    || { echo "❌ Staged copy hierarchy is broken (missing manifest): $t" >&2; exit 1; }
done
echo "    Staging done: $(du -sh "$STAGE" | cut -f1)"

# ── Build ─────────────────────────────────────────────────────────────────
echo "[2/2] docker build → $TAG"
DOCKER_BUILDKIT=1 docker build \
  -f "$ROOT/docker/Dockerfile" \
  -t "$TAG" \
  --build-arg HOST_HOME="$HOST_HOME" \
  --build-context typedefextractor="$HOST_HOME/typedefextractor-target" \
  --build-context llvmtarget="$HOST_HOME/llvm-target" \
  --build-context kleebin=/usr/local/bin \
  --build-context kleelib=/usr/local/lib/klee \
  --build-context crown="$HOST_HOME/crown" \
  --build-context rustup="$STAGE" \
  --build-context cargo="$HOST_HOME/.cargo" \
  --build-context venv="$HOST_HOME/venv" \
  --build-context assure="$ROOT" \
  "$ROOT/docker"

echo
echo "✅ Done: $TAG   BASE_SHA=$BASE_SHA"
docker images "$TAG" --format "   Size: {{.Size}}"
echo
echo "Self-check (the RUN at the end of the Dockerfile already ran once at build time):"
echo "   docker run --rm $TAG bash -lc 'source /work/assure/env.sh && klee --version | head -1'"
echo
echo "The image now carries a git checkout at BASE_SHA. Verify with:"
echo "   docker run --rm $TAG bash -lc 'cat /work/base_sha; git -C /work/assure status --porcelain'"
