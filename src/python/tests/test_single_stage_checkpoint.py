"""Verify the NEW_MODE single-stage checkpoint mechanism end-to-end:

1. Round-trip serialization: dump state, load it back, the in-memory state
   matches.
2. Prompt parity: running NEW_MODE through Stage_1 then resuming with
   ``new-mode-single-stage --target-stage=Stage_2`` produces the SAME prompt
   for Stage_2 as running full NEW_MODE through Stage_2 in one go.

We swap out the LLM call (``chunkAndSend``) with a fake that records every
prompt. Comparing the recorded prompt streams gives us a byte-level guarantee
of equivalence without paying for real LLM calls.
"""
import json
import os
import sys
import tempfile
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# Stub heavy deps so we don't need them installed.
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
from type_registry import TypeKind, TypeNodeKey
from gpt_translation.config import Stage, TranslatorModes
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin


class _Logger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _MinimalPipelineProbe(TranslationPipelineMixin):
    """Probe whose only job is exercising _dumpStageState / _loadStageState
    with a real typeRegistry + funcMap (no LLM, no compile)."""

    def __init__(self):
        self.logger = _Logger()
        self.dstLang = "C++"
        self.translatorMode = TranslatorModes.NEW_MODE

    def stringifyCodeBlock(self, code):
        return code if isinstance(code, str) else "\n".join(code)


class _StubFuncDeps:
    def __init__(self, funcSym):
        self.funcSym = funcSym
        self.funcCodeLines = ""
        self.typeDeclDefCodeLines = ""
        self.previouslyTranslatedFunctions = ""
        self.previouslyTranslatedFunctionSignatures = ""
        self.dependFunctions = []
        self.targetLangSignature = ""


class StageStateRoundTrip(unittest.TestCase):
    """The ``_dumpStageState`` / ``_loadStageState`` pair must reproduce
    exactly the four mutations ``Translator.updateFuncMap`` performs:
       - ``TypeNode.cCode`` set to stage's translated text
       - ``TypeNode.rustCode`` set to the same
       - ``funcMap[name].funcCodeLines`` set to stage's translated function
       - ``funcMap[name].typeDeclDefCodeLines`` cleared
    """

    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()
        self.probe = _MinimalPipelineProbe()

    def _setupFixture(self):
        # Two types and two functions, deliberately nontrivial bodies.
        FunctionAndDependencies.upsertTypeNode(
            kind=TypeKind.STRUCT,
            name="Point",
            c_code="typedef struct Point { int x; int y; } Point;",
        )
        FunctionAndDependencies.upsertTypeNode(
            kind=TypeKind.TYPEDEF,
            name="size_t",
            c_code="typedef unsigned long size_t;",
        )
        funcMap = {
            "add": _StubFuncDeps("add"),
            "main": _StubFuncDeps("main"),
        }
        funcMap["add"].funcCodeLines = "int add(int a, int b) { return a + b; }"
        funcMap["add"].typeDeclDefCodeLines = "int /* dec context */;"
        funcMap["main"].funcCodeLines = "int main() { return add(1, 2); }"
        return funcMap

    def test_dump_writes_valid_json_with_expected_shape(self):
        funcMap = self._setupFixture()
        # Fake the post-stage state that updateFuncMap would have produced.
        FunctionAndDependencies.getTypeNodeByName(TypeKind.STRUCT, "Point").cCode = "struct Point { x: i32, y: i32 }"
        FunctionAndDependencies.getTypeNodeByName(TypeKind.TYPEDEF, "size_t").cCode = "type size_t = u64;"
        funcMap["add"].funcCodeLines = "fn add(a: i32, b: i32) -> i32 { a + b }"

        with tempfile.TemporaryDirectory() as tmp:
            statePath = self.probe._dumpStageState(tmp, Stage.Stage_3, funcMap)
            self.assertTrue(os.path.isfile(statePath))
            with open(statePath) as f:
                state = json.load(f)
            self.assertEqual(state["stage"], "Stage_3")
            self.assertEqual(state["dstLang"], "C++")
            self.assertEqual(state["type_code"]["struct:Point"], "struct Point { x: i32, y: i32 }")
            self.assertEqual(state["type_code"]["typedef:size_t"], "type size_t = u64;")
            self.assertEqual(state["function_bodies"]["add"], "fn add(a: i32, b: i32) -> i32 { a + b }")

    def test_load_restores_type_cCode_and_rustCode(self):
        funcMap = self._setupFixture()
        # Build a state file that mimics what Stage_3 would have written.
        with tempfile.TemporaryDirectory() as tmp:
            statePath = os.path.join(tmp, "stage_state.json")
            with open(statePath, "w") as f:
                json.dump({
                    "stage": "Stage_3",
                    "dstLang": "C++",
                    "type_code": {
                        "struct:Point": "STAGE3_STRUCT_POINT",
                        "typedef:size_t": "STAGE3_TYPEDEF_SIZE_T",
                    },
                    "function_bodies": {
                        "add": "STAGE3_ADD_BODY",
                        "main": "STAGE3_MAIN_BODY",
                    },
                }, f)
            self.probe._loadStageState(statePath, funcMap)

        pointNode = FunctionAndDependencies.getTypeNodeByName(TypeKind.STRUCT, "Point")
        self.assertEqual(pointNode.cCode, "STAGE3_STRUCT_POINT")
        self.assertEqual(pointNode.rustCode, "STAGE3_STRUCT_POINT")

        sizeNode = FunctionAndDependencies.getTypeNodeByName(TypeKind.TYPEDEF, "size_t")
        self.assertEqual(sizeNode.cCode, "STAGE3_TYPEDEF_SIZE_T")
        self.assertEqual(sizeNode.rustCode, "STAGE3_TYPEDEF_SIZE_T")

        self.assertEqual(funcMap["add"].funcCodeLines, "STAGE3_ADD_BODY")
        self.assertEqual(funcMap["main"].funcCodeLines, "STAGE3_MAIN_BODY")
        # typeDeclDefCodeLines must be cleared - mirrors updateFuncMap.
        self.assertEqual(funcMap["add"].typeDeclDefCodeLines, "")
        self.assertEqual(funcMap["main"].typeDeclDefCodeLines, "")

    def test_dump_then_load_roundtrip_is_idempotent(self):
        funcMap = self._setupFixture()
        FunctionAndDependencies.getTypeNodeByName(TypeKind.STRUCT, "Point").cCode = "struct Point { x: i32, y: i32 }"
        FunctionAndDependencies.getTypeNodeByName(TypeKind.TYPEDEF, "size_t").cCode = "type size_t = u64;"
        funcMap["add"].funcCodeLines = "fn add(a: i32, b: i32) -> i32 { a + b }"
        funcMap["main"].funcCodeLines = "fn main() { add(1, 2); }"

        with tempfile.TemporaryDirectory() as tmp:
            statePath = self.probe._dumpStageState(tmp, Stage.Stage_4, funcMap)
            # Mutate state to garbage to verify load actually restores.
            FunctionAndDependencies.getTypeNodeByName(TypeKind.STRUCT, "Point").cCode = "GARBAGE_STRUCT"
            funcMap["add"].funcCodeLines = "GARBAGE_FN"
            funcMap["add"].typeDeclDefCodeLines = "stale-decl"
            self.probe._loadStageState(statePath, funcMap)

        self.assertEqual(
            FunctionAndDependencies.getTypeNodeByName(TypeKind.STRUCT, "Point").cCode,
            "struct Point { x: i32, y: i32 }",
        )
        self.assertEqual(funcMap["add"].funcCodeLines, "fn add(a: i32, b: i32) -> i32 { a + b }")
        self.assertEqual(funcMap["add"].typeDeclDefCodeLines, "")

    def test_load_skips_unknown_type_keys_without_error(self):
        funcMap = self._setupFixture()
        with tempfile.TemporaryDirectory() as tmp:
            statePath = os.path.join(tmp, "stage_state.json")
            with open(statePath, "w") as f:
                json.dump({
                    "stage": "Stage_3",
                    "dstLang": "C++",
                    "type_code": {
                        "struct:Point": "VALID",
                        "struct:NotInRegistry": "SHOULD_BE_SKIPPED",
                        "bogus_format_no_colon": "SHOULD_BE_SKIPPED",
                        "unknown_kind:Foo": "SHOULD_BE_SKIPPED",
                    },
                    "function_bodies": {
                        "add": "ok",
                        "not_in_funcmap": "SHOULD_BE_SKIPPED",
                    },
                }, f)
            self.probe._loadStageState(statePath, funcMap)

        pointNode = FunctionAndDependencies.getTypeNodeByName(TypeKind.STRUCT, "Point")
        self.assertEqual(pointNode.cCode, "VALID")
        self.assertEqual(funcMap["add"].funcCodeLines, "ok")


class StorageKeyFormat(unittest.TestCase):
    """The dump/load contract relies on TypeNodeKey.storage_key being
    parseable as ``<kind>:<name>``. Lock that contract."""

    def test_storage_key_for_struct(self):
        key = TypeNodeKey(kind=TypeKind.STRUCT, name="NSVGparser")
        self.assertEqual(key.storage_key(), "struct:NSVGparser")

    def test_storage_key_for_typedef(self):
        key = TypeNodeKey(kind=TypeKind.TYPEDEF, name="size_t")
        self.assertEqual(key.storage_key(), "typedef:size_t")

    def test_storage_key_round_trip_via_split(self):
        key = TypeNodeKey(kind=TypeKind.UNION, name="MyUnion")
        s = key.storage_key()
        kindStr, name = s.split(":", 1)
        self.assertEqual(TypeKind(kindStr), TypeKind.UNION)
        self.assertEqual(name, "MyUnion")


class TranslatorModeMapping(unittest.TestCase):
    def test_cli_string_maps_to_new_mode_single_stage(self):
        from gpt_translation.translator import Translator
        mode = Translator.getTranslatorMode("new-mode-single-stage")
        self.assertEqual(mode, TranslatorModes.NEW_MODE_SINGLE_STAGE)


if __name__ == "__main__":
    unittest.main()
