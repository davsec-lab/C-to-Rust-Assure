"""Tests for TranslationUtilsMixin.checkStructDefination — specifically the
None-safety fix that prevents AttributeError when the dependency block has no
struct-shaped definition (only typedef aliases, enums, or extern types).
"""
import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# Stub deps before importing project code.
for mod in ("openai", "tiktoken", "sympy", "sympy.codegen", "sympy.codegen.cnodes"):
    m = types.ModuleType(mod)
    if mod == "openai":
        m.OpenAI = object
    if mod == "tiktoken":
        m.encoding_name_for_model = lambda *a, **k: "stub"
        m.get_encoding = lambda *a, **k: types.SimpleNamespace(
            encode=lambda text: (text or "").split()
        )
    if mod == "sympy.codegen.cnodes":
        m.struct = object()
    sys.modules.setdefault(mod, m)

from gpt_translation.translation_utils_mixin import TranslationUtilsMixin


class _DummyLogger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _Probe(TranslationUtilsMixin):
    def __init__(self):
        self.logger = _DummyLogger()


class TestCheckStructDefination(unittest.TestCase):
    def setUp(self):
        self.probe = _Probe()

    # ----- Bug fix: no struct in deps must not raise -----

    def test_no_struct_in_deps_returns_true_no_exception(self):
        """elapsed_ms_since-style: deps are only typedef aliases."""
        deps = """
        /* C++ definitions
        pub type __time_t = i64;
        pub type __syscall_slong_t = i64;
        */
        """
        result = self.probe.checkStructDefination(
            code="fn elapsed_ms_since(t0: &timespec, t1: &timespec) -> i64 { 0 }",
            translatedStruct=deps,
            funcName="elapsed_ms_since",
        )
        self.assertTrue(result)

    def test_no_struct_only_enum_returns_true(self):
        """Enum-only deps: still no struct body to verify."""
        deps = """
        /* C++ definitions
        pub enum bmp_error {
            BMP_OK = 0,
            BMP_HEADER_ERROR = 1,
        }
        */
        """
        result = self.probe.checkStructDefination(
            code="fn bmp_open() -> bmp_error { bmp_error::BMP_OK }",
            translatedStruct=deps,
            funcName="bmp_open",
        )
        self.assertTrue(result)

    def test_no_struct_only_extern_type_returns_true(self):
        """extern type alias has no body to verify."""
        deps = """
        /* C++ definitions
        extern "C" {
            pub type FILE;
        }
        */
        """
        result = self.probe.checkStructDefination(
            code="fn fopen() -> *mut FILE { std::ptr::null_mut() }",
            translatedStruct=deps,
            funcName="fopen",
        )
        self.assertTrue(result)

    def test_empty_deps_returns_true(self):
        result = self.probe.checkStructDefination(
            code="fn helper() {}",
            translatedStruct="",
            funcName="helper",
        )
        self.assertTrue(result)

    # ----- Original happy path: struct in deps and in code -----

    def test_struct_present_in_both_returns_true(self):
        deps = """
        /* C++ definitions
        pub struct timespec { tv_sec: i64, tv_nsec: i64, }
        */
        """
        code = """
        pub struct timespec { tv_sec: i64, tv_nsec: i64, }
        fn now() -> timespec { timespec { tv_sec: 0, tv_nsec: 0 } }
        """
        result = self.probe.checkStructDefination(
            code=code, translatedStruct=deps, funcName="now",
        )
        self.assertTrue(result)

    # ----- Original sad path: struct in deps but not in code -----

    def test_struct_missing_from_code_returns_false(self):
        deps = """
        /* C++ definitions
        pub struct Point { x: i32, y: i32, }
        */
        """
        # Code does NOT include the exact struct definition string from deps.
        code = "fn helper() -> i32 { 7 }"
        result = self.probe.checkStructDefination(
            code=code, translatedStruct=deps, funcName="helper",
        )
        self.assertFalse(result)


if __name__ == "__main__":
    unittest.main()
