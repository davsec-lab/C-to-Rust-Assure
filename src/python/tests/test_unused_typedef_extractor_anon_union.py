"""End-to-end regression test for the C++ unused-typedef-extractor's
anonymous-union recursion fix.

Bug: typedefs referenced ONLY inside an anonymous nested union/struct were
stripped because RD->fields() does not iterate into anon-union members. This
test runs the live binary against the real full nanosvg.i and asserts the
victim typedefs (NSVGlinearData, NSVGradialData -- and NSVGgradient when
nothing else references it) survive.
"""
import os
import shutil
import subprocess
import sys
import tempfile


FULL_NANOSVG_I = (
    "/home/gabe/perfassure/src/python/inputs-complex/nanosvg/nanosvg.i"
)
TOOL = "unused-typedef-extractor"
ROOT_FUNCTION = "nsvg__pushAttr"
# Use only types referenced exclusively from anon unions to make the test
# load-bearing for the fix:
EXPECTED_KEPT_TYPEDEFS = (
    "typedef struct NSVGlinearData {",
    "typedef struct NSVGradialData {",
)


def _check_tooling():
    if shutil.which(TOOL) is None:
        print(f"SKIP: {TOOL} not on PATH")
        sys.exit(0)
    if not os.path.isfile(FULL_NANOSVG_I):
        print(f"SKIP: full nanosvg.i not present: {FULL_NANOSVG_I}")
        sys.exit(0)


def _run_filter(srcContent):
    with tempfile.TemporaryDirectory(prefix="utext_anon_test_") as tmp:
        path = os.path.join(tmp, "test.i")
        with open(path, "w") as f:
            f.write(srcContent)
        proc = subprocess.run(
            [TOOL, f"--root-function={ROOT_FUNCTION}", path],
            stdout=subprocess.PIPE, stderr=subprocess.PIPE, text=True, timeout=120,
        )
        with open(path, "r") as f:
            return proc.returncode, f.read(), proc.stderr


def test_anon_union_typedefs_survive():
    _check_tooling()
    with open(FULL_NANOSVG_I, "r") as f:
        original = f.read()

    for needle in EXPECTED_KEPT_TYPEDEFS:
        assert needle in original, (
            f"baseline broken: expected {needle!r} in unfiltered source"
        )

    rc, filtered, stderr = _run_filter(original)
    assert rc == 0, f"tool failed with rc={rc}, stderr head:\n{stderr[:300]}"

    missing = [needle for needle in EXPECTED_KEPT_TYPEDEFS if needle not in filtered]
    assert not missing, (
        "Anon-union-referenced typedefs were wrongly stripped: "
        + ", ".join(repr(m) for m in missing)
    )
    print(
        f"PASS: all {len(EXPECTED_KEPT_TYPEDEFS)} anon-union-only typedefs "
        f"survived filtering."
    )


def test_unused_typedefs_are_still_stripped():
    """Regression guard: the recursion fix must NOT make the tool keep
    everything. A typedef that is genuinely unreferenced should still be
    removed -- otherwise we've over-corrected.

    Synthesize a small input with one referenced anon-union typedef and one
    completely unreferenced typedef, then verify exactly one survives.
    """
    _check_tooling()
    src = """\
typedef struct ReferencedInUnion {
  int a;
} ReferencedInUnion;

typedef struct ActuallyDead {
  int never_used;
} ActuallyDead;

typedef struct Container {
  union {
    ReferencedInUnion x;
  };
} Container;

int nsvg__pushAttr(Container* c) { return c ? 1 : 0; }
"""
    rc, filtered, stderr = _run_filter(src)
    assert rc == 0, f"tool failed with rc={rc}, stderr head:\n{stderr[:300]}"
    assert "typedef struct ReferencedInUnion" in filtered, (
        "Anon-union-referenced typedef wrongly stripped:\n" + filtered
    )
    assert "typedef struct ActuallyDead" not in filtered, (
        "Truly unreferenced typedef leaked through (over-correction):\n" + filtered
    )
    print("PASS: unreferenced typedef still stripped, anon-union-referenced still kept.")


def test_filter_still_reduces_size():
    """Sanity guard: the fix should not turn the filter into a no-op. On the
    full nanosvg.i, filtering with nsvg__pushAttr as root must still strip a
    substantial amount."""
    _check_tooling()
    with open(FULL_NANOSVG_I, "r") as f:
        original = f.read()
    originalLines = len(original.splitlines())
    rc, filtered, _ = _run_filter(original)
    assert rc == 0
    filteredLines = len(filtered.splitlines())
    assert filteredLines < originalLines * 0.9, (
        f"Filter only stripped {originalLines - filteredLines} of {originalLines} "
        f"lines (less than 10%) -- fix may have over-corrected into a no-op"
    )
    print(
        f"PASS: filter still effective: {originalLines} -> {filteredLines} "
        f"lines ({100 * (originalLines - filteredLines) / originalLines:.0f}% reduction)"
    )


if __name__ == "__main__":
    test_anon_union_typedefs_survive()
    test_unused_typedefs_are_still_stripped()
    test_filter_still_reduces_size()
    print("\nAll tests passed.")
