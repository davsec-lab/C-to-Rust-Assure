#!/bin/bash
# prepare_and_run.sh — container entry for one eval run (SOURCE_CANDIDATE.md §3).
#
#   docker run --rm -v <host assure>/.git:/repo:ro \
#       -e CAND_BRANCH=cand/<run>/<k> -e BASE_SHA=<sha> \
#       <image> /work/assure/prepare_and_run.sh --src ... --run-id ...
#
# A candidate is a branch of this repository. This script materialises that
# branch over the image's checkout and then hands off to run_eval unchanged.
#
# Why fetch+checkout rather than mounting the branch's files:
#   · the image's /work/assure holds gitignored build artifacts (75 MB of .so
#     under src/Symbolizer/build/) that a whole-tree mount would shadow
#   · checkout deletes files the branch removed; copying does not
#   · the two self-checks below turn a stale image into a loud failure instead
#     of a silent evaluation of the wrong source
#
# The host repo is mounted READ-ONLY. fetch only reads objects; the writable git
# state (HEAD, index) is this container's own copy in the overlay layer and dies
# with --rm. A read-write mount would be a correctness bug, not just a security
# one: HEAD and index are per-working-tree, so checking out here would leave the
# human's assure/ working copy on a candidate branch with every file reported as
# modified, and a container killed mid-checkout would leave index.lock behind and
# wedge the host repo. (Measured 2026-08-31: `git checkout` against a read-only
# .git fails outright with "Unable to create ... index.lock".)
#
# NEVER run `git clean -fdx` here: src/Symbolizer/build/*.so is gitignored and
# would be deleted, after which no function produces symbols and the cause is
# near-impossible to attribute. `checkout -f` does not touch untracked files.
#
# Exit codes (distinct so the outer layer can report the cause):
#   90  image tree is not clean
#   91  image is built from a different base than the candidate branched from
#   92  fetch failed (branch missing, or /repo not mounted)
#   93  checkout failed
set -uo pipefail

ASSURE=/work/assure
REPO=/repo
BRANCH="${CAND_BRANCH:-}"
BASE_SHA="${BASE_SHA:-$(cat /work/base_sha 2>/dev/null)}"

say() { echo "[prepare] $*" >&2; }

# /repo is the host's .git, owned by the host user; this container is root, and
# git refuses to read a repository it considers foreign-owned. Set here as well
# as in the Dockerfile so the script works against an image that predates it.
git config --global --add safe.directory "$REPO" 2>/dev/null || true
git config --global --add safe.directory "$ASSURE" 2>/dev/null || true

# ── ① the image's tree must be a clean checkout of BASE_SHA ──────────────
# git is its own checksum here: this validates every tracked file, not a stamp
# we wrote ourselves.
# --ignore-submodules=all: the three submodules are 300+ MB and are frozen by the
# gate anyway (they live outside src/python/), so recursing into them costs
# seconds per run and can catch nothing a candidate could have caused.
dirty="$(git -C "$ASSURE" status --porcelain --ignore-submodules=all)"
if [ -n "$dirty" ]; then
  say "FAIL image tree is not clean; the image was built from a dirty working tree"
  echo "$dirty" | head -20 >&2
  exit 90
fi

head_sha="$(git -C "$ASSURE" rev-parse HEAD)"
if [ -n "$BASE_SHA" ] && [ "$head_sha" != "$BASE_SHA" ]; then
  say "FAIL base mismatch: image is at $head_sha, candidate branched from $BASE_SHA"
  say "     rebuild the image from $BASE_SHA (docker/build_image.sh)"
  exit 91
fi
say "base ok $head_sha"

# ── ② materialise the candidate branch ───────────────────────────────────
# No branch = baseline: stay at BASE_SHA. The baseline is the empty diff, so
# this path is the pre-migration behaviour bit for bit.
if [ -n "$BRANCH" ]; then
  git -C "$ASSURE" fetch -q "$REPO" "$BRANCH" || { say "FAIL fetch $BRANCH from $REPO"; exit 92; }
  git -C "$ASSURE" checkout -q -f FETCH_HEAD  || { say "FAIL checkout FETCH_HEAD"; exit 93; }
  say "checked out $BRANCH @ $(git -C "$ASSURE" rev-parse --short HEAD)"
  say "changed vs base: $(git -C "$ASSURE" diff --name-only "$BASE_SHA" HEAD | tr '\n' ' ')"
else
  say "no CAND_BRANCH: running baseline at base"
fi

exec "$ASSURE/run_eval" "$@"
