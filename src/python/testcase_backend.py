#!/usr/bin/env python3
"""Test-case backend: score a translation with the tests its C project ships.

    python3 testcase_backend.py --src <frontend dir> --suite <suite dir> \\
        --codebase <codebase dir> -o <out dir> [--llm-mode opencode:<provider/model>]

The tests cannot run against the translation as they are: they were written
for the C API, or (CRUST-bench) ported by hand to a Rust interface the
translation does not have. An OpenCode agent translates each test file onto
the API the translation actually has; every test is then run on its own, and
the score is the share that pass.

The agent is shown the interface of the translation and nothing else: types,
constants and globals as they are, every function as its signature. That is
all a test needs in order to call the translation, and an agent that cannot
see what a function does cannot write a test that steps around what it does
wrong.

A suite directory:

    suite.json   optional: {"link": ["crypto"], "timeout": 60}
                 link     native libraries the translation's extern functions
                          come from
                 timeout  seconds one test may run
    c/           the C tests of the project
    rust/        optional: the same tests in Rust, written for another
                 interface (CRUST-bench RBench: src/bin/*.rs; that interface
                 under rust/interfaces/)

One test file is one unit of work for the agent and one test module of the
crate. With a `rust/` version the files and test names are taken from it;
without one, every C file with a `main` is a test file and its tests are
whatever the agent's translation of it defines.

Written to <out dir>:

    result.json   tests, passed, score, verdict counts, agent spend
    tests.csv     one row per test: file, test, verdict, detail
    crate/        the crate that was run: the translation plus the translated
                  tests (`cargo test` in it repeats the run)
    logs/         output of every test
    agent_logs/   the OpenCode sessions
"""
import argparse
import atexit
import csv
import json
import os
import re
import shutil
import sys
import tempfile

import loggerFactory
from gpt_translation.agent_mixin import _C_SOURCE_SIZE_LIMIT, AgentTranslationMixin
from gpt_translation.code_utils_mixin import CodeUtilsMixin
from testcase_crate import TestCrate, checkModule, listTests, runTest, writeCheck

DEFAULT_TEST_TIMEOUT = 60
# Test frameworks and build output that travel with a C test directory.
_NOT_TESTS = ("unity", "cmake", "build")
# A test that ran to a verdict of its own; the rest never got that far.
RAN = ("pass", "fail", "crash", "timeout", "exit")

_AGENTS_MD = """# Test translation workspace

A C codebase was translated to Rust by a machine. Its test suite is being
carried over to that translation, one test file per task, so that the
translation can be scored by the tests the C code was written to pass. A test
that checks less than its source, or that was bent to fit the translation,
makes the score meaningless.

The task itself is in `task.md`.

## Layout

- `tests/` - the test suite as the project ships it. `tests/c/` holds the C
  tests. `tests/rust/`, when it exists, holds the same tests in Rust, written
  by hand for a different Rust interface (`tests/rust/interfaces/`); the
  translation does not have that interface.
- `c/` - the C sources of the codebase the tests were written for.
- `rust/context.rs` - the interface of the translation under test: its types,
  constants and globals in full, and every function as its signature. The
  bodies are not shown. The translation is the crate root, and your test file
  is compiled as a child module of it.
- `rust/out.rs` - write the translated test file here.
- `./check` - builds the translation with `rust/out.rs` as its test module,
  without running anything. Prints `OK` or the rustc errors. It is the only
  shell command you can run; search and read with the grep, glob and read
  tools.

## How to work

1. Read `task.md`, then the test file it names, helpers included.
2. For every operation the tests perform, find its counterpart in
   `rust/context.rs` and read its signature and the fields of the structs it
   takes. What a function does is what the C function it was translated from
   does: read the C in `c/` for what a return value means, which value is
   success, which is failure, what is written through which pointer.
3. Write `rust/out.rs`, run `./check`, and fix it until it prints `OK`.
4. Stop. Reply with one line.

## Rules

- Keep every test, as a `#[test]` function at the top level of the file,
  under its name. Add none.
- Keep each scenario: the same inputs, the same operations in the same order,
  the same files and directories.
- Give every call the arguments its source gives it. Where the C test passes
  `NULL`, pass a null pointer.
- Keep every check, with the same expected value. A check on the other
  interface's result (`is_ok()`, `is_some()`, an `Err`) becomes a check on the
  value the translation returns, under the convention of the C code. Read that
  convention off the C source; do not guess it. Never drop a check, never
  loosen one, never assert something that cannot fail.
- A C test that only reports success (`if (f() == OK) printf("done")`) checks
  that success: assert it.
- Glue is yours to write: C-style structs, `CString`s and buffers, `unsafe`
  blocks, pointer casts, cleanup.
- Never reimplement, wrap around or patch the code under test, and define no
  function that the translation defines. Whether the translation is right is
  what the test is there to show: write the test as its source has it.
- You cannot run the tests, and whether they pass is not yours to manage.
  `./check` printing `OK` means the file compiles, nothing more.
- When an operation of a test has no counterpart at all in the translation,
  keep the test, mark it `#[ignore = "UNMAPPED: <what is missing>"]`, and
  leave a body that would make the check if the counterpart existed.
- Start the file with `use super::*;`: it brings every item of the
  translation into scope, private ones included. Write every other `use` the
  file needs. Only `std` and the `libc` crate are available.
- Each test runs alone, in its own process, with an empty scratch directory
  as its working directory. A path from the author's machine
  (`/home/someone/...`) becomes a path under that directory; create what the
  test expects to exist.
- Edit nothing except `rust/out.rs`. Work only inside this directory. Do not
  use the network.
"""


# ── the suite ────────────────────────────────────────────────────────────────


class TestFile:
    __test__ = False

    def __init__(self, name, sources, tests):
        self.name = name
        self.module = "tc_" + re.sub(r"\W", "_", name)
        self.sources = sources      # paths inside the suite, the one to translate first
        self.tests = tests          # names of its tests; None when only the translation tells


def _walk(root, suffix):
    found = []
    for (dirPath, dirNames, fileNames) in os.walk(root):
        dirNames[:] = sorted(d for d in dirNames if d.lower() not in _NOT_TESTS)
        found += [os.path.join(dirPath, f) for f in sorted(fileNames) if f.endswith(suffix)]
    return found


def _read(path):
    with open(path, errors="replace") as f:
        return f.read()


def testFunctionNames(source):
    """Names of the ``#[test]`` functions of a Rust file, in order."""
    source = re.sub(r"//[^\n]*", "", source)
    return re.findall(r"#\[test\]\s*(?:#\[[^\n]*\]\s*)*(?:pub\s+)?(?:unsafe\s+)?fn\s+(\w+)", source)


def loadSuite(suiteDir):
    """Returns ``(config, [TestFile])``."""
    config = {}
    if os.path.isfile(os.path.join(suiteDir, "suite.json")):
        with open(os.path.join(suiteDir, "suite.json")) as f:
            config = json.load(f)
    rel = lambda path: os.path.relpath(path, suiteDir)
    cTests = [p for p in _walk(os.path.join(suiteDir, "c"), ".c") if re.search(r"\bmain\s*\(", _read(p))]
    files = []
    for path in _walk(os.path.join(suiteDir, "rust"), ".rs"):
        names = testFunctionNames(_read(path))
        if not names:
            continue
        stem = os.path.splitext(os.path.basename(path))[0]
        # The C file a Rust test file was ported from carries its name; when
        # none does, the agent gets all of them.
        origin = [c for c in cTests if os.path.splitext(os.path.basename(c))[0] == stem] or cTests
        files.append(TestFile(stem, [rel(path)] + [rel(c) for c in origin], names))
    if not files:
        files = [TestFile(re.sub(r"\W", "_", os.path.splitext(os.path.relpath(c, os.path.join(suiteDir, "c")))[0]),
                          [rel(c)], None) for c in cTests]
    for (i, testFile) in enumerate(files):
        # Same file name in two directories.
        if any(other.module == testFile.module for other in files[:i]):
            (testFile.name, testFile.module) = ("%s_%d" % (testFile.name, i), "%s_%d" % (testFile.module, i))
    return (config, files)


def taskFor(testFile):
    (first, others) = (testFile.sources[0], testFile.sources[1:])
    task = ("# Translate the test file `%s`\n\n"
            "Write `rust/out.rs`: the tests of `tests/%s`, as a Rust test file that runs against the "
            "translation whose interface is in `rust/context.rs`.\n" % (testFile.name, first))
    if first.endswith(".rs"):
        task += ("\n`tests/%s` was written for another Rust interface, which the translation does not have. "
                 "It settles which tests there are, what each does and what each checks.\n" % first)
        if others:
            task += ("\nThe C tests it was ported from show the same calls against the C API the translation "
                     "was made from:\n" + "".join("- `tests/%s`\n" % o for o in others))
    else:
        task += ("\nOne `#[test]` function per test of the C file: per test function its `main` runs, named "
                 "after that function. A file whose `main` is the test itself is one `#[test]` function.\n")
    if testFile.tests:
        task += "\n`rust/out.rs` must define these `#[test]` functions:\n" + "".join(
            "- `%s`\n" % name for name in testFile.tests)
    return task


# ── what the agent sees of the translation ───────────────────────────────────

_BODY = "{ /* body not shown */ }"
_LITERAL_RE = re.compile(r'''
      //[^\n]*                          # line comment
    | /\*                               # block comment; Rust nests them
    | b?r(\#*)"                         # raw string
    | b?"(?:[^"\\]|\\.)*"              # string
    | b?'(?:[^'\\\n]|\\[^\n]+?)'       # character; a lifetime ('a) never closes
''', re.X | re.S)


def _blank(source):
    """``source`` with its comments and its string and character literals
    replaced by spaces, offsets and line breaks unchanged: what is left of a
    `{` or a `fn` is code."""
    out, at = [], 0
    while True:
        m = _LITERAL_RE.search(source, at)
        if not m:
            break
        end = m.end()
        if m.group(0) == "/*":
            depth = 1
            while depth:
                edge = re.compile(r"/\*|\*/").search(source, end)
                if not edge:
                    end = len(source)
                    break
                depth += 1 if edge.group(0) == "/*" else -1
                end = edge.end()
        elif m.group(1) is not None:
            close = source.find('"' + m.group(1), end)
            end = len(source) if close < 0 else close + 1 + len(m.group(1))
        out += [source[at:m.start()], re.sub(r"[^\n]", " ", source[m.start():end])]
        at = end
    return "".join(out) + source[at:]


def signaturesOnly(source):
    """``source`` with the body of every function replaced by a marker.
    Everything else stays as written: the test agent needs each type,
    constant and signature to call the translation, and must not see what a
    function does. A body that cannot be delimited raises, since leaving it
    in would defeat the point without anyone noticing."""
    code = _blank(source)
    out, at = [], 0
    for m in re.finditer(r"\bfn\s+\w+", code):
        if m.start() < at:
            continue    # inside a body already cut: a nested function
        (brackets, i) = (0, m.end())
        while i < len(code) and not (brackets == 0 and code[i] in "{;"):
            brackets += (code[i] in "([") - (code[i] in ")]")
            i += 1
        if i == len(code) or code[i] == ";":
            continue    # a declaration: there is no body
        (depth, end) = (0, i)
        while end < len(code):
            depth += (code[end] == "{") - (code[end] == "}")
            if depth == 0:
                break
            end += 1
        if depth:
            raise ValueError("cannot find the end of the body of `%s`" % m.group(0))
        out.append(source[at:i] + _BODY)
        at = end + 1
    return "".join(out) + source[at:]


# ── the agent ────────────────────────────────────────────────────────────────


class TestTranslationAgent(AgentTranslationMixin, CodeUtilsMixin):
    """The OpenCode sessions of AgentTranslationMixin, in a workspace laid out
    for translating tests: one session per test file, and the test build as
    both its ``./check`` and the verdict on what it wrote."""

    srcLang = "C"
    dstLang = "Rust"

    def __init__(self, logger, model, codebasePath, suiteDir, checkDir, logDir):
        self.logger = logger
        self.model = model
        self.agentCodebasePath = codebasePath
        self.suiteDir = suiteDir
        self.checkDir = checkDir
        self.agentLogDir = logDir
        os.makedirs(logDir, exist_ok=True)
        self.agentRunCount = 0
        self.agentCostUsd = 0.0
        self.agentRoot = None

    def _agentPopulateWorkspace(self, ws):
        self._agentCopyCodebase(ws)
        for (dirPath, _dirNames, fileNames) in os.walk(self.suiteDir):
            for fileName in fileNames:
                src = os.path.join(dirPath, fileName)
                if os.path.getsize(src) > _C_SOURCE_SIZE_LIMIT:
                    continue
                dst = os.path.join(ws, "tests", os.path.relpath(src, self.suiteDir))
                os.makedirs(os.path.dirname(dst), exist_ok=True)
                shutil.copyfile(src, dst)
        with open(os.path.join(ws, "AGENTS.md"), "w") as f:
            f.write(_AGENTS_MD)
        self._agentWriteCheck(ws, os.path.join(os.path.dirname(os.path.abspath(__file__)), "testcase_crate.py"),
                              self.checkDir)

    def translateTestFile(self, testFile, interface):
        """Returns the translated test file, or None when the agent produced
        nothing that builds. ``interface`` is what the agent is shown of the
        translation; the build is against all of it."""

        def check(code):
            (successFlag, message) = checkModule(self.checkDir, code)
            return (successFlag, message, code)

        (successFlag, source) = self._agentRun(testFile.name, "agent_testcase", taskFor(testFile), interface, check)
        return source if successFlag else None


# ── scoring ──────────────────────────────────────────────────────────────────


def findTranslation(src):
    """The whole translation as one file: what the frontend merged."""
    if os.path.isfile(src):
        return src
    for name in ("merged_funcs.rs", os.path.join("split_artifacts", "merged_funcs.rs.block")):
        if os.path.isfile(os.path.join(src, name)):
            return os.path.join(src, name)
    raise SystemExit("no merged_funcs.rs in %s" % src)


def resolveModel(llmMode, src):
    """The OpenCode model id of the test agent: ``llmMode``, else the agent
    model the translation itself was made with."""
    llmMode = llmMode or os.environ.get("ASSURE_TESTCASE_LLM_MODE", "")
    runConfig = os.path.join(src, "run_config.json")
    if not llmMode and os.path.isfile(runConfig):
        with open(runConfig) as f:
            llm = json.load(f).get("llm") or {}
        if str(llm.get("mode", "")).endswith("OPENCODE"):
            llmMode = "opencode:" + str(llm.get("model", ""))
    if not llmMode.startswith("opencode:") or len(llmMode) == len("opencode:"):
        raise SystemExit("the test agent runs through OpenCode: pass --llm-mode opencode:<provider/model>")
    return llmMode[len("opencode:"):]


def score(src, suiteDir, codebasePath, outDir, llmMode=None):
    """Translate the suite's tests onto the translation in ``src``, run them,
    write the artifacts to ``outDir`` and return the result."""
    os.makedirs(os.path.join(outDir, "logs"), exist_ok=True)
    logger = loggerFactory.getLogger(os.path.join(outDir, "testcase_backend.log"))
    translationPath = findTranslation(src)
    (config, testFiles) = loadSuite(suiteDir)
    if not testFiles:
        raise SystemExit("no test file in %s" % suiteDir)
    model = resolveModel(llmMode, src)
    timeout = int(os.environ.get("ASSURE_TESTCASE_TIMEOUT") or config.get("timeout") or DEFAULT_TEST_TIMEOUT)
    linkLibs = config.get("link") or []
    translation = _read(translationPath)
    result = {"translation": os.path.abspath(translationPath), "suite": os.path.abspath(suiteDir), "model": model,
              "translation_builds": False, "tests": 0, "passed": 0, "score": 0.0, "counts": {}, "files": {}}
    rows = []

    def finish():
        result["tests"] = len(rows)
        result["passed"] = sum(1 for row in rows if row["verdict"] == "pass")
        result["score"] = result["passed"] / len(rows) if rows else 0.0
        for row in rows:
            result["counts"][row["verdict"]] = result["counts"].get(row["verdict"], 0) + 1
        with open(os.path.join(outDir, "tests.csv"), "w", newline="") as f:
            writer = csv.DictWriter(f, fieldnames=["file", "test", "verdict", "detail"])
            writer.writeheader()
            writer.writerows(rows)
        with open(os.path.join(outDir, "result.json"), "w") as f:
            json.dump(result, f, indent=2)
        logger.info("testcase score: %d/%d = %.3f %s", result["passed"], result["tests"], result["score"],
                    json.dumps(result["counts"], sort_keys=True))
        return result

    crate = TestCrate(os.path.join(outDir, "crate"), translation, linkLibs)
    shutil.rmtree(crate.dir, ignore_errors=True)
    crate.write({})
    (successFlag, _executable, errors) = crate.build()
    if not successFlag:
        # Nothing to translate tests onto, and no reason to pay a model to try.
        logger.info("the translation does not build as a crate:\n%s", errors[:4000])
        result["build_errors"] = errors[:4000]
        for testFile in testFiles:
            rows.extend({"file": testFile.name, "test": name, "verdict": "unbuilt", "detail": ""}
                        for name in testFile.tests or ["*"])
        return finish()
    result["translation_builds"] = True

    work = tempfile.mkdtemp(prefix="assure_testcase_check_")
    atexit.register(shutil.rmtree, work, True)
    shutil.copyfile(translationPath, os.path.join(work, "translation.rs"))
    agent = TestTranslationAgent(logger, model, codebasePath, suiteDir, work, os.path.join(outDir, "agent_logs"))
    interface = signaturesOnly(translation)
    modules = {}
    for testFile in testFiles:
        writeCheck(work, os.path.join(work, "translation.rs"), linkLibs, testFile.module)
        source = agent.translateTestFile(testFile, interface)
        if source is not None:
            modules[testFile.module] = source
    result["opencode_runs"] = agent.agentRunCount
    result["cost_usd"] = agent.agentCostUsd

    crate.write(modules)
    (successFlag, executable, errors) = crate.build()
    listed = listTests(executable) if successFlag else []
    for testFile in testFiles:
        inModule = [path for path in listed if path.startswith(testFile.module + "::")]
        names = testFile.tests or [path.split("::", 1)[1] for path in inModule] or ["*"]
        result["files"][testFile.name] = {"module": testFile.module, "sources": testFile.sources,
                                          "translated": testFile.module in modules, "tests": {}}
        for name in names:
            # A test the agent tucked into a `mod` of its own still counts.
            path = next((p for p in inModule if p == testFile.module + "::" + name or p.endswith("::" + name)), None)
            if testFile.module not in modules:
                (verdict, detail) = ("untranslated", "the agent produced no test file that builds")
            elif path is None:
                (verdict, detail) = ("missing", "not in the translated test file")
            else:
                logPath = os.path.join(outDir, "logs", "%s.%s.log" % (testFile.name, re.sub(r"\W", "_", name)))
                (verdict, detail) = runTest(executable, path, timeout, logPath)
            logger.info("%s::%s: %s %s", testFile.name, name, verdict, detail)
            result["files"][testFile.name]["tests"][name] = verdict
            rows.append({"file": testFile.name, "test": name, "verdict": verdict, "detail": detail})
    # Sources stay so that `cargo test` in crate/ repeats the run; the build does not.
    shutil.rmtree(os.path.join(crate.dir, "target"), ignore_errors=True)
    return finish()


def main():
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    parser.add_argument("--src", required=True, help="frontend output directory, or the merged translation itself")
    parser.add_argument("--suite", required=True, help="test suite directory")
    parser.add_argument("--codebase", required=True, help="the C codebase the translation was made from")
    parser.add_argument("-o", "--out", required=True)
    parser.add_argument("--llm-mode", default=None,
                        help="opencode:<provider/model> of the test agent; default: the translation's own model")
    args = parser.parse_args()
    result = score(args.src, args.suite, args.codebase, os.path.abspath(args.out), args.llm_mode)
    print(json.dumps({key: result[key] for key in ("tests", "passed", "score", "counts")}))
    return 0


if __name__ == "__main__":
    sys.exit(main())
