"""Unit tests for sanitizers and prompt utilities introduced after observing
nanosvg pipeline failures:

- ``extractCompilerHints``: pull rustc/clang ``help:`` and ``note:`` lines.
- ``extractTargetCode``: prefer the LAST fenced block when the LLM emits
  multiple revisions in one response.
- ``_stripRedeclaredLibcExternBlocks``: remove LLM-emitted ``extern "C" {
  fn malloc/realloc/free/strcmp/... }`` blocks that conflict with the
  ``libc`` crate's symbols.
"""

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


class _Logger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _CodeProbe(CodeUtilsMixin):
    def __init__(self):
        self.logger = _Logger()


class _PipelineProbe(CodeUtilsMixin, TranslationPipelineMixin):
    def __init__(self):
        self.logger = _Logger()


class ExtractCompilerHints(unittest.TestCase):
    def setUp(self):
        self.probe = _CodeProbe()

    def test_pulls_rustc_help_lines(self):
        err = """error[E0499]: cannot borrow `curve[_]` as mutable more than once at a time
    --> src/lib.rs:1673:13
     |
1672 |             &mut curve[0],
     |             ------------- first mutable borrow occurs here
1673 |             &mut curve[1],
     |             ^^^^^^^^^^^^^ second mutable borrow occurs here
     |
     = help: use `.split_at_mut(position)` to obtain two mutable non-overlapping sub-slices
"""
        hints = self.probe.extractCompilerHints(err)
        self.assertEqual(len(hints), 1)
        self.assertIn("split_at_mut", hints[0])
        self.assertTrue(hints[0].startswith("help:"))

    def test_pulls_manuallydrop_help_lines(self):
        err = """error: not automatically applying `DerefMut` on `ManuallyDrop` union field
    --> src/lib.rs:2682:17
     |
2682 |   (*grad).u.radial.cx = nsvg__parseCoordinateRaw(val as *const u8);
     |   ^^^^^^^^^^^^^^^^
     |
     = help: writing to this reference calls the destructor for the old value
     = help: add an explicit `*` if that is desired, or call `ptr::write` to not run the destructor
"""
        hints = self.probe.extractCompilerHints(err)
        self.assertEqual(len(hints), 2)
        self.assertTrue(any("explicit" in h for h in hints))

    def test_dedupes_identical_hints(self):
        err = """error[E0425]: cannot find function `foo`
   --> src/lib.rs:1:1
    = help: consider importing this function: use libc::foo;
error[E0425]: cannot find function `foo`
   --> src/lib.rs:2:1
    = help: consider importing this function: use libc::foo;
"""
        hints = self.probe.extractCompilerHints(err)
        self.assertEqual(len(hints), 1, "duplicate hints should collapse")

    def test_pulls_clang_note_lines(self):
        err = """error: use of undeclared identifier 'foo'
note: did you mean 'bar'?
"""
        hints = self.probe.extractCompilerHints(err)
        self.assertEqual(len(hints), 1)
        self.assertTrue(hints[0].startswith("note:"))

    def test_empty_input_yields_empty_list(self):
        self.assertEqual(self.probe.extractCompilerHints(""), [])
        self.assertEqual(self.probe.extractCompilerHints(None), [])

    def test_no_hints_yields_empty_list(self):
        err = "error[E0599]: no method named `foo` found for ..."
        self.assertEqual(self.probe.extractCompilerHints(err), [])


class ExtractTargetCodeLastFence(unittest.TestCase):
    """The LLM bug we hit: response had two ```rust blocks (one bad, one
    fixed), separated by prose. extractTargetCode joined them and produced
    duplicate function definitions. The fix is to take the LAST matching
    fenced block."""

    def setUp(self):
        self.probe = _CodeProbe()

    def test_takes_last_fenced_block_with_language_match(self):
        response = """First attempt:
```rust
fn foo() { broken }
```

Wait, that won't compile. Let me try again:
```rust
fn foo() { fixed }
```
"""
        result = self.probe.extractTargetCode(response, ["rust"])
        self.assertIn("fixed", result)
        self.assertNotIn("broken", result,
                         "the earlier (broken) attempt should be discarded")

    def test_takes_last_block_without_language_hint(self):
        response = """```
first
```

```
second
```

```
last
```
"""
        result = self.probe.extractTargetCode(response, [])
        self.assertEqual(result.strip(), "last")

    def test_single_fenced_block_unchanged(self):
        response = """Here is the final answer:
```rust
fn foo() { 42 }
```
"""
        result = self.probe.extractTargetCode(response, ["rust"])
        self.assertIn("fn foo()", result)
        self.assertIn("42", result)

    def test_final_result_marker_with_multiple_fences_takes_last(self):
        response = """Final result code is:
```rust
fn first() {}
```
Actually let me improve:
```rust
fn second() {}
```
"""
        result = self.probe.extractTargetCode(response, ["rust"])
        self.assertIn("fn second", result)
        self.assertNotIn("fn first", result)


class StripRedeclaredLibcExtern(unittest.TestCase):
    def setUp(self):
        self.probe = _PipelineProbe()

    def test_strips_simple_libc_extern_block(self):
        snippet = """use std::ptr;

extern "C" {
    fn malloc(size: usize) -> *mut u8;
    fn free(ptr: *mut u8);
}

pub fn use_malloc() {
    unsafe { let p = malloc(100); free(p); }
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("extern \"C\"", out)
        self.assertNotIn("fn malloc(", out)
        self.assertNotIn("fn free(", out)
        self.assertIn("pub fn use_malloc()", out, "non-libc code must remain")

    def test_strips_block_with_strcmp_realloc_memset(self):
        snippet = """extern "C" {
    fn strcmp(a: *const i8, b: *const i8) -> i32;
    fn realloc(ptr: *mut u8, size: usize) -> *mut u8;
    fn memset(s: *mut u8, c: i32, n: usize) -> *mut u8;
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("extern \"C\"", out)
        # Use injection covers every stripped name.
        self.assertIn("use libc::{memset, realloc, strcmp};", out)

    def test_strips_libm_block(self):
        snippet = """extern "C" {
    fn fabsf(x: f32) -> f32;
    fn sqrtf(x: f32) -> f32;
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("extern \"C\"", out)
        self.assertIn("use libc::{fabsf, sqrtf};", out)

    def test_preserves_block_with_user_function(self):
        # Mixed: malloc is libc but my_custom_callback isn't. We must keep the
        # whole block to avoid breaking legitimate FFI.
        snippet = """extern "C" {
    fn malloc(size: usize) -> *mut u8;
    fn my_custom_callback(x: i32);
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertIn("my_custom_callback", out)
        self.assertIn("malloc", out,
                      "libc symbol kept when bundled with non-libc to preserve block atomically")

    def test_preserves_non_extern_function(self):
        # A regular `pub fn malloc` is not an extern declaration; don't strip.
        snippet = """pub fn malloc(size: usize) -> *mut u8 {
    std::ptr::null_mut()
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertIn("pub fn malloc", out)

    def test_preserves_extern_C_for_user_helpers(self):
        snippet = """extern "C" fn my_callback(x: i32) -> i32 {
    x + 1
}
"""
        # extern "C" fn (not a block) is a foreign-callable Rust function, not
        # a foreign declaration. Must not be touched.
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertIn("my_callback", out)

    def test_handles_multiple_libc_blocks(self):
        snippet = """extern "C" {
    fn malloc(size: usize) -> *mut u8;
}

pub fn middle() {}

extern "C" {
    fn free(ptr: *mut u8);
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("fn malloc(", out)
        self.assertNotIn("fn free(", out)
        self.assertIn("pub fn middle()", out)

    def test_strips_empty_extern_block(self):
        snippet = """extern "C" {
}

pub fn keep() {}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("extern \"C\" {", out)
        self.assertIn("pub fn keep()", out)

    def test_handles_extern_with_pub_fn_declarations(self):
        snippet = """extern "C" {
    pub fn malloc(size: usize) -> *mut u8;
    pub fn free(ptr: *mut u8);
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("extern \"C\"", out)
        self.assertIn("use libc::{free, malloc};", out)

    def test_does_not_eat_prose_around_block(self):
        snippet = """before line
extern "C" {
    fn malloc(size: usize) -> *mut u8;
}
after line
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertIn("before line", out)
        self.assertIn("after line", out)
        # The extern declaration form must be gone; the only `malloc` token
        # left should be the injected `use libc::{malloc};` line.
        self.assertNotIn("extern \"C\"", out)
        self.assertNotIn("fn malloc(", out)
        self.assertIn("use libc::{malloc};", out)

    def test_regression_nanosvg_e0255_recurring_pattern(self):
        # Pattern observed in the actual nanosvg pipeline failure log:
        # LLM kept inserting these alongside its translation, causing
        # E0255 "name X is defined multiple times".
        snippet = """unsafe fn nsvg__parseGradient(p: *mut NSVGparser) {
    let buf = malloc(64);
    strcmp(a, b);
}

extern "C" {
    fn malloc(size: usize) -> *mut u8;
    fn realloc(ptr: *mut u8, size: usize) -> *mut u8;
    fn free(ptr: *mut u8);
    fn strcmp(a: *const i8, b: *const i8) -> i32;
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("extern \"C\"", out)
        # The function body is preserved verbatim; only the duplicate extern
        # declarations are gone.
        self.assertIn("nsvg__parseGradient", out)
        self.assertIn("malloc(64)", out)
        self.assertIn("strcmp(a, b)", out)


class StripRedeclaredLibcExternInjectsUseStatement(unittest.TestCase):
    """When stripping a libc extern block, also inject ``use libc::{...}`` so
    call sites still resolve. Without this, the LLM compensates by adding its
    own ``use`` lines across retries, which accumulate and trigger E0252
    (the parseSVG regression we observed).
    """

    def setUp(self):
        self.probe = _PipelineProbe()

    def test_strip_injects_single_use_libc_statement(self):
        snippet = """extern "C" {
    fn malloc(size: usize) -> *mut u8;
    fn free(ptr: *mut u8);
}

pub fn body() {
    unsafe { let p = malloc(8); free(p); }
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertIn("use libc::{free, malloc};", out)
        self.assertNotIn("extern \"C\"", out)

    def test_use_names_are_sorted_and_deduped(self):
        snippet = """extern "C" {
    fn strcmp(a: *const i8, b: *const i8) -> i32;
    fn malloc(size: usize) -> *mut u8;
    fn free(ptr: *mut u8);
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertIn("use libc::{free, malloc, strcmp};", out)

    def test_multiple_libc_blocks_consolidate_into_one_use_statement(self):
        # Two separate libc extern blocks must produce ONE consolidated
        # `use libc::{...}` line, not two.
        snippet = """extern "C" {
    fn malloc(size: usize) -> *mut u8;
}

pub fn middle() {}

extern "C" {
    fn free(ptr: *mut u8);
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        # Exactly one occurrence of "use libc::"
        self.assertEqual(out.count("use libc::"), 1)
        self.assertIn("use libc::{free, malloc};", out)

    def test_no_use_statement_when_block_is_kept(self):
        # Mixed extern: my_callback is non-libc so the whole block stays.
        # No use statement should be injected because nothing was stripped.
        snippet = """extern "C" {
    fn malloc(size: usize) -> *mut u8;
    fn my_callback(x: i32);
}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("use libc::", out,
                         "mixed extern block must NOT produce a use injection - "
                         "the whole block is retained")

    def test_no_use_statement_for_empty_block(self):
        snippet = """extern "C" {
}
pub fn keep() {}
"""
        out = self.probe._stripRedeclaredLibcExternBlocks(snippet)
        self.assertNotIn("use libc::", out,
                         "empty extern block should not trigger use injection")
        self.assertIn("pub fn keep()", out)

    def test_regression_parsesvg_e0252_does_not_recur_after_cleanCode_merges(self):
        # Simulates the parseSVG failure mode:
        #   prior context already imported strcmp via libc and uses it,
        #   the LLM emits both an ``extern "C" { fn malloc; fn strcmp; }``
        #   block AND a ``use libc::malloc;`` line. After Task 4 strips the
        #   extern block (and now ALSO injects a ``use libc::{malloc, strcmp};``
        #   line), running ``cleanCode`` on the merged result must yield
        #   exactly ONE ``use libc::{...}`` line that covers all the names
        #   that are actually used in the merged body.
        prior_context = """use libc::{strcmp};

pub fn earlier(a: *const i8, b: *const i8) -> i32 {
    unsafe { strcmp(a, b) }
}
"""
        llm_response = """extern "C" {
    fn malloc(size: usize) -> *mut u8;
    fn strcmp(a: *const i8, b: *const i8) -> i32;
}
use libc::malloc;
pub fn current() {
    unsafe { let _ = malloc(0); }
}
"""
        sanitized = self.probe._stripRedeclaredLibcExternBlocks(llm_response)
        merged = prior_context + "\n" + sanitized
        cleaned = self.probe.cleanCode(merged)
        # All three libc imports must coalesce into a single line.
        useLibcLines = [line for line in cleaned.splitlines()
                        if line.strip().startswith("use libc::")]
        self.assertEqual(len(useLibcLines), 1,
                         f"expected exactly one `use libc::` line after cleanCode, "
                         f"got {len(useLibcLines)}: {useLibcLines}")
        # And it must cover every name actually used in the merged body.
        self.assertIn("malloc", useLibcLines[0])
        self.assertIn("strcmp", useLibcLines[0])


class SanitizerIntegrationWithCleanCode(unittest.TestCase):
    """End-to-end check: `_sanitizeResultAgainstDependencies` should run
    libc-extern stripping in addition to its existing behavior."""

    def setUp(self):
        self.probe = _PipelineProbe()

    def test_sanitizer_pipeline_strips_libc_block(self):
        snippet = """```rust
extern "C" {
    fn malloc(size: usize) -> *mut u8;
}

pub fn good() -> i32 { 42 }
```
"""
        out = self.probe._sanitizeResultAgainstDependencies(
            snippet,
            dependencyCodes=[],
            dependencyKeys=[],
            dependencyFunctionNames=[],
        )
        self.assertNotIn("extern \"C\" {", out)
        self.assertNotIn("fn malloc(", out)
        self.assertIn("pub fn good", out)


class ExtractRustcImportSuggestions(unittest.TestCase):
    """Unit tests for ``extractRustcImportSuggestions``.

    the Rust pass (C++ -> Rust) on the 16-48-26 skiplist run lost two
    functions to ``E0433: unresolved module 'io'``. rustc emitted the
    fix as a structured help block —

        help: consider importing this module
            |
        2   + use std::io;
            |

    — but the LLM ignored it 5 retries in a row. This extractor lifts
    the suggested ``use`` line out so the pipeline can apply it
    deterministically. Each test pins one shape rustc emits in the
    wild so future regex tweaks fail loudly if they narrow the match
    surface."""

    def setUp(self):
        self.probe = _CodeProbe()

    def test_consider_importing_this_module(self):
        err = (
            "error[E0433]: failed to resolve: use of unresolved module or unlinked crate `io`\n"
            "   --> src/lib.rs:166:5\n"
            "    |\n"
            "166 |     io::stdout().flush().unwrap();\n"
            "    |     ^^ use of unresolved module or unlinked crate `io`\n"
            "    |\n"
            "    = help: if you wanted to use a crate named `io`, use `cargo add io` to add it to your `Cargo.toml`\n"
            "help: a builtin type with a similar name exists\n"
            "    |\n"
            "166 -     io::stdout().flush().unwrap();\n"
            "166 +     i8::stdout().flush().unwrap();\n"
            "    |\n"
            "help: consider importing this module\n"
            "    |\n"
            "2   + use std::io;\n"
            "    |\n"
        )
        self.assertEqual(
            self.probe.extractRustcImportSuggestions(err),
            ["use std::io;"],
        )

    def test_consider_importing_this_trait(self):
        err = (
            "error[E0599]: no method named `write_all` found for struct `File`\n"
            "    --> src/lib.rs:10:7\n"
            "    |\n"
            "10  |     f.write_all(b\"x\")?;\n"
            "    |       ^^^^^^^^^ method not found in `File`\n"
            "help: consider importing this trait\n"
            "    |\n"
            "1   + use std::io::Write;\n"
            "    |\n"
        )
        self.assertEqual(
            self.probe.extractRustcImportSuggestions(err),
            ["use std::io::Write;"],
        )

    def test_consider_importing_one_of_these_items(self):
        # Multi-suggestion block — rustc lists several candidates.
        # Extractor should return them all in order.
        err = (
            "error[E0412]: cannot find type `HashMap` in this scope\n"
            "    --> src/lib.rs:5:13\n"
            "    |\n"
            "5   |     let m: HashMap<i32, i32> = HashMap::new();\n"
            "    |            ^^^^^^^ not found in this scope\n"
            "help: consider importing one of these items\n"
            "    |\n"
            "2   + use std::collections::HashMap;\n"
            "    |\n"
            "2   + use hashbrown::HashMap;\n"
            "    |\n"
        )
        self.assertEqual(
            self.probe.extractRustcImportSuggestions(err),
            ["use std::collections::HashMap;", "use hashbrown::HashMap;"],
        )

    def test_dedup_preserves_order(self):
        # Same `use` line shown twice (different errors in same compile
        # cycle) -> emit once.
        err = (
            "help: consider importing this module\n"
            "    |\n"
            "2   + use std::io;\n"
            "    |\n"
            "error[E0433]: failed to resolve: another error\n"
            "help: consider importing this module\n"
            "    |\n"
            "3   + use std::io;\n"
            "    |\n"
        )
        self.assertEqual(
            self.probe.extractRustcImportSuggestions(err),
            ["use std::io;"],
        )

    def test_ignores_unrelated_help_lines(self):
        # The "builtin type with a similar name exists" / `i8::stdout()`
        # help block in the real 16-48-26 stderr is NOT an import
        # suggestion. The extractor must skip it so the auto-fix never
        # injects nonsense.
        err = (
            "help: a builtin type with a similar name exists\n"
            "    |\n"
            "166 -     io::stdout().flush().unwrap();\n"
            "166 +     i8::stdout().flush().unwrap();\n"
            "    |\n"
        )
        self.assertEqual(
            self.probe.extractRustcImportSuggestions(err),
            [],
        )

    def test_empty_input(self):
        self.assertEqual(self.probe.extractRustcImportSuggestions(""), [])
        self.assertEqual(self.probe.extractRustcImportSuggestions(None), [])

    def test_no_import_block_in_unrelated_error(self):
        err = (
            "error[E0308]: mismatched types\n"
            "    --> src/lib.rs:10:9\n"
            "    |\n"
            "10  |     let x: i32 = \"hello\";\n"
            "    |         ^^^ expected `i32`, found `&str`\n"
        )
        self.assertEqual(self.probe.extractRustcImportSuggestions(err), [])


class ApplyRustcImportAutoFix(unittest.TestCase):
    """``applyRustcImportAutoFix`` is the layer above
    ``extractRustcImportSuggestions``: given a candidate code snippet
    and a stderr blob, prepend the suggested ``use`` lines unless
    they're already present.

    The auto-fix runs as a "free" attempt inside
    ``compileAndRetryLoopforDepency`` before the LLM is re-queried —
    the goal is to avoid paying for retries that just relearn the
    same lesson rustc already wrote in the diagnostic."""

    def setUp(self):
        self.probe = _CodeProbe()

    def test_prepends_use_when_missing(self):
        code = (
            "fn jrsl_center_string(s: &str, n: usize) {\n"
            "    io::stdout().flush().unwrap();\n"
            "}\n"
        )
        err = (
            "help: consider importing this module\n"
            "    |\n"
            "1   + use std::io;\n"
            "    |\n"
        )
        fixed, applied = self.probe.applyRustcImportAutoFix(code, err)
        self.assertEqual(applied, ["use std::io;"])
        self.assertTrue(fixed.startswith("use std::io;\n"))
        # Original code stays intact below the new use.
        self.assertIn("fn jrsl_center_string", fixed)
        self.assertIn("io::stdout()", fixed)

    def test_no_op_when_use_already_present(self):
        code = (
            "use std::io;\n"
            "fn f() { io::stdout(); }\n"
        )
        err = (
            "help: consider importing this module\n"
            "    |\n"
            "1   + use std::io;\n"
            "    |\n"
        )
        fixed, applied = self.probe.applyRustcImportAutoFix(code, err)
        self.assertEqual(applied, [])
        self.assertEqual(fixed, code)

    def test_no_op_when_stderr_has_no_suggestion(self):
        code = "fn f() {}\n"
        err = "error[E0308]: mismatched types\n"
        fixed, applied = self.probe.applyRustcImportAutoFix(code, err)
        self.assertEqual(applied, [])
        self.assertEqual(fixed, code)

    def test_appends_multiple_suggestions(self):
        # When rustc lists multiple candidate `use` lines, the auto-fix
        # prepends them all. Compile will fail if any one is wrong (the
        # type then becomes ambiguous), but more often than not the
        # caller resolves the ambiguity itself. Worst case: same retry
        # budget as before, so no regression in budget.
        code = "fn f() { HashMap::<i32, i32>::new(); }\n"
        err = (
            "help: consider importing one of these items\n"
            "    |\n"
            "1   + use std::collections::HashMap;\n"
            "    |\n"
            "1   + use hashbrown::HashMap;\n"
            "    |\n"
        )
        fixed, applied = self.probe.applyRustcImportAutoFix(code, err)
        self.assertEqual(
            applied,
            ["use std::collections::HashMap;", "use hashbrown::HashMap;"],
        )
        # Both must appear ahead of the function body.
        body_idx = fixed.index("fn f()")
        self.assertLess(fixed.index("std::collections::HashMap"), body_idx)
        self.assertLess(fixed.index("hashbrown::HashMap"), body_idx)

    def test_skiplist_stage10_jrsl_center_string_full_stderr(self):
        # The exact stderr captured from run 16-48-26's first compile
        # attempt of jrsl_center_string. The auto-fix must produce a
        # code blob that begins with `use std::io;` so the recompile
        # succeeds and the LLM never gets re-queried.
        code = (
            "use std::io::Write;\n"
            "\n"
            "fn jrsl_center_string(str: &str, new_length: usize) {\n"
            "    let pad_l = (new_length - str.len()) / 2;\n"
            "    let pad_r = new_length - pad_l;\n"
            "    print!(\"{:>width$}\", \"\", width = pad_l);\n"
            "    print!(\"{}\", str);\n"
            "    print!(\"{:>width$}\", \"\", width = pad_r);\n"
            "    io::stdout().flush().unwrap();\n"
            "}\n"
        )
        err = (
            "error[E0433]: failed to resolve: use of unresolved module or unlinked crate `io`\n"
            "   --> src/lib.rs:166:5\n"
            "    |\n"
            "166 |     io::stdout().flush().unwrap();\n"
            "    |     ^^ use of unresolved module or unlinked crate `io`\n"
            "    |\n"
            "    = help: if you wanted to use a crate named `io`, use `cargo add io` to add it to your `Cargo.toml`\n"
            "help: a builtin type with a similar name exists\n"
            "    |\n"
            "166 -     io::stdout().flush().unwrap();\n"
            "166 +     i8::stdout().flush().unwrap();\n"
            "    |\n"
            "help: consider importing this module\n"
            "    |\n"
            "2   + use std::io;\n"
            "    |\n"
        )
        fixed, applied = self.probe.applyRustcImportAutoFix(code, err)
        self.assertEqual(applied, ["use std::io;"])
        self.assertTrue(fixed.startswith("use std::io;\n"))


class ExtractCppTemplateNotATypeNames(unittest.TestCase):
    """Unit tests for ``extractCppTemplateNotATypeNames``.

    an earlier pass (smart-pointer) on run 17-23-48 added ``<memory>`` to the
    skiplist dep block. ``<memory>`` transitively declares the POSIX
    ``link()`` function, which shadows the user's ``struct link`` tag
    once both are in scope. clang then refuses ``std::vector<link>``
    with "template argument for template type parameter must be a
    type". This extractor pulls the offending name out so the
    auto-fix layer can rewrite ``<link>`` to ``<struct link>``."""

    def setUp(self):
        self.probe = _CodeProbe()

    def test_extracts_single_name(self):
        err = (
            "<stdin>:21:15: error: template argument for template type parameter must be a type\n"
            "  std::vector<link> forward;\n"
            "              ^~~~\n"
            "1 error generated.\n"
        )
        self.assertEqual(
            self.probe.extractCppTemplateNotATypeNames(err),
            ["link"],
        )

    def test_extracts_multiple_names_dedup(self):
        err = (
            "<stdin>:21:15: error: template argument for template type parameter must be a type\n"
            "  std::vector<link> forward;\n"
            "<stdin>:30:20: error: template argument for template type parameter must be a type\n"
            "  std::unique_ptr<read> ptr;\n"
            "<stdin>:40:20: error: template argument for template type parameter must be a type\n"
            "  std::vector<link> other;\n"
        )
        self.assertEqual(
            self.probe.extractCppTemplateNotATypeNames(err),
            ["link", "read"],
        )

    def test_no_match_on_unrelated_error(self):
        err = (
            "<stdin>:5:1: error: expected ';' after struct member\n"
            "<stdin>:10:8: error: 'something' is private\n"
        )
        self.assertEqual(self.probe.extractCppTemplateNotATypeNames(err), [])

    def test_empty_input(self):
        self.assertEqual(self.probe.extractCppTemplateNotATypeNames(""), [])
        self.assertEqual(self.probe.extractCppTemplateNotATypeNames(None), [])


class RewriteUnelaboratedTemplateArg(unittest.TestCase):
    """``rewriteUnelaboratedTemplateArg`` is the textual rewrite that
    turns ``<NAME>`` into ``<struct NAME>``. The rewrite must be:
      * targeted to template-argument position (don't touch ``X *p``
        pointer declarations, ``X foo;`` value declarations, or
        function-pointer signatures)
      * idempotent (``<struct link>`` shouldn't become
        ``<struct struct link>``)
      * boundary-safe (``<linker>`` must NOT become ``<struct linker>``)"""

    def setUp(self):
        self.probe = _CodeProbe()

    def test_rewrites_in_vector(self):
        code = "std::vector<link> forward;"
        self.assertEqual(
            self.probe.rewriteUnelaboratedTemplateArg(code, "link"),
            "std::vector<struct link> forward;",
        )

    def test_rewrites_in_unique_ptr(self):
        code = "std::unique_ptr<link> p;"
        self.assertEqual(
            self.probe.rewriteUnelaboratedTemplateArg(code, "link"),
            "std::unique_ptr<struct link> p;",
        )

    def test_idempotent_on_already_elaborated(self):
        code = "std::vector<struct link> forward;"
        # Second pass must NOT produce ``<struct struct link>``.
        self.assertEqual(
            self.probe.rewriteUnelaboratedTemplateArg(code, "link"),
            "std::vector<struct link> forward;",
        )

    def test_does_not_touch_pointer_decl(self):
        # ``struct link *p;`` already has explicit ``struct``; the
        # bare ``link *p;`` declaration is technically also a
        # collision risk but the compiler's diagnostic on POSIX
        # collisions specifically calls out template-arg position,
        # which is the only context where the rewrite is unambiguously
        # safe. Leave non-template uses alone.
        code = "link *p;"
        self.assertEqual(
            self.probe.rewriteUnelaboratedTemplateArg(code, "link"),
            "link *p;",
        )

    def test_boundary_safe_on_prefix_match(self):
        # ``<linker>`` must not match ``link``.
        code = "std::vector<linker> v;"
        self.assertEqual(
            self.probe.rewriteUnelaboratedTemplateArg(code, "link"),
            "std::vector<linker> v;",
        )

    def test_handles_whitespace_around_name(self):
        code = "std::vector< link > v;"
        self.assertEqual(
            self.probe.rewriteUnelaboratedTemplateArg(code, "link"),
            "std::vector< struct link > v;",
        )

    def test_handles_multi_template_args(self):
        # When the bad type is the first arg of a multi-arg template,
        # the rewrite must still fire (comma terminates the arg).
        code = "std::pair<link, int> p;"
        self.assertEqual(
            self.probe.rewriteUnelaboratedTemplateArg(code, "link"),
            "std::pair<struct link, int> p;",
        )

    def test_empty_inputs(self):
        self.assertEqual(self.probe.rewriteUnelaboratedTemplateArg("", "link"), "")
        self.assertEqual(self.probe.rewriteUnelaboratedTemplateArg("x", ""), "x")


if __name__ == "__main__":
    unittest.main()
