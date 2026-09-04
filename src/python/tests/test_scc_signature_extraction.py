"""Unit tests for ``_extractSccFunctionSignatures``.

Regression target: the C++ branch silently mis-resolved signatures for
every SCC member except the first one in source order. The pipeline
emitted

    [SCC] Could not extract signatures for ['parse_object', 'parse_value']
          in group ['parse_array', 'parse_object', 'parse_value']

at every C++ stage of the cjson_new run (an earlier pass – an earlier pass in
cjson_new_validator_2026-05-13_20-27-43.log).

Root cause: ``find_target_cpp_function`` returns ``(name, node)`` and
``find_target_rust_function`` returns just ``name``. The previous code
forwarded the *tuple* to ``fetch_cpp_function_signature_with_byte``,
which then re-ran ``edit_distance(func_name_in_src, tuple)`` and
collapsed to the first function in source order regardless of which
SCC member was being looked up.

Fix: always unwrap the canonical *string* name from ``findFn``'s return
before handing it to ``sigFn``.

These tests stub ``findFn`` / ``sigFn`` so they don't depend on
tree-sitter being importable — the bug is purely about which value
flows between the two calls.
"""

import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# --- third-party stubs (boilerplate shared with other tests) ---
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
import gpt_translation.translation_pipeline_mixin as pipeline_mod


class _Logger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _PipelineProbe(CodeUtilsMixin, TranslationPipelineMixin):
    def __init__(self, dstLang):
        self.logger = _Logger()
        self.dstLang = dstLang


def _patch_finders(monkey, *, cpp_find=None, cpp_sig=None,
                   rust_find=None, rust_sig=None):
    """Swap the module-level finder/signature functions for the duration
    of one test. Returns the list of original values for restoration."""
    saved = {}
    if cpp_find is not None:
        saved["find_target_cpp_function"] = pipeline_mod.find_target_cpp_function
        pipeline_mod.find_target_cpp_function = cpp_find
    if cpp_sig is not None:
        saved["fetch_cpp_function_signature_with_byte"] = pipeline_mod.fetch_cpp_function_signature_with_byte
        pipeline_mod.fetch_cpp_function_signature_with_byte = cpp_sig
    if rust_find is not None:
        saved["find_target_rust_function"] = pipeline_mod.find_target_rust_function
        pipeline_mod.find_target_rust_function = rust_find
    if rust_sig is not None:
        saved["fetch_rust_function_signature_with_byte"] = pipeline_mod.fetch_rust_function_signature_with_byte
        pipeline_mod.fetch_rust_function_signature_with_byte = rust_sig
    monkey.append(saved)


def _restore_finders(saved_stack):
    for saved in reversed(saved_stack):
        for name, fn in saved.items():
            setattr(pipeline_mod, name, fn)


# =============================================================================
# C++ branch — the regression case from the cjson_new log
# =============================================================================
class CppSccSignatureExtraction(unittest.TestCase):

    def setUp(self):
        self.probe = _PipelineProbe(dstLang="C++")
        self._saved = []

    def tearDown(self):
        _restore_finders(self._saved)

    def test_all_three_scc_members_get_signatures(self):
        """SCC ``[parse_array, parse_object, parse_value]`` must produce
        a non-empty signature for ALL three. The historical bug only
        returned a signature for parse_array."""
        # A faithful tree-sitter stand-in: returns (name, fake_node).
        # The "fake_node" is just a sentinel object — the real bug
        # surfaced because sigFn re-ran a search using the wrong input
        # type, so we model that behavior:
        #   * cpp_find returns (name, sentinel).
        #   * cpp_sig requires its second arg to be a string equal to
        #     one of the SCC members; if not, it returns ("", "") to
        #     mimic the "couldn't pin down a function" failure mode.
        valid_signatures = {
            "parse_array": "cJSON_bool parse_array(cJSON *, parse_buffer *)",
            "parse_object": "cJSON_bool parse_object(cJSON *, parse_buffer *)",
            "parse_value": "cJSON_bool parse_value(cJSON *, parse_buffer *)",
        }

        def cpp_find(encoded, name):
            # Mimic real return shape.
            return (name, object())  # node is just a sentinel

        def cpp_sig(encoded, target_function_name):
            if not isinstance(target_function_name, str):
                # Pre-fix code path would hit this — the bug.
                return ("", "")
            sig = valid_signatures.get(target_function_name, "")
            return (target_function_name, sig) if sig else ("", "")

        _patch_finders(self._saved, cpp_find=cpp_find, cpp_sig=cpp_sig)

        sccGroup = ["parse_array", "parse_object", "parse_value"]
        signatures, missing = self.probe._extractSccFunctionSignatures(
            b"<irrelevant; finders are stubbed>", sccGroup
        )

        self.assertEqual(missing, [], f"no SCC member should be missing, got {missing}")
        self.assertEqual(signatures["parse_array"], valid_signatures["parse_array"])
        self.assertEqual(signatures["parse_object"], valid_signatures["parse_object"])
        self.assertEqual(signatures["parse_value"], valid_signatures["parse_value"])

    def test_sig_fn_always_receives_a_string_not_a_tuple(self):
        """Direct check on the contract: sigFn must NEVER be called with
        a tuple — that was the original bug."""
        observed_sig_inputs = []

        def cpp_find(_encoded, name):
            return (name, object())

        def cpp_sig(_encoded, target_function_name):
            observed_sig_inputs.append(target_function_name)
            return (target_function_name, f"sig({target_function_name})")

        _patch_finders(self._saved, cpp_find=cpp_find, cpp_sig=cpp_sig)

        self.probe._extractSccFunctionSignatures(
            b"<irrelevant>", ["parse_array", "parse_object", "parse_value"]
        )

        self.assertEqual(observed_sig_inputs,
                         ["parse_array", "parse_object", "parse_value"])
        for x in observed_sig_inputs:
            self.assertIsInstance(x, str,
                                  "sigFn must receive a string, never the (name, node) tuple")

    def test_unfound_member_is_reported_missing_and_does_not_crash(self):
        """If findFn cannot locate a member (returns None), it's
        recorded as missing and the loop moves on."""
        def cpp_find(_encoded, name):
            if name == "parse_object":
                return None  # not found in translation
            return (name, object())

        def cpp_sig(_encoded, name):
            return (name, f"sig({name})")

        _patch_finders(self._saved, cpp_find=cpp_find, cpp_sig=cpp_sig)

        signatures, missing = self.probe._extractSccFunctionSignatures(
            b"<irrelevant>", ["parse_array", "parse_object", "parse_value"]
        )

        self.assertEqual(missing, ["parse_object"])
        self.assertEqual(signatures["parse_array"], "sig(parse_array)")
        self.assertEqual(signatures["parse_object"], "")
        self.assertEqual(signatures["parse_value"], "sig(parse_value)")

    def test_sig_name_mismatch_marks_as_missing(self):
        """If sigFn returns a name that disagrees with the canonical
        name (e.g. tree-sitter resolved to a different function),
        treat the entry as missing instead of writing a wrong sig."""
        def cpp_find(_encoded, name):
            return (name, object())

        def cpp_sig(_encoded, name):
            # parse_object's signature lookup "drifts" to parse_array —
            # this is exactly the symptom of the original bug.
            if name == "parse_object":
                return ("parse_array", "wrong signature")
            return (name, f"sig({name})")

        _patch_finders(self._saved, cpp_find=cpp_find, cpp_sig=cpp_sig)

        signatures, missing = self.probe._extractSccFunctionSignatures(
            b"<irrelevant>", ["parse_array", "parse_object", "parse_value"]
        )

        self.assertIn("parse_object", missing)
        # the wrong signature must NOT have leaked through
        self.assertEqual(signatures["parse_object"], "")

    def test_empty_target_tuple_is_reported_missing(self):
        """Defensive: if findFn returns a malformed value such as
        ('', None) (no usable name), don't try to call sigFn with an
        empty string — record as missing."""
        def cpp_find(_encoded, name):
            return ("", None)

        sig_called = []

        def cpp_sig(_encoded, name):
            sig_called.append(name)
            return (name, "")

        _patch_finders(self._saved, cpp_find=cpp_find, cpp_sig=cpp_sig)

        _signatures, missing = self.probe._extractSccFunctionSignatures(
            b"<irrelevant>", ["parse_array"]
        )

        self.assertEqual(missing, ["parse_array"])
        self.assertEqual(sig_called, [],
                         "sigFn must not be called when there's no valid realName")

    def test_finder_exception_marks_member_missing(self):
        def cpp_find(_encoded, _name):
            raise RuntimeError("tree-sitter explosion")

        _patch_finders(self._saved, cpp_find=cpp_find,
                       cpp_sig=lambda *a, **k: ("never", "called"))

        _signatures, missing = self.probe._extractSccFunctionSignatures(
            b"<irrelevant>", ["parse_array", "parse_object"]
        )

        self.assertEqual(missing, ["parse_array", "parse_object"])

    def test_sig_fn_exception_marks_member_missing(self):
        def cpp_find(_encoded, name):
            return (name, object())

        def cpp_sig(_encoded, _name):
            raise RuntimeError("sigFn explosion")

        _patch_finders(self._saved, cpp_find=cpp_find, cpp_sig=cpp_sig)

        _signatures, missing = self.probe._extractSccFunctionSignatures(
            b"<irrelevant>", ["parse_array"]
        )
        self.assertEqual(missing, ["parse_array"])


# =============================================================================
# Rust branch — must continue to behave correctly (no regression)
# =============================================================================
class RustSccSignatureExtraction(unittest.TestCase):

    def setUp(self):
        self.probe = _PipelineProbe(dstLang="Rust")
        self._saved = []

    def tearDown(self):
        _restore_finders(self._saved)

    def test_all_scc_members_get_signatures(self):
        valid_signatures = {
            "parse_array": "unsafe fn parse_array(item: &mut cJSON, ...) -> bool",
            "parse_object": "unsafe fn parse_object(item: &mut cJSON, ...) -> bool",
            "parse_value": "unsafe fn parse_value(item: &mut cJSON, ...) -> bool",
        }

        def rust_find(_encoded, name):
            return name  # returns a plain string

        def rust_sig(_encoded, name):
            sig = valid_signatures.get(name, "")
            return (name, sig) if sig else ("", "")

        _patch_finders(self._saved, rust_find=rust_find, rust_sig=rust_sig)

        sccGroup = ["parse_array", "parse_object", "parse_value"]
        signatures, missing = self.probe._extractSccFunctionSignatures(
            b"<irrelevant>", sccGroup
        )

        self.assertEqual(missing, [])
        for name in sccGroup:
            self.assertEqual(signatures[name], valid_signatures[name])

    def test_rust_sig_fn_receives_strings(self):
        observed = []

        def rust_find(_encoded, name):
            return name

        def rust_sig(_encoded, name):
            observed.append(name)
            return (name, f"sig({name})")

        _patch_finders(self._saved, rust_find=rust_find, rust_sig=rust_sig)

        self.probe._extractSccFunctionSignatures(
            b"<irrelevant>", ["a", "b", "c"]
        )

        self.assertEqual(observed, ["a", "b", "c"])
        for x in observed:
            self.assertIsInstance(x, str)


# =============================================================================
# Regression: the exact failure mode from the cjson_new log
# =============================================================================
class CjsonNewSccLogReproduction(unittest.TestCase):
    """Reproduces the precise behavior reported in
    cjson_new_validator_2026-05-13_20-27-43.log:4 occurrences

        [SCC] Could not extract signatures for ['parse_object', 'parse_value']
              in group ['parse_array', 'parse_object', 'parse_value']

    The pre-fix code path is simulated by a cpp_sig that requires its
    second argument to be a string. With the fix, sigFn receives a
    string and the warning never fires."""

    def setUp(self):
        self.probe = _PipelineProbe(dstLang="C++")
        self._saved = []

    def tearDown(self):
        _restore_finders(self._saved)

    def test_log_specific_failure_no_longer_reproduces(self):
        sccGroup = ["parse_array", "parse_object", "parse_value"]

        def cpp_find(_encoded, name):
            return (name, object())

        def cpp_sig(_encoded, target_function_name):
            # Old buggy code passed a tuple here. Verify the contract
            # holds: only strings are accepted, and the returned name
            # is exactly the input.
            assert isinstance(target_function_name, str), (
                f"sigFn was called with non-string {type(target_function_name).__name__} — "
                f"this is the original bug"
            )
            return (target_function_name, f"<{target_function_name} sig>")

        _patch_finders(self._saved, cpp_find=cpp_find, cpp_sig=cpp_sig)

        signatures, missing = self.probe._extractSccFunctionSignatures(
            b"<scc body>", sccGroup
        )

        self.assertEqual(missing, [],
                         f"the log's specific ['parse_object', 'parse_value'] "
                         f"warning must no longer fire; got missing={missing}")
        for name in sccGroup:
            self.assertEqual(signatures[name], f"<{name} sig>")


if __name__ == "__main__":
    unittest.main()
