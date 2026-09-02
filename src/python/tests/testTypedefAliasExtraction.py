import logging
import os
import sys
import tempfile
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)
sys.modules.setdefault("tiktoken", types.ModuleType("tiktoken"))

sympy_mod = types.ModuleType("sympy")
codegen_mod = types.ModuleType("sympy.codegen")
cnodes_mod = types.ModuleType("sympy.codegen.cnodes")
cnodes_mod.struct = object()
sys.modules.setdefault("sympy", sympy_mod)
sys.modules.setdefault("sympy.codegen", codegen_mod)
sys.modules.setdefault("sympy.codegen.cnodes", cnodes_mod)

from functionAndDeps import FunctionAndDependencies
from functionAndDepsExtractor import FunctionAndDepsExtractor
from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.config import TranslatorModes
from gpt_translation.dependency_utils_mixin import DependencyUtilsMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin


class DummyLogger:
    def info(self, *args, **kwargs):
        pass

    def warning(self, *args, **kwargs):
        pass


# CodeUtilsMixin is required for ``_isEmptyOrCommentOnly`` and
# ``stringifyCodeBlock`` — both consumed by ``preTranslateComplexStructs``
# and ``compileWithFeedback`` in the production pipeline. Adding it
# fixes the AttributeError that surfaced after the cascade-delete /
# comment-only normalization changes landed.
class PipelineProbe(DependencyUtilsMixin, CodeUtilsMixin, TranslationPipelineMixin):
    def __init__(self):
        self.translatorMode = TranslatorModes.COMPILATION_FEEDBACK
        self.srcLang = "C"
        self.dstLang = "Rust"
        self.logger = DummyLogger()
        self.captured = None

    def stringifyCodeBlock(self, code):
        if isinstance(code, str):
            return code
        return "\n".join(code)

    def getStructDependencyGroups(self):
        return []

    def getStructDependencyClosure(self, rootStructNames):
        return []

    def compileAndRetryLoop(self, funcName, prompt, rustTranslatedStructPrompt,
                            rustTranslatedStructs, previouslyTranslatedPrompt,
                            previouslyTranslatedFunctions, funcSrc):
        self.captured = {
            "prompt": prompt,
            "defs_prompt": rustTranslatedStructPrompt,
            "defs": rustTranslatedStructs,
            "funcs_prompt": previouslyTranslatedPrompt,
            "funcs": previouslyTranslatedFunctions,
            "func_src": funcSrc,
        }
        return (True, "ok")


class TestTypedefAliasExtraction(unittest.TestCase):
    def test_typedef_aliases_are_extracted_and_removed_from_function_source(self):
        source = """typedef unsigned char Bool;
typedef unsigned char UChar;
typedef int Int32;
typedef unsigned int UInt32;
typedef unsigned short UInt16;

static
void add_pair_to_block ( UInt32* out, UChar ch, Int32 len )
{
   Bool enabled = ((Bool)1);
   UInt16 copied = (UInt16)len;
   if (enabled) {
      out[0] = (UInt32)ch + copied;
   }
}
"""

        FunctionAndDependencies.resetTypeSystem()
        os.environ["PATH"] = (
            "/home/gabe/typedefextractor-target/bin:"
            + os.environ.get("PATH", "")
        )

        with tempfile.TemporaryDirectory() as td:
            path = os.path.join(td, "add_pair_to_block.i")
            with open(path, "w") as f:
                f.write(source)

            extractor = FunctionAndDepsExtractor(DummyLogger())
            function_list_order = []
            func_map = extractor.extractFuncsAndDeps(path, function_list_order, None)
            extractor.extractNormalTypeUsageDetails(td, func_map)

            func_deps = func_map["add_pair_to_block"]
            self.assertEqual(
                sorted(func_deps.typedefsWithUsageInfo.keys()),
                ["Bool", "Int32", "UChar", "UInt16", "UInt32"],
            )

            probe = PipelineProbe()
            probe.preTranslateComplexStructs()
            probe.compileWithFeedback("add_pair_to_block", func_deps, "")

            self.assertIsNotNone(probe.captured)
            defs = probe.captured["defs"]
            self.assertIn("type Bool = u8;", defs)
            self.assertIn("type UChar = u8;", defs)
            self.assertIn("type Int32 = i32;", defs)
            self.assertIn("type UInt32 = u32;", defs)
            self.assertIn("type UInt16 = u16;", defs)

            func_src = probe.captured["func_src"]
            self.assertNotIn("typedef unsigned char Bool;", func_src)
            self.assertNotIn("typedef unsigned char UChar;", func_src)
            self.assertNotIn("typedef int Int32;", func_src)
            self.assertNotIn("typedef unsigned int UInt32;", func_src)
            self.assertNotIn("typedef unsigned short UInt16;", func_src)
            self.assertIn("void add_pair_to_block", func_src)

    def test_dependency_function_prompt_does_not_force_calls(self):
        probe = PipelineProbe()
        func_deps = types.SimpleNamespace(
            typeDeclDefCodeLines="",
            funcCodeLines="int wrapper(void) { return 1; }",
            previouslyTranslatedFunctions="fn old_helper() -> i32 { 1 }",
            previouslyTranslatedFunctionSignatures="old_helper() -> i32",
            directTypeRefs=[],
            directDependentTypes=[],
            typedefsWithUsageInfo={},
            dependentStructNameList=[],
            previouslyTranslatedFunctionSignaturesForPrompt="",
            # Required by compileWithFeedback's forward-declaration-strip
            # step; was added when dependent-typedef cleanup landed.
            dependFunctions=[],
        )

        probe.compileWithFeedback("wrapper", func_deps, "")

        self.assertIsNotNone(probe.captured)
        funcs_prompt = probe.captured["funcs_prompt"]
        self.assertIn("available for reference", funcs_prompt)
        self.assertIn("Call them only when they are still required", funcs_prompt)
        self.assertIn("do not call it", funcs_prompt)
        self.assertNotIn("Please call them directly", funcs_prompt)


if __name__ == "__main__":
    unittest.main()
