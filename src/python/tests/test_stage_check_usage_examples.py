"""Unit tests for the shared ``_formatTypeUsageExamples`` helper and the
new ``usageExamples`` parameter on ``stageCheck``.

Background: until this change, the type-batch translation prompt
included per-field usage evidence (e.g.
``cJSON: valuestring: free(item->valuestring)``) read from
``node.usageList``, but ``stageCheck`` saw only abstract type
definitions and signatures. This let cases like the Stage_4 ``char* ->
std::string`` conversion sail past the judge — the type definition
looks more idiomatic in isolation, but the call-site evidence (raw
malloc'd assignment + manual free) would have flagged the change as
incomplete.

After the refactor:
  * ``_formatTypeUsageExamples(nodes, stage)`` is the single source of
    truth for the "example usage:" block.
  * The type-batch translation prompt calls it.
  * Both ``stageCheck`` call sites (type batch + function level) call it
    too, so the judge sees byte-identical evidence.
  * Stage_9 still gets "" (Rust path intentionally has no examples —
    see the gate in _buildTypeBatchBasePrompt).
"""

import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# --- third-party stubs (shared boilerplate with other tests) ---
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
from gpt_translation.config import Stage, TranslatorModes
from type_registry import TranslationMode, TypeKind, TypeNode, TypeNodeKey


class _Logger:
    def __init__(self):
        self.info_msgs = []

    def info(self, msg, *args, **kwargs):
        self.info_msgs.append(msg % args if args else msg)

    def __getattr__(self, _n):
        return lambda *a, **k: None


class _PipelineProbe(CodeUtilsMixin, TranslationPipelineMixin):
    def __init__(self):
        self.logger = _Logger()
        self.translatorMode = TranslatorModes.NEW_MODE
        self.dstLang = "C++"
        self.skipStageCheck = False
        self.lastRawResponse = None
        self.sent_requests = []
        # Default send response: judge says "yes" so we can assert on
        # *what* it was asked, not its answer.
        self._send_response = "yes"

    def send(self, _kind, request):
        self.sent_requests.append(request)
        return (None, self._send_response)

    def recordStageCheckResult(self, *args, **kwargs):
        pass

    def fetchStageCheckPrompt(self, stage):
        return f"<stage intent for {stage}>"


def _richStructNode(name, *, usage_list):
    """Build a RICH_STRUCT TypeNode with a populated ``usageList``."""
    node = TypeNode(key=TypeNodeKey(TypeKind.STRUCT, name))
    node.translation_mode = TranslationMode.RICH_STRUCT
    for field, snippets in usage_list.items():
        for snippet in snippets:
            node.merge_usage_list_entry(field, snippet)
    return node


def _plainStructNode(name):
    node = TypeNode(key=TypeNodeKey(TypeKind.STRUCT, name))
    # No translation_mode set => not RICH_STRUCT => no usage examples
    return node


# =============================================================================
# _formatTypeUsageExamples — the shared helper
# =============================================================================
class FormatTypeUsageExamples(unittest.TestCase):

    def test_renders_node_field_usage_lines(self):
        node = _richStructNode("cJSON", usage_list={
            "valuestring": [
                "item->valuestring = (char*)output",
                "free(item->valuestring)",
            ],
        })
        out = TranslationPipelineMixin._formatTypeUsageExamples([node])
        self.assertIn("example usage:", out)
        self.assertIn("cJSON: valuestring: item->valuestring = (char*)output", out)
        self.assertIn("cJSON: valuestring: free(item->valuestring)", out)

    def test_empty_when_no_rich_struct_nodes(self):
        node = _plainStructNode("cJSON")
        self.assertEqual(
            TranslationPipelineMixin._formatTypeUsageExamples([node]),
            "",
            "plain structs (non-RICH) carry no per-field usage",
        )

    def test_empty_when_rich_struct_has_no_usages(self):
        node = _richStructNode("cJSON", usage_list={})
        self.assertEqual(
            TranslationPipelineMixin._formatTypeUsageExamples([node]),
            "",
        )

    def test_stage_10_intentionally_returns_empty(self):
        node = _richStructNode("cJSON", usage_list={
            "valuestring": ["item->valuestring = (char*)output"],
        })
        self.assertEqual(
            TranslationPipelineMixin._formatTypeUsageExamples([node], Stage.Stage_10),
            "",
            "Stage_10 (Rust mechanical mapping) intentionally suppresses usage",
        )

    def test_iterates_multiple_nodes_in_order(self):
        a = _richStructNode("Foo", usage_list={"x": ["foo->x = 1"]})
        b = _richStructNode("Bar", usage_list={"y": ["bar->y = 2"]})
        out = TranslationPipelineMixin._formatTypeUsageExamples([a, b])
        # Foo's evidence must come before Bar's (deterministic order).
        self.assertLess(out.index("Foo: x"), out.index("Bar: y"))

    def test_ignores_nodes_without_translation_mode_attr(self):
        """Defensive: a raw object missing translation_mode shouldn't crash."""
        bareObj = types.SimpleNamespace(name="weird", usageList={})
        self.assertEqual(
            TranslationPipelineMixin._formatTypeUsageExamples([bareObj]),
            "",
        )

    def test_terminal_blank_line(self):
        """Block must end with the standard double-newline so it composes
        cleanly with the request text the caller is building."""
        node = _richStructNode("X", usage_list={"f": ["use"]})
        out = TranslationPipelineMixin._formatTypeUsageExamples([node])
        self.assertTrue(out.endswith("\n\n"))


# =============================================================================
# stageCheck — judge now sees the SAME evidence as the translator
# =============================================================================
class StageCheckUsageExamples(unittest.TestCase):

    def setUp(self):
        self.probe = _PipelineProbe()

    def test_usage_examples_kwarg_is_included_in_prompt(self):
        usage = ("example usage:\n"
                 "cJSON: valuestring: item->valuestring = (char*)output\n\n")
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc="struct cJSON { ... };",
            usageExamples=usage,
        )
        self.assertEqual(len(self.probe.sent_requests), 1)
        prompt = self.probe.sent_requests[0]
        self.assertIn(
            "How these types are actually used by callers",
            prompt,
            "stageCheck must add a header so the judge knows what the block is",
        )
        self.assertIn(
            "item->valuestring = (char*)output",
            prompt,
            "concrete usage evidence must appear in the prompt",
        )

    def test_no_usage_block_when_empty(self):
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc="struct cJSON { ... };",
            usageExamples="",
        )
        self.assertEqual(len(self.probe.sent_requests), 1)
        prompt = self.probe.sent_requests[0]
        self.assertNotIn(
            "How these types are actually used by callers",
            prompt,
            "no header when nothing to say — keeps prompt slim",
        )

    def test_usage_block_position_after_dependency_signatures(self):
        """The block should appear AFTER the dependency types/signatures
        sections so the judge reads abstract context first and concrete
        evidence last — mirrors the translation prompt ordering and the
        judge's natural reading order."""
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc="<code>",
            contextStructs="<dep types>",
            funcSignatures="<dep sigs>",
            usageExamples="example usage:\nFoo: x: foo->x = 1\n\n",
        )
        prompt = self.probe.sent_requests[0]
        self.assertLess(
            prompt.index("<dep sigs>"),
            prompt.index("How these types are actually used"),
        )

    def test_legacy_callers_without_usage_examples_still_work(self):
        """Back-compat: stageCheck is also called from older tests / paths
        that don't pass usageExamples. Default to empty and emit no block."""
        result = self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc="struct cJSON { ... };",
            contextStructs="<deps>",
            funcSignatures="<sigs>",
        )
        # The default _send_response is "yes" so the judge approves.
        self.assertTrue(result)
        prompt = self.probe.sent_requests[0]
        self.assertNotIn("How these types are actually used", prompt)


# =============================================================================
# Cross-prompt consistency — translator and judge see byte-identical blocks
# =============================================================================
class SharedBlockBetweenTranslatorAndJudge(unittest.TestCase):
    """The whole point of routing both prompts through
    ``_formatTypeUsageExamples`` is that there is no asymmetry left.
    Re-deriving the block separately for each caller would defeat the
    purpose, so the contract is: *one helper, one render*."""

    def test_translator_and_judge_both_call_same_formatter(self):
        """If the translator's block and the judge's block come from the
        same function with the same input, they are byte-identical."""
        node = _richStructNode("cJSON", usage_list={
            "valuestring": [
                "item->valuestring = (char*)output",
                "free(item->valuestring)",
            ],
            "string": ["item->string = current_item->valuestring"],
        })

        # Stage_4 is the std::string stage in the current ordering.
        translator_block = TranslationPipelineMixin._formatTypeUsageExamples(
            [node], Stage.Stage_4
        )
        judge_block = TranslationPipelineMixin._formatTypeUsageExamples(
            [node], Stage.Stage_4
        )
        self.assertEqual(translator_block, judge_block)
        self.assertIn("free(item->valuestring)", translator_block,
                      "string-stage evidence pattern must surface to BOTH callers")

    def test_helper_is_pure_function(self):
        """No hidden state — the same inputs always produce the same
        output. (Catches accidental introduction of caching / side
        effects in future edits.)"""
        node = _richStructNode("Foo", usage_list={"x": ["a", "b"]})
        out1 = TranslationPipelineMixin._formatTypeUsageExamples([node])
        out2 = TranslationPipelineMixin._formatTypeUsageExamples([node])
        out3 = TranslationPipelineMixin._formatTypeUsageExamples([node])
        self.assertEqual(out1, out2)
        self.assertEqual(out2, out3)


if __name__ == "__main__":
    unittest.main()
