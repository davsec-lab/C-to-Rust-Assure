import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)

tiktoken_stub = types.ModuleType("tiktoken")
tiktoken_stub.encoding_name_for_model = lambda *_args, **_kwargs: "stub"
tiktoken_stub.get_encoding = lambda *_args, **_kwargs: types.SimpleNamespace(
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

from code_utils_mixin import CodeUtilsMixin


class _StubLogger:
    def __getattr__(self, _name):
        return lambda *a, **k: None


class CodeUtilsProbe(CodeUtilsMixin):
    def __init__(self):
        self.logger = _StubLogger()


class CleanCodeDedupesUses(unittest.TestCase):
    def setUp(self):
        self.probe = CodeUtilsProbe()

    def test_collapses_repeated_use_into_single(self):
        merged = (
            "use std::os::raw::c_char;\n"
            "\n"
            "#[repr(C)] pub struct A { pub x: c_char }\n"
            "\n"
            "use std::os::raw::c_char;\n"
            "\n"
            "#[repr(C)] pub struct B { pub y: c_char }\n"
        )
        cleaned = self.probe.cleanCode(merged)
        self.assertEqual(cleaned.count("use std::os::raw::c_char;"), 1)
        # Both struct definitions must survive.
        self.assertIn("pub struct A", cleaned)
        self.assertIn("pub struct B", cleaned)

    def test_predecessor_plus_new_batch_no_duplicate(self):
        # Simulate what _translateTypeBatchWithLlm assembles before compile():
        # predecessorContext (already-translated NSVGpaintData) + new batch
        # output (NSVGpaint) — both bringing their own `use`. Both reference
        # `c_char` so the dedup-and-keep-used path is exercised.
        predecessor = (
            "use std::os::raw::c_char;\n"
            "\n"
            "#[repr(C)]\n"
            "pub struct NSVGpaintData {\n"
            "    pub label: [c_char; 64],\n"
            "}\n"
        )
        new_batch = (
            "use std::os::raw::c_char;\n"
            "\n"
            "#[repr(C)]\n"
            "pub struct NSVGpaint {\n"
            "    pub name: [c_char; 32],\n"
            "    pub data: NSVGpaintData,\n"
            "}\n"
        )
        cleaned = self.probe.cleanCode(predecessor + "\n" + new_batch)
        self.assertEqual(cleaned.count("use std::os::raw::c_char;"), 1)
        self.assertIn("pub struct NSVGpaintData", cleaned)
        self.assertIn("pub struct NSVGpaint", cleaned)


if __name__ == "__main__":
    unittest.main()
