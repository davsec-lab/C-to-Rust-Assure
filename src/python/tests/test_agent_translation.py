import json
import os
import stat
import sys
import tempfile
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
from gpt_translation.config import LLMModels
from gpt_translation.llm_utils_mixin import LLMUtilsMixin
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
from gpt_translation.translator import Translator
from type_registry import TranslationMode, TypeKind

# Stands in for the opencode binary. Each invocation appends its argv and a
# listing of what the agent could see to calls.jsonl, writes the next scripted
# result to rust/out.rs, and prints the events `opencode run --format json`
# prints. The script and the call log live beside the workspace's parent.
_FAKE_OPENCODE = r'''#!/usr/bin/env python3
import json, os, sys
state = os.environ["FAKE_OPENCODE_STATE"]
script = json.load(open(os.path.join(state, "script.json")))
log = os.path.join(state, "calls.jsonl")
n = sum(1 for _ in open(log)) if os.path.exists(log) else 0
step = script[min(n, len(script) - 1)]
seen = {}
for root, _dirs, files in os.walk("."):
    for name in files:
        path = os.path.relpath(os.path.join(root, name), ".")
        seen[path] = open(path, errors="replace").read()
with open(log, "a") as f:
    f.write(json.dumps({"argv": sys.argv[1:], "stdin_closed": sys.stdin.read() == "",
                        "home": os.environ.get("HOME"), "pwd": os.environ.get("PWD"),
                        "cwd": os.getcwd(), "files": seen}) + "\n")
if step.get("out") is not None:
    open("rust/out.rs", "w").write(step["out"])
def emit(kind, part):
    print(json.dumps({"type": kind, "sessionID": "ses_1", "part": part}))
if "error" in step:
    if step.get("out") is None and step["error"] is None:
        open("rust/out.rs", "w").write("")
    print(json.dumps({"type": "error", "sessionID": "ses_1",
                      "error": {"name": "APIError", "data": {"statusCode": step["error"], "message": "provider says no"}}}))
    sys.exit(1)
emit("tool_use", {"tool": "grep"})
emit("text", {"text": step.get("text", "done")})
emit("step_finish", {"tokens": {"input": 10, "output": 5, "reasoning": 2,
                                "cache": {"read": 100, "write": 0}}, "cost": 0.25})
sys.exit(step.get("exit", 0))
'''


class _SilentLogger:
    def __getattr__(self, _name):
        return lambda *a, **k: None


class _Tracker:
    def __init__(self):
        self.records = []

    def record(self, **kwargs):
        self.records.append(kwargs)


class _AgentProbe(AgentTranslationMixin, CodeUtilsMixin, SymbolExtractionMixin,
                  TranslationPipelineMixin, LLMUtilsMixin):
    def __init__(self, compileResults=None):
        self.logger = _SilentLogger()
        self.dstLang = "Rust"
        self.srcLang = "C"
        self.model = "openrouter/vendor/some-model"
        self.systemPrompt = "You are an expert."
        self.tokenTracker = _Tracker()
        self.compileResults = list(compileResults or [])
        self.compiled = []

    def compile(self, codeSnippet):
        self.compiled.append(codeSnippet)
        return self.compileResults.pop(0) if self.compileResults else (True, "")

    def cleanCode(self, code):
        return code

    def _sanitizeResultAgainstDependencies(self, snippet, *_a, **_k):
        return snippet


def _funcDeps(name, body):
    deps = FunctionAndDependencies(name)
    deps.setFuncCodeLines(body)
    return deps


class AgentTranslationTest(unittest.TestCase):
    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()
        self.tmp = tempfile.TemporaryDirectory()
        self.codebase = os.path.join(self.tmp.name, "codebase")
        self.outputDir = os.path.join(self.codebase, "individual-funcs_run")
        os.makedirs(self.outputDir)
        with open(os.path.join(self.codebase, "lib.c"), "w") as f:
            f.write("int callee(char *p, int n);\n")
        with open(os.path.join(self.codebase, "lib.ll"), "w") as f:
            f.write("; not a source file\n")
        with open(os.path.join(self.outputDir, "stale.i"), "w") as f:
            f.write("output of this run, not a source\n")
        self.state = os.path.join(self.tmp.name, "state")
        os.makedirs(self.state)
        fake = os.path.join(self.state, "opencode")
        with open(fake, "w") as f:
            f.write(_FAKE_OPENCODE)
        os.chmod(fake, os.stat(fake).st_mode | stat.S_IXUSR)
        self._saved = (agent_mixin.OPENCODE_BIN, agent_mixin.OPENROUTER_PROVIDER, os.environ.get("FAKE_OPENCODE_STATE"))
        self._backoff = agent_mixin._API_ERROR_BACKOFF
        agent_mixin.OPENCODE_BIN = fake
        os.environ["FAKE_OPENCODE_STATE"] = self.state

    def tearDown(self):
        agent_mixin.OPENCODE_BIN, agent_mixin.OPENROUTER_PROVIDER, state = self._saved
        agent_mixin._API_ERROR_BACKOFF = self._backoff
        if state is None:
            os.environ.pop("FAKE_OPENCODE_STATE", None)
        else:
            os.environ["FAKE_OPENCODE_STATE"] = state
        FunctionAndDependencies.resetTypeSystem()
        self.tmp.cleanup()

    def _probe(self, script, compileResults=None):
        with open(os.path.join(self.state, "script.json"), "w") as f:
            json.dump(script, f)
        probe = _AgentProbe(compileResults)
        probe.agentSetup({
            "callee": _funcDeps("callee", "int callee(char *p, int n) { return n; }"),
            "caller": _funcDeps("caller", "void caller(void) { char b[8]; callee(b, 8); }"),
        }, self.outputDir)
        return probe

    def _calls(self):
        with open(os.path.join(self.state, "calls.jsonl")) as f:
            return [json.loads(line) for line in f]

    def _translateFunction(self, probe, targets=None):
        return probe.compileAndRetryLoopforDepency(
            "callee", "Translate C to Rust.", "struct S;", "", "", "", "", "fn dep() {}",
            [], [], [], "int callee(char *p, int n) { return n; }",
            targetFunctions=targets,
        )

    def test_function_is_translated_in_a_workspace_holding_the_c_sources(self):
        code = "pub fn callee(p: *mut u8, n: i32) -> i32 { n }"
        FunctionAndDependencies.upsertTypeNode(TypeKind.STRUCT, "S", c_code="struct S { int x; };")
        before = "struct S;\nfn dep() {}\n"
        probe = self._probe([{"out": before + code}])
        probe.agentFile = before
        (successFlag, result) = self._translateFunction(probe)
        self.assertTrue(successFlag)
        self.assertEqual(result, code)
        self.assertEqual(probe.agentFile, before + code)

        (call,) = self._calls()
        files = call["files"]
        self.assertTrue(call["stdin_closed"])
        workspace = os.path.join(probe.agentRoot, "ws")
        self.assertEqual(os.path.realpath(call["cwd"]), os.path.realpath(workspace))
        self.assertEqual(call["pwd"], workspace)
        self.assertEqual(call["argv"][:3], ["run", "--format", "json"])
        self.assertIn("task.md", call["argv"][-1])
        # The sources to grep: the codebase's own files and one file per unit.
        self.assertIn("int callee(char *p, int n);", files["c/lib.c"])
        self.assertIn("callee(b, 8)", files["c/functions/caller.c"])
        self.assertIn("struct S { int x; };", files["c/types/struct_S.c"])
        self.assertNotIn("c/lib.ll", files)
        self.assertFalse(any("stale.i" in path for path in files))
        # The task, and what the result is compiled against.
        self.assertIn("int callee(char *p, int n) { return n; }", files["task.md"])
        self.assertTrue(files["task.md"].startswith("Translate the C function callee to Rust and add it to rust/out.rs."))
        # The agent edits the translation so far in place.
        self.assertEqual(files["rust/out.rs"], before)
        self.assertEqual(files["rust/context.rs"], "")
        self.assertIn("in place", call["argv"][-1])
        self.assertIn("You are an expert.", files["AGENTS.md"])
        config = json.loads(files["opencode.json"])
        self.assertEqual(config["model"], "openrouter/vendor/some-model")
        self.assertEqual(config["small_model"], "openrouter/vendor/some-model")
        self.assertNotIn("provider", config)
        self.assertEqual(config["permission"]["bash"]["*"], "deny")
        self.assertEqual(config["permission"]["bash"]["./check"], "allow")
        # The pipeline's own verdict is on the edited file.
        self.assertEqual(probe.compiled, [before + code])
        # A private home, outside the workspace the agent searches.
        self.assertTrue(call["home"].startswith(probe.agentRoot))
        self.assertFalse(call["home"].startswith(os.path.join(probe.agentRoot, "ws")))

    def test_rejected_result_goes_back_into_the_same_session(self):
        probe = self._probe(
            [{"out": "fn callee() { bad }"}, {"out": "fn callee() {}"}],
            compileResults=[(False, "error[E0425]: cannot find value `bad`"), (True, "")],
        )
        (successFlag, result) = self._translateFunction(probe)
        self.assertTrue(successFlag)
        self.assertEqual(result, "fn callee() {}")
        (first, second) = self._calls()
        self.assertNotIn("--session", first["argv"])
        self.assertEqual(second["argv"][3:5], ["--session", "ses_1"])
        self.assertIn("E0425", second["argv"][-1])
        self.assertNotIn("task.md", second["argv"][-1])
        self.assertEqual([r["kind"] for r in probe.tokenTracker.records],
                         ["agent_function", "agent_function_retry"])

    def test_gives_up_after_the_compile_retry_budget(self):
        budget = agent_mixin.COMPILATION_RETRIES + 1
        probe = self._probe([{"out": "fn callee() { bad }"}], compileResults=[(False, "error")] * (budget + 3))
        (successFlag, result) = self._translateFunction(probe)
        self.assertFalse(successFlag)
        self.assertEqual(result, "fn callee() { bad }")
        self.assertEqual(len(self._calls()), budget)

    def test_code_in_the_reply_is_used_when_the_file_was_not_written(self):
        probe = self._probe([{"out": None, "text": "```rust\nfn callee() {}\n```"}])
        (successFlag, result) = self._translateFunction(probe)
        self.assertTrue(successFlag)
        self.assertIn("fn callee() {}", result)

    def test_usage_and_cost_are_recorded(self):
        probe = self._probe([{"out": "fn callee() {}"}])
        self._translateFunction(probe)
        (record,) = probe.tokenTracker.records
        usage = record["completion"].usage
        self.assertEqual((usage.input_tokens, usage.output_tokens, usage.cache_read_input_tokens), (10, 7, 100))
        with open(os.path.join(self.outputDir, "agent_logs", "spend.json")) as f:
            self.assertEqual(json.load(f)["opencode_reported_cost_usd"], 0.25)
        self.assertTrue(os.path.isfile(os.path.join(self.outputDir, "agent_logs", "0001_callee.jsonl")))

    def test_provider_error_is_waited_out(self):
        agent_mixin._API_ERROR_BACKOFF = (0, 0, 0)
        probe = self._probe([{"error": 429}, {"error": 503}, {"out": "fn callee() {}"}])
        (successFlag, _result) = self._translateFunction(probe)
        self.assertTrue(successFlag)
        self.assertEqual(len(self._calls()), 3)

    def test_unit_budget_stops_further_attempts(self):
        saved = agent_mixin.AGENT_UNIT_TIMEOUT
        agent_mixin.AGENT_UNIT_TIMEOUT = -1
        try:
            probe = self._probe([{"out": "fn callee() { bad }"}], compileResults=[(False, "error")] * 9)
            (successFlag, _result) = self._translateFunction(probe)
        finally:
            agent_mixin.AGENT_UNIT_TIMEOUT = saved
        self.assertFalse(successFlag)
        self.assertEqual(len(self._calls()), 1)

    def test_opencode_abort_without_http_status_is_not_waited_out(self):
        agent_mixin._API_ERROR_BACKOFF = (10 ** 6,)
        probe = self._probe([{"error": None, "out": "fn callee() {}"}])
        (successFlag, _result) = self._translateFunction(probe)
        self.assertTrue(successFlag)

    def test_no_credit_aborts_the_run_at_once(self):
        probe = self._probe([{"error": 402}])
        with self.assertRaises(RuntimeError):
            self._translateFunction(probe)
        self.assertEqual(len(self._calls()), 1)

    def test_openrouter_host_is_pinned_without_fallback(self):
        agent_mixin.OPENROUTER_PROVIDER = "siliconflow"
        probe = self._probe([{"out": "fn callee() {}"}])
        options = probe._agentOpenCodeConfig()["provider"]["openrouter"]["models"]["vendor/some-model"]["options"]
        self.assertEqual(options["provider"], {"order": ["siliconflow"], "allow_fallbacks": False})
        agent_mixin.OPENROUTER_PROVIDER = "siliconflow, deepinfra"
        options = probe._agentOpenCodeConfig()["provider"]["openrouter"]["models"]["vendor/some-model"]["options"]
        self.assertEqual(options["provider"]["order"], ["siliconflow", "deepinfra"])

    def test_output_limit_is_declared_for_the_model(self):
        probe = self._probe([{"out": "fn callee() {}"}])
        saved = agent_mixin.OPENCODE_OUTPUT_LIMIT
        agent_mixin.OPENCODE_OUTPUT_LIMIT = 16384
        try:
            model = probe._agentOpenCodeConfig()["provider"]["openrouter"]["models"]["vendor/some-model"]
        finally:
            agent_mixin.OPENCODE_OUTPUT_LIMIT = saved
        self.assertEqual(model["limit"]["output"], 16384)

    def test_type_batch_is_one_agent_trial_and_a_failed_one_leaves_the_file_alone(self):
        node = FunctionAndDependencies.upsertTypeNode(TypeKind.STRUCT, "S", c_code="struct S { int x; };")
        rust = "pub type T = i32;\n#[repr(C)]\npub struct S {\n    pub x: i32,\n}\n"
        probe = self._probe([{"out": rust}], compileResults=[(False, "error")] * 20)
        probe.agentFile = "pub type T = i32;\n"
        probe._translateTypeBatchWithLlm([node], "", [], [], None)
        # The agent used its whole repair budget inside one session; the
        # single-request path's six fresh trials are not stacked on top.
        self.assertEqual(len(self._calls()), agent_mixin.COMPILATION_RETRIES + 1)
        self.assertEqual(probe.agentFile, "pub type T = i32;\n")

    def test_type_batch_edits_the_translation_so_far(self):
        # tisp, xopt: the batches of `__gnuc_va_list` and `va_list` do not
        # depend on each other; checked apart, each wrote its own
        # `__va_list_tag`. In the one file, the second finds the first's.
        before = "pub struct __va_list_tag { pub gp_offset: u32 }\npub type __gnuc_va_list = [__va_list_tag; 1];\n"
        edited = before + "pub type va_list = [__va_list_tag; 1];\n"
        node = FunctionAndDependencies.upsertTypeNode(TypeKind.TYPEDEF, "va_list", c_code="typedef __builtin_va_list va_list;")
        probe = self._probe([{"out": edited}])
        probe.agentFile = before
        probe._translateTypeBatchWithLlm([node], "", [], [], None)
        files = self._calls()[0]["files"]
        self.assertEqual(files["rust/out.rs"], before)
        self.assertIn("typedef __builtin_va_list va_list;", files["task.md"])
        # Instructions for laying out a reply are for the single-request path.
        self.assertNotIn("Final result code", files["task.md"])
        self.assertNotIn("header files", files["task.md"])
        self.assertEqual(probe.compiled, [edited])
        self.assertEqual(probe.agentFile, edited)

    def test_type_batch_gives_no_usage_examples(self):
        # The agent greps c/ for how a field is used; the pipeline's examples
        # are for the single-request path.
        node = FunctionAndDependencies.upsertTypeNode(
            TypeKind.STRUCT, "s_buf", c_code="struct s_buf { void *buffer; };",
            translation_mode=TranslationMode.RICH_STRUCT)
        node.usageList = {"buffer": ["char *b = cBuf->buffer"]}
        probe = self._probe([{"out": "pub struct s_buf { pub buffer: *mut u8 }\n"}])
        probe._translateTypeBatchWithLlm([node], "", [], [], None)
        task = self._calls()[0]["files"]["task.md"]
        self.assertIn("struct s_buf { void *buffer; };", task)
        self.assertNotIn("cBuf->buffer", task)
        self.assertNotIn("example usage", task)

    def test_function_task_names_the_callees_signatures_as_a_hint(self):
        before = "pub fn dep(x: i32,\n           y: i32) -> i32 { x + y }\n"
        probe = self._probe([{"out": before + "fn callee() { dep(1, 2); }\n"}])
        probe.agentFile = before
        probe.compileAndRetryLoopforDepency(
            "callee", "", "", "", "", "", "", "", ["dep", "gone", "callee"], [], [],
            "int callee(void) { return dep(1, 2) + gone(); }")
        task = self._calls()[0]["files"]["task.md"]
        self.assertIn("pub fn dep(x: i32, y: i32) -> i32\n", task)
        self.assertIn("Not in rust/out.rs: gone\n", task)
        self.assertNotIn("x + y", task)

    def test_type_batch_left_unchanged_passes_only_if_the_file_has_it(self):
        node = FunctionAndDependencies.upsertTypeNode(TypeKind.TYPEDEF, "va_list", c_code="typedef __builtin_va_list va_list;")
        probe = self._probe([{"out": "pub type other = i32;\n"}] * 3 + [{"out": "pub type va_list = u8;\n"}])
        probe.agentFile = "pub type other = i32;\n"
        probe._translateTypeBatchWithLlm([node], "", [], [], None)
        self.assertIn("does not define va_list", self._calls()[1]["argv"][-1])
        self.assertEqual(probe.agentFile, "pub type va_list = u8;\n")

    def test_type_batch_keeps_the_helper_items_the_agent_wrote(self):
        node = FunctionAndDependencies.upsertTypeNode(TypeKind.STRUCT, "S", c_code="struct S { int x; };")
        rust = "pub struct Helper(i32);\n#[repr(C)]\npub struct S {\n    pub x: Helper,\n}\n"
        probe = self._probe([{"out": rust}])
        probe._translateTypeBatchWithLlm([node], "", [], [], None)
        probe.agentFinishTypes()
        self.assertIn("Helper(i32)", node.rustCode)

    def test_every_type_node_holds_the_whole_file_once_the_types_are_done(self):
        # tisp: `typedef struct Val *Val;` - a struct tag and a typedef of the
        # same name, which Rust cannot hold as two items called Val.
        tag = FunctionAndDependencies.upsertTypeNode(TypeKind.STRUCT, "Val", c_code="struct Val { int x; };")
        alias = FunctionAndDependencies.upsertTypeNode(TypeKind.TYPEDEF, "Val", c_code="typedef struct Val *Val;")
        size = FunctionAndDependencies.upsertTypeNode(TypeKind.TYPEDEF, "size_t", c_code="typedef unsigned long size_t;")
        rust = "#[repr(C)]\npub struct Val_s {\n    pub x: i32,\n}\npub type Val = *mut Val_s;\n"
        probe = self._probe([{"out": rust}])
        probe._translateTypeBatchWithLlm([tag, alias], "", [], [], None)
        size.rustCode = "pub type size_t = usize;"
        probe.agentAppendType(size)
        probe.agentFinishTypes()
        self.assertEqual({tag.rustCode, alias.rustCode, size.rustCode}, {probe.agentFile})
        self.assertIn("pub type size_t = usize;", probe.agentFile)
        context = probe._buildTranslatedTypeContext([tag.key, alias.key, size.key])
        self.assertEqual(context.count("pub struct Val_s"), 1)

    def test_a_resolved_typedef_the_agent_already_wrote_is_not_added_again(self):
        node = FunctionAndDependencies.upsertTypeNode(TypeKind.TYPEDEF, "size_t", c_code="typedef unsigned long size_t;")
        probe = self._probe([{"out": "fn unused() {}"}])
        probe.agentFile = "pub type size_t = libc::size_t;\n"
        node.rustCode = "pub type size_t = usize;"
        probe.agentAppendType(node)
        self.assertEqual(probe.agentFile, "pub type size_t = libc::size_t;\n")

    def test_function_that_drops_an_earlier_function_is_rejected(self):
        probe = self._probe([{"out": "fn callee() {}\n"}, {"out": "fn dep() {}\nfn callee() {}\n"}])
        probe.agentFile = "fn dep() {}\n"
        (successFlag, result) = self._translateFunction(probe)
        self.assertTrue(successFlag)
        self.assertIn("no longer has dep", self._calls()[1]["argv"][-1])
        self.assertEqual(result, "fn callee() {}")
        self.assertEqual(probe.agentFile, "fn dep() {}\nfn callee() {}\n")

    def test_a_c_name_that_is_a_rust_keyword_is_accepted_as_a_raw_identifier(self):
        # worsp's `match`: Rust can only spell it r#match.
        probe = self._probe([{"out": "fn dep() {}\nfn r#match(s: i32) -> i32 { s }\n"}])
        probe.agentFile = "fn dep() {}\n"
        (successFlag, result) = probe.compileAndRetryLoopforDepency(
            "match", "", "", "", "", "", "", "", [], [], [], "int match(int s) { return s; }")
        self.assertTrue(successFlag)
        self.assertEqual(result, "fn r#match(s: i32) -> i32 { s }")
        self.assertIn("match", probe._agentFunctionNames(probe.agentFile))

    def test_a_stubbed_function_is_rejected(self):
        probe = self._probe([{"out": "fn callee() { todo!() }\n"}, {"out": "fn callee() {}\n"}])
        (successFlag, _result) = self._translateFunction(probe)
        self.assertTrue(successFlag)
        self.assertIn("todo!() or unimplemented!() in callee", self._calls()[1]["argv"][-1])

    def test_merged_file_is_the_file_the_agents_edited(self):
        probe = self._probe([{"out": "pub type T = i32;\nfn callee() {}\n"}])
        probe.agentFile = "pub type T = i32;\n"
        self._translateFunction(probe)
        self.assertEqual(probe._mergedFileText("pieces the pipeline put together"),
                         "pub type T = i32;\nfn callee() {}\n")

    def test_a_function_whose_callee_failed_is_not_sent_to_the_agent(self):
        # callee is in the run's function map and came before caller, but is
        # not in the file: its translation failed.
        probe = self._probe([{"out": "fn caller() {}\n"}])
        probe.agentFile = "fn other() {}\n"
        (successFlag, result) = probe.compileAndRetryLoopforDepency(
            "caller", "", "", "", "", "", "", "", ["callee", "strlen"], [], [],
            "void caller(void) { callee(0, 0); }")
        self.assertFalse(successFlag)
        self.assertEqual(result, "")
        self.assertFalse(os.path.exists(os.path.join(self.state, "calls.jsonl")))

    def test_a_callee_outside_the_function_map_does_not_stop_the_unit(self):
        # strlen and the like, or a function the pipeline skipped: the agent
        # is told it is not in the file and decides.
        probe = self._probe([{"out": "fn callee() {}\n"}])
        (successFlag, _result) = probe.compileAndRetryLoopforDepency(
            "callee", "", "", "", "", "", "", "", ["strlen"], [], [], "int callee(void) { return 0; }")
        self.assertTrue(successFlag)
        self.assertIn("Not in rust/out.rs: strlen", self._calls()[0]["files"]["task.md"])

    def test_rejection_shows_the_errors_not_the_warnings(self):
        warnings = "".join(
            "warning: type `t%d` should have an upper camel case name\n --> src/lib.rs:%d:10\n  |\n\n" % (i, i)
            for i in range(40))
        err = (warnings + "error[E0308]: mismatched types\n --> src/lib.rs:90:5\n   |\n90 |     x\n   |     ^ expected `u8`\n\n"
               + "error: could not compile `c` due to previous error; 40 warnings emitted\n")
        probe = self._probe([{"out": "fn callee() {}\n"}] * 2, compileResults=[(False, err), (True, "")])
        self._translateFunction(probe)
        feedback = self._calls()[1]["argv"][-1]
        self.assertIn("expected `u8`", feedback)
        self.assertIn("could not compile", feedback)
        self.assertNotIn("upper camel case", feedback)

    def test_requests_without_a_hook_still_go_through_the_agent(self):
        probe = self._probe([{"out": "fn anything() {}"}])
        self.assertEqual(probe.chunkAndSend("misc", "Do something."), "fn anything() {}")
        self.assertEqual(self._calls()[0]["files"]["task.md"], "Do something.")

    def test_compile_check_adds_no_imports_for_an_agent(self):
        from gpt_translation import code_utils_mixin
        written = []

        def fakeRun(cmd, cwd=None, **_kwargs):
            with open(os.path.join(cwd, "src", "lib.rs")) as f:
                written.append(f.read())
            return types.SimpleNamespace(returncode=0, stdout="", stderr="")

        class _Plain(CodeUtilsMixin):
            logger = _SilentLogger()

        class _Agent(AgentTranslationMixin, CodeUtilsMixin):
            logger = _SilentLogger()

        saved = code_utils_mixin.subprocess.run
        code_utils_mixin.subprocess.run = fakeRun
        try:
            _Plain().compileWithCargoProject("fn f() {}")
            _Agent().compileWithCargoProject("fn f() {}")
        finally:
            code_utils_mixin.subprocess.run = saved
        self.assertIn("use libc::{", written[0])
        self.assertEqual(written[1], "fn f() {}")

    def test_opencode_mode_string_selects_the_agent_translator(self):
        self.assertEqual(Translator.getLLMModel("opencode:openrouter/vendor/some-model"), LLMModels.OPENCODE)
        self.assertEqual(Translator.openCodeModel, "openrouter/vendor/some-model")
        self.assertEqual(Translator.getLLMModel("gpt-5-mini"), LLMModels.GPT_5_MINI)


if __name__ == "__main__":
    unittest.main()
