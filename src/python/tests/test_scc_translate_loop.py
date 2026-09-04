import logging
import os
import sys
import tempfile
import types
import unittest
from collections import deque

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

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
from gpt_translation.translation_utils_mixin import TranslationUtilsMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
from gpt_translation.config import TranslatorModes


class _RecordingLogger:
    def __init__(self):
        self.errors = []
        self.warnings = []
        self.infos = []

    def debug(self, *args, **kwargs):
        pass

    def info(self, *args, **kwargs):
        self.infos.append((args, kwargs))

    def warning(self, *args, **kwargs):
        self.warnings.append((args, kwargs))

    def warn(self, *args, **kwargs):
        self.warnings.append((args, kwargs))

    def error(self, *args, **kwargs):
        self.errors.append((args, kwargs))

    def critical(self, *args, **kwargs):
        self.errors.append((args, kwargs))


class _StubFuncDeps:
    def __init__(self, funcSym, body, deps):
        self.funcSym = funcSym
        self.funcCodeLines = body
        self.typeDeclDefCodeLines = ""
        self.dependFunctions = list(deps)
        self.previouslyTranslatedFunctions = ""
        self.previouslyTranslatedFunctionSignatures = ""
        self.targetLangSignature = ""


class _ScriptedTranslatorProbe(
    CodeUtilsMixin,
    TranslationUtilsMixin,
    TranslationPipelineMixin,
):
    """Test double that fully exercises ``_runSccTopoTranslateLoop`` while
    intercepting LLM/compile/signature primitives.

    For each call to ``compileWithFeedback`` (single-function SCC) or
    ``compileSccWithFeedback`` (multi-function SCC), record the call and return
    a scripted ``(success, translation)`` tuple.
    """

    def __init__(self, dstLang="Rust", translatorMode=TranslatorModes.CF_STRUCT_FN_REPLAY,
                 singleResults=None, sccResults=None):
        self.logger = _RecordingLogger()
        self.dstLang = dstLang
        self.srcLang = "C"
        self.translatorMode = translatorMode
        self.model = "stub"
        self.singleCalls = []
        self.sccCalls = []
        self.singleResults = singleResults or {}
        self.sccResults = sccResults or {}
        self.mergedOutputPaths = []
        # Skip the C baseline (no real codebase under this stub probe).
        self.skipCBaseline = True

    def getTypeDependencyGraph(self):
        class _NoopGraph:
            def flattened_topo_order(self):
                return []
        return _NoopGraph()

    def compileWithFeedback(self, funcName, funcDepsObj, contextStructs, dependencyTranslate=False, stage=None):
        self.singleCalls.append((funcName, stage))
        return self.singleResults.get(funcName, (True, f"pub fn {funcName}() {{ }}\n"))

    def compileSccWithFeedback(self, sccGroup, funcMap, contextStructs, previouslyTranslatedFunctions, stage=None):
        self.sccCalls.append((tuple(sccGroup), stage))
        result = self.sccResults.get(tuple(sccGroup))
        if result is None:
            # Default: success, with a stub translation for each member.
            body = "\n".join(f"pub fn {f}() {{ }}" for f in sccGroup) + "\n"
            return (True, body, "scc_" + "__".join(sccGroup))
        successFlag, translation = result
        return (successFlag, translation, "scc_" + "__".join(sccGroup))

    def _extractSccFunctionSignatures(self, translatedResult, sccGroup):
        # Pretend signatures are 'fn <name>'.
        return ({f: f"fn {f}()" for f in sccGroup}, [])

    def runMergedOutputChecksForOutput(self, outputPath, label, funcMap=None, updateFuncMapAfterCheck=False,
                                       stage=None, prevStageFuncMap=None, prevStageTypes=None):
        self.mergedOutputPaths.append((outputPath, label))
        return True


def _funcMap(edges, body=""):
    nodes = set()
    for caller, callees in edges.items():
        nodes.add(caller)
        for c in callees:
            nodes.add(c)
    return {n: _StubFuncDeps(n, body, edges.get(n, [])) for n in nodes}


class _BypassFindTargetMixin:
    """Patches the module-level find_target_rust_function/fetch_rust_function_signature_with_byte
    so the loop's single-function path doesn't blow up on missing tree-sitter."""
    def setUp(self):
        from gpt_translation import translation_pipeline_mixin as tpm
        self._origFindRust = tpm.find_target_rust_function
        self._origFetchRust = tpm.fetch_rust_function_signature_with_byte
        self._origFindCpp = tpm.find_target_cpp_function
        self._origFetchCpp = tpm.fetch_cpp_function_signature_with_byte
        tpm.find_target_rust_function = lambda b, name: name
        tpm.fetch_rust_function_signature_with_byte = lambda b, name: (name, f"fn {name}()") if name else None
        tpm.find_target_cpp_function = lambda b, name: (name, f"void {name}()") if name else None
        tpm.fetch_cpp_function_signature_with_byte = lambda b, target: (target[0], f"void {target[0]}()") if target else None

    def tearDown(self):
        from gpt_translation import translation_pipeline_mixin as tpm
        tpm.find_target_rust_function = self._origFindRust
        tpm.fetch_rust_function_signature_with_byte = self._origFetchRust
        tpm.find_target_cpp_function = self._origFindCpp
        tpm.fetch_cpp_function_signature_with_byte = self._origFetchCpp


class SccDispatchInTranslateLoop(_BypassFindTargetMixin, unittest.TestCase):
    def test_single_function_scc_uses_compileWithFeedback(self):
        funcMap = _funcMap({"a": ["b"], "b": []})
        probe = _ScriptedTranslatorProbe()
        with tempfile.TemporaryDirectory() as tmp:
            probe._runSccTopoTranslateLoop(funcMap, tmp)
        single = sorted(name for name, _stage in probe.singleCalls)
        self.assertEqual(single, ["a", "b"])
        self.assertEqual(probe.sccCalls, [],
                         "no multi-function SCC should be dispatched for a DAG")

    def test_multi_function_cycle_dispatches_to_compileSccWithFeedback(self):
        # The nanosvg pattern.
        funcMap = _funcMap({
            "parseAttr": ["parseStyle"],
            "parseStyle": ["parseNameValue"],
            "parseNameValue": ["parseAttr"],
            "outer": ["parseAttr"],
        })
        probe = _ScriptedTranslatorProbe()
        with tempfile.TemporaryDirectory() as tmp:
            probe._runSccTopoTranslateLoop(funcMap, tmp)
        # outer is the only single-function SCC.
        self.assertEqual([n for n, _ in probe.singleCalls], ["outer"])
        # The cycle goes through the SCC path with all three members.
        self.assertEqual(len(probe.sccCalls), 1)
        cycleGroup = probe.sccCalls[0][0]
        self.assertEqual(set(cycleGroup), {"parseAttr", "parseStyle", "parseNameValue"})

    def test_scc_translation_signatures_propagate_to_funcMap(self):
        funcMap = _funcMap({"a": ["b"], "b": ["a"]})
        probe = _ScriptedTranslatorProbe()
        with tempfile.TemporaryDirectory() as tmp:
            probe._runSccTopoTranslateLoop(funcMap, tmp)
        # _extractSccFunctionSignatures returns 'fn <name>()' for each.
        self.assertEqual(funcMap["a"].targetLangSignature, "fn a()")
        self.assertEqual(funcMap["b"].targetLangSignature, "fn b()")

    def test_failed_scc_compile_falls_back_to_per_group_file(self):
        funcMap = _funcMap({"x": ["y"], "y": ["x"]})
        sccTuple = tuple(sorted(["x", "y"]))
        probe = _ScriptedTranslatorProbe(
            sccResults={sccTuple: (False, "broken rust")},
        )
        with tempfile.TemporaryDirectory() as tmp:
            probe._runSccTopoTranslateLoop(funcMap, tmp)
            # Expect a fallback file named scc_x__y.rs
            files = sorted(os.listdir(tmp))
            self.assertTrue(any(f.startswith("scc_") and f.endswith(".rs") for f in files),
                            f"expected SCC fallback file in {files}")
            # merged_funcs.rs must still be written (possibly empty / structs only).
            self.assertIn("merged_funcs.rs", files)

    def test_merged_output_includes_all_translated_groups(self):
        funcMap = _funcMap({
            "parseAttr": ["parseStyle"],
            "parseStyle": ["parseNameValue"],
            "parseNameValue": ["parseAttr"],
            "leaf": [],
        })
        probe = _ScriptedTranslatorProbe()
        with tempfile.TemporaryDirectory() as tmp:
            probe._runSccTopoTranslateLoop(funcMap, tmp)
            mergedPath = os.path.join(tmp, "merged_funcs.rs")
            self.assertTrue(os.path.exists(mergedPath))
            with open(mergedPath) as fh:
                content = fh.read()
            self.assertIn("fn leaf", content)
            self.assertIn("fn parseAttr", content)
            self.assertIn("fn parseStyle", content)
            self.assertIn("fn parseNameValue", content)


class SanityCheckWarningOnLeftoverScc(_BypassFindTargetMixin, unittest.TestCase):
    """The sanity check is the P0 deliverable: when SCC topo drains incompletely,
    the loop should log an ERROR with the leftover function names."""

    def test_ordinary_drain_does_not_log_error(self):
        funcMap = _funcMap({"a": ["b"], "b": []})
        probe = _ScriptedTranslatorProbe()
        with tempfile.TemporaryDirectory() as tmp:
            probe._runSccTopoTranslateLoop(funcMap, tmp)
        self.assertEqual(probe.logger.errors, [],
                         "no error should be logged when the queue drains cleanly")

    def test_leftover_logged_when_consumer_count_underflows(self):
        # Simulate the bug-case by patching createSccTopoQueue to return an
        # SCC that has incoming edges set higher than reality - the loop will
        # never decrement to 0, so leftover should remain.
        funcMap = _funcMap({"a": ["b"], "b": []})
        probe = _ScriptedTranslatorProbe()
        original = probe.createSccTopoQueue

        def riggedQueue(funcMap):
            sccQueue, sccIncomingEdges, sccConsumers, sccs, funcToScc, structs = original(funcMap)
            # Bump every SCC's incoming edges so nothing ever drains.
            sccQueue.clear()
            for sccId in sccIncomingEdges:
                sccIncomingEdges[sccId] = 99
            return sccQueue, sccIncomingEdges, sccConsumers, sccs, funcToScc, structs

        probe.createSccTopoQueue = riggedQueue
        with tempfile.TemporaryDirectory() as tmp:
            probe._runSccTopoTranslateLoop(funcMap, tmp)
        self.assertEqual(len(probe.logger.errors), 1,
                         "exactly one error should fire on leftover SCCs")
        argFmt, argTuple = probe.logger.errors[0][0][0], probe.logger.errors[0][0][1:]
        # Verify the leftover function names show up in the formatted error.
        formatted = argFmt % argTuple if argTuple else argFmt
        self.assertIn("a", formatted)
        self.assertIn("b", formatted)




class SplitSccTranslatedResult(unittest.TestCase):
    """``_splitSccTranslatedResult`` must give each SCC member its own
    funcCodeLines, otherwise the perf-retry loop sends an empty source to the
    LLM and infinite-loops on struct retries (cjson_new Stage_8 incident).

    These tests cover the bug-fix invariant directly: every member must end up
    with NON-EMPTY content. The exact content depends on whether tree-sitter
    is available — with it we get per-function bodies, without it we fall
    back to the full SCC blob. Both modes prevent the empty-source bug.
    """

    def _makeProbe(self, dstLang):
        return _ScriptedTranslatorProbe(dstLang=dstLang)

    def _treeSitterAvailable(self, lang):
        try:
            import tree_sitter  # noqa: F401
            if lang == "Rust":
                import tree_sitter_rust  # noqa: F401
            else:
                import tree_sitter_cpp  # noqa: F401
            return True
        except ImportError:
            return False

    def test_cpp_scc_each_member_has_nonempty_source(self):
        translated = (
            "#include <cstddef>\n"
            "#include <memory>\n"
            "\n"
            "static int parse_array(int x);\n"
            "static int parse_object(int x);\n"
            "\n"
            "static int parse_array(int x)\n"
            "{\n"
            "    return parse_object(x);\n"
            "}\n"
            "\n"
            "static int parse_object(int x)\n"
            "{\n"
            "    return parse_array(x);\n"
            "}\n"
        )
        probe = self._makeProbe("C++")
        out = probe._splitSccTranslatedResult(translated, ["parse_array", "parse_object"])
        # Bug-fix invariant: every member must have non-empty source.
        for member in ("parse_array", "parse_object"):
            self.assertNotEqual(out[member], "",
                                f"{member} must have non-empty source after split")
            self.assertIn(member, out[member],
                          f"{member}'s source must reference itself")
        # The shared preamble (#include lines) must be present in each
        # member's source — required for the next stage to compile.
        self.assertIn("#include <cstddef>", out["parse_array"])
        self.assertIn("#include <cstddef>", out["parse_object"])

    def test_cpp_scc_split_extracts_per_function_when_tree_sitter_available(self):
        if not self._treeSitterAvailable("C++"):
            self.skipTest("tree_sitter / tree_sitter_cpp not installed in this env")
        translated = (
            "#include <cstddef>\n"
            "\n"
            "static int parse_array(int x)\n"
            "{\n"
            "    return parse_object(x) + 1;\n"
            "}\n"
            "\n"
            "static int parse_object(int x)\n"
            "{\n"
            "    return parse_array(x) - 1;\n"
            "}\n"
        )
        probe = self._makeProbe("C++")
        out = probe._splitSccTranslatedResult(translated, ["parse_array", "parse_object"])
        # parse_array's slot should contain parse_array's body but NOT
        # parse_object's body (modulo the call-site mention in its body).
        self.assertIn("return parse_object(x) + 1;", out["parse_array"])
        self.assertNotIn("return parse_array(x) - 1;", out["parse_array"])
        self.assertIn("return parse_array(x) - 1;", out["parse_object"])
        self.assertNotIn("return parse_object(x) + 1;", out["parse_object"])

    def test_rust_scc_split_extracts_per_function_when_tree_sitter_available(self):
        if not self._treeSitterAvailable("Rust"):
            self.skipTest("tree_sitter / tree_sitter_rust not installed in this env")
        translated = (
            "use std::ptr;\n"
            "\n"
            "fn parse_array(x: i32) -> i32 { parse_object(x) + 1 }\n"
            "fn parse_object(x: i32) -> i32 { parse_array(x) - 1 }\n"
        )
        probe = self._makeProbe("Rust")
        out = probe._splitSccTranslatedResult(translated, ["parse_array", "parse_object"])
        self.assertIn("parse_object(x) + 1", out["parse_array"])
        self.assertIn("parse_array(x) - 1", out["parse_object"])
        # The body of one function should not appear inside the other's slot
        # (call-site mentions are fine — but the "-1" / "+1" markers
        # uniquely tag each body).
        self.assertNotIn("parse_array(x) - 1", out["parse_array"])
        self.assertNotIn("parse_object(x) + 1", out["parse_object"])

    def test_split_falls_back_to_full_blob_when_function_missing(self):
        # If the LLM omits one function, that member falls back to the full
        # blob rather than empty — preserves the legacy "have something to
        # show" behavior for the missing one.
        translated = (
            "static int only_one(int x) { return x; }\n"
        )
        probe = self._makeProbe("C++")
        out = probe._splitSccTranslatedResult(translated, ["only_one", "ghost"])
        # Ghost (missing in translation) gets the full blob fallback.
        self.assertEqual(out["ghost"], translated)
        # only_one gets at minimum the full blob (via fallback) or its own
        # extracted body — either way it must contain itself and be
        # non-empty.
        self.assertNotEqual(out["only_one"], "")
        self.assertIn("only_one", out["only_one"])

    def test_split_handles_empty_input(self):
        probe = self._makeProbe("C++")
        out = probe._splitSccTranslatedResult("", ["a", "b"])
        self.assertEqual(out, {"a": "", "b": ""})


class SccPerMemberStorage(_BypassFindTargetMixin, unittest.TestCase):
    """``_runSccTopoTranslateLoop`` must populate every SCC member's slot in
    ``functionTranslateResults`` — not just the leader. The original bug only
    populated ``sccGroup[0]``, leaving the rest empty and silently breaking
    the perf-retry path."""

    class _RecordingTranslationManager:
        def __init__(self):
            self.currentFuncName = ""
            self.currentStage = None
            # {(funcName, stage): storedResult}
            self.stored = {}

        def updateCurrentFuncNameAndStage(self, funcName, stage):
            self.currentFuncName = funcName
            self.currentStage = stage

        def updateFunctionTranslateResult(self, storedResult):
            self.stored[(self.currentFuncName, self.currentStage)] = storedResult



if __name__ == "__main__":
    unittest.main()
