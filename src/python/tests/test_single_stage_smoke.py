"""Smoke test for NEW_MODE_SINGLE_STAGE: verify that running Stage_2 in
single-stage mode (after Stage_1 produced its checkpoint) generates the SAME
prompts as running Stage_2 inline within full NEW_MODE.

The test bypasses real LLM/compile by intercepting ``chunkAndSend`` and
``compile``. Each call records the prompt; at the end we compare the prompt
sequences byte-for-byte.
"""
import json
import os
import sys
import tempfile
import types
import unittest
from collections import deque

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# Stub heavy deps.
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
from translationResultManager import TranslationResultManager
from type_registry import TypeKind, TypeNodeKey, TranslationMode
from gpt_translation.config import Stage, TranslatorModes
from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin
from gpt_translation.dependency_utils_mixin import DependencyUtilsMixin
from gpt_translation.translation_utils_mixin import TranslationUtilsMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin


class _DummyLogger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _RecordingProbe(
    CodeUtilsMixin,
    SymbolExtractionMixin,
    DependencyUtilsMixin,
    TranslationUtilsMixin,
    TranslationPipelineMixin,
):
    """Translator-like probe that intercepts every LLM/compile call. Each
    prompt sent to ``chunkAndSend`` is appended to ``self.prompts`` so we can
    diff full vs single-stage prompt streams.
    """
    PERFORMANCE_CARGO_PACKAGE_NAME = "performance_runner"
    CROWN_STATISTICS_OUTPUT_NAME = "crown_statistics.json"
    PERFORMANCE_TEMP_DIR_NAME = "temp"

    def __init__(self, mode):
        self.logger = _DummyLogger()
        self.dstLang = "C++"
        self.srcLang = "C"
        self.translatorMode = mode
        self.model = "stub"
        self.skipPerformanceCheck = True       # internal-only override for tests
        self.skipCBaseline = True              # smoke test doesn't have a real codebase
        self.perfDegradeSkipRetry = True
        self.perfDegradeDiscardOnFail = False
        self.targetStage = None
        self.priorStageStateDir = None
        self.stageCheckStats = {}
        self.prompts = []
        self.compileCalls = 0
        self.functionCounter = 0

    # --- LLM call interception ---
    def chunkAndSend(self, funcOrStructName, request):
        self.prompts.append({"name": funcOrStructName, "request": request})
        # Return a deterministic, parseable Rust/C++ snippet so the stage loop
        # extracts a signature successfully.
        body = self._fakeBody(funcOrStructName)
        return f"```{self.dstLang.lower()}\n{body}\n```"

    def _fakeBody(self, name):
        if name in ("add", "main"):
            return f"unsafe fn {name}() {{ /* stage_translated_{name} */ }}"
        return f"// stub for {name}"

    # --- Compile interception ---
    def compile(self, codeSnippet):
        self.compileCalls += 1
        return (True, "")

    def compileWithCargoProject(self, codeSnippet):
        return (True, "")

    # --- Stage check decisions: always approve so the stage actually runs ---
    def stageCheck(self, stage=None, *, funcSrc="", contextStructs="", funcSignatures="",
                   usageExamples="", proposedChange=None):
        return True

    # --- Pre-stage struct translation: stub it out by recording the prompt
    #     once per stage ---
    def preTranslateComplexStructs(self, stage=None, perfRetryContext=None):
        # We don't actually run the LLM type-batch path; we just simulate the
        # post-call effect: rustCode for each type set to a deterministic
        # function of stage + name. This is enough for the per-function prompt
        # to depend on the stage.
        for typeKey in FunctionAndDependencies.typeRegistry.sorted_keys():
            node = FunctionAndDependencies.getTypeNode(typeKey)
            if node is None:
                continue
            stageTag = stage.name if stage else "no_stage"
            node.rustCode = f"// {stageTag}: {typeKey.storage_key()}\n"

    # --- Skip merged-output post-checks (perf + crown) ---
    def runMergedOutputChecksForOutput(self, outputPath, label, funcMap=None, updateFuncMapAfterCheck=False,
                                       stage=None, prevStageFuncMap=None, prevStageTypes=None):
        # Mimic NEW_MODE's post-stage updateFuncMap by copying our fake bodies
        # back into funcMap, identical to the real Translator.updateFuncMap.
        if updateFuncMapAfterCheck and funcMap is not None:
            for fname in funcMap:
                funcMap[fname].funcCodeLines = self._fakeBody(fname)
                funcMap[fname].typeDeclDefCodeLines = ""
            for typeKey in FunctionAndDependencies.typeRegistry.sorted_keys():
                node = FunctionAndDependencies.getTypeNode(typeKey)
                if node is None:
                    continue
                node.cCode = node.rustCode
        return True

    def emitStageCheckSummary(self, *_args, **_kwargs):
        pass

    def ensureStageCheckStats(self, stages=None):
        pass

    def _dumpTokenUsage(self, _outputDir):
        pass


def _setupFixture():
    """Two functions, one struct, one typedef. Deterministic enough that the
    full-NEW_MODE path through Stage_2 has identical output to the single-stage
    path resuming from Stage_1's checkpoint.
    """
    FunctionAndDependencies.resetTypeSystem()
    FunctionAndDependencies.upsertTypeNode(
        kind=TypeKind.STRUCT,
        name="Point",
        c_code="typedef struct Point { int x; int y; } Point;",
        translation_mode=TranslationMode.PLAIN_STRUCT,
    )
    FunctionAndDependencies.upsertTypeNode(
        kind=TypeKind.TYPEDEF,
        name="size_t",
        c_code="typedef unsigned long size_t;",
        translation_mode=TranslationMode.TYPEDEF,
    )
    funcMap = {}
    for name in ("add", "main"):
        deps = type("StubDeps", (), {})()
        deps.funcSym = name
        deps.funcCodeLines = f"int {name}(int a, int b) {{ return a + b; }}"
        deps.typeDeclDefCodeLines = ""
        deps.previouslyTranslatedFunctions = ""
        deps.previouslyTranslatedFunctionSignatures = ""
        deps.dependFunctions = []
        deps.targetLangSignature = ""
        deps.directTypeRefs = set()
        deps.typeReferenceRanges = {}
        deps.typeUsageCodeLinesMap = {}
        deps.structsWithUsageInfo = {}
        deps.unionsWithUsageInfo = {}
        deps.enumsWithUsageInfo = {}
        deps.typedefsWithUsageInfo = {}
        deps.externVariablesWithUsageInfo = {}
        deps.staticVariablesWithUsageInfo = {}
        funcMap[name] = deps
    return funcMap


class FullVsSingleStageStage2PromptParity(unittest.TestCase):
    """Run NEW_MODE Stage_1 + Stage_2 (full path) and capture Stage_2's prompts.
    Then run NEW_MODE_SINGLE_STAGE for Stage_2 with the Stage_1 checkpoint and
    capture its prompts. They must match byte-for-byte."""

    def _runFullPath(self, outDir):
        funcMap = _setupFixture()
        probe = _RecordingProbe(TranslatorModes.NEW_MODE)

        # Patch tree-sitter helpers so signature extraction is deterministic.
        from gpt_translation import translation_pipeline_mixin as tpm
        origs = {
            "find_target_cpp_function": tpm.find_target_cpp_function,
            "fetch_cpp_function_signature_with_byte": tpm.fetch_cpp_function_signature_with_byte,
            "find_target_rust_function": tpm.find_target_rust_function,
            "fetch_rust_function_signature_with_byte": tpm.fetch_rust_function_signature_with_byte,
        }
        tpm.find_target_cpp_function = lambda b, name: (name, "void")
        tpm.fetch_cpp_function_signature_with_byte = lambda b, target: (
            target[0] if isinstance(target, tuple) else target,
            f"void {target[0] if isinstance(target, tuple) else target}()",
        )
        tpm.find_target_rust_function = lambda b, name: name
        tpm.fetch_rust_function_signature_with_byte = lambda b, target: (target, f"unsafe fn {target}()") if target else None
        try:
            probe.translateAll(funcMap, outDir, multiThreading=False)
        finally:
            for k, v in origs.items():
                setattr(tpm, k, v)
        # Filter prompts to only Stage_2's (we know each per-func prompt
        # contains the stage's directive substring).
        stage2Prompts = [
            p for p in probe.prompts
            if "Modify C++ code step by step" in p.get("request", "")
            and Stage.Stage_2.value in p.get("request", "")
        ]
        return stage2Prompts

    def _runSingleStage(self, baseOutDir, priorStateDir):
        funcMap = _setupFixture()
        # Reset typeRegistry to its post-static-analysis state. _loadStageState
        # will then write rustCode/cCode on top.
        probe = _RecordingProbe(TranslatorModes.NEW_MODE_SINGLE_STAGE)
        probe.targetStage = Stage.Stage_2
        probe.priorStageStateDir = priorStateDir

        from gpt_translation import translation_pipeline_mixin as tpm
        origFind = tpm.find_target_cpp_function
        origFetch = tpm.fetch_cpp_function_signature_with_byte
        tpm.find_target_cpp_function = lambda b, name: (name, "void")
        tpm.fetch_cpp_function_signature_with_byte = lambda b, target: (target[0], f"void {target[0]}()")
        try:
            probe.translateAll(funcMap, baseOutDir, multiThreading=False)
        finally:
            tpm.find_target_cpp_function = origFind
            tpm.fetch_cpp_function_signature_with_byte = origFetch
        stage2Prompts = [
            p for p in probe.prompts
            if "Modify C++ code step by step" in p.get("request", "")
            and Stage.Stage_2.value in p.get("request", "")
        ]
        return stage2Prompts

    def test_stage_2_prompt_byte_parity(self):
        with tempfile.TemporaryDirectory() as fullOut, tempfile.TemporaryDirectory() as singleOut:
            fullPrompts = self._runFullPath(fullOut)

            # The full path created _Stage.Stage_1 with stage_state.json.
            stage1Dir = os.path.join(fullOut, f"_{Stage.Stage_1}")
            statePath = os.path.join(stage1Dir, "stage_state.json")
            self.assertTrue(os.path.isfile(statePath),
                            f"NEW_MODE should have dumped Stage_1 checkpoint at {statePath}")

            singlePrompts = self._runSingleStage(singleOut, stage1Dir)

            # We expect at least one Stage_2 prompt per function.
            self.assertGreater(len(fullPrompts), 0,
                               "full NEW_MODE produced no Stage_2 prompts")
            self.assertEqual(
                len(fullPrompts), len(singlePrompts),
                f"Stage_2 prompt count differs: full={len(fullPrompts)} "
                f"single={len(singlePrompts)}",
            )

            # Compare per-function prompts (sorted by funcName for determinism).
            fullByName = sorted(fullPrompts, key=lambda p: p["name"])
            singleByName = sorted(singlePrompts, key=lambda p: p["name"])
            for fp, sp in zip(fullByName, singleByName):
                self.assertEqual(fp["name"], sp["name"])
                self.assertEqual(
                    fp["request"], sp["request"],
                    f"Stage_2 prompt mismatch for {fp['name']!r}\n"
                    f"=== full path prompt ===\n{fp['request']}\n"
                    f"=== single-stage prompt ===\n{sp['request']}",
                )


if __name__ == "__main__":
    unittest.main()
