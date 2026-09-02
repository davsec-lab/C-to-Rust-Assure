"""Regression test for the static-and-struct-def / struct-with-generic-pointer-printer
returncode-handling bug.

Symptom: the extractor used to bail on `result.returncode != 0`, which caused
all structs reported on stdout to be silently dropped whenever clang emitted
ANY 'unknown type name' error inside the per-function .i file. For nanosvg's
nsvg__pushAttr.i this meant NSVGparser, NSVGattrib, NSVGpaint, NSVGgradientData,
NSVGimage, NSVGshape were never registered, never pre-translated, and were
later (mis-)inferred from individual function bodies — producing 268+ E0609
field-drift errors.

This test exercises the real binary against the real .i file and asserts that
the registry now contains those structs.
"""
import logging
import os
import shutil
import subprocess
import sys
import tempfile
import types

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "gpt_translation"))

# Stub optional deps so the module imports work in lean test envs.
openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)
tiktoken_stub = types.ModuleType("tiktoken")
tiktoken_stub.encoding_name_for_model = lambda *_a, **_k: "stub"
tiktoken_stub.get_encoding = lambda *_a, **_k: types.SimpleNamespace(
    encode=lambda text: (text or "").split()
)
sys.modules.setdefault("tiktoken", tiktoken_stub)
sympy_mod = types.ModuleType("sympy")
codegen_mod = types.ModuleType("sympy.codegen")
cnodes_mod = types.ModuleType("sympy.codegen.cnodes")
cnodes_mod.struct = object()
sys.modules.setdefault("sympy", sympy_mod)
sys.modules.setdefault("sympy.codegen", codegen_mod)
sys.modules.setdefault("sympy.codegen.cnodes", cnodes_mod)

from functionAndDeps import FunctionAndDependencies
from functionAndDepsExtractor import FunctionAndDepsExtractor
from type_registry import TypeKind


CASE_DIR = os.path.join(
    os.path.dirname(os.path.abspath(__file__)),
    "inputs-complex/nanosvg/individual-funcs_claude-opus-4-6_2026-04-29_20-03-38",
)
TARGET_FILE = "nsvg__pushAttr"  # known to make static-and-struct-def exit 1
EXPECTED_STRUCTS = {
    "NSVGparser",       # was missing before fix
    "NSVGattrib",       # was missing before fix
    "NSVGpaint",        # was missing before fix
    "NSVGgradientData", # was missing before fix
    "NSVGimage",        # was missing before fix
    "NSVGshape",        # was missing before fix
    "NSVGgradientStop", # always worked, sanity check
    "NSVGpath",         # always worked, sanity check
}


def _ensure_tooling_present():
    if shutil.which("static-and-struct-def") is None:
        print("SKIP: static-and-struct-def not on PATH")
        sys.exit(0)
    if shutil.which("ctags") is None:
        print("SKIP: ctags not on PATH")
        sys.exit(0)


def _verify_baseline_failure(srcPath):
    """Sanity check: confirm static-and-struct-def really does exit 1 with non-empty
    stdout for our target file. If this assumption breaks, the test no longer
    proves the fix works."""
    iFile = os.path.join(srcPath, TARGET_FILE + ".i")
    proc = subprocess.run(
        ["static-and-struct-def", iFile],
        text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE, timeout=30,
    )
    if proc.returncode == 0:
        print(
            f"WARN: static-and-struct-def now returns 0 for {TARGET_FILE}.i — "
            "test premise has changed. Pick a different target."
        )
    if not proc.stdout.strip():
        raise SystemExit(
            f"FAIL: baseline check — expected stdout to contain Struct: lines, got empty.\n"
            f"stderr head: {proc.stderr[:300]}"
        )
    if "Struct: NSVGparser" not in proc.stdout:
        raise SystemExit(
            f"FAIL: baseline check — expected 'Struct: NSVGparser' in stdout. Got:\n{proc.stdout}"
        )
    print(
        f"OK baseline: static-and-struct-def {TARGET_FILE}.i -> rc={proc.returncode}, "
        f"stdout has NSVGparser, stderr={'<empty>' if not proc.stderr else 'has clang errors'}"
    )


def test_registry_includes_previously_dropped_structs():
    _ensure_tooling_present()
    if not os.path.isdir(CASE_DIR):
        print(f"SKIP: case dir not present: {CASE_DIR}")
        return
    iFile = os.path.join(CASE_DIR, TARGET_FILE + ".i")
    if not os.path.isfile(iFile):
        print(f"SKIP: target .i not present: {iFile}")
        return

    _verify_baseline_failure(CASE_DIR)

    # Single-file funcMap so we exercise just the one .i we care about.
    funcMap = {TARGET_FILE: FunctionAndDependencies(TARGET_FILE)}

    FunctionAndDependencies.resetTypeSystem()
    extractor = FunctionAndDepsExtractor(logging.getLogger("test_struct_extraction"))
    extractor.extractNormalTypeUsageDetails(CASE_DIR, funcMap)

    registeredStructNames = {
        node.name for node in FunctionAndDependencies.typeRegistry.iter_by_kind(TypeKind.STRUCT)
    }
    print(f"Registered structs from {TARGET_FILE}.i: {sorted(registeredStructNames)}")

    missing = EXPECTED_STRUCTS - registeredStructNames
    assert not missing, (
        f"Expected these structs to be registered after the fix, but they are missing: "
        f"{sorted(missing)}.\nGot only: {sorted(registeredStructNames)}"
    )
    print(f"PASS: all {len(EXPECTED_STRUCTS)} expected structs registered.")


def test_empty_stdout_still_skipped():
    """Negative control: if the binary produces NO stdout, we should still skip
    the file (not crash). We simulate this by creating a temp dir with an empty
    .i file the binary can't process."""
    _ensure_tooling_present()
    with tempfile.TemporaryDirectory() as tmp:
        emptyName = "empty_func"
        with open(os.path.join(tmp, emptyName + ".i"), "w") as f:
            f.write("// nothing valid here\n@@@ syntax garbage @@@\n")

        funcMap = {emptyName: FunctionAndDependencies(emptyName)}
        FunctionAndDependencies.resetTypeSystem()
        extractor = FunctionAndDepsExtractor(logging.getLogger("test_empty_stdout"))
        # Should not raise, should skip cleanly.
        extractor.extractNormalTypeUsageDetails(tmp, funcMap)

        # Registry should be empty (no structs found).
        registered = list(FunctionAndDependencies.typeRegistry.iter_by_kind(TypeKind.STRUCT))
        assert registered == [], f"Expected empty registry, got: {[n.name for n in registered]}"
        print("PASS: empty stdout case skipped without crash.")


def test_full_run_population_check():
    """Bigger sanity check: process ALL .i files in the run directory, and verify
    the previously-missing structs are now registered.
    Compare against the broken baseline: pre-fix, the run logged
    `[type-registry] collected 15 definitions`. Post-fix should be substantially more."""
    _ensure_tooling_present()
    if not os.path.isdir(CASE_DIR):
        print(f"SKIP: case dir not present: {CASE_DIR}")
        return

    iFiles = [
        os.path.basename(name)[:-2]
        for name in sorted(os.listdir(CASE_DIR))
        if name.endswith(".i")
    ]
    if len(iFiles) < 50:
        print(f"SKIP: fewer .i files than expected ({len(iFiles)}); something odd in dir")
        return

    funcMap = {sym: FunctionAndDependencies(sym) for sym in iFiles}
    FunctionAndDependencies.resetTypeSystem()
    extractor = FunctionAndDepsExtractor(logging.getLogger("test_full_run"))
    extractor.extractNormalTypeUsageDetails(CASE_DIR, funcMap)

    registered = {
        node.name for node in FunctionAndDependencies.typeRegistry.iter_by_kind(TypeKind.STRUCT)
    }
    print(f"Total structs registered across {len(iFiles)} .i files: {len(registered)}")
    print(f"Names: {sorted(registered)}")

    # Pre-fix: only NSVGNamedColor, NSVGcoordinate, NSVGgradient, NSVGgradientStop, NSVGpath
    # (5 structs total). Post-fix: must include the previously-missing ones.
    must_have = {"NSVGparser", "NSVGattrib", "NSVGpaint", "NSVGgradientData",
                 "NSVGimage", "NSVGshape"}
    missing = must_have - registered
    assert not missing, (
        f"After fix, full-run extraction still missing: {sorted(missing)}"
    )
    assert len(registered) > 5, (
        f"Expected substantially more than the 5 pre-fix structs; got {len(registered)}"
    )
    print(f"PASS: full-run extraction recovers {len(registered)} structs (was 5 pre-fix).")


if __name__ == "__main__":
    logging.basicConfig(level=logging.WARNING)
    print("--- test_registry_includes_previously_dropped_structs ---")
    test_registry_includes_previously_dropped_structs()
    print("\n--- test_empty_stdout_still_skipped ---")
    test_empty_stdout_still_skipped()
    print("\n--- test_full_run_population_check ---")
    test_full_run_population_check()
    print("\nAll tests passed.")
