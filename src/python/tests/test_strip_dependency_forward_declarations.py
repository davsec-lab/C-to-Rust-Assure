"""Tests for ``TranslationPipelineMixin._stripDependencyForwardDeclarations``.

The regression target is Stage_8 of cjson_new in NEW_MODE: the ``funcCodeLines``
for ``cJSON_ParseWithLengthOpts`` carries a stale pointer-version forward
declaration of ``parse_value`` even after the SCC translated parse_value to
take references. The stale declaration ends up alongside the new definition in
``merged_funcs.cpp`` with a different mangled signature, producing
``undefined reference`` at link time. Stripping these declarations on input
forces the LLM to rely on ``previouslyTranslatedFunctionSignatures`` (always
fresh) as its single source of truth for callee signatures.
"""

import logging
import os
import sys

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin


class _Harness(CodeUtilsMixin, TranslationPipelineMixin):
    """``_sanitizeResultAgainstDependencies`` calls ``cleanCode`` (from
    CodeUtilsMixin) so the harness must mix both in to stand in for the
    full ``Translator`` MRO during unit tests."""

    def __init__(self, dstLang="C++"):
        self.logger = logging.getLogger("test_strip_dep_fwd_decls")
        self.dstLang = dstLang


def test_strips_basic_cpp_forward_declaration():
    snippet = (
        "void cJSON_Delete(cJSON *item);\n"
        "static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);\n"
        "static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);\n"
        "\n"
        "cJSON *cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length) {\n"
        "    return parse_value(item, &buffer);\n"
        "}\n"
    )
    deps = ["cJSON_Delete", "parse_value", "buffer_skip_whitespace"]
    out = _Harness()._stripDependencyForwardDeclarations(snippet, deps)
    assert "void cJSON_Delete(cJSON *item);" not in out
    assert "static cJSON_bool parse_value(cJSON * const item" not in out
    assert "static parse_buffer *buffer_skip_whitespace" not in out
    assert "cJSON *cJSON_ParseWithLengthOpts" in out
    assert "return parse_value(item, &buffer);" in out
    print("PASS: strips basic C/C++ forward declarations, preserves body")


def test_preserves_function_definition_with_same_name():
    snippet = (
        "static cJSON_bool parse_value(cJSON *item, parse_buffer *buf);\n"
        "\n"
        "static cJSON_bool parse_value(cJSON *item, parse_buffer *buf) {\n"
        "    return 1;\n"
        "}\n"
    )
    out = _Harness()._stripDependencyForwardDeclarations(snippet, ["parse_value"])
    assert "static cJSON_bool parse_value(cJSON *item, parse_buffer *buf) {" in out, out
    assert "return 1;" in out
    semis = sum(1 for ln in out.splitlines() if ln.strip().endswith(";"))
    assert semis == 1, f"definition's `return 1;` should be the only ;-terminated line; got:\n{out}"
    print("PASS: preserves function definition while stripping its forward declaration")


def test_preserves_in_body_call_sites():
    snippet = (
        "static cJSON_bool parse_value(cJSON *item, parse_buffer *buf);\n"
        "\n"
        "cJSON *cJSON_ParseWithLengthOpts(const char *value) {\n"
        "    if (!parse_value(item, &buffer)) {\n"
        "        return NULL;\n"
        "    }\n"
        "    return parse_value(item, &buffer);\n"
        "}\n"
    )
    out = _Harness()._stripDependencyForwardDeclarations(snippet, ["parse_value"])
    assert "static cJSON_bool parse_value(cJSON *item, parse_buffer *buf);" not in out
    assert "if (!parse_value(item, &buffer))" in out, out
    assert "return parse_value(item, &buffer);" in out, out
    print("PASS: in-body call sites are not mistaken for forward declarations")


def test_stage_8_cjson_regression():
    """Replays the exact funcCodeLines pattern that broke Stage_8 cjson_new.

    The ``parse_value`` forward declaration in pointer form must be removed so
    it cannot conflict with the SCC-translated reference-form definition in
    ``merged_funcs.cpp``."""
    snippet = (
        "#include <cstdlib>\n"
        "#include <cstddef>\n"
        "#include <string>\n"
        "\n"
        "void cJSON_Delete(cJSON *item);\n"
        "\n"
        "static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);\n"
        "static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);\n"
        "static parse_buffer *skip_utf8_bom(parse_buffer * const buffer);\n"
        "void cJSON_Delete(cJSON *item);\n"
        "static cJSON *cJSON_New_Item(void);\n"
        "\n"
        "cJSON * cJSON_ParseWithLengthOpts(const std::string &value, size_t buffer_length, const char **return_parse_end, cJSON_bool require_null_terminated)\n"
        "{\n"
        "    cJSON *item = nullptr;\n"
        "    if (!parse_value(item, buffer_skip_whitespace(skip_utf8_bom(&buffer))))\n"
        "    {\n"
        "        goto fail;\n"
        "    }\n"
        "    return item;\n"
        "}\n"
    )
    deps = ["cJSON_Delete", "parse_value", "buffer_skip_whitespace", "skip_utf8_bom", "cJSON_New_Item"]
    out = _Harness()._stripDependencyForwardDeclarations(snippet, deps)

    forwardDeclLines = [
        "void cJSON_Delete(cJSON *item);",
        "static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);",
        "static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);",
        "static parse_buffer *skip_utf8_bom(parse_buffer * const buffer);",
        "static cJSON *cJSON_New_Item(void);",
    ]
    for line in forwardDeclLines:
        assert line not in out, f"forward declaration was not stripped: {line}\noutput:\n{out}"

    assert "cJSON * cJSON_ParseWithLengthOpts" in out
    assert "if (!parse_value(item, buffer_skip_whitespace(skip_utf8_bom(&buffer))))" in out
    assert "#include <cstdlib>" in out
    print("PASS: Stage_8 cjson_new regression — all stale dep forward decls stripped")


def test_handles_multiline_forward_declaration():
    snippet = (
        "static cJSON_bool parse_value(\n"
        "    cJSON * const item,\n"
        "    parse_buffer * const input_buffer);\n"
        "\n"
        "void caller(void) {\n"
        "    parse_value(item, buf);\n"
        "}\n"
    )
    out = _Harness()._stripDependencyForwardDeclarations(snippet, ["parse_value"])
    assert "static cJSON_bool parse_value(" not in out, out
    assert "parse_buffer * const input_buffer);" not in out, out
    assert "parse_value(item, buf);" in out
    print("PASS: multi-line forward declaration is stripped")


def test_no_op_when_dep_not_present():
    snippet = "int foo(void) { return 0; }\n"
    out = _Harness()._stripDependencyForwardDeclarations(snippet, ["bar", "baz"])
    assert out == snippet, "no-op expected when none of the dep names occur"
    print("PASS: no-op when dependency names are absent")


def test_no_op_with_empty_inputs():
    h = _Harness()
    assert h._stripDependencyForwardDeclarations("", ["foo"]) == ""
    assert h._stripDependencyForwardDeclarations("int x;", []) == "int x;"
    assert h._stripDependencyForwardDeclarations("int x;", None) == "int x;"
    assert h._stripDependencyForwardDeclarations(None, ["foo"]) is None
    print("PASS: empty / None inputs are handled safely")


def test_does_not_match_dep_name_substring():
    """``parse_value_extended`` should not match dep ``parse_value``."""
    snippet = (
        "static int parse_value_extended(int x);\n"
        "static int my_parse_value(int x);\n"
        "void f(void) { parse_value_extended(1); my_parse_value(2); }\n"
    )
    out = _Harness()._stripDependencyForwardDeclarations(snippet, ["parse_value"])
    assert "parse_value_extended" in out, out
    assert "my_parse_value" in out, out
    print("PASS: word-boundary match — substrings of the name aren't stripped")


def test_strips_forward_decls_from_typedecl_preamble():
    """The per-function ``.i`` puts dep forward declarations in the
    ``typeDeclDefCodeLines`` preamble (they precede the function definition's
    line range). The strip must operate on the assembled funcSrc so this
    preamble is also cleaned, otherwise stripping ``funcCodeLines`` alone
    leaves the stale declarations intact (regression seen in cjson_new
    Stage_1 merged_funcs.cpp at run 16-35-44)."""
    typeDeclDefCodeLines = (
        "extern void *malloc (size_t __size) __attribute__ ((__nothrow__));\n"
        "extern void free (void *__ptr) __attribute__ ((__nothrow__));\n"
        "typedef struct cJSON {\n"
        "    struct cJSON *next;\n"
        "} cJSON;\n"
        "\n"
        "void cJSON_Delete(cJSON *item);\n"
        "static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);\n"
        "static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);\n"
        "static parse_buffer *skip_utf8_bom(parse_buffer * const buffer);\n"
        "static cJSON *cJSON_New_Item(const internal_hooks * const hooks);\n"
    )
    funcCodeLines = (
        "cJSON * cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length)\n"
        "{\n"
        "    cJSON *item = cJSON_New_Item(&global_hooks);\n"
        "    if (!parse_value(item, buffer_skip_whitespace(skip_utf8_bom(&buffer))))\n"
        "        return NULL;\n"
        "    return item;\n"
        "}\n"
    )
    deps = ["cJSON_Delete", "parse_value", "buffer_skip_whitespace",
            "skip_utf8_bom", "cJSON_New_Item"]

    funcSrc = typeDeclDefCodeLines + "\n" + funcCodeLines
    out = _Harness()._stripDependencyForwardDeclarations(funcSrc, deps)

    forwardDeclLines = [
        "void cJSON_Delete(cJSON *item);",
        "static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);",
        "static parse_buffer *buffer_skip_whitespace(parse_buffer * const buffer);",
        "static parse_buffer *skip_utf8_bom(parse_buffer * const buffer);",
        "static cJSON *cJSON_New_Item(const internal_hooks * const hooks);",
    ]
    for line in forwardDeclLines:
        assert line not in out, (
            "preamble forward declaration was not stripped: "
            + line
            + "\noutput:\n"
            + out
        )

    # libc externs should NOT be touched (they aren't in dependFunctions).
    assert "extern void *malloc" in out, out
    assert "extern void free" in out, out
    # struct typedef and the function definition itself must survive.
    assert "typedef struct cJSON {" in out
    assert "cJSON * cJSON_ParseWithLengthOpts(" in out
    assert "cJSON *item = cJSON_New_Item(&global_hooks);" in out
    print("PASS: strips forward decls in typeDeclDefCodeLines preamble too")


def test_rust_forward_declaration():
    """Rust-style forward decls should also be stripped (struct-fn-replay /
    Stage_9 in NEW_MODE produce Rust output)."""
    snippet = (
        "fn parse_value(item: *mut cJSON, buffer: *mut parse_buffer) -> i32;\n"
        "\n"
        "pub fn caller() {\n"
        "    unsafe { parse_value(std::ptr::null_mut(), std::ptr::null_mut()); }\n"
        "}\n"
    )
    out = _Harness()._stripDependencyForwardDeclarations(snippet, ["parse_value"])
    assert "fn parse_value(item: *mut cJSON" not in out
    assert "unsafe { parse_value(" in out
    print("PASS: Rust-style forward declaration is stripped")


def test_sanitize_strips_llm_emitted_forward_declarations():
    """End-to-end: ``_sanitizeResultAgainstDependencies`` should strip the
    forward declarations LLMs emit in their output (autocomplete habit),
    even though the prompt no longer contains any.

    Reproduces the actual LLM output captured at log:7812 of
    cjson_new_validator_2026-05-04_16-45-58.log."""
    llmOutput = (
        "#include <cstddef>\n"
        "#include <cstdlib>\n"
        "\n"
        "static parse_buffer * skip_utf8_bom(parse_buffer * const buffer);\n"
        "static parse_buffer * buffer_skip_whitespace(parse_buffer * const buffer);\n"
        "void cJSON_Delete(cJSON *item);\n"
        "static cJSON * cJSON_New_Item(void);\n"
        "static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);\n"
        "\n"
        "cJSON * cJSON_ParseWithLengthOpts(const char *value, size_t buffer_length)\n"
        "{\n"
        "    cJSON *item = cJSON_New_Item();\n"
        "    if (!parse_value(item, buffer_skip_whitespace(skip_utf8_bom(&buffer))))\n"
        "        cJSON_Delete(item);\n"
        "    return item;\n"
        "}\n"
    )
    deps = [
        "cJSON_Delete", "parse_value", "buffer_skip_whitespace",
        "skip_utf8_bom", "cJSON_New_Item",
    ]
    out = _Harness()._sanitizeResultAgainstDependencies(
        llmOutput, dependencyFunctionNames=deps
    )

    forwardDeclLines = [
        "static parse_buffer * skip_utf8_bom(parse_buffer * const buffer);",
        "static parse_buffer * buffer_skip_whitespace(parse_buffer * const buffer);",
        "void cJSON_Delete(cJSON *item);",
        "static cJSON * cJSON_New_Item(void);",
        "static cJSON_bool parse_value(cJSON * const item, parse_buffer * const input_buffer);",
    ]
    for line in forwardDeclLines:
        assert line not in out, f"sanitize did not strip LLM-emitted decl: {line}\noutput:\n{out}"

    assert "cJSON * cJSON_ParseWithLengthOpts" in out
    # In-body call sites must survive.
    assert "cJSON *item = cJSON_New_Item();" in out
    assert "if (!parse_value(item, buffer_skip_whitespace(skip_utf8_bom(&buffer))))" in out
    assert "cJSON_Delete(item);" in out
    print("PASS: sanitize strips LLM-emitted forward declarations end-to-end")


if __name__ == "__main__":
    logging.basicConfig(level=logging.WARNING)
    test_strips_basic_cpp_forward_declaration()
    test_preserves_function_definition_with_same_name()
    test_preserves_in_body_call_sites()
    test_stage_8_cjson_regression()
    test_handles_multiline_forward_declaration()
    test_no_op_when_dep_not_present()
    test_no_op_with_empty_inputs()
    test_does_not_match_dep_name_substring()
    test_strips_forward_decls_from_typedecl_preamble()
    test_rust_forward_declaration()
    test_sanitize_strips_llm_emitted_forward_declarations()
    print("\nAll tests passed.")
