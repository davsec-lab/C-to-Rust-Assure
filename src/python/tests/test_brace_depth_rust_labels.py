"""Regression tests for ``_computeBraceDepthAt`` + ``_stripDependencyForwardDeclarations``
on Rust source that contains labels / lifetimes.

Background: a Stage_9 parse_string translation contained
``let result = 'fail: { ... }`` (Rust labelled-block syntax) and
``break 'fail false;`` statements. The brace-depth tracker entered
char-literal mode at every ``'fail`` apostrophe and stayed there until
the next unrelated apostrophe (typically a ``b'"'`` or ``b'\\\\'``
several lines later), causing every ``{`` / ``}`` in between to be
miscounted. The resulting depth array was off by 1+ from that point
on, and the dependency-forward-declaration stripper saw the in-body
call

    let sequence_length = utf16_literal_to_utf8(input_pointer, input_end, &mut output_pointer);

at calculated brace-depth 0, mistook it for a top-level forward
declaration of ``utf16_literal_to_utf8``, and deleted the line.

The LLM then saw "sequence_length is undefined" on the next retry,
added the call again, watched the stripper delete it again, and looped
through all 5 retry attempts. The cascade brought down parse_array /
parse_object / parse_value (which call parse_string) and the
cJSON_Parse* wrappers (which call parse_value).

These tests pin:
  - brace depth stays correct across Rust labels and lifetimes
  - in-body call sites of dependency functions are NOT mistaken for
    forward declarations
  - genuine top-level forward declarations are still stripped
"""

import os
import sys
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(
    0,
    os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"),
)

# --- third-party stubs ---
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
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin


class _Logger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _Probe(CodeUtilsMixin, SymbolExtractionMixin, TranslationPipelineMixin):
    def __init__(self):
        self.dstLang = "Rust"
        self.logger = _Logger()


# =============================================================================
# _computeBraceDepthAt — depth stays correct across Rust labels / lifetimes
# =============================================================================
class BraceDepthAcrossRustLabels(unittest.TestCase):

    def test_labelled_block_does_not_break_depth(self):
        """A ``'name: {`` labelled block must be counted as opening one
        brace. The label apostrophe is NOT a char-literal opening."""
        snippet = "fn f() {\n    let r = 'outer: { 1 };\n    r\n}\n"
        depth = TranslationPipelineMixin._computeBraceDepthAt(snippet)
        # End of snippet: depth must be 0 (all braces matched)
        self.assertEqual(depth[-1], 0)
        # Position inside the labelled block: depth must be > 0
        labelled_inner = snippet.find("1 }")
        self.assertGreater(depth[labelled_inner], 1)

    def test_break_with_label_does_not_break_depth(self):
        """``break 'fail false;`` contains a label apostrophe. Must not
        enter char mode."""
        snippet = (
            "fn f() {\n"
            "    let r = 'fail: {\n"
            "        if true { break 'fail false; }\n"
            "        true\n"
            "    };\n"
            "    r\n"
            "}\n"
        )
        depth = TranslationPipelineMixin._computeBraceDepthAt(snippet)
        self.assertEqual(depth[-1], 0)
        # Spot-check that depth never goes negative.
        self.assertGreaterEqual(min(depth), 0,
                                "label-apostrophe handling must not let "
                                "depth go negative")

    def test_lifetime_param_does_not_break_depth(self):
        """``fn f<'a>(x: &'a T) -> &'a T { ... }`` — multiple lifetime
        apostrophes. Must not enter char mode for any of them."""
        snippet = (
            "fn helper<'a>(x: &'a Buf) -> &'a Buf {\n"
            "    x\n"
            "}\n"
            "fn main() {\n"
            "    let b: Buf = Default::default();\n"
            "    let _ = helper(&b);\n"
            "}\n"
        )
        depth = TranslationPipelineMixin._computeBraceDepthAt(snippet)
        self.assertEqual(depth[-1], 0)
        self.assertGreaterEqual(min(depth), 0)

    def test_byte_char_literal_still_handled(self):
        """``b'"'`` / ``b'\\\\'`` / ``b'/'`` ARE char literals and must
        still be parsed as such — the fix must not accidentally treat
        them as labels."""
        snippet = (
            "fn f() {\n"
            "    let x: u8 = b'\"';\n"
            "    let y: u8 = b'\\\\';\n"
            "    let z: u8 = b'/';\n"
            "    if x == b'a' { return; }\n"
            "}\n"
        )
        depth = TranslationPipelineMixin._computeBraceDepthAt(snippet)
        self.assertEqual(depth[-1], 0)
        self.assertGreaterEqual(min(depth), 0)

    def test_label_followed_immediately_by_byte_literal_match_arms(self):
        """The exact pattern from the failing parse_string: a labelled
        block ``'fail: {`` enclosing a ``match`` with byte-literal arms
        ``b'"' | b'\\\\' | b'/'``. Used to mis-compute depth from the
        first ``'fail`` onwards."""
        snippet = (
            "unsafe fn parse() -> bool {\n"
            "    let result = 'fail: {\n"
            "        match c {\n"
            "            b'\\\\' => { return false; }\n"
            "            b'\"' | b'/' => { return true; }\n"
            "            _ => { break 'fail false; }\n"
            "        }\n"
            "        true\n"
            "    };\n"
            "    result\n"
            "}\n"
        )
        depth = TranslationPipelineMixin._computeBraceDepthAt(snippet)
        self.assertEqual(depth[-1], 0)
        # Inside the match arm body, depth must be > 0
        idx = snippet.find("return false")
        self.assertGreater(depth[idx], 1)


# =============================================================================
# _stripDependencyForwardDeclarations — in-body calls are not stripped
# =============================================================================
class StripperRespectsBraceDepthAcrossLabels(unittest.TestCase):

    def setUp(self):
        self.probe = _Probe()

    def test_in_body_call_inside_labelled_block_is_kept(self):
        """The regression: a call to a dependency function inside a
        ``'fail: { ... }`` labelled block was stripped because the label
        apostrophe broke brace-depth tracking and the call was reported
        at depth 0."""
        snippet = (
            "unsafe fn parse_string() -> bool {\n"
            "    let r = 'fail: {\n"
            "        match c {\n"
            "            b'\\\\' => { return false; }\n"
            "            b'u' => {\n"
            "                let sequence_length = utf16_literal_to_utf8(\n"
            "                    p, e, &mut o,\n"
            "                );\n"
            "                match sequence_length {\n"
            "                    None => { break 'fail false; }\n"
            "                    Some(l) => { advance(l); }\n"
            "                }\n"
            "            }\n"
            "            _ => { break 'fail false; }\n"
            "        }\n"
            "        true\n"
            "    };\n"
            "    r\n"
            "}\n"
        )
        result = self.probe._stripDependencyForwardDeclarations(
            snippet, ["utf16_literal_to_utf8"]
        )
        self.assertIn("utf16_literal_to_utf8(", result,
                      "in-body call site must NOT be stripped by the "
                      "dependency-forward-declaration stripper")
        self.assertEqual(result, snippet,
                         "the stripper must be a no-op on this snippet — "
                         "there are no top-level forward declarations to "
                         "strip")

    def test_top_level_forward_decl_is_still_stripped(self):
        """The fix must not regress the original purpose: top-level
        ``fn dep_func(...);`` forward declarations ARE forward
        declarations and should still be removed."""
        snippet = (
            "fn dep_func(x: i32) -> i32;\n"
            "fn caller() {\n"
            "    let _ = dep_func(1);\n"
            "}\n"
        )
        result = self.probe._stripDependencyForwardDeclarations(
            snippet, ["dep_func"]
        )
        # The top-level forward decl line is gone …
        self.assertNotIn("fn dep_func(x: i32) -> i32;", result)
        # … but the in-body call site survives.
        self.assertIn("dep_func(1)", result)

    def test_mixed_label_and_top_level_forward_decl(self):
        """The forward-decl strip and the label-aware depth tracking
        interact correctly in the same snippet."""
        snippet = (
            "unsafe fn utf16_literal_to_utf8(p: *const u8, e: *const u8, o: *mut *mut u8) -> Option<u8>;\n"
            "unsafe fn parse_string() -> bool {\n"
            "    'fail: {\n"
            "        let n = utf16_literal_to_utf8(p, e, &mut o);\n"
            "        if n.is_none() { break 'fail false; }\n"
            "    }\n"
            "    true\n"
            "}\n"
        )
        result = self.probe._stripDependencyForwardDeclarations(
            snippet, ["utf16_literal_to_utf8"]
        )
        # forward decl removed
        self.assertNotIn(
            "unsafe fn utf16_literal_to_utf8(p: *const u8, e: *const u8, o: *mut *mut u8) -> Option<u8>;",
            result,
        )
        # but the in-body call inside `'fail: {` survives
        self.assertIn("let n = utf16_literal_to_utf8(p, e, &mut o)", result)


# =============================================================================
# Anchor to the exact log-extracted snippet that caused Stage_9 to fail
# =============================================================================
class Stage9ParseStringRegression(unittest.TestCase):
    """Locks the exact byte sequence that came back from the LLM at
    attempt 2 in cjson_new_validator_2026-05-14_11-08-49.log:147041 —
    a parse_string body containing ``let sequence_length =
    utf16_literal_to_utf8(...)`` inside a ``'fail: {`` labelled block.
    Pre-fix the stripper deleted the call line; post-fix it leaves the
    body intact."""

    def setUp(self):
        self.probe = _Probe()

    def test_parse_string_body_is_unchanged_by_stripper(self):
        snippet = '''unsafe fn parse_string(item: *mut cJSON, input_buffer: *mut parse_buffer) -> bool {
    let mut input_pointer: *const u8 = std::ptr::null();
    let mut input_end: *const u8 = std::ptr::null();
    let mut output_pointer: *mut u8 = std::ptr::null_mut();

    let result = 'fail: {
        while input_pointer < input_end {
            if *input_pointer != b'\\\\' {
                *output_pointer = *input_pointer;
            } else {
                match input_pointer.add(1).read() {
                    b'"' | b'\\\\' | b'/' => {
                        *output_pointer = *input_pointer.add(1);
                    }
                    b'u' => {
                        let sequence_length = utf16_literal_to_utf8(
                            input_pointer,
                            input_end,
                            &mut output_pointer,
                        );
                        match sequence_length {
                            None => { break 'fail false; }
                            Some(len) => { input_pointer = input_pointer.add(len as usize); }
                        }
                    }
                    _ => { break 'fail false; }
                }
            }
        }
        true
    };
    result
}
'''
        deps = [
            "utf16_literal_to_utf8", "parse_hex4", "cJSON_New_Item",
            "buffer_skip_whitespace", "tree_checksum", "parse_number",
            "skip_utf8_bom", "cJSON_Delete", "cJSON_GetErrorPtr",
            "get_decimal_point",
        ]
        result = self.probe._stripDependencyForwardDeclarations(snippet, deps)
        self.assertEqual(
            result, snippet,
            "The stripper must leave this parse_string body byte-identical. "
            "If this assertion fails, the dependency-forward-declaration "
            "stripper has regressed to deleting the in-body call site of "
            "`utf16_literal_to_utf8`, which prevents Stage_9 parse_string "
            "from ever compiling (cascade-fails parse_array, parse_object, "
            "parse_value, and all four cJSON_Parse* wrappers).",
        )


if __name__ == "__main__":
    unittest.main()
