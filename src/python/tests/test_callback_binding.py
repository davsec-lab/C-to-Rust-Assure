"""Regression tests for callback-binding detection and the
"Callback contracts" prompt section.

Background: a function-pointer typedef like

    typedef char (*comparator_t)(void *, void *);

defines an external contract that user-supplied callbacks (e.g. an
``intcmp`` function passed via ``(comparator_t)intcmp`` cast at the
call site) must satisfy. Before this change, static analysis didn't
record that ``intcmp`` was bound to ``comparator_t``, so when a stage
transformation modified the typedef (e.g. ``char`` -> ``bool``
return), ``intcmp``'s translation prompt got NO context about the
typedef and the function silently kept the original signature. The
C-style cast at the call site then bridged incompatible signatures
at runtime, producing semantic regressions invisible to the compiler.

These tests cover the three pieces of the fix:
  1. ``FunctionAndDepsExtractor._isFunctionPointerTypedef`` correctly
     classifies typedefs (only function pointers are eligible).
  2. ``extractCallbackBindings`` finds ``(T)F`` casts in additional
     sources (the performance prompt) and registers the binding on
     both ``directTypeRefs`` and ``conformingTypedefs``.
  3. ``_buildCallbackContractSection`` renders an explicit contract
     block when bindings exist, and an empty string otherwise.
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

from functionAndDeps import FunctionAndDependencies
from functionAndDepsExtractor import FunctionAndDepsExtractor
from gpt_translation.config import TranslatorModes
from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.dependency_utils_mixin import DependencyUtilsMixin
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
from type_registry import TranslationMode, TypeKind


class DummyLogger:
    def debug(self, *a, **k): pass
    def info(self, *a, **k): pass
    def warning(self, *a, **k): pass
    def critical(self, *a, **k): pass


class PromptProbe(CodeUtilsMixin, DependencyUtilsMixin, SymbolExtractionMixin, TranslationPipelineMixin):
    def __init__(self):
        self.translatorMode = TranslatorModes.COMPILATION_FEEDBACK
        self.srcLang = "C"
        self.dstLang = "C++"
        self.logger = DummyLogger()

    def stringifyCodeBlock(self, code):
        if isinstance(code, str):
            return code
        return "\n".join(code)


class TestFunctionPointerTypedefClassifier(unittest.TestCase):
    """``_isFunctionPointerTypedef`` is the gate that decides whether
    a typedef can be a callback contract. Misclassification either
    misses real bindings or registers spurious ones, so it has its
    own unit test."""

    def test_classic_function_pointer_typedef(self):
        self.assertTrue(FunctionAndDepsExtractor._isFunctionPointerTypedef(
            "typedef char (*comparator_t)(void *key1, void *key2);"
        ))

    def test_function_pointer_typedef_with_callconv(self):
        self.assertTrue(FunctionAndDepsExtractor._isFunctionPointerTypedef(
            "typedef int (WINAPI *bar)(HWND);"
        ))

    def test_plain_typedef_rejected(self):
        self.assertFalse(FunctionAndDepsExtractor._isFunctionPointerTypedef(
            "typedef unsigned long size_t;"
        ))

    def test_array_typedef_rejected(self):
        self.assertFalse(FunctionAndDepsExtractor._isFunctionPointerTypedef(
            "typedef int IntArr[10];"
        ))

    def test_struct_alias_typedef_rejected(self):
        self.assertFalse(FunctionAndDepsExtractor._isFunctionPointerTypedef(
            "typedef struct Foo Foo;"
        ))

    def test_empty_input_rejected(self):
        self.assertFalse(FunctionAndDepsExtractor._isFunctionPointerTypedef(""))


class TestExtractCallbackBindings(unittest.TestCase):
    """End-to-end behaviour of ``extractCallbackBindings`` against
    fixtures that mirror the real ``skiplist`` setup that originally
    triggered the bug."""

    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()

        FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "comparator_t",
            ["typedef char (*comparator_t)(void *key1, void *key2);"],
            TranslationMode.TYPEDEF, "normal",
        )
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "key_destructor_t",
            ["typedef void (*key_destructor_t)(void *key);"],
            TranslationMode.TYPEDEF, "normal",
        )
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "size_t",
            ["typedef unsigned long size_t;"],
            TranslationMode.TYPEDEF, "normal",
        )

        self.funcMap = {
            name: FunctionAndDependencies(name)
            for name in ("intcmp", "jrsl_initialize", "jrsl_max_level")
        }
        self.funcMap["intcmp"].funcCodeLines = (
            "static int intcmp(const void *a, const void *b) {\n"
            "    int ia = *(const int*)a, ib = *(const int*)b;\n"
            "    return (ia > ib) - (ia < ib);\n"
            "}\n"
        )
        self.extractor = FunctionAndDepsExtractor(DummyLogger())

    def _key(self, name):
        return FunctionAndDependencies.typeRegistry.get_by_name(
            TypeKind.TYPEDEF, name,
        ).key

    def test_cast_in_additional_source_registers_binding(self):
        """The skiplist case: ``(comparator_t)intcmp`` appears only in
        the performance prompt (which is fed in as additionalSources).
        It must populate both ``conformingTypedefs`` and ``directTypeRefs``."""
        prompt = (
            "int main() {\n"
            "    jrsl_initialize(&sl, (comparator_t)intcmp, NULL, 0.5f, max_level);\n"
            "}\n"
        )
        self.extractor.extractCallbackBindings(
            self.funcMap, additionalSources=[prompt],
        )

        cmpKey = self._key("comparator_t")
        intcmp = self.funcMap["intcmp"]
        self.assertIn(cmpKey, intcmp.conformingTypedefs)
        self.assertIn(cmpKey, intcmp.directTypeRefs)

    def test_non_function_pointer_typedef_is_not_a_callback(self):
        """A plain alias like ``size_t`` must never be treated as a
        callback contract, even if both names happen to appear in the
        source — there's no real binding semantics."""
        prompt = "size_t x = sizeof(intcmp); jrsl_initialize(&sl, (comparator_t)intcmp, NULL, 0, 0);"
        self.extractor.extractCallbackBindings(
            self.funcMap, additionalSources=[prompt],
        )
        sizeKey = self._key("size_t")
        intcmp = self.funcMap["intcmp"]
        self.assertNotIn(sizeKey, intcmp.conformingTypedefs)

    def test_caller_does_not_inherit_binding(self):
        """Only the cast TARGET (``intcmp``) inherits the contract.
        The function performing the cast (``jrsl_initialize``) is just
        a consumer of the typedef via its parameter list — that's a
        different relationship and the existing ``directTypeRefs``
        plumbing already handles it."""
        prompt = "jrsl_initialize(&sl, (comparator_t)intcmp, NULL, 0, 0);"
        self.extractor.extractCallbackBindings(
            self.funcMap, additionalSources=[prompt],
        )
        for name in ("jrsl_initialize", "jrsl_max_level"):
            deps = self.funcMap[name]
            self.assertFalse(deps.conformingTypedefs,
                             f"{name} should have no callback contract")

    def test_no_function_pointer_typedefs_short_circuits(self):
        """If no function-pointer typedefs are registered, the scanner
        must be a quick no-op (no exceptions, no spurious edges)."""
        FunctionAndDependencies.resetTypeSystem()
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "size_t",
            ["typedef unsigned long size_t;"],
            TranslationMode.TYPEDEF, "normal",
        )
        funcMap = {"intcmp": FunctionAndDependencies("intcmp")}
        self.extractor.extractCallbackBindings(funcMap, additionalSources=["anything"])
        self.assertFalse(funcMap["intcmp"].conformingTypedefs)
        self.assertFalse(funcMap["intcmp"].directTypeRefs)

    def test_duplicate_casts_dedup(self):
        """If the same ``(T)F`` cast appears in multiple sources, the
        binding is registered once and ``conformingTypedefs`` does not
        contain duplicates (which a set would handle anyway, but we
        also want the log line to fire once)."""
        promptA = "(comparator_t)intcmp"
        promptB = "another reference: (comparator_t)intcmp"
        self.extractor.extractCallbackBindings(
            self.funcMap, additionalSources=[promptA, promptB],
        )
        cmpKey = self._key("comparator_t")
        self.assertEqual(self.funcMap["intcmp"].conformingTypedefs, {cmpKey})


class TestCallbackContractPromptSection(unittest.TestCase):
    """``_buildCallbackContractSection`` is the LLM-visible surface
    of the binding data. If the data is registered but the prompt
    doesn't surface it, the fix has no effect — these tests guard
    that the prompt segment actually appears (and is empty when there
    is nothing to surface, so the unmodified-function path stays
    byte-identical to the pre-fix prompt and the prompt cache still
    hits)."""

    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()
        self.probe = PromptProbe()

    def test_empty_when_no_bindings(self):
        deps = FunctionAndDependencies("intcmp")
        self.assertEqual(self.probe._buildCallbackContractSection(deps), "")

    def test_renders_contract_when_bindings_present(self):
        cmpNode = FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "comparator_t",
            ["typedef char (*comparator_t)(void *, void *);"],
            TranslationMode.TYPEDEF, "normal",
        )
        deps = FunctionAndDependencies("intcmp")
        deps.conformingTypedefs.add(cmpNode.key)

        section = self.probe._buildCallbackContractSection(deps)
        self.assertIn("CALLBACK CONTRACTS:", section)
        # The pairing line is the actionable information for the LLM —
        # if this disappears the contract becomes hand-wavy and the
        # LLM has no anchor to which function/typedef pair it must
        # keep in sync.
        self.assertIn("intcmp -> comparator_t", section)
        # The instruction MUST tell the LLM that signature changes
        # propagate from typedef to function in the same response —
        # weak phrasing here was the original failure mode.
        self.assertIn("MUST update", section)

    def test_lists_multiple_bindings_sorted(self):
        cmpNode = FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "comparator_t",
            ["typedef char (*comparator_t)(void *, void *);"],
            TranslationMode.TYPEDEF, "normal",
        )
        dtorNode = FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "key_destructor_t",
            ["typedef void (*key_destructor_t)(void *);"],
            TranslationMode.TYPEDEF, "normal",
        )
        deps = FunctionAndDependencies("shared_callback")
        deps.conformingTypedefs.update({cmpNode.key, dtorNode.key})

        section = self.probe._buildCallbackContractSection(deps)
        # Sort by name keeps output stable for cache friendliness.
        idxCmp = section.index("comparator_t")
        idxDtor = section.index("key_destructor_t")
        self.assertLess(idxCmp, idxDtor)


class TestFunctionPointerReturnTypeExtractor(unittest.TestCase):
    """Unit test for ``_extractFunctionPointerReturnType``.

    The extractor is the discriminator that powers the
    "TYPEDEF SIGNATURE CHANGES" section: a wrong return-type extraction
    either misses a real change (false negative -> regression survives)
    or fires on cosmetic re-formatting (false positive -> useless
    noise in every prompt). Each shape that the LLM emits in practice
    gets its own assertion so the extractor's behaviour is locked in."""

    def _ret(self, text, lang):
        from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
        return TranslationPipelineMixin._extractFunctionPointerReturnType(text, lang)

    def test_c_function_pointer_typedef(self):
        self.assertEqual(
            self._ret("typedef char (*comparator_t)(void *key1, void *key2);", "C"),
            "char",
        )

    def test_cpp_function_pointer_typedef(self):
        self.assertEqual(
            self._ret("typedef bool (*comparator_t)(void *key1, void *key2);", "C++"),
            "bool",
        )

    def test_unsigned_compound_return_type(self):
        self.assertEqual(
            self._ret("typedef unsigned int (*Fn)(int);", "C++"),
            "unsigned int",
        )

    def test_pointer_return_type(self):
        self.assertEqual(
            self._ret("typedef const char* (*Fn)(int);", "C++"),
            "const char*",
        )

    def test_plain_typedef_returns_empty(self):
        # Plain aliases aren't function-pointer typedefs and must not
        # trigger the signature-change machinery — otherwise we'd
        # flag every ``size_t`` / ``uint32_t`` as a "changed return
        # type" every stage.
        self.assertEqual(self._ret("typedef unsigned long size_t;", "C"), "")
        self.assertEqual(self._ret("typedef int IntArr[10];", "C"), "")

    def test_rust_fn_pointer_extracts_return_type(self):
        rustForm = (
            'type Comparator = Option<unsafe extern "C" fn(*mut std::ffi::c_void, '
            '*mut std::ffi::c_void) -> std::os::raw::c_char>;'
        )
        self.assertEqual(self._ret(rustForm, "Rust"), "std::os::raw::c_char")

    def test_empty_input(self):
        self.assertEqual(self._ret("", "C"), "")
        self.assertEqual(self._ret(None, "C"), "")


class TestTypedefSignatureChangeSection(unittest.TestCase):
    """End-to-end test for the "TYPEDEF SIGNATURE CHANGES" prompt
    section. The narrow goal: cover the regression where an earlier pass
    flipped ``comparator_t`` from ``char`` to ``bool`` return and the
    consumer functions (``jrsl_search`` / ``jrsl_remove``) kept their
    ``< 0`` / ``== 0`` checks. The section's job is to make that
    change loud enough that the LLM follows."""

    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()
        self.probe = PromptProbe()

    def _register_cmp(self, *, cCode, rustCode):
        node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "comparator_t",
            [cCode],
            TranslationMode.TYPEDEF, "normal",
        )
        node.rustCode = rustCode
        return node

    def test_fires_when_return_type_changed(self):
        node = self._register_cmp(
            cCode="typedef char (*comparator_t)(void *key1, void *key2);",
            rustCode="typedef bool (*comparator_t)(void *key1, void *key2);",
        )
        deps = FunctionAndDependencies("jrsl_search")
        deps.directTypeRefs.add(node.key)

        section = self.probe._buildTypedefSignatureChangeSection(deps)
        self.assertIn("TYPEDEF SIGNATURE CHANGES", section)
        # The actionable diff line must show the actual return-type
        # transition; without it the LLM has no anchor to which
        # operator-level rewrite is needed.
        self.assertIn("comparator_t", section)
        self.assertIn("`char`", section)
        self.assertIn("`bool`", section)
        # The pattern hints must include the specific ``< 0`` ->
        # bare-call rewrite that the regression needed. If this string
        # disappears, the section regresses to a vague warning the
        # LLM is free to ignore.
        self.assertIn("`cmp(a, b) < 0`", section)

    def test_empty_when_return_types_match(self):
        # Stage didn't touch the return type (e.g. only parameter
        # rename). Section must NOT fire — otherwise every typedef in
        # every function's closure burns prompt tokens for nothing.
        node = self._register_cmp(
            cCode="typedef char (*comparator_t)(void *key1, void *key2);",
            rustCode="typedef char (*comparator_t)(void *a, void *b);",
        )
        deps = FunctionAndDependencies("jrsl_search")
        deps.directTypeRefs.add(node.key)
        self.assertEqual(self.probe._buildTypedefSignatureChangeSection(deps), "")

    def test_empty_when_typedef_not_yet_translated(self):
        # Stage hasn't translated the typedef yet (rustCode is "").
        # No "change" can be detected; the section must stay quiet.
        node = self._register_cmp(
            cCode="typedef char (*comparator_t)(void *, void *);",
            rustCode="",
        )
        deps = FunctionAndDependencies("jrsl_search")
        deps.directTypeRefs.add(node.key)
        self.assertEqual(self.probe._buildTypedefSignatureChangeSection(deps), "")

    def test_empty_when_typedef_is_not_function_pointer(self):
        # Plain alias: both cCode and rustCode pass through the same
        # form. The extractor returns "" for both and the comparison
        # short-circuits. This guards against the section becoming
        # noise on plain typedefs whose textual form differs cosmetically
        # between cCode and the stage's normalized rustCode.
        node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.TYPEDEF, "size_t",
            ["typedef unsigned long size_t;"],
            TranslationMode.TYPEDEF, "normal",
        )
        node.rustCode = "typedef unsigned long size_t;"
        deps = FunctionAndDependencies("any_function")
        deps.directTypeRefs.add(node.key)
        self.assertEqual(self.probe._buildTypedefSignatureChangeSection(deps), "")

    def test_no_direct_type_refs_returns_empty(self):
        # Edge case: a function with empty directTypeRefs (e.g. an
        # early stage or a leaf utility). Must NOT crash, must NOT
        # emit a section.
        deps = FunctionAndDependencies("intcmp")
        self.assertEqual(self.probe._buildTypedefSignatureChangeSection(deps), "")


class TestCollectTranslatedTypeCodesStripsIncludes(unittest.TestCase):
    """``_collectTranslatedTypeCodes`` powers the
    "translated dependency definitions" block of downstream prompts.

    Background: the type-batch translator (``_translateTypeBatchWithLlm``)
    attaches the LLM result's include block to the FIRST node's
    ``rustCode`` so merged-file assembly orders includes correctly.
    That same ``rustCode`` is also read by this collector when
    rendering dependency context for *later* prompts. Without
    stripping, the prompt's "definitions" block ends up with
    ``#include <cstdlib>`` lines in the middle of typedefs and
    structs — confusing the LLM (the surrounding prompt says
    "Do not repeat these dependency definitions in your response,"
    and an include directive isn't a definition the LLM can
    "translate" or "not repeat" coherently).
    """

    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()
        self.probe = PromptProbe()

    def test_include_lines_stripped_from_dependency_block(self):
        # struct link carries the include block on its rustCode (the
        # production code path is _translateTypeBatchWithLlm attaching
        # includeBlock to batchNodes[0]).
        linkNode = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT, "link",
            ["struct link { size_t width; };"],
            TranslationMode.PLAIN_STRUCT, "normal",
        )
        linkNode.rustCode = (
            "#include <cstdlib>\n"
            "#include <cstddef>\n"
            "\n"
            "struct link {\n"
            "  size_t width;\n"
            "  struct skip_node_t *node;\n"
            "};"
        )
        nodeNode = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT, "skip_node_t",
            ["typedef struct skip_node_t { void *key; } skip_node_t;"],
            TranslationMode.PLAIN_STRUCT, "normal",
        )
        nodeNode.rustCode = (
            "typedef struct skip_node_t {\n"
            "  struct link *forward;\n"
            "  void *key;\n"
            "  void *data;\n"
            "} skip_node_t;"
        )

        codes = self.probe._collectTranslatedTypeCodes([linkNode.key, nodeNode.key])
        joined = "\n".join(codes)

        # Includes must be gone from the dependency view.
        self.assertNotIn("#include", joined)
        # Definitions must remain intact — the strip is surgical.
        self.assertIn("struct link", joined)
        self.assertIn("skip_node_t", joined)

    def test_node_rust_code_is_untouched(self):
        # The strip is rendering-only; the underlying rustCode field
        # must keep its includes so merged_funcs.{cpp,rs} assembly
        # (which reads typeNode.rustCode directly via
        # createSccTopoQueue) still emits them before the definitions
        # they support.
        linkNode = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT, "link",
            ["struct link { size_t width; };"],
            TranslationMode.PLAIN_STRUCT, "normal",
        )
        original = "#include <cstdlib>\n\nstruct link { size_t width; };"
        linkNode.rustCode = original

        _ = self.probe._collectTranslatedTypeCodes([linkNode.key])

        self.assertEqual(linkNode.rustCode, original,
                         "rustCode must not be mutated by collection")

    def test_pure_include_block_treated_as_empty(self):
        # If a node's rustCode is *only* include lines (no body), the
        # collector should skip it rather than emit an empty string
        # into the dependency block.
        node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT, "ghost",
            ["struct ghost { int x; };"],
            TranslationMode.PLAIN_STRUCT, "normal",
        )
        node.rustCode = "#include <cstdlib>\n#include <cstddef>\n"

        codes = self.probe._collectTranslatedTypeCodes([node.key])

        self.assertEqual(codes, [])

    def test_dedup_uses_cleaned_form(self):
        # Two nodes whose rustCode differs only in whether the
        # includes are attached must dedup against each other —
        # otherwise the dependency block gets the same definition
        # twice just because one copy happened to be the batch leader.
        a = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT, "alpha",
            ["struct alpha { int x; };"],
            TranslationMode.PLAIN_STRUCT, "normal",
        )
        b = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT, "alpha_alias",
            ["struct alpha_alias { int x; };"],
            TranslationMode.PLAIN_STRUCT, "normal",
        )
        a.rustCode = "#include <cstdlib>\n\nstruct alpha { int x; };"
        b.rustCode = "struct alpha { int x; };"

        codes = self.probe._collectTranslatedTypeCodes([a.key, b.key])

        self.assertEqual(len(codes), 1)
        self.assertNotIn("#include", codes[0])

    def test_strip_helper_handles_quoted_form(self):
        # The pattern must also catch `#include "foo.h"` (project-local
        # includes), not just `<system.h>`.
        result = self.probe._stripIncludeDirectives(
            '#include "config.h"\n#include <cstdlib>\nstruct X { int x; };'
        )
        self.assertEqual(result, "struct X { int x; };")


if __name__ == "__main__":
    unittest.main()
