"""Unit tests for ``_cascadeDeleteEmptyTypeReferences`` and the helper
``_surgicallyRemoveLines``.

Context: in the cjson_new pipeline (Stage_1, run 2026-05-13_17-06-23) the
LLM emitted ``// internal_hooks removed: ...`` for ``struct:internal_hooks``
in one type-batch request, but in a SEPARATE request emitted
``static internal_hooks global_hooks = { nullptr, nullptr, nullptr };``
for ``static:global_hooks``. The merged file then referenced an
undefined type and every per-function compile-and-link failed with
``error: unknown type name 'internal_hooks'``.

The cascade fix repairs the merged file mechanically after the
type-batch loop finishes:

  * STATIC / EXTERN / TYPEDEF victims: the whole entry is removed.
  * STRUCT / UNION  victims: only the offending field line(s) are
    dropped; the composite type itself is kept so its other fields and
    every function that uses them still compile.
  * Functions are not touched here at all (they live in
    function_bodies, get translated AFTER this pass, and see the
    corrected, empty dependency context).
"""

import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# --- third-party stubs (same boilerplate as the other tests) ---
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
from gpt_translation.config import TranslatorModes
from type_registry import TypeKind, TypeNode, TypeNodeKey
from functionAndDeps import FunctionAndDependencies


class _Logger:
    """Capture-only logger so tests can assert on warning / error messages."""

    def __init__(self):
        self.warnings = []
        self.errors = []
        self.debug_msgs = []
        self.infos = []

    def warning(self, msg, *args, **kwargs):
        self.warnings.append(msg % args if args else msg)

    def error(self, msg, *args, **kwargs):
        self.errors.append(msg % args if args else msg)

    def info(self, msg, *args, **kwargs):
        self.infos.append(msg % args if args else msg)

    def debug(self, msg, *args, **kwargs):
        self.debug_msgs.append(msg % args if args else msg)

    def __getattr__(self, _n):
        return lambda *a, **k: None


class _FakeGraph:
    def __init__(self, keys):
        # Single batch covering everything is fine; the cascade only
        # uses topo_batches() to enumerate the universe of keys.
        self._batches = [list(keys)]

    def topo_batches(self):
        return self._batches


class _FakeRegistry:
    def __init__(self, nodes_by_key):
        self._nodes = nodes_by_key

    def get(self, key):
        return self._nodes.get(key)


class _FakeManager:
    def __init__(self):
        self.calls = []

    def updateStructTranslateResultWithStructName(self, key, code):
        self.calls.append((key, code))


class _PipelineProbe(CodeUtilsMixin, TranslationPipelineMixin):
    """Minimal probe exposing ``_cascadeDeleteEmptyTypeReferences``.

    ``translatorMode = NEW_MODE`` so ``_isStagedMode()`` is True and the
    manager.updateStructTranslateResultWithStructName(...) sync path is
    exercised (we then assert on it via _FakeManager.calls)."""

    def __init__(self, nodes_by_key):
        self.logger = _Logger()
        self.translatorMode = TranslatorModes.CF_STRUCT_FN_REPLAY
        self._keys = list(nodes_by_key.keys())

    def getTypeDependencyGraph(self):
        return _FakeGraph(self._keys)


def _node(kind, name, code):
    """Build a TypeNode with both cCode and rustCode set to ``code`` so
    `_isEmptyOrCommentOnly` sees the right thing regardless of which
    attribute the helper happens to read."""
    key = TypeNodeKey(kind, name)
    n = TypeNode(key=key, cCode=code, rustCode=code)
    return n


def _run(nodes):
    """Run cascade-delete over ``nodes`` (a list).

    Patches FunctionAndDependencies.typeRegistry for the duration of the
    call and restores it on the way out so tests are isolated.
    Returns (probe, manager).
    """
    nodes_by_key = {n.key: n for n in nodes}
    probe = _PipelineProbe(nodes_by_key)
    manager = _FakeManager()

    saved_registry = getattr(FunctionAndDependencies, "typeRegistry", None)
    FunctionAndDependencies.typeRegistry = _FakeRegistry(nodes_by_key)
    try:
        probe._cascadeDeleteEmptyTypeReferences(manager)
    finally:
        if saved_registry is None:
            try:
                del FunctionAndDependencies.typeRegistry
            except AttributeError:
                pass
        else:
            FunctionAndDependencies.typeRegistry = saved_registry
    return probe, manager


# =============================================================================
# _surgicallyRemoveLines — line-removal heuristic, tested in isolation
# =============================================================================
class SurgicallyRemoveLines(unittest.TestCase):

    def test_removes_cpp_field_line_ending_with_semicolon(self):
        code = (
            "typedef struct {\n"
            "    int x;\n"
            "    internal_hooks h;\n"
            "    int y;\n"
            "} C;"
        )
        new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, ["internal_hooks"]
        )
        self.assertEqual(len(removed), 1)
        self.assertIn("internal_hooks h;", removed[0])
        self.assertNotIn("internal_hooks", new)
        self.assertIn("int x;", new)
        self.assertIn("int y;", new)
        self.assertIn("} C;", new)

    def test_removes_rust_field_line_ending_with_comma(self):
        code = (
            "struct C {\n"
            "    hooks: internal_hooks,\n"
            "    x: i32,\n"
            "}"
        )
        new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, ["internal_hooks"]
        )
        self.assertEqual(len(removed), 1)
        self.assertNotIn("internal_hooks", new)
        self.assertIn("x: i32,", new)
        self.assertIn("struct C {", new)

    def test_trailing_line_comment_does_not_block_removal(self):
        code = "    internal_hooks h;  // legacy hook\n"
        _new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, ["internal_hooks"]
        )
        self.assertEqual(len(removed), 1,
                         "the // comment trails the ; so removal must still fire")

    def test_block_comment_reference_is_kept(self):
        code = "    int x; /* uses internal_hooks here */\n"
        new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, ["internal_hooks"]
        )
        self.assertEqual(removed, [],
                         "line ends with */ not ;/, — heuristic must NOT remove")
        self.assertIn("int x;", new)

    def test_word_boundary_no_false_match_on_longer_identifier(self):
        code = (
            "typedef struct {\n"
            "    int internal_hooks_size;\n"
            "    int x;\n"
            "} C;"
        )
        new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, ["internal_hooks"]
        )
        self.assertEqual(removed, [],
                         r"\binternal_hooks\b must not match internal_hooks_size")
        self.assertIn("internal_hooks_size", new)

    def test_multiple_offending_fields_all_removed(self):
        code = (
            "typedef struct {\n"
            "    internal_hooks a;\n"
            "    int x;\n"
            "    internal_hooks b;\n"
            "} C;"
        )
        new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, ["internal_hooks"]
        )
        self.assertEqual(len(removed), 2)
        self.assertNotIn("internal_hooks", new)
        self.assertIn("int x;", new)

    def test_multi_line_declaration_is_not_touched(self):
        """The reference and the terminator live on different lines.
        Neither qualifies on its own. The composite must stay
        unchanged — caller will log error and decide what to do."""
        code = (
            "typedef struct {\n"
            "    internal_hooks\n"
            "    *hooks;\n"
            "    int x;\n"
            "} C;"
        )
        _new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, ["internal_hooks"]
        )
        self.assertEqual(removed, [])

    def test_empty_deleted_set_is_noop(self):
        code = "struct C { int x; }"
        new, removed = TranslationPipelineMixin._surgicallyRemoveLines(code, [])
        self.assertEqual(new, code)
        self.assertEqual(removed, [])

    def test_single_string_deleted_name_is_accepted(self):
        """Defensive: passing a bare string instead of a list must not
        iterate by character (which would build a regex like \\bi\\b|\\bn\\b…)."""
        code = "    internal_hooks h;\n    int x;\n"
        _new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, "internal_hooks"
        )
        self.assertEqual(len(removed), 1)

    def test_two_different_deleted_names_in_one_pass(self):
        code = (
            "struct C {\n"
            "    A a;\n"
            "    B b;\n"
            "    int c;\n"
            "};"
        )
        new, removed = TranslationPipelineMixin._surgicallyRemoveLines(
            code, ["A", "B"]
        )
        self.assertEqual(len(removed), 2)
        self.assertIn("int c;", new)
        self.assertNotIn(" A ", new)
        self.assertNotIn(" B ", new)


# =============================================================================
# Cascade behavior — STATIC / EXTERN / TYPEDEF victims are fully removed
# =============================================================================
class CascadeDeleteFullEntries(unittest.TestCase):

    def test_static_variable_referencing_deleted_struct_is_removed(self):
        """Exact failure pattern from the cjson_new log: deleting
        struct:internal_hooks must drag static:global_hooks with it."""
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        sg = _node(
            TypeKind.STATIC,
            "global_hooks",
            "static internal_hooks global_hooks = { nullptr, nullptr, nullptr };",
        )
        _probe, manager = _run([deleted, sg])

        self.assertEqual(sg.rustCode, "")
        # The manager sync was staged-mode-only and was removed with it;
        # the registry-side deletion above is the whole contract now.
        self.assertEqual(manager.calls, [])

    def test_extern_declaration_referencing_deleted_struct_is_removed(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        ext = _node(
            TypeKind.EXTERN,
            "external_hooks",
            "extern internal_hooks external_hooks;",
        )
        _run([deleted, ext])
        self.assertEqual(ext.rustCode, "")

    def test_typedef_alias_of_deleted_struct_is_removed(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        alias = _node(TypeKind.TYPEDEF, "H", "typedef internal_hooks H;")
        _run([deleted, alias])
        self.assertEqual(alias.rustCode, "")

    def test_no_deleted_struct_means_full_noop(self):
        a = _node(TypeKind.STRUCT, "A", "struct A { int x; };")
        s = _node(TypeKind.STATIC, "g", "static A g;")
        _probe, manager = _run([a, s])
        # untouched
        self.assertIn("struct A", a.rustCode)
        self.assertIn("static A g", s.rustCode)
        # short-circuit: nothing pushed to manager
        self.assertEqual(manager.calls, [])

    def test_unrelated_static_is_not_dragged_along(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        unrelated = _node(
            TypeKind.STATIC,
            "global_error",
            "static error global_error = { nullptr, 0 };",
        )
        _run([deleted, unrelated])
        self.assertIn("global_error", unrelated.rustCode)

    def test_logs_warning_for_full_delete(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        sg = _node(
            TypeKind.STATIC,
            "global_hooks",
            "static internal_hooks global_hooks = {0};",
        )
        probe, _manager = _run([deleted, sg])
        self.assertTrue(
            any("cascade-delete" in w and "global_hooks" in w
                for w in probe.logger.warnings),
            f"expected cascade-delete warning, got {probe.logger.warnings}",
        )


# =============================================================================
# Cascade behavior — STRUCT / UNION victims keep the type, lose only the field
# =============================================================================
class CascadeSurgicalComposites(unittest.TestCase):

    def test_struct_with_offending_field_keeps_type_drops_field(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        pb_code = (
            "typedef struct {\n"
            "    const unsigned char *content;\n"
            "    size_t length;\n"
            "    internal_hooks hooks;\n"
            "    size_t depth;\n"
            "} parse_buffer;"
        )
        pb = _node(TypeKind.STRUCT, "parse_buffer", pb_code)
        _probe, manager = _run([deleted, pb])

        self.assertNotEqual(pb.rustCode, "",
                            "the composite must stay alive")
        self.assertNotIn("internal_hooks", pb.rustCode)
        self.assertIn("length", pb.rustCode)
        self.assertIn("} parse_buffer;", pb.rustCode)
        # Staged-only manager sync removed with staged mode; the registry
        # rewrite above is the contract.
        self.assertEqual(manager.calls, [])

    def test_union_with_offending_field_keeps_type_drops_field(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        u_code = (
            "union U {\n"
            "    int x;\n"
            "    internal_hooks h;\n"
            "    double d;\n"
            "};"
        )
        u = _node(TypeKind.UNION, "U", u_code)
        _run([deleted, u])
        self.assertIn("union U", u.rustCode)
        self.assertNotIn("internal_hooks", u.rustCode)
        self.assertIn("int x;", u.rustCode)
        self.assertIn("double d;", u.rustCode)

    def test_struct_with_no_clean_field_match_left_alone_and_error_logged(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        weird_code = (
            "typedef struct {\n"
            "    internal_hooks\n"
            "    *hooks;\n"
            "    int x;\n"
            "} weird;"
        )
        weird = _node(TypeKind.STRUCT, "weird", weird_code)
        probe, _manager = _run([deleted, weird])

        self.assertIn("internal_hooks", weird.rustCode,
                      "must not be surgically removed")
        self.assertIn("int x;", weird.rustCode,
                      "and definitely must not be full-deleted")
        self.assertTrue(
            any("no removable single-line field" in e
                for e in probe.logger.errors),
            f"expected error log, got {probe.logger.errors}",
        )

    def test_struct_keeps_type_while_sibling_static_is_full_deleted(self):
        """STRUCT path and STATIC path coexist in one run."""
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        pb_code = (
            "typedef struct {\n"
            "    internal_hooks hooks;\n"
            "    int x;\n"
            "} parse_buffer;"
        )
        pb = _node(TypeKind.STRUCT, "parse_buffer", pb_code)
        sg = _node(
            TypeKind.STATIC,
            "global_hooks",
            "static internal_hooks global_hooks = { nullptr };",
        )
        _run([deleted, pb, sg])

        self.assertIn("} parse_buffer;", pb.rustCode)
        self.assertNotIn("internal_hooks", pb.rustCode)
        self.assertEqual(sg.rustCode, "")

    def test_surgical_log_message_lists_dropped_lines(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        pb_code = (
            "struct C {\n"
            "    internal_hooks h;\n"
            "    int x;\n"
            "};"
        )
        pb = _node(TypeKind.STRUCT, "C", pb_code)
        probe, _manager = _run([deleted, pb])
        self.assertTrue(
            any("cascade-surgical" in w and "C" in w
                for w in probe.logger.warnings),
            f"expected cascade-surgical warning, got {probe.logger.warnings}",
        )


# =============================================================================
# Cascade behavior — fixpoint handles chains across multiple kinds
# =============================================================================
class CascadeFixpoint(unittest.TestCase):

    def test_typedef_then_static_chain_both_deleted(self):
        """A -> typedef A B -> static B g.
        After pass 1: A is in deletedNames, typedef B → full-deleted,
                      static g still references B (now also in deletedNames,
                      added at end of pass 1).
        After pass 2: static g → full-deleted."""
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        alias = _node(TypeKind.TYPEDEF, "H", "typedef internal_hooks H;")
        sg = _node(TypeKind.STATIC, "g", "static H g;")
        _run([deleted, alias, sg])
        self.assertEqual(alias.rustCode, "")
        self.assertEqual(sg.rustCode, "")

    def test_struct_field_then_static_of_that_struct(self):
        """A deleted -> struct C { A a; int x; } loses field a only.
        C is NOT added to deletedNames, so a `static C global_c` survives."""
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        c_code = (
            "struct C {\n"
            "    internal_hooks a;\n"
            "    int x;\n"
            "};"
        )
        c = _node(TypeKind.STRUCT, "C", c_code)
        # global_c references C (not internal_hooks) — must survive.
        global_c = _node(TypeKind.STATIC, "global_c", "static C global_c;")
        _run([deleted, c, global_c])

        self.assertIn("struct C", c.rustCode)
        self.assertNotIn("internal_hooks", c.rustCode)
        # C kept alive => global_c also kept alive
        self.assertIn("static C global_c", global_c.rustCode)

    def test_chain_terminates_when_no_new_deletions(self):
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        unrelated = _node(TypeKind.STATIC, "ge",
                          "static error ge = { nullptr, 0 };")
        _run([deleted, unrelated])
        # If the loop didn't terminate cleanly the test would hang or
        # over-modify; we just assert no spurious change.
        self.assertIn("static error ge", unrelated.rustCode)


# =============================================================================
# Cascade behavior — robustness
# =============================================================================
class CascadeRobustness(unittest.TestCase):

    def test_seed_ignores_typedef_even_when_empty(self):
        """Only STRUCT kind seeds the deletedNames. An empty typedef
        (whatever the cause) must NOT trigger cascade — its name (e.g.
        size_t) could otherwise wipe half the codebase."""
        empty_typedef = _node(TypeKind.TYPEDEF, "size_t", "")
        user = _node(
            TypeKind.STRUCT,
            "parse_buffer",
            "struct parse_buffer { size_t length; };",
        )
        _run([empty_typedef, user])
        self.assertIn("size_t length", user.rustCode,
                      "empty TYPEDEF must NOT seed cascade")

    def test_seed_ignores_static_even_when_empty(self):
        empty_static = _node(TypeKind.STATIC, "ge", "")
        user = _node(
            TypeKind.STATIC,
            "other",
            "static int other = ge;",
        )
        _run([empty_static, user])
        # 'other' still references 'ge' but 'ge' wasn't seeded as a
        # cascade trigger — so 'other' stays.
        self.assertIn("static int other", user.rustCode)

    def test_node_with_no_name_is_skipped(self):
        """Defensive: a TypeNode whose key has no name shouldn't crash
        the cascade.  We synthesize this by directly mutating the
        node's key into a stand-in object with an empty name."""
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        anon_key = TypeNodeKey(TypeKind.STRUCT, "")
        anon = TypeNode(key=anon_key, cCode="static internal_hooks x;",
                        rustCode="static internal_hooks x;")
        # Doesn't crash and doesn't add an empty-string entry to
        # deletedNames (which would later cause regex on \b\b).
        try:
            _run([deleted, anon])
        except Exception as e:
            self.fail(f"cascade should tolerate nameless nodes, raised {e!r}")

    def test_works_when_not_in_staged_mode(self):
        """Outside NEW_MODE we must not call the manager (it might be
        None / wrong type), but the in-memory rustCode must still get
        cleared so the merged file is correct."""
        deleted = _node(TypeKind.STRUCT, "internal_hooks", "")
        sg = _node(TypeKind.STATIC, "global_hooks",
                   "static internal_hooks global_hooks;")
        nodes_by_key = {deleted.key: deleted, sg.key: sg}
        probe = _PipelineProbe(nodes_by_key)
        probe.translatorMode = TranslatorModes.COMPILATION_FEEDBACK  # not staged
        manager = _FakeManager()

        saved_registry = getattr(FunctionAndDependencies, "typeRegistry", None)
        FunctionAndDependencies.typeRegistry = _FakeRegistry(nodes_by_key)
        try:
            probe._cascadeDeleteEmptyTypeReferences(manager)
        finally:
            if saved_registry is None:
                try:
                    del FunctionAndDependencies.typeRegistry
                except AttributeError:
                    pass
            else:
                FunctionAndDependencies.typeRegistry = saved_registry

        self.assertEqual(sg.rustCode, "")
        self.assertEqual(manager.calls, [],
                         "manager must not be touched outside staged mode")


if __name__ == "__main__":
    unittest.main()
