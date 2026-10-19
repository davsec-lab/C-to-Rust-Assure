import json
import os
import shutil
import stat
import sys
import tempfile
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

import testcase_backend
import testcase_crate
from gpt_translation import agent_mixin
from testcase_crate import TestCrate, classifyRun

# Stands in for the opencode binary: writes the next scripted test file to
# rust/out.rs, records what the agent could see, and prints the events
# `opencode run --format json` prints.
_FAKE_OPENCODE = r'''#!/usr/bin/env python3
import json, os, sys
state = os.environ["FAKE_OPENCODE_STATE"]
script = json.load(open(os.path.join(state, "script.json")))
log = os.path.join(state, "calls.jsonl")
n = sum(1 for _ in open(log)) if os.path.exists(log) else 0
seen = {}
for root, _dirs, files in os.walk("."):
    for name in files:
        path = os.path.relpath(os.path.join(root, name), ".")
        seen[path] = open(path, errors="replace").read()
with open(log, "a") as f:
    f.write(json.dumps({"argv": sys.argv[1:], "files": seen}) + "\n")
open("rust/out.rs", "w").write(script[min(n, len(script) - 1)])
print(json.dumps({"type": "text", "sessionID": "ses_1", "part": {"text": "done"}}))
print(json.dumps({"type": "step_finish", "sessionID": "ses_1",
                  "part": {"tokens": {"input": 10, "output": 5}, "cost": 0.25}}))
'''

# Stands in for a libtest binary built from the crate.
_FAKE_TEST_BINARY = r'''#!/usr/bin/env python3
import os, sys
if "--list" in sys.argv:
    print("tc_main_test::test_ok: test\ntc_main_test::test_bad: test\ntc_main_test::inner::test_nested: test")
    sys.exit(0)
name = sys.argv[sys.argv.index("--exact") + 1]
open("touched", "w").write(os.getcwd())
if name.endswith("test_bad"):
    print("thread 'main' panicked at 'assertion failed: ret == 1', src/testcases/tc_main_test.rs:9:5")
    print("note: run with `RUST_BACKTRACE=1` environment variable to display a backtrace")
    print("test result: FAILED. 0 passed; 1 failed; 0 ignored; 0 measured; 2 filtered out")
    sys.exit(101)
print("test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured; 2 filtered out")
'''


def _read(path):
    with open(path) as f:
        return f.read()


def _write(path, text, executable=False):
    os.makedirs(os.path.dirname(path), exist_ok=True)
    with open(path, "w") as f:
        f.write(text)
    if executable:
        os.chmod(path, os.stat(path).st_mode | stat.S_IXUSR)


class SuiteTest(unittest.TestCase):
    def setUp(self):
        self.dir = tempfile.mkdtemp(prefix="suite_test_")
        self.addCleanup(shutil.rmtree, self.dir, True)

    def test_rust_port_names_the_files_and_the_tests(self):
        _write(os.path.join(self.dir, "suite.json"), '{"link": ["crypto"]}')
        _write(os.path.join(self.dir, "c", "main_test.c"), "int main(void) { return 0; }\n")
        _write(os.path.join(self.dir, "c", "unity", "unity.c"), "int main(void) { return 0; }\n")
        _write(os.path.join(self.dir, "rust", "interfaces", "vm.rs"), "pub fn init() {}\n")
        _write(os.path.join(self.dir, "rust", "bin", "main_test.rs"),
               "#[test]\nfn first() {}\n// #[test]\n// fn gone() {}\n#[test]\n#[ignore]\npub fn second() {}\nfn main() {}\n")
        (config, files) = testcase_backend.loadSuite(self.dir)
        self.assertEqual(config, {"link": ["crypto"]})
        self.assertEqual([(f.name, f.module, f.tests) for f in files], [("main_test", "tc_main_test", ["first", "second"])])
        # The framework's own main is not a test of the project.
        self.assertEqual(files[0].sources, ["rust/bin/main_test.rs", "c/main_test.c"])
        task = testcase_backend.taskFor(files[0])
        self.assertIn("`tests/rust/bin/main_test.rs`", task)
        self.assertIn("- `first`", task)

    def test_c_tests_alone_are_one_file_each_with_tests_left_open(self):
        _write(os.path.join(self.dir, "c", "vm", "repo_test.c"), "int main(void) { return 0; }\n")
        _write(os.path.join(self.dir, "c", "helpers.c"), "int helper(void) { return 0; }\n")
        (_config, files) = testcase_backend.loadSuite(self.dir)
        self.assertEqual([(f.name, f.module, f.sources, f.tests) for f in files],
                         [("vm_repo_test", "tc_vm_repo_test", ["c/vm/repo_test.c"], None)])


class InterfaceTest(unittest.TestCase):
    """What the test agent is shown of the translation."""

    def test_bodies_go_and_everything_else_stays(self):
        source = (
            "use std::ptr;\n"
            "pub const SUCCESS: i32 = 1;\n"
            "#[repr(C)]\n"
            "pub struct repo { pub name: [u8; 80], pub cb: Option<unsafe extern \"C\" fn(a: i32) -> i32> }\n"
            "extern \"C\" {\n    fn RAND_bytes(buf: *mut u8, num: i32) -> i32;\n}\n"
            "pub unsafe extern \"C\" fn init_repo(\n    repo: *mut repo,\n) -> i32 {\n"
            "    fn helper() -> i32 { 7 }\n"
            "    let s = \"} not the end {\"; let c = '}'; // } nor this\n"
            "    /* nor } this /* nested } */ } */\n"
            "    let r = r#\"raw } \" } \"#;\n"
            "    (*repo).name[0] = b'}'; helper()\n"
            "}\n"
            "fn sum<'a, T: Fn(i32) -> i32>(xs: &'a [i32; 4], f: T) -> [i32; 2] where T: Copy { [f(xs[0]), 0] }\n"
            "impl repo {\n    pub fn new() -> Self { unsafe { std::mem::zeroed() } }\n}\n"
            "pub static mut COUNT: i32 = 0;\n")
        shown = testcase_backend.signaturesOnly(source)
        body = testcase_backend._BODY
        self.assertEqual(shown, (
            "use std::ptr;\n"
            "pub const SUCCESS: i32 = 1;\n"
            "#[repr(C)]\n"
            "pub struct repo { pub name: [u8; 80], pub cb: Option<unsafe extern \"C\" fn(a: i32) -> i32> }\n"
            "extern \"C\" {\n    fn RAND_bytes(buf: *mut u8, num: i32) -> i32;\n}\n"
            "pub unsafe extern \"C\" fn init_repo(\n    repo: *mut repo,\n) -> i32 " + body + "\n"
            "fn sum<'a, T: Fn(i32) -> i32>(xs: &'a [i32; 4], f: T) -> [i32; 2] where T: Copy " + body + "\n"
            "impl repo {\n    pub fn new() -> Self " + body + "\n}\n"
            "pub static mut COUNT: i32 = 0;\n"))

    def test_a_body_that_cannot_be_delimited_is_an_error_not_a_leak(self):
        with self.assertRaises(ValueError):
            testcase_backend.signaturesOnly("pub fn broken() -> i32 { if true { 1 }\n")


class CrateTest(unittest.TestCase):
    def test_translation_is_the_crate_root_and_tests_are_its_child_modules(self):
        crateDir = tempfile.mkdtemp(prefix="crate_test_")
        self.addCleanup(shutil.rmtree, crateDir, True)
        crate = TestCrate(crateDir, "pub fn add(a: i32) -> i32 { a + 1 }\n", ["nosuchlib_for_test"])
        crate.write({"tc_main_test": "use super::*;\n#[test]\nfn t() { assert_eq!(add(1), 2); }"})
        lib = _read(os.path.join(crateDir, "src", "lib.rs"))
        # Verbatim and first: line numbers in a compiler message are the translation's.
        self.assertTrue(lib.startswith("pub fn add(a: i32) -> i32 { a + 1 }\n"))
        self.assertIn('#[cfg(test)]\n#[path = "testcases/tc_main_test.rs"]\nmod tc_main_test;', lib)
        self.assertIn("overflow-checks = false", _read(os.path.join(crateDir, "Cargo.toml")))
        self.assertIn("cargo:rustc-link-arg=-lnosuchlib_for_test", _read(os.path.join(crateDir, "build.rs")))
        crate.linkLibs = []
        crate.write({})
        self.assertFalse(os.path.exists(os.path.join(crateDir, "build.rs")))
        self.assertEqual(os.listdir(os.path.join(crateDir, "src", "testcases")), [])

    def test_verdicts(self):
        self.assertEqual(classifyRun(0, False, "test result: ok. 1 passed; 0 failed; 0 ignored; 0 measured"), ("pass", ""))
        (verdict, detail) = classifyRun(101, False, "thread 'main' panicked at 'assertion failed: x',\n src/a.rs:5:5\n"
                                                    "note: run with `RUST_BACKTRACE=1`\n"
                                                    "test result: FAILED. 0 passed; 1 failed; 0 ignored;")
        self.assertEqual((verdict, detail), ("fail", "'assertion failed: x', src/a.rs:5:5"))
        self.assertEqual(classifyRun(-11, False, ""), ("crash", "SIGSEGV"))
        self.assertEqual(classifyRun(-9, True, "")[0], "timeout")
        self.assertEqual(classifyRun(0, False, "test result: ok. 0 passed; 0 failed; 1 ignored;")[0], "ignored")
        self.assertEqual(classifyRun(0, False, "test result: ok. 0 passed; 0 failed; 0 ignored;")[0], "missing")
        # The code under test called exit(): libtest never got to its summary.
        self.assertEqual(classifyRun(3, False, "bye")[0], "exit")

    def test_a_test_runs_alone_in_a_scratch_directory(self):
        work = tempfile.mkdtemp(prefix="run_test_")
        self.addCleanup(shutil.rmtree, work, True)
        binary = os.path.join(work, "bin")
        _write(binary, _FAKE_TEST_BINARY, executable=True)
        log = os.path.join(work, "t.log")
        self.assertEqual(testcase_crate.runTest(binary, "tc_main_test::test_ok", 30, log), ("pass", ""))
        self.assertIn("1 passed", _read(log))
        (verdict, detail) = testcase_crate.runTest(binary, "tc_main_test::test_bad", 30)
        self.assertEqual(verdict, "fail")
        self.assertIn("assertion failed: ret == 1", detail)
        self.assertFalse(os.path.exists(os.path.join(work, "touched")))


class ScoreTest(unittest.TestCase):
    """score() end to end, with OpenCode and cargo stood in for."""

    def setUp(self):
        self.root = tempfile.mkdtemp(prefix="score_test_")
        self.addCleanup(shutil.rmtree, self.root, True)
        self.state = os.path.join(self.root, "state")
        os.makedirs(self.state)
        _write(os.path.join(self.root, "opencode"), _FAKE_OPENCODE, executable=True)
        _write(os.path.join(self.root, "testbin"), _FAKE_TEST_BINARY, executable=True)
        _write(os.path.join(self.root, "fe", "merged_funcs.rs"), "pub fn init_repo() -> i32 { 1 }\n")
        _write(os.path.join(self.root, "fe", "run_config.json"),
               json.dumps({"llm": {"mode": "LLMModels.OPENCODE", "model": "openrouter/vendor/some-model"}}))
        _write(os.path.join(self.root, "codebase", "src", "repo.c"), "int init_repo(void) { return 1; }\n")
        _write(os.path.join(self.root, "suite", "c", "main_test.c"), "int main(void) { return 0; }\n")
        _write(os.path.join(self.root, "suite", "rust", "bin", "main_test.rs"),
               "#[test]\nfn test_ok() {}\n#[test]\nfn test_bad() {}\n#[test]\nfn test_nested() {}\n#[test]\nfn test_dropped() {}\n")
        os.environ["FAKE_OPENCODE_STATE"] = self.state
        self.addCleanup(os.environ.pop, "FAKE_OPENCODE_STATE", None)
        self.builds = []
        saved = (agent_mixin.OPENCODE_BIN, TestCrate.build)
        agent_mixin.OPENCODE_BIN = os.path.join(self.root, "opencode")
        self.buildResults = []

        def build(crate):
            modules = sorted(os.listdir(os.path.join(crate.dir, "src", "testcases")))
            self.builds.append((os.path.basename(crate.dir), modules))
            if self.buildResults:
                return self.buildResults.pop(0)
            return (True, os.path.join(self.root, "testbin"), "")

        TestCrate.build = build
        self.addCleanup(lambda: (setattr(agent_mixin, "OPENCODE_BIN", saved[0]), setattr(TestCrate, "build", saved[1])))

    def _score(self, script):
        _write(os.path.join(self.state, "script.json"), json.dumps(script))
        return testcase_backend.score(os.path.join(self.root, "fe"), os.path.join(self.root, "suite"),
                                      os.path.join(self.root, "codebase"), os.path.join(self.root, "out"))

    def _calls(self):
        with open(os.path.join(self.state, "calls.jsonl")) as f:
            return [json.loads(line) for line in f]

    def test_tests_are_translated_by_the_agent_then_run_and_scored(self):
        # Scaffold build, then the agent's first file is rejected, its second accepted, then the final build.
        self.buildResults = [(True, "x", ""), (False, None, "error[E0425]: src/testcases/tc_main_test.rs:3 nope\n"
                                                           "note: function defined here --> src/lib.rs:12:5")]
        result = self._score(["use super::*;\nbroken", "use super::*;\n#[test]\nfn test_ok() {}\n"])
        calls = self._calls()
        self.assertEqual(len(calls), 2)
        files = calls[0]["files"]
        # The agent sees the suite, the C it was written for, and the interface of the translation:
        # enough to call it, not enough to know what it gets wrong.
        self.assertIn("tests/rust/bin/main_test.rs", files)
        self.assertIn("tests/c/main_test.c", files)
        self.assertIn("c/src/repo.c", files)
        self.assertEqual(files["rust/context.rs"], "pub fn init_repo() -> i32 { /* body not shown */ }\n")
        self.assertFalse(any("{ 1 }" in text for text in files.values()))
        self.assertIn("- `test_dropped`", files["task.md"])
        self.assertIn("testcase_crate.py", files["check"])
        # The build error went back into the same session, under the workspace's file name.
        self.assertIn("--session", calls[1]["argv"])
        self.assertIn("rust/out.rs:3 nope", calls[1]["argv"][-1])
        # Line numbers of the full translation mean nothing in the interface the agent has.
        self.assertIn("defined here --> the translation", calls[1]["argv"][-1])
        self.assertEqual(result["model"], "openrouter/vendor/some-model")
        # Scored over the tests the suite has, not over what the agent kept.
        self.assertEqual(result["files"]["main_test"]["tests"],
                         {"test_ok": "pass", "test_bad": "fail", "test_nested": "pass", "test_dropped": "missing"})
        self.assertEqual((result["tests"], result["passed"], result["score"]), (4, 2, 0.5))
        self.assertEqual(result["opencode_runs"], 2)
        out = os.path.join(self.root, "out")
        self.assertEqual(json.loads(_read(os.path.join(out, "result.json")))["counts"], {"pass": 2, "fail": 1, "missing": 1})
        rows = _read(os.path.join(out, "tests.csv")).splitlines()
        self.assertEqual(rows[0], "file,test,verdict,detail")
        self.assertTrue(rows[2].startswith("main_test,test_bad,fail,"))
        self.assertTrue(os.path.exists(os.path.join(out, "logs", "main_test.test_bad.log")))
        self.assertEqual(_read(os.path.join(out, "crate", "src", "testcases", "tc_main_test.rs")),
                         "use super::*;\n#[test]\nfn test_ok() {}\n")

    def test_a_translation_that_does_not_build_is_scored_zero_without_asking_the_agent(self):
        self.buildResults = [(False, None, "error: expected item")]
        result = self._score(["unused"])
        self.assertFalse(os.path.exists(os.path.join(self.state, "calls.jsonl")))
        self.assertFalse(result["translation_builds"])
        self.assertEqual((result["tests"], result["passed"], result["score"]), (4, 0, 0.0))
        self.assertEqual(result["counts"], {"unbuilt": 4})

    def test_a_test_file_the_agent_cannot_get_to_build_counts_as_untranslated(self):
        self.buildResults = [(True, "x", "")] + [(False, None, "error: nope")] * 20
        saved = agent_mixin.COMPILATION_RETRIES
        agent_mixin.COMPILATION_RETRIES = 1
        self.addCleanup(setattr, agent_mixin, "COMPILATION_RETRIES", saved)
        result = self._score(["use super::*;\nbroken"])
        self.assertEqual(len(self._calls()), 2)
        self.assertEqual(result["counts"], {"untranslated": 4})
        self.assertEqual(result["score"], 0.0)


if __name__ == "__main__":
    unittest.main()
