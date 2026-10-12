import json
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

from functionAndDeps import FunctionAndDependencies
from gpt_translation import agent_mixin
from gpt_translation.agent_mixin import AgentTranslationMixin
from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.llm_utils_mixin import LLMUtilsMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
from type_registry import TypeKind


class _SilentLogger:
    def __getattr__(self, _name):
        return lambda *a, **k: None


def _call(name, callId="c1", **args):
    return types.SimpleNamespace(type="function_call", name=name, call_id=callId,
                                 arguments=json.dumps(args))


def _reply(*items, text=""):
    return types.SimpleNamespace(output=list(items), output_text=text)


class _ScriptedResponses:
    """Stands in for ``client.responses``: returns the scripted replies in
    order and keeps a snapshot of the input each request was sent with."""

    def __init__(self, replies):
        self.replies = list(replies)
        self.inputs = []

    def create(self, **kwargs):
        self.inputs.append(list(kwargs["input"]))
        return self.replies.pop(0)


class _AgentProbe(AgentTranslationMixin, CodeUtilsMixin, TranslationPipelineMixin, LLMUtilsMixin):
    def __init__(self, replies, compileResults=None):
        self.logger = _SilentLogger()
        self.dstLang = "Rust"
        self.srcLang = "C"
        self.model = "gpt-5.4-mini"
        self.systemPrompt = "system"
        self.maxCompletionTokens = 1000
        self.client = types.SimpleNamespace(responses=_ScriptedResponses(replies))
        self.compileResults = list(compileResults or [])
        self.compiled = []

    def compile(self, codeSnippet):
        self.compiled.append(codeSnippet)
        return self.compileResults.pop(0) if self.compileResults else (True, "")

    def cleanCode(self, code):
        return code

    def _sanitizeResultAgainstDependencies(self, snippet, *_a, **_k):
        return snippet

    def translateOne(self, targets=None):
        return self.compileAndRetryLoopforDepency(
            "callee", "Translate C to Rust.", "struct S;", "", "", "", "", "fn dep() {}",
            [], [], [], "int callee(char *p, int n) { return n; }",
            targetFunctions=targets,
        )


def _funcDeps(name, body):
    deps = FunctionAndDependencies(name)
    deps.setFuncCodeLines(body)
    return deps


_CALLER = "\n".join([
    "void caller(void) {",
    "    char buf[8];",
    "    int a = 1;",
    "    int b = 2;",
    "    int c = 3;",
    "    int r = callee(buf, sizeof buf);",
    "    use(r);",
    "}",
])


class AgentTranslationTest(unittest.TestCase):
    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()

    def tearDown(self):
        FunctionAndDependencies.resetTypeSystem()

    def _probe(self, replies, compileResults=None):
        probe = _AgentProbe(replies, compileResults)
        probe.agentFuncMap = {
            "callee": _funcDeps("callee", "int callee(char *p, int n) { return n; }"),
            "caller": _funcDeps("caller", _CALLER),
            "other": _funcDeps("other", "int other(void) { return 0; }"),
        }
        return probe

    def test_find_usages_shows_call_site_with_context_and_skips_the_definition(self):
        probe = self._probe([])
        out = probe._agentFindUsages("callee")
        self.assertIn("/* in caller() */", out)
        self.assertIn("int r = callee(buf, sizeof buf);", out)
        self.assertIn("int a = 1;", out)        # 3 lines above the call
        self.assertNotIn("char buf[8];", out)   # 4 lines above: outside the window
        self.assertNotIn("in callee()", out)
        self.assertNotIn("in other()", out)

    def test_find_usages_reports_function_pointer_in_a_type_definition(self):
        probe = self._probe([])
        FunctionAndDependencies.upsertTypeNode(
            TypeKind.STATIC, "table", c_code="static handler table[] = { other };")
        out = probe._agentFindUsages("other")
        self.assertIn("in the definition of table", out)
        self.assertIn("{ other }", out)

    def test_find_usages_of_an_uncalled_function_says_entry_point(self):
        probe = self._probe([])
        self.assertIn("entry point", probe._agentFindUsages("caller"))

    def test_tool_results_are_fed_back_and_submit_ends_the_loop(self):
        code = "pub fn callee(p: *mut u8, n: i32) -> i32 { n }"
        probe = self._probe([
            _reply(_call("find_usages", "c1", function="callee")),
            _reply(_call("submit", "c2", code=code)),
        ])
        (successFlag, result) = probe.translateOne()
        self.assertTrue(successFlag)
        self.assertEqual(result, code)
        secondInput = probe.client.responses.inputs[1]
        self.assertEqual(secondInput[-1]["type"], "function_call_output")
        self.assertEqual(secondInput[-1]["call_id"], "c1")
        self.assertIn("int r = callee(buf, sizeof buf);", secondInput[-1]["output"])
        # Compiled together with the dependency context, as the old path did.
        self.assertEqual(probe.compiled, ["struct S;\nfn dep() {}\n" + code])
        self.assertEqual(probe._agentReadRustFunction("callee"), code)

    def test_failed_submit_returns_the_error_and_the_fix_is_accepted(self):
        probe = self._probe(
            [_reply(_call("submit", "c1", code="fn callee() { bad }")),
             _reply(_call("submit", "c2", code="fn callee() {}"))],
            compileResults=[(False, "error[E0425]: cannot find value `bad`"), (True, "")],
        )
        (successFlag, result) = probe.translateOne()
        self.assertTrue(successFlag)
        self.assertEqual(result, "fn callee() {}")
        self.assertIn("E0425", probe.client.responses.inputs[1][-1]["output"])

    def test_code_in_a_text_reply_is_taken_as_a_submission(self):
        probe = self._probe([_reply(text="```rust\nfn callee() {}\n```")])
        (successFlag, result) = probe.translateOne()
        self.assertTrue(successFlag)
        self.assertIn("fn callee() {}", result)

    def test_gives_up_after_the_failed_submit_budget(self):
        budget = agent_mixin.COMPILATION_RETRIES + 1
        replies = [_reply(_call("submit", "c%d" % i, code="fn callee() { bad }")) for i in range(budget + 5)]
        probe = self._probe(replies, compileResults=[(False, "error")] * (budget + 5))
        (successFlag, result) = probe.translateOne()
        self.assertFalse(successFlag)
        self.assertEqual(result, "fn callee() { bad }")
        self.assertEqual(len(probe.client.responses.inputs), budget)

    def test_scc_group_records_every_member(self):
        code = "fn a() { b() }\nfn b() { a() }"
        probe = self._probe([_reply(_call("submit", "c1", code=code))])
        probe.translateOne(targets=["a", "b"])
        self.assertEqual(probe.agentRustBlocks, {"a": code, "b": code})
        self.assertIn("Function(s) to translate: a, b", probe.client.responses.inputs[0][1]["content"])

    def test_translators_with_their_own_sdk_stay_on_the_single_request_path(self):
        class _OtherSdk(_AgentProbe):
            def getResponse(self, request):
                raise AssertionError("not reached")
        self.assertTrue(self._probe([]).agentTranslationEnabled())
        self.assertFalse(_OtherSdk([]).agentTranslationEnabled())


if __name__ == "__main__":
    unittest.main()
