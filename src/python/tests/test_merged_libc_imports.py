"""merged_funcs.rs imports the libc prelude names its units call bare.

Each unit's compile check prepends ``use libc::{free, malloc, realloc, ...}``,
so a unit may call ``realloc`` bare and pass. The merged file is written from
the stored units, without that line, and performance.rs and the backend build
from it: libcsv's csv_init (``Some(realloc)`` / ``Some(free)``) passed its
check and then broke the merge with E0425.
"""
import logging
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

from gpt_translation.code_utils_mixin import (
    CodeUtilsMixin,
    _missingLibcPreludeImport,
    _withLibcPreludeImports,
)
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin


# libcsv's csv_init as gpt-6-luna stored it, after its retry dropped its own
# `extern "C" { fn realloc; fn free; }` (E0255 against the prelude).
CSV_INIT_UNIT = """\
use std::ffi::c_void;

pub struct csv_parser {
    pub realloc_func: Option<unsafe extern "C" fn(*mut c_void, usize) -> *mut c_void>,
    pub free_func: Option<unsafe extern "C" fn(*mut c_void)>,
}

pub unsafe fn csv_init(p: *mut csv_parser) -> i32 {
    (*p).realloc_func = Some(realloc);
    (*p).free_func = Some(free);
    0
}
"""


class _Compiler(CodeUtilsMixin):
    def __init__(self, injectLibcPrelude):
        self.logger = logging.getLogger("test_merged_libc_imports")
        self.injectLibcPrelude = injectLibcPrelude


def _mergedFileText(assembled, **attrs):
    probe = types.SimpleNamespace(dstLang="Rust", **attrs)
    return TranslationPipelineMixin._mergedFileText(probe, assembled)


class MissingLibcPreludeImport(unittest.TestCase):
    def test_names_the_prelude_functions_called_bare(self):
        self.assertEqual(_missingLibcPreludeImport(CSV_INIT_UNIT),
                         "use libc::{free, realloc};\n")

    def test_ignores_names_that_are_not_bare_calls(self):
        for code in (
            "fn f(p: *mut u8) { libc::free(p as _); }",
            "fn f(v: V) { v.free(); }",
            "fn f(p: P) { (*p).free_func = None; }",
            "// free the buffer\nfn f() {}",
            'fn f() { let s = "free"; }',
        ):
            with self.subTest(code=code):
                self.assertEqual(_missingLibcPreludeImport(code), "")

    def test_leaves_names_the_code_defines_or_imports(self):
        for code in (
            'unsafe extern "C" {\n    fn free(p: *mut u8);\n}\nfn f(p: *mut u8) { free(p) }',
            "pub unsafe fn free(p: *mut u8) {}\nfn f(p: *mut u8) { free(p) }",
            "use libc::{free, malloc};\nfn f(p: *mut u8) { free(p as _); }",
            "use std::alloc::realloc;\nfn f() { realloc(a, b, c); }",
            "use libc::*;\nfn f(p: *mut u8) { free(p as _); }",
        ):
            with self.subTest(code=code):
                self.assertEqual(_missingLibcPreludeImport(code), "")

    def test_a_quote_char_literal_does_not_hide_the_code_after_it(self):
        code = "fn f(p: *mut u8) { let q = b'\"'; free(p as _); }"
        self.assertEqual(_missingLibcPreludeImport(code), "use libc::{free};\n")

    def test_the_import_goes_after_inner_attributes(self):
        code = "#![allow(dead_code)]\nfn f(p: *mut u8) { free(p as _); }\n"
        self.assertEqual(_withLibcPreludeImports(code),
                         "#![allow(dead_code)]\nuse libc::{free};\n"
                         "fn f(p: *mut u8) { free(p as _); }\n")


class MergedFileText(unittest.TestCase):
    def test_llm_mode_merge_imports_what_its_units_call_bare(self):
        self.assertTrue(_mergedFileText(CSV_INIT_UNIT).startswith(
            "use libc::{free, realloc};\n"))

    def test_agent_mode_merge_is_the_agents_file(self):
        self.assertEqual(
            _mergedFileText(CSV_INIT_UNIT, agentMergedFile=lambda _: "agent file"),
            "agent file")

    def test_no_import_when_the_check_added_none(self):
        self.assertEqual(_mergedFileText(CSV_INIT_UNIT, injectLibcPrelude=False),
                         CSV_INIT_UNIT)

    def test_cpp_merge_is_untouched(self):
        probe = types.SimpleNamespace(dstLang="C++")
        code = "void f(void *p) { free(p); }\n"
        self.assertEqual(TranslationPipelineMixin._mergedFileText(probe, code), code)

    def test_the_merge_compiles_without_the_prelude(self):
        """The unit passes the check; the merged file must compile as written."""
        ok, err = _Compiler(injectLibcPrelude=True).compileWithCargoProject(CSV_INIT_UNIT)
        self.assertTrue(ok, err)
        asStored = _Compiler(injectLibcPrelude=False)
        ok, err = asStored.compileWithCargoProject(CSV_INIT_UNIT)
        self.assertFalse(ok)
        self.assertIn("E0425", err)
        ok, err = asStored.compileWithCargoProject(_mergedFileText(CSV_INIT_UNIT))
        self.assertTrue(ok, err)


if __name__ == "__main__":
    unittest.main()
