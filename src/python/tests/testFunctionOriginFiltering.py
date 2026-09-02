import os
import sys
import tempfile
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

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

from functionAndDepsExtractor import FunctionAndDepsExtractor
from functionAndDeps import FunctionAndDependencies


class DummyLogger:
    def info(self, *args, **kwargs):
        pass

    def warning(self, *args, **kwargs):
        pass

    def critical(self, *args, **kwargs):
        raise AssertionError(args[0] if args else "critical log")


class TestFunctionOriginFiltering(unittest.TestCase):
    def test_extract_funcs_keeps_only_functions_from_matching_original_source(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            c_path = os.path.join(temp_dir, "pagerank.c")
            i_path = os.path.join(temp_dir, "pagerank.i")

            with open(c_path, "w") as c_file:
                c_file.write(
                    "int detect_indexing(const char *filename) { return filename != 0; }\n"
                    "int main(void) { return detect_indexing(\"graph.txt\"); }\n"
                )

            with open(i_path, "w") as i_file:
                i_file.write(
                    "typedef struct _IO_FILE FILE;\n"
                    "extern __inline __attribute__ ((__gnu_inline__)) int\n"
                    "getchar_unlocked(void)\n"
                    "{\n"
                    "    return 0;\n"
                    "}\n"
                    "extern __inline __attribute__ ((__gnu_inline__)) int\n"
                    "fputc_unlocked(int c, FILE *stream)\n"
                    "{\n"
                    "    return c;\n"
                    "}\n"
                    "int detect_indexing(const char *filename) {\n"
                    "    return filename != 0;\n"
                    "}\n"
                    "int main(void) {\n"
                    "    return detect_indexing(\"graph.txt\");\n"
                    "}\n"
                )

            extractor = FunctionAndDepsExtractor(DummyLogger())
            function_order = []
            func_map = extractor.extractFuncsAndDeps(i_path, function_order, None)

            self.assertEqual(function_order, ["detect_indexing", "main"])
            self.assertEqual(sorted(func_map.keys()), ["detect_indexing", "main"])
            self.assertEqual(func_map["main"].dependFunctions, ["detect_indexing"])
            self.assertNotIn("getchar_unlocked", func_map)
            self.assertNotIn("fputc_unlocked", func_map)

    def test_extract_funcs_with_oldmap_skips_missing_previous_function(self):
        with tempfile.TemporaryDirectory() as temp_dir:
            i_path = os.path.join(temp_dir, "main.i")
            with open(i_path, "w") as i_file:
                i_file.write(
                    "int __bswap_16(int x) {\n"
                    "    return x;\n"
                    "}\n"
                    "int main(void) {\n"
                    "    return 0;\n"
                    "}\n"
                )

            main_deps = FunctionAndDependencies("main")
            main_deps.setDepndFunctions([])

            extractor = FunctionAndDepsExtractor(DummyLogger())
            function_order = []
            func_map = extractor.extractFuncsAndDeps(
                i_path,
                function_order,
                {"main": main_deps},
            )

            self.assertEqual(sorted(func_map.keys()), ["main"])
            self.assertNotIn("__bswap_16", func_map)


if __name__ == "__main__":
    unittest.main()
