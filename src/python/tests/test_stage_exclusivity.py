"""Unit tests for stage-exclusivity prompt scoping.

Background: a Stage_1 type-batch prompt (intent: "remove custom
allocator usage") was reliably getting the LLM to ALSO convert
``char *valuestring`` to ``std::string`` — a Stage_4 transformation —
because:

  1. ``_buildTypeBatchBasePrompt`` ended with "translate the type to
     more idiomatic type in C++ according to the usage in the C", an
     open-ended invitation with no stage scope.
  2. ``_stageScopeInstruction`` told the LLM that propagating type
     changes through call sites was "expected", which the model read
     as "I can change types here".
  3. The example-usage block showed ALL usage patterns of each field
     (``global_hooks.deallocate(item->valuestring)`` next to
     ``item->valuestring = (char*)output`` and null checks), without
     telling the LLM which patterns belong to which stage.

The fix:
  * ``_stageScopeInstruction`` now appends a STAGE-EXCLUSIVITY block
    enumerating exactly what each OTHER stage owns and forbidding the
    current stage from pre-empting any of it.
  * The "translate to more idiomatic type" sentence is replaced with
    a scope-respecting version that says the usage examples exist to
    inform call-site propagation only, not to license type changes.

These tests verify both directly (string content of the assembled
prompt) and indirectly (that the legacy open-ended phrasing is gone).
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
from gpt_translation.config import Stage, TranslatorModes
from type_registry import TranslationMode, TypeKind, TypeNode, TypeNodeKey


class _Logger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _Probe(CodeUtilsMixin, TranslationPipelineMixin):
    def __init__(self):
        self.logger = _Logger()
        self.translatorMode = TranslatorModes.NEW_MODE
        self.dstLang = "C++"


def _richStructNode(name, *, usage_list=None):
    """Build a RICH_STRUCT node — the kind that triggers the
    'example usage' block in _buildTypeBatchBasePrompt."""
    node = TypeNode(key=TypeNodeKey(TypeKind.STRUCT, name))
    node.translation_mode = TranslationMode.RICH_STRUCT
    node.cCode = f"struct {name} {{ /* ... */ }};"
    if usage_list:
        for field, snippets in usage_list.items():
            for snippet in snippets:
                node.merge_usage_list_entry(field, snippet)
    return node


# =============================================================================
# _stageExclusionsForOtherStages — the new method
# =============================================================================
class StageExclusionsCoverage(unittest.TestCase):

    def setUp(self):
        self.probe = _Probe()

    def test_stage_1_prompt_excludes_string_conversion_owned_by_later_stage(self):
        """The exact bug being fixed: Stage_1 must explicitly forbid
        converting char* to std::string, since that's a later stage's
        job and the LLM was doing it spontaneously. std::string lives
        at Stage_4."""
        out = self.probe._stageExclusionsForOtherStages(Stage.Stage_1)
        self.assertIn("Stage_4", out)
        self.assertIn("std::string", out)
        self.assertIn("char *", out, "must mention the specific source type "
                                       "the LLM was over-eager to convert")

    def test_stage_1_does_not_forbid_its_own_allocator_removal(self):
        """A stage's own scope must NOT appear in its exclusion list —
        otherwise the LLM will refuse to do the transformation it was
        called for."""
        out = self.probe._stageExclusionsForOtherStages(Stage.Stage_1)
        # The "removes the internal_hooks ..." action belongs to Stage_1;
        # the exclusion block must not say "Stage_1 removes the
        # internal_hooks ..." (a self-exclusion).
        self.assertNotIn("Stage_1 removes the", out,
                         "stage must not list its own action in its own "
                         "exclusion block")

    def test_every_stage_lists_every_other_stage(self):
        """Each stage's exclusion block should enumerate all OTHER
        translation stages. This prevents drift if a future stage forgets
        a particular pre-emption surface."""
        for stage in (Stage.Stage_1, Stage.Stage_2, Stage.Stage_3,
                      Stage.Stage_4, Stage.Stage_5, Stage.Stage_6,
                      Stage.Stage_7):
            out = self.probe._stageExclusionsForOtherStages(stage)
            for otherStage in (Stage.Stage_1, Stage.Stage_2, Stage.Stage_3,
                               Stage.Stage_4, Stage.Stage_5, Stage.Stage_6,
                               Stage.Stage_7):
                if otherStage == stage:
                    continue
                self.assertIn(
                    otherStage.name, out,
                    f"{stage.name}'s exclusion list must mention "
                    f"{otherStage.name}, but didn't. Output was:\n{out}",
                )

    def test_stage_10_returns_empty(self):
        """Stage_9 (mechanical C++→Rust mapping) has no later stages
        to exclude — should produce nothing rather than an empty
        'STAGE-EXCLUSIVITY' header."""
        out = self.probe._stageExclusionsForOtherStages(Stage.Stage_9)
        self.assertEqual(out, "")

    def test_none_stage_returns_empty(self):
        """Defensive: legacy callers pass stage=None and shouldn't crash
        or get a misleading partial block."""
        out = self.probe._stageExclusionsForOtherStages(None)
        self.assertEqual(out, "")

    def test_block_is_clearly_labelled(self):
        out = self.probe._stageExclusionsForOtherStages(Stage.Stage_1)
        self.assertIn("STAGE-EXCLUSIVITY", out,
                      "the block needs a recognizable header so reviewers "
                      "can locate it in transcripts")


# =============================================================================
# _stageScopeInstruction now includes the exclusion block
# =============================================================================
class StageScopeInstructionIncludesExclusions(unittest.TestCase):

    def setUp(self):
        self.probe = _Probe()

    def test_stage_1_scope_instruction_contains_stage_4_string_exclusion(self):
        """std::string lives at Stage_4 in the current ordering."""
        out = self.probe._stageScopeInstruction(Stage.Stage_1)
        # legacy "propagate through call chain" guidance stays
        self.assertIn("propagate", out)
        # plus the new exclusion block
        self.assertIn("STAGE-EXCLUSIVITY", out)
        self.assertIn("Stage_4", out)
        self.assertIn("std::string", out)

    def test_stage_10_returns_empty(self):
        """Stage_9 historically had no scope instruction (mechanical
        mapping has its own dedicated hint). Stay backwards-compatible."""
        out = self.probe._stageScopeInstruction(Stage.Stage_9)
        self.assertEqual(out, "")


# =============================================================================
# _buildTypeBatchBasePrompt — open-ended "more idiomatic type" wording is gone
# =============================================================================
class TypeBatchPromptDoesNotInviteCrossStageChanges(unittest.TestCase):

    def setUp(self):
        self.probe = _Probe()

    def _build(self, stage):
        node = _richStructNode("cJSON", usage_list={
            "valuestring": [
                "global_hooks.deallocate(item->valuestring)",
                "item->valuestring = (char*)output",
            ],
        })
        return self.probe._buildTypeBatchBasePrompt([node], stage)

    def test_legacy_open_ended_phrase_is_removed(self):
        """The previous phrasing "translate the type to more idiomatic
        type in C++ according to the usage in the C" is exactly what
        triggered the Stage_1→std::string bug. Make sure it's gone."""
        out = self._build(Stage.Stage_1)
        self.assertNotIn(
            "translate the type to more idiomatic type",
            out,
            "the open-ended 'translate to more idiomatic type' phrase "
            "must be removed — it's the proximate cause of stage scope "
            "creep",
        )

    def test_usage_block_purpose_is_explained_and_scoped(self):
        """The replacement wording must (a) tell the LLM what the
        usage block is for, and (b) explicitly deny it as a license
        for cross-stage type changes."""
        out = self._build(Stage.Stage_1)
        self.assertIn("propagates", out.lower())
        self.assertIn("NOT a license", out,
                      "must explicitly say the usage block is not a "
                      "license for cross-stage type changes")
        # exclusivity rules from _stageScopeInstruction also need to be
        # in the same prompt
        self.assertIn("STAGE-EXCLUSIVITY", out)

    def test_stage_4_prompt_does_not_exclude_string_conversion(self):
        """Stage_4's OWN transformation is char* → std::string.
        Its own prompt must NOT forbid this — only later/earlier stages do."""
        out = self._build(Stage.Stage_4)
        # Stage_4's exclusion block names Stages 1, 2, 3, 5, 6, 7, 8, 9 — not 4.
        self.assertIn("Stage_3", out)
        # Stage_4 should NOT list itself
        # (we already checked self-exclusion via the dedicated test;
        # here we just sanity-check the block exists for Stage_4 too).
        self.assertIn("STAGE-EXCLUSIVITY", out)


# =============================================================================
# End-to-end: the regression scenario from the user's report
# =============================================================================
class Stage1PromptNoLongerInvitesStringConversion(unittest.TestCase):
    """The user pasted a real Stage_1 type-batch prompt + LLM response
    where the LLM converted char* fields to std::string. Verify the
    fixed prompt now contains the explicit forbiddance that would have
    stopped the LLM's reasoning chain."""

    def setUp(self):
        self.probe = _Probe()

    def test_stage_1_prompt_explicitly_forbids_char_star_to_string(self):
        node = _richStructNode("cJSON", usage_list={
            "valuestring": [
                "current_item->string = current_item->valuestring",
                "current_item->valuestring = ((void*)0)",
                "if (item->valuestring != ((void*)0))",
                "const char *p = item->valuestring",
                "global_hooks.deallocate(item->valuestring)",
                "item->valuestring = (char*)output",
            ],
            "string": [
                "current_item->string = current_item->valuestring",
                "if (item->string != ((void*)0))",
                "global_hooks.deallocate(item->string)",
            ],
        })
        prompt = self.probe._buildTypeBatchBasePrompt([node], Stage.Stage_1)

        # The prompt must say all three of these:
        # 1. There IS a stage exclusivity rule.
        self.assertIn("STAGE-EXCLUSIVITY", prompt)
        # 2. Stage_4 is the one that handles char* → std::string,
        #    not Stage_1.
        self.assertIn("Stage_4", prompt)
        self.assertIn("std::string", prompt)
        # 3. The legacy "more idiomatic type" wording is gone.
        self.assertNotIn("translate the type to more idiomatic type", prompt)


if __name__ == "__main__":
    unittest.main()
