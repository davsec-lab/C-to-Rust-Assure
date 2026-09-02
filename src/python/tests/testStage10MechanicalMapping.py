"""Tests for the Stage_10 mechanical mapping prompt injection.

Stages 1-9 progressively refine the C source into idiomatic C++; Stage_10
then transliterates that C++ to Rust. Without explicit rules, Sonnet
will "re-decide" what idiomatic Rust looks like and (e.g.) pick
Option<Box<T>> for a doubly-linked list, which fails the borrow checker.

The mechanical mapping hint we inject must:
  * appear at all three Stage_10 prompt sites (type-batch, SCC fn, single-fn)
  * include type table, usage table, cycle check, and self-check
  * NOT leak into stages 1-9 prompts (those still say "modify C++ step by step")
  * NOT carry the misleading "I will provide the example usage" line for
    Stage_10, since Stage_10 type batches do not actually attach usage examples
"""
import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)
sys.modules.setdefault("tiktoken", types.ModuleType("tiktoken"))

from gpt_translation.config import Stage, TranslatorModes  # noqa: E402
from gpt_translation.code_utils_mixin import CodeUtilsMixin  # noqa: E402
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin  # noqa: E402
from gpt_translation.performance_mixin import PerformanceMixin  # noqa: E402
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin  # noqa: E402
from type_registry import TypeKind, TranslationMode  # noqa: E402


class _DummyLogger:
    def __getattr__(self, _name):
        return lambda *a, **kw: None


class _Probe(CodeUtilsMixin, SymbolExtractionMixin, PerformanceMixin, TranslationPipelineMixin):
    """Minimal probe that brings the prompt-building methods online without
    triggering the network / API surface."""

    def __init__(self, dstLang="Rust"):
        self.logger = _DummyLogger()
        self.translatorMode = TranslatorModes.NEW_MODE
        self.dstLang = dstLang
        self.srcLang = "C"


class _Node:
    """Fake TypeNode just enough to satisfy _buildTypeBatchBasePrompt
    (only .kind and .translation_mode are read)."""

    def __init__(self, kind, translation_mode=None):
        self.kind = kind
        self.translation_mode = translation_mode


# ---------------------------------------------------------------------------
# Helper-level tests: the mechanical mapping hint method
# ---------------------------------------------------------------------------


@unittest.skip(
    "Stage_10 mechanical mapping hint is currently disabled — see "
    "_stage10MechanicalMappingHint docstring. The hint's `s.push_back(c) "
    "-> s.push(c as char)` rule actively taught the LLM the byte-as-char "
    "anti-pattern that corrupted byte-sum checksums on cjson_new. "
    "Re-enable + un-skip when the hint is restored."
)
class TestStage9MechanicalMappingHint(unittest.TestCase):
    """Test `_stage10MechanicalMappingHint(scope)` directly."""

    def setUp(self):
        self.probe = _Probe()

    def test_type_scope_contains_all_required_blocks(self):
        hint = self.probe._stage10MechanicalMappingHint(scope="type")
        # The four required blocks must all be present:
        self.assertIn("MECHANICAL MAPPING", hint)
        self.assertIn("TYPE MAPPING", hint)
        self.assertIn("USAGE MAPPING", hint)
        self.assertIn("CYCLE CHECK", hint)
        self.assertIn("SELF-CHECK", hint)

    def test_type_scope_focus_phrasing(self):
        """The 'type' scope must emphasise struct field declarations."""
        hint = self.probe._stage10MechanicalMappingHint(scope="type")
        self.assertIn("STRUCT FIELD DECLARATIONS", hint)
        # And must NOT mislead toward function-body wording:
        self.assertNotIn("For FUNCTION BODIES", hint)

    def test_function_scope_focus_phrasing(self):
        """The 'function' scope must emphasise function bodies."""
        hint = self.probe._stage10MechanicalMappingHint(scope="function")
        self.assertIn("For FUNCTION BODIES", hint)
        self.assertNotIn("For STRUCT FIELD DECLARATIONS", hint)

    def test_type_table_contains_critical_mappings(self):
        hint = self.probe._stage10MechanicalMappingHint(scope="type")
        # Each of these must appear so the model can map correctly:
        self.assertIn("std::string", hint)
        self.assertIn("String", hint)
        self.assertIn("std::unique_ptr<T>", hint)
        self.assertIn("Box<T>", hint)
        self.assertIn("std::vector<T>", hint)
        self.assertIn("Vec<T>", hint)
        self.assertIn("std::optional<T>", hint)
        self.assertIn("Option<T>", hint)
        self.assertIn("*mut T", hint)
        self.assertIn("*const T", hint)
        self.assertIn("usize", hint)
        # function pointer mapping:
        self.assertIn('extern "C" fn', hint)

    def test_usage_table_contains_critical_operations(self):
        hint = self.probe._stage10MechanicalMappingHint(scope="function")
        # std::string operations
        self.assertIn("s.is_empty()", hint)
        self.assertIn("s.len()", hint)
        self.assertIn("push_str", hint)
        # unique_ptr operations
        self.assertIn("Box::new", hint)
        self.assertIn("Box::into_raw", hint)
        # vector operations
        self.assertIn("v.push(x)", hint)
        # optional operations
        self.assertIn("is_some()", hint)
        self.assertIn("is_none()", hint)
        # raw pointer operations
        self.assertIn("p.is_null()", hint)
        self.assertIn("unsafe { (*p)", hint)
        self.assertIn("p.add(", hint)
        # cleanup idiom
        self.assertIn("goto fail", hint)
        self.assertIn("break", hint)

    def test_cycle_check_block_is_explicit(self):
        """The cycle-check rule is the single most important guard against
        Option<Box<T>> on doubly-linked structures. Verify it is loud."""
        hint = self.probe._stage10MechanicalMappingHint(scope="type")
        self.assertIn("CYCLE CHECK", hint)
        self.assertIn("two or more pointer fields", hint.lower())
        # Examples named so the model can pattern-match against cjson-like cases:
        self.assertIn("next", hint)
        self.assertIn("prev", hint)
        self.assertIn("parent", hint)
        # The directive must be a MUST, not a SHOULD:
        self.assertIn("MUST be `*mut T`", hint)
        self.assertIn("NEVER Box<T>", hint)

    def test_self_check_demands_the_right_questions(self):
        hint = self.probe._stage10MechanicalMappingHint(scope="type")
        # Must explicitly ask about back-pointers:
        self.assertIn("point back", hint)
        # Must explicitly forbid inventing Rust-only APIs:
        self.assertIn("inventing a Rust-only API", hint)

    def test_idiomatic_wording_only_appears_inside_negation(self):
        """The phrase 'idiomatic' is dangerous as a positive directive —
        it invites the model to re-decide rather than mechanically map.
        It is allowed to appear inside an explicit negation ("do NOT pick
        a 'more idiomatic Rust' alternative") but never as a directive.
        Check every occurrence is part of a NOT-clause."""
        # The framing both scopes share: ban 'more idiomatic Rust' as a
        # positive alternative.
        for scope in ("type", "function"):
            hint = self.probe._stage10MechanicalMappingHint(scope=scope)
            self.assertIn("NOT pick a 'more idiomatic Rust'", hint)
            # Verify "idiomatic" never appears as a positive directive —
            # every occurrence must be inside a negation clause. Look back
            # 80 chars (long enough to capture "do NOT re-decide ... most
            # idiomatic" and "must NOT pick a 'more idiomatic ..."):
            cursor = 0
            while True:
                idx = hint.find("idiomatic", cursor)
                if idx == -1:
                    break
                window = hint[max(0, idx - 80):idx]
                self.assertTrue(
                    any(token in window for token in ("NOT ", "not ", "never ")),
                    f"[{scope}] 'idiomatic' at offset {idx} is not inside a "
                    f"negation clause; preceding window: {window!r}",
                )
                cursor = idx + len("idiomatic")

        # The type-scope focus line specifically forbids re-deciding the
        # Rust type. (function-scope uses "do not improvise" instead.)
        type_hint = self.probe._stage10MechanicalMappingHint(scope="type")
        self.assertIn("do NOT re-decide", type_hint)
        fn_hint = self.probe._stage10MechanicalMappingHint(scope="function")
        self.assertIn("do not improvise", fn_hint)


# ---------------------------------------------------------------------------
# Type-batch base prompt tests
# ---------------------------------------------------------------------------


@unittest.skip(
    "Stage_10 mechanical mapping hint is currently disabled — see "
    "_stage10MechanicalMappingHint docstring. Re-enable + un-skip when "
    "the hint is restored."
)
class TestBuildTypeBatchBasePrompt(unittest.TestCase):
    """`_buildTypeBatchBasePrompt` is the entry point for type translation
    prompts. Verify Stage_10 injects the mechanical mapping and the misleading
    'example usage' line is suppressed, while non-Stage_10 prompts are
    unchanged."""

    def setUp(self):
        self.probe = _Probe(dstLang="Rust")

    def test_stage_10_struct_prompt_says_cpp_not_c(self):
        """The opening sentence must say 'C++ definitions to Rust' so the
        model knows the input is already-refined C++, not raw C."""
        batch = [_Node(TypeKind.STRUCT, TranslationMode.RICH_STRUCT)]
        prompt = self.probe._buildTypeBatchBasePrompt(batch, stage=Stage.Stage_10)
        self.assertIn("Translate the following C++ definitions to Rust", prompt)
        # The legacy "C definitions to Rust" wording (which framed Stage_10
        # as a raw-C-to-Rust pass) must be gone:
        self.assertNotIn("Translate the following C definitions to Rust", prompt)

    def test_stage_10_struct_prompt_includes_mechanical_hint(self):
        batch = [_Node(TypeKind.STRUCT, TranslationMode.RICH_STRUCT)]
        prompt = self.probe._buildTypeBatchBasePrompt(batch, stage=Stage.Stage_10)
        self.assertIn("MECHANICAL MAPPING", prompt)
        self.assertIn("CYCLE CHECK", prompt)
        # The hint must be the 'type' variant:
        self.assertIn("STRUCT FIELD DECLARATIONS", prompt)

    def test_stage_10_suppresses_misleading_example_usage_promise(self):
        """The legacy prompt promised 'I will provide the example usage'
        for rich structs, but Stage_10 never actually attached the examples.
        That promise must NOT appear for Stage_10."""
        batch = [_Node(TypeKind.STRUCT, TranslationMode.RICH_STRUCT)]
        prompt = self.probe._buildTypeBatchBasePrompt(batch, stage=Stage.Stage_10)
        self.assertNotIn("I will provide the example usage", prompt)
        self.assertNotIn("more idiomatic type", prompt)

    def test_stage_2_struct_prompt_unchanged(self):
        """Stage_2 prompts must NOT carry the Stage_10 mechanical hint —
        they are still C++ refinement passes, and we want their existing
        behaviour preserved."""
        # Stage_2 is dst-lang-C++ in production. Simulate that:
        probe = _Probe(dstLang="C++")
        batch = [_Node(TypeKind.STRUCT, TranslationMode.RICH_STRUCT)]
        prompt = probe._buildTypeBatchBasePrompt(batch, stage=Stage.Stage_2)
        self.assertNotIn("MECHANICAL MAPPING", prompt)
        self.assertNotIn("CYCLE CHECK", prompt)
        # And Stage_2 SHOULD still promise the example usage (it actually
        # attaches them downstream):
        self.assertIn("I will provide the example usage", prompt)

    def test_stage_1_struct_prompt_unchanged(self):
        """Stage_1 stays a raw-C-to-C++ translation."""
        probe = _Probe(dstLang="C++")
        batch = [_Node(TypeKind.STRUCT, TranslationMode.RICH_STRUCT)]
        prompt = probe._buildTypeBatchBasePrompt(batch, stage=Stage.Stage_1)
        self.assertIn("Translate the following C definitions to C++", prompt)
        self.assertNotIn("MECHANICAL MAPPING", prompt)

    def test_stage_10_non_rich_struct_still_gets_hint(self):
        """Even ordinary (non RICH_STRUCT) batches get the mechanical hint
        at Stage_10 — the hint is added in the opening, not gated on rich."""
        batch = [_Node(TypeKind.STRUCT)]
        prompt = self.probe._buildTypeBatchBasePrompt(batch, stage=Stage.Stage_10)
        self.assertIn("MECHANICAL MAPPING", prompt)

    def test_stage_10_static_batch_unaffected_by_struct_hint_skip(self):
        """A static-only batch should still get the mechanical hint at the
        top (since it's keyed off stage, not kind), but no struct-specific
        'example usage' line either way."""
        batch = [_Node(TypeKind.STATIC)]
        prompt = self.probe._buildTypeBatchBasePrompt(batch, stage=Stage.Stage_10)
        self.assertIn("MECHANICAL MAPPING", prompt)
        self.assertIn("file-scope variable definitions", prompt)
        self.assertNotIn("I will provide the example usage", prompt)


# ---------------------------------------------------------------------------
# Cross-stage no-leak test
# ---------------------------------------------------------------------------


@unittest.skip(
    "Stage_10 mechanical mapping hint is currently disabled — see "
    "_stage10MechanicalMappingHint docstring. Re-enable + un-skip when "
    "the hint is restored."
)
class TestMechanicalHintDoesNotLeak(unittest.TestCase):
    """Iterate every stage 1..10 and confirm the mechanical hint appears
    if-and-only-if stage is Stage_10. This catches accidental injection
    paths if someone extends the prompt later."""

    def test_only_stage_10_has_mechanical_hint(self):
        batch = [_Node(TypeKind.STRUCT, TranslationMode.RICH_STRUCT)]
        for stage in Stage:
            dst = "Rust" if stage == Stage.Stage_10 else "C++"
            probe = _Probe(dstLang=dst)
            prompt = probe._buildTypeBatchBasePrompt(batch, stage=stage)
            if stage == Stage.Stage_10:
                self.assertIn(
                    "MECHANICAL MAPPING", prompt,
                    f"Stage_10 prompt is missing the mechanical mapping hint",
                )
                self.assertIn(
                    "CYCLE CHECK", prompt,
                    f"Stage_10 prompt is missing the cycle check",
                )
            else:
                self.assertNotIn(
                    "MECHANICAL MAPPING", prompt,
                    f"{stage.name} prompt unexpectedly carries the mechanical mapping hint",
                )
                self.assertNotIn(
                    "CYCLE CHECK", prompt,
                    f"{stage.name} prompt unexpectedly carries the cycle check",
                )


# ---------------------------------------------------------------------------
# Realistic cjson-style smoke test (paste-equivalence)
# ---------------------------------------------------------------------------


@unittest.skip(
    "Stage_10 mechanical mapping hint is currently disabled — see "
    "_stage10MechanicalMappingHint docstring. Re-enable + un-skip when "
    "the hint is restored."
)
class TestCjsonStruct(unittest.TestCase):
    """End-to-end sanity: the prompt the model actually sees for a
    cjson-style struct must contain every signal needed to AVOID the
    Option<Box<T>>-for-cycle bug we hit on the 2026-05-13 Sonnet run."""

    def test_cjson_style_prompt_contains_all_anti_box_signals(self):
        probe = _Probe(dstLang="Rust")
        batch = [_Node(TypeKind.STRUCT, TranslationMode.RICH_STRUCT)]
        prompt = probe._buildTypeBatchBasePrompt(batch, stage=Stage.Stage_10)

        # The four critical signals that, together, should steer the model
        # away from picking Option<Box<CJSON>> for cJSON::next/prev/child:
        signals = [
            "MECHANICAL MAPPING",            # framing: not a redesign
            "TYPE MAPPING",                  # the table
            "CYCLE CHECK",                   # the rule
            "MUST be `*mut T`",              # the directive
            "NEVER Box<T>",                  # the prohibition
            "next",                          # named example
            "prev",                          # named example
        ]
        for signal in signals:
            self.assertIn(
                signal, prompt,
                f"cjson-class prompt is missing critical signal: {signal!r}",
            )


if __name__ == "__main__":
    unittest.main()
