import json
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
from translationValidator import (
    filterSkippedFunctionOrder,
    filterSkippedFunctions,
    loadPerformanceOnlyFunctions,
    removeDeadHelperDefinitions,
)


class DummyLogger:
    def info(self, *args, **kwargs):
        pass


class TestTranslationValidatorSkip(unittest.TestCase):
    def test_filter_skipped_function_order_removes_header_helpers(self):
        function_order = [
            "detect_indexing",
            "getchar_unlocked",
            "main",
            "fputc_unlocked",
        ]

        filtered_order = filterSkippedFunctionOrder(function_order, DummyLogger())

        self.assertEqual(filtered_order, ["detect_indexing", "main"])

    def test_filter_skipped_functions_prunes_dependency_edges(self):
        main_deps = FunctionAndDependencies("main")
        main_deps.setDepndFunctions(["detect_indexing", "getchar_unlocked", "fputc_unlocked"])
        detect_indexing_deps = FunctionAndDependencies("detect_indexing")
        getchar_deps = FunctionAndDependencies("getchar_unlocked")
        fputc_deps = FunctionAndDependencies("fputc_unlocked")

        filtered_map = filterSkippedFunctions(
            {
                "main": main_deps,
                "detect_indexing": detect_indexing_deps,
                "getchar_unlocked": getchar_deps,
                "fputc_unlocked": fputc_deps,
            },
            DummyLogger(),
        )

        self.assertEqual(sorted(filtered_map.keys()), ["detect_indexing", "main"])
        self.assertEqual(filtered_map["main"].dependFunctions, ["detect_indexing"])

    def test_performance_information_marks_main_as_performance_only(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            with open(os.path.join(temp_dir, "performance_information.json"), "w") as info_file:
                json.dump(
                    {
                        "prompt": "int main(int argc, char **argv) { return 0; }",
                        "input_arguments": "../../input_10s.csv",
                    },
                    info_file,
                )

            performance_only = loadPerformanceOnlyFunctions(temp_dir, DummyLogger())

        self.assertEqual(performance_only, {"main"})

    def test_extra_skipped_functions_remove_performance_main(self):
        function_order = ["detect_indexing", "main"]
        filtered_order = filterSkippedFunctionOrder(function_order, DummyLogger(), {"main"})

        self.assertEqual(filtered_order, ["detect_indexing"])

    def test_remove_dead_helper_definitions_prunes_unreachable_helpers(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            i_path = os.path.join(temp_dir, "nsvg__isdigit.i")
            with open(i_path, "w") as i_file:
                i_file.write(
                    "typedef unsigned short int __uint16_t;\n"
                    "typedef unsigned int __uint32_t;\n"
                    "static __uint16_t __bswap_16(__uint16_t x) {\n"
                    "    return x;\n"
                    "}\n"
                    "static __uint32_t __bswap_32(__uint32_t x) {\n"
                    "    return x;\n"
                    "}\n"
                    "static int nsvg__isdigit(char c) {\n"
                    "    return c >= '0' && c <= '9';\n"
                    "}\n"
                )

            changed = removeDeadHelperDefinitions(i_path, DummyLogger())

            with open(i_path, "r") as i_file:
                filtered_source = i_file.read()

        self.assertTrue(changed)
        self.assertNotIn("__bswap_16", filtered_source)
        self.assertNotIn("__bswap_32", filtered_source)
        self.assertIn("nsvg__isdigit", filtered_source)

    def test_remove_dead_helper_definitions_keeps_reachable_transitive_helpers(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            i_path = os.path.join(temp_dir, "target.i")
            with open(i_path, "w") as i_file:
                i_file.write(
                    "static int helper_b(int value) {\n"
                    "    return value + 1;\n"
                    "}\n"
                    "static int helper_a(int value) {\n"
                    "    return helper_b(value);\n"
                    "}\n"
                    "static int dead_helper(int value) {\n"
                    "    return value - 1;\n"
                    "}\n"
                    "int target(int value) {\n"
                    "    return helper_a(value);\n"
                    "}\n"
                )

            changed = removeDeadHelperDefinitions(i_path, DummyLogger())

            with open(i_path, "r") as i_file:
                filtered_source = i_file.read()

        self.assertTrue(changed)
        self.assertIn("helper_a", filtered_source)
        self.assertIn("helper_b", filtered_source)
        self.assertNotIn("dead_helper", filtered_source)




if __name__ == "__main__":
    unittest.main()
