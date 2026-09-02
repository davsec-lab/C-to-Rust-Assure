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

from functionAndDepsExtractor import FunctionAndDepsExtractor


class _Logger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class ExtractDependFunctionsCallSites(unittest.TestCase):
    def setUp(self):
        self.extractor = FunctionAndDepsExtractor(_Logger())
        self.allFuncs = ["foo", "bar", "baz", "callback"]

    def test_direct_call_with_no_space(self):
        body = "void caller() { foo(1, 2); }"
        deps = self.extractor.extractDependFunctions("caller", body, self.allFuncs)
        self.assertIn("foo", deps)

    def test_direct_call_with_space(self):
        body = "void caller() { foo (1, 2); }"
        deps = self.extractor.extractDependFunctions("caller", body, self.allFuncs)
        self.assertIn("foo", deps)

    def test_no_self_dependency(self):
        body = "void foo() { foo(); }"
        deps = self.extractor.extractDependFunctions("foo", body, self.allFuncs)
        self.assertNotIn("foo", deps)

    def test_no_dep_when_function_not_referenced(self):
        body = "void caller() { return; }"
        deps = self.extractor.extractDependFunctions("caller", body, self.allFuncs)
        self.assertEqual(deps, [])


class ExtractDependFunctionsFunctionPointer(unittest.TestCase):
    """The actual fix: a function name passed as a value (function pointer) must
    register as a dependency, otherwise topo sort and signature propagation skip it."""

    def setUp(self):
        self.extractor = FunctionAndDepsExtractor(_Logger())
        self.allFuncs = ["nsvg__startElement", "nsvg__endElement", "nsvg__content",
                         "nsvg__parseXML", "nsvgParse"]

    def test_function_pointer_in_argument_list_is_dependency(self):
        # The exact pattern from nanosvg that previously caused the bug:
        # nsvgParse passes nsvg__startElement/__endElement as function pointers.
        body = """
        NSVGimage* nsvgParse(char* input, const char* units, float dpi) {
            NSVGparser* p = nsvg__createParser();
            p->dpi = dpi;
            nsvg__parseXML(input, nsvg__startElement, nsvg__endElement, nsvg__content, p);
            return ret;
        }
        """
        deps = self.extractor.extractDependFunctions("nsvgParse", body, self.allFuncs)
        self.assertIn("nsvg__parseXML", deps)
        self.assertIn("nsvg__startElement", deps,
                      "Function-pointer argument must register as a dependency")
        self.assertIn("nsvg__endElement", deps)
        self.assertIn("nsvg__content", deps)

    def test_address_of_operator_registers_as_dependency(self):
        body = "void caller() { register_handler(&foo); }"
        deps = self.extractor.extractDependFunctions("caller", body, ["foo", "register_handler"])
        self.assertIn("foo", deps)

    def test_assignment_to_function_pointer_variable(self):
        body = "void caller() { fp_t cb = callback; cb(); }"
        deps = self.extractor.extractDependFunctions("caller", body, ["callback"])
        self.assertIn("callback", deps)

    def test_return_function_pointer(self):
        body = "fp_t getter() { return callback; }"
        deps = self.extractor.extractDependFunctions("getter", body, ["callback"])
        self.assertIn("callback", deps)

    def test_string_literal_does_not_create_false_dependency(self):
        body = 'void caller() { puts("call foo() from this string"); }'
        deps = self.extractor.extractDependFunctions("caller", body, ["foo", "puts"])
        self.assertNotIn("foo", deps,
                         "Identifier inside a string literal must NOT register as a dep")
        self.assertIn("puts", deps)

    def test_comment_does_not_create_false_dependency(self):
        body = """
        void caller() {
            // foo() is mentioned only in this comment
            /* and bar(x, y) too */
            return;
        }
        """
        deps = self.extractor.extractDependFunctions("caller", body, ["foo", "bar"])
        self.assertNotIn("foo", deps)
        self.assertNotIn("bar", deps)

    def test_substring_match_does_not_register(self):
        # 'foo' is a substring of 'foobar' - word boundary should prevent false match.
        body = "void caller() { foobar(); }"
        deps = self.extractor.extractDependFunctions("caller", body, ["foo", "foobar"])
        self.assertNotIn("foo", deps)
        self.assertIn("foobar", deps)

    def test_forward_declaration_in_body_not_misclassified(self):
        # When a body contains a forward declaration like `static void foo(void* x);`,
        # `foo` IS a real dependency (will be called somewhere), and our regex
        # should pick it up via the trailing `(`. We assert this is registered.
        body = """
        static void foo(void* x);
        void caller() {
            register_handler(&foo);
        }
        """
        deps = self.extractor.extractDependFunctions("caller", body, ["foo"])
        self.assertIn("foo", deps)


class ExtractDependFunctionsCommentAndStringStripping(unittest.TestCase):
    def setUp(self):
        self.extractor = FunctionAndDepsExtractor(_Logger())

    def test_strips_block_comments(self):
        stripped = FunctionAndDepsExtractor._stripCommentsAndStringLiterals(
            "code /* foo() */ more"
        )
        self.assertNotIn("foo", stripped)
        self.assertIn("code", stripped)
        self.assertIn("more", stripped)

    def test_strips_line_comments(self):
        stripped = FunctionAndDepsExtractor._stripCommentsAndStringLiterals(
            "code // foo() bar()\nmore"
        )
        self.assertNotIn("foo", stripped)
        self.assertNotIn("bar", stripped)
        self.assertIn("more", stripped)

    def test_strips_string_literals_with_escapes(self):
        stripped = FunctionAndDepsExtractor._stripCommentsAndStringLiterals(
            r'puts("foo\"bar"); other()'
        )
        self.assertNotIn("foo", stripped)
        # string is replaced with empty pair, surrounding code preserved.
        self.assertIn("puts", stripped)
        self.assertIn("other", stripped)

    def test_strips_char_literals(self):
        stripped = FunctionAndDepsExtractor._stripCommentsAndStringLiterals(
            "if (c == 'f') { foo(); }"
        )
        self.assertIn("foo", stripped)  # foo is a real call, not in char literal


if __name__ == "__main__":
    unittest.main()
