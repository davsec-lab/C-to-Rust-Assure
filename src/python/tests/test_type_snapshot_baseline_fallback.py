"""Unit tests for the ``_snapshotTypeRegistry`` baseline fallback.

Background: a Stage_1 perf-discard reverts in-memory state to the
snapshot captured at Stage_1 entry. At that moment NO type translation
has happened yet — every ``TypeNode.rustCode`` is "" while
``TypeNode.cCode`` holds the original C source. The old snapshot
preserved both verbatim, so the discard restored ``rustCode = ""`` and
Stage_2's SCC translator received an empty "translated dependency
definitions" block. Each function's translation then redefined
``parse_buffer`` / ``cJSON`` / ``internal_hooks`` independently,
producing redefinition + "no member 'hooks'" compile errors that the
retry-prompted model "fixed" by passing ``nullptr`` to
``cJSON_New_Item`` — whose body unconditionally dereferences ``hooks``
and segfaults at runtime.

The fix in ``_snapshotTypeRegistry``: when ``rustCode == ""`` but
``cCode`` is real C source, capture ``stringifyCodeBlock(cCode)`` as
the snapshot's ``rustCode``. After a Stage_1 discard the adopt path
then restores rustCode to the C definition, and Stage_2 sees a usable
baseline.

Critical NON-effect: when BOTH ``rustCode`` and ``cCode`` are empty
(a type that was cascade-deleted in a prior stage and had its cCode
zeroed by end-of-stage ``updateFuncMap``), the fallback must NOT
resurrect the type — that would silently undo the cascade-delete.
"""

import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# --- third-party stubs ---
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

from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
from type_registry import TypeKind, TypeNode, TypeNodeKey
from functionAndDeps import FunctionAndDependencies


class _Logger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _Probe(CodeUtilsMixin, TranslationPipelineMixin):
    def __init__(self):
        self.logger = _Logger()


class _FakeRegistry:
    """Minimal stand-in for FunctionAndDependencies.typeRegistry."""

    def __init__(self, nodes):
        # Insertion order is exposed via sorted_keys() so tests with
        # deterministic per-node assertions stay stable.
        self._nodes = list(nodes)

    def sorted_keys(self):
        return [n.key for n in self._nodes]

    def get(self, key):
        for node in self._nodes:
            if node.key == key:
                return node
        return None


def _node(name, c_code="", rust_code=""):
    n = TypeNode(key=TypeNodeKey(TypeKind.STRUCT, name))
    n.cCode = c_code
    n.rustCode = rust_code
    return n


def _with_registry(nodes):
    """Patch FunctionAndDependencies.typeRegistry for the duration of
    one test. Returns a context-manager-like tuple (saved, restore)."""
    saved = getattr(FunctionAndDependencies, "typeRegistry", None)
    FunctionAndDependencies.typeRegistry = _FakeRegistry(nodes)

    def restore():
        if saved is None:
            try:
                del FunctionAndDependencies.typeRegistry
            except AttributeError:
                pass
        else:
            FunctionAndDependencies.typeRegistry = saved

    return restore


# =============================================================================
# The Stage_1 entry case — the exact bug we're fixing
# =============================================================================
class Stage1EntryBaselineFallback(unittest.TestCase):

    def setUp(self):
        self.probe = _Probe()
        self._restore = None

    def tearDown(self):
        if self._restore:
            self._restore()

    def test_empty_rust_with_real_c_falls_back_to_c(self):
        """Stage_1 entry: rustCode is "" because no translation has
        happened yet. Snapshot should capture cCode as the rustCode
        fallback so a future discard's adopt restores something usable."""
        node = _node(
            "parse_buffer",
            c_code=("typedef struct {\n"
                    "    const unsigned char *content;\n"
                    "    size_t length;\n"
                    "    internal_hooks hooks;\n"
                    "} parse_buffer;"),
            rust_code="",
        )
        self._restore = _with_registry([node])

        snapshot = self.probe._snapshotTypeRegistry()

        entry = snapshot[node.key]
        self.assertIn("internal_hooks hooks", entry["rustCode"],
                      "Stage_1 entry snapshot must surface the C source "
                      "as the effective rustCode for a future revert")
        self.assertEqual(entry["cCode"], node.cCode,
                         "cCode field is preserved verbatim alongside the fallback")

    def test_baseline_fallback_lets_discard_restore_usable_state(self):
        """End-to-end: take a Stage_1-entry snapshot, simulate a stage
        running (translates rustCode to something), then a discard
        adopt — node.rustCode must come back to the C source, not ""."""
        node = _node("cJSON", c_code="struct cJSON { /* original */ };", rust_code="")
        self._restore = _with_registry([node])

        snapshot = self.probe._snapshotTypeRegistry()
        # Stage runs and writes a translated form into rustCode.
        node.rustCode = "struct cJSON { std::string name; };"
        # Now perf fails and we adopt the entry snapshot to revert.
        self.probe._adoptTypeRegistrySnapshot(snapshot)

        self.assertEqual(node.rustCode, node.cCode,
                         "discard should restore the C source as the "
                         "effective rustCode, not the original empty string")


# =============================================================================
# The cascade-delete case — fallback must NOT fire
# =============================================================================
class CascadeDeletedTypesAreNotResurrected(unittest.TestCase):

    def setUp(self):
        self.probe = _Probe()
        self._restore = None

    def tearDown(self):
        if self._restore:
            self._restore()

    def test_both_empty_means_truly_deleted_no_fallback(self):
        """A type that was cascade-deleted in a previous stage and
        had its cCode zeroed by end-of-stage updateFuncMap looks like
        ``{rustCode: "", cCode: ""}``. The fallback must NOT revive
        it — that would silently undo the cascade-delete."""
        deleted = _node("internal_hooks", c_code="", rust_code="")
        self._restore = _with_registry([deleted])

        snapshot = self.probe._snapshotTypeRegistry()
        entry = snapshot[deleted.key]
        self.assertEqual(entry["rustCode"], "",
                         "truly-deleted types must stay deleted in the snapshot")
        self.assertEqual(entry["cCode"], "")


# =============================================================================
# Already-translated types — rustCode preserved verbatim, no fallback
# =============================================================================
class AlreadyTranslatedRustCodeIsPreserved(unittest.TestCase):

    def setUp(self):
        self.probe = _Probe()
        self._restore = None

    def tearDown(self):
        if self._restore:
            self._restore()

    def test_non_empty_rust_is_passed_through_unchanged(self):
        """If rustCode is already populated (Stage_N>1 entry where the
        prior stage successfully translated this type), the fallback
        rule (`not rustCode and cCode`) never fires — rustCode in the
        snapshot is the translated form verbatim."""
        node = _node(
            "parse_buffer",
            c_code="typedef struct { ... C source ... } parse_buffer;",
            rust_code="typedef struct { ... TRANSLATED ... } parse_buffer;",
        )
        self._restore = _with_registry([node])

        snapshot = self.probe._snapshotTypeRegistry()
        entry = snapshot[node.key]
        self.assertEqual(entry["rustCode"],
                         "typedef struct { ... TRANSLATED ... } parse_buffer;")

    def test_mixed_population_each_node_handled_independently(self):
        """In a real Stage_1 entry the registry has many types; verify
        each is handled by its own (rustCode, cCode) pair, not by some
        global decision."""
        untranslated = _node("not_yet", c_code="C_SRC_A", rust_code="")
        translated = _node("done", c_code="C_SRC_B", rust_code="RUST_B")
        deleted = _node("gone", c_code="", rust_code="")
        self._restore = _with_registry([untranslated, translated, deleted])

        snapshot = self.probe._snapshotTypeRegistry()

        self.assertEqual(snapshot[untranslated.key]["rustCode"], "C_SRC_A",
                         "untranslated type: fallback to cCode")
        self.assertEqual(snapshot[translated.key]["rustCode"], "RUST_B",
                         "translated type: rustCode preserved")
        self.assertEqual(snapshot[deleted.key]["rustCode"], "",
                         "deleted type: stays empty")


# =============================================================================
# stringifyCodeBlock integration — cCode might not be a string
# =============================================================================
class StringifyCCodeIntegration(unittest.TestCase):

    def setUp(self):
        self.probe = _Probe()
        self._restore = None

    def tearDown(self):
        if self._restore:
            self._restore()

    def test_list_ccode_is_stringified_for_fallback(self):
        """cCode is occasionally stored as a list of lines (matches the
        stringifyCodeBlock contract). The fallback must still produce a
        plain string the LLM prompt can splice in."""
        node = _node("foo")
        node.cCode = ["struct foo {", "    int x;", "};"]
        node.rustCode = ""
        self._restore = _with_registry([node])

        snapshot = self.probe._snapshotTypeRegistry()
        entry = snapshot[node.key]
        self.assertIsInstance(entry["rustCode"], str)
        self.assertIn("struct foo {", entry["rustCode"])
        self.assertIn("int x;", entry["rustCode"])


# =============================================================================
# Adopt round-trip — full snapshot/adopt pair as called by the discard path
# =============================================================================
class SnapshotAdoptRoundTrip(unittest.TestCase):
    """Mirrors what _revertStageToPrev does on a Stage_1 perf discard:
    take a snapshot at stage entry, let the stage mutate state, then
    adopt the snapshot to revert."""

    def setUp(self):
        self.probe = _Probe()
        self._restore = None

    def tearDown(self):
        if self._restore:
            self._restore()

    def test_full_cycle_recovers_baseline(self):
        nodes = [
            _node("cJSON",
                  c_code="struct cJSON { char* name; };",
                  rust_code=""),
            _node("parse_buffer",
                  c_code="typedef struct { internal_hooks hooks; } parse_buffer;",
                  rust_code=""),
            _node("internal_hooks",
                  c_code="typedef struct { void* (*alloc)(size_t); } internal_hooks;",
                  rust_code=""),
        ]
        self._restore = _with_registry(nodes)

        # Stage_1 entry — capture the baseline.
        baseline = self.probe._snapshotTypeRegistry()

        # Stage_1 runs and produces (in this hypothetical) translations
        # that we'll later want to revert.
        nodes[0].rustCode = "struct cJSON { std::string name; };"
        nodes[1].rustCode = "typedef struct { /* no hooks */ } parse_buffer;"
        nodes[2].rustCode = ""  # cascade-deleted

        # Stage_1 perf-fails — discard reverts to baseline.
        self.probe._adoptTypeRegistrySnapshot(baseline)

        # Every node's rustCode now mirrors the original C source so
        # Stage_2 has usable type definitions to feed the LLM.
        self.assertEqual(nodes[0].rustCode,
                         "struct cJSON { char* name; };")
        self.assertEqual(nodes[1].rustCode,
                         "typedef struct { internal_hooks hooks; } parse_buffer;")
        self.assertEqual(nodes[2].rustCode,
                         "typedef struct { void* (*alloc)(size_t); } internal_hooks;")


if __name__ == "__main__":
    unittest.main()
