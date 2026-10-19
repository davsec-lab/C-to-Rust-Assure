#!/usr/bin/env python3
"""The crate the test-case backend builds and runs, and the test agent's
``./check``.

    python3 testcase_crate.py <check dir> <workspace>

Layout of the crate:

    Cargo.toml  build.rs  .cargo/config.toml
    src/lib.rs                  the translation, verbatim, followed by one
                                `#[cfg(test)] mod` per test file
    src/testcases/<module>.rs   one translated test file

The translation is the crate root and the tests are child modules of it, so a
test reaches every item of the translation, private ones included, through
`use super::*`.
"""
import ctypes.util
import json
import os
import re
import resource
import shutil
import signal
import subprocess
import sys
import tempfile

from gpt_translation.config import CARGO_LIBC_REQUIREMENT

CRATE_NAME = "assure_translation"
BUILD_TIMEOUT = 600
# Most a test may write to one file, its captured output included.
_OUTPUT_LIMIT = 256 * 1024 * 1024
_ERROR_LINES = 120


def nativeLinkArg(lib):
    """Linker argument for a native library the translation calls into.
    ``-l<lib>`` needs ``lib<lib>.so``, which only a -dev package installs; the
    versioned file the loader uses is always there, so that is named instead."""
    soname = ctypes.util.find_library(lib)
    return "-l:" + soname if soname else "-l" + lib


class TestCrate:
    __test__ = False    # not a test class, whatever a test collector makes of the name

    def __init__(self, crateDir, translation, linkLibs=()):
        self.dir = crateDir
        self.translation = translation
        self.linkLibs = list(linkLibs)

    def write(self, modules):
        """``modules``: ``{module name: source of the translated test file}``.
        Replaces the sources of the crate; a build directory from an earlier
        call stays."""
        src = os.path.join(self.dir, "src")
        shutil.rmtree(src, ignore_errors=True)
        os.makedirs(os.path.join(src, "testcases"))
        os.makedirs(os.path.join(self.dir, ".cargo"), exist_ok=True)
        with open(os.path.join(self.dir, "Cargo.toml"), "w") as f:
            f.write("[package]\n"
                    'name = "%s"\n'
                    'version = "0.1.0"\n'
                    'edition = "2021"\n\n'
                    "[dependencies]\n"
                    'libc = "%s"\n\n'
                    # The symbolic backend compiles the translation with
                    # overflow checks off (llvmBitcodeEmitter.RUST_OVERFLOW_CHECKS)
                    # so that Rust arithmetic wraps as the C does. Same here:
                    # both backends then judge the same semantics.
                    "[profile.test]\n"
                    "overflow-checks = false\n" % (CRATE_NAME, CARGO_LIBC_REQUIREMENT))
        with open(os.path.join(self.dir, ".cargo", "config.toml"), "w") as f:
            # A machine translation warns by the hundred; only errors matter.
            f.write('[build]\nrustflags = ["-A", "warnings"]\n')
        buildScript = os.path.join(self.dir, "build.rs")
        if self.linkLibs:
            with open(buildScript, "w") as f:
                f.write("fn main() {\n%s}\n" % "".join(
                    '    println!("cargo:rustc-link-arg=%s");\n' % nativeLinkArg(lib) for lib in self.linkLibs))
        elif os.path.exists(buildScript):
            os.remove(buildScript)
        lib = self.translation.rstrip("\n") + "\n"
        for (module, source) in modules.items():
            lib += '\n#[cfg(test)]\n#[path = "testcases/%s.rs"]\nmod %s;\n' % (module, module)
            with open(os.path.join(src, "testcases", module + ".rs"), "w") as f:
                f.write(source.rstrip("\n") + "\n")
        with open(os.path.join(src, "lib.rs"), "w") as f:
            f.write(lib)

    def build(self):
        """Build the test binary without running it. Returns
        ``(successFlag, executable, errors)``."""
        try:
            proc = subprocess.run(["cargo", "test", "--no-run", "--message-format=json"], cwd=self.dir,
                                  stdin=subprocess.DEVNULL, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                  text=True, errors="replace", timeout=BUILD_TIMEOUT)
        except subprocess.TimeoutExpired:
            return (False, None, "The test build did not finish within %d s." % BUILD_TIMEOUT)
        executable, errors = None, []
        for line in proc.stdout.splitlines():
            try:
                event = json.loads(line)
            except ValueError:
                continue
            if event.get("reason") == "compiler-message" and (event.get("message") or {}).get("level") == "error":
                errors.append(event["message"].get("rendered") or event["message"].get("message") or "")
            elif (event.get("reason") == "compiler-artifact" and (event.get("profile") or {}).get("test")
                  and (event.get("target") or {}).get("name") == CRATE_NAME):
                executable = event.get("executable") or executable
        if proc.returncode != 0 or not executable:
            return (False, None, "\n".join(errors) or proc.stderr[-4000:] or "cargo test --no-run failed.")
        return (True, executable, "")


def listTests(executable):
    """Paths (``module::name``) of the tests in a test binary."""
    proc = subprocess.run([executable, "--list", "--format", "terse"], stdin=subprocess.DEVNULL,
                          stdout=subprocess.PIPE, stderr=subprocess.DEVNULL, text=True, errors="replace", timeout=60)
    return [line[:-len(": test")] for line in proc.stdout.splitlines() if line.endswith(": test")]


def classifyRun(returncode, timedOut, output):
    """``(verdict, detail)`` of one run of a test binary on one test."""
    if timedOut:
        return ("timeout", "")
    if returncode < 0:
        try:
            return ("crash", signal.Signals(-returncode).name)
        except ValueError:
            return ("crash", "signal %d" % -returncode)
    results = re.findall(r"test result: \w+\. (\d+) passed; (\d+) failed; (\d+) ignored", output)
    if not results:
        # libtest always prints its summary; without one the process ended
        # underneath it, e.g. the code under test called exit().
        return ("exit", "the process exited with status %d before the test finished" % returncode)
    (passed, failed, ignored) = (int(x) for x in results[-1])
    if failed:
        m = re.search(r"panicked at (.*?)(?:\nnote: run with|\Z)", output, re.S)
        return ("fail", " ".join((m.group(1) if m else "").split())[:300])
    if passed:
        return ("pass", "")
    if ignored:
        return ("ignored", "")
    return ("missing", "the test binary has no test of this name")


def _limitOutput():
    resource.setrlimit(resource.RLIMIT_FSIZE, (_OUTPUT_LIMIT, _OUTPUT_LIMIT))


def runTest(executable, testPath, timeout, logPath=None):
    """Run one test alone: its own process, an empty directory as the working
    directory. The code under test is a machine translation of C that may
    crash, hang, exit or delete what it is pointed at, and none of that may
    reach the next test. Returns ``(verdict, detail)``; the output goes to
    ``logPath``."""
    cwd = tempfile.mkdtemp(prefix="assure_testcase_")
    capture = cwd + ".out"
    timedOut = False
    try:
        with open(capture, "wb") as out:
            # Own process group, so a timeout also takes what the test spawned.
            proc = subprocess.Popen([executable, "--exact", testPath, "--test-threads=1", "--nocapture"],
                                    cwd=cwd, stdin=subprocess.DEVNULL, stdout=out, stderr=subprocess.STDOUT,
                                    start_new_session=True, preexec_fn=_limitOutput,
                                    env=dict(os.environ, RUST_BACKTRACE="0"))
            try:
                proc.wait(timeout=timeout)
            except subprocess.TimeoutExpired:
                timedOut = True
                try:
                    os.killpg(proc.pid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
                proc.wait()
        with open(capture, "rb") as f:
            # The summary libtest prints is at the end.
            f.seek(max(0, os.path.getsize(capture) - 20000))
            (verdict, detail) = classifyRun(proc.returncode, timedOut, f.read().decode(errors="replace"))
        if timedOut:
            detail = "no result after %d s" % timeout
        if logPath:
            shutil.copyfile(capture, logPath)
        return (verdict, detail)
    finally:
        shutil.rmtree(cwd, ignore_errors=True)
        if os.path.exists(capture):
            os.remove(capture)


# ── one translated test file, the way both the backend and ./check judge it ──


def writeCheck(checkDir, translationPath, linkLibs, module):
    """What a check of one translated test file needs besides the file."""
    os.makedirs(checkDir, exist_ok=True)
    with open(os.path.join(checkDir, "check.json"), "w") as f:
        json.dump({"translation": translationPath, "link": list(linkLibs), "module": module}, f)


def checkModule(checkDir, source):
    """Build the translation together with ``source`` as its test module.
    Returns ``(successFlag, message)``; file names in ``message`` are the
    workspace's."""
    with open(os.path.join(checkDir, "check.json")) as f:
        check = json.load(f)
    if not source.strip():
        return (False, "rust/out.rs is missing or empty.")
    with open(check["translation"], errors="replace") as f:
        crate = TestCrate(os.path.join(checkDir, "crate"), f.read(), check["link"])
    crate.write({check["module"]: source})
    (successFlag, executable, errors) = crate.build()
    if not successFlag:
        errors = errors.replace("src/testcases/%s.rs" % check["module"], "rust/out.rs")
        # The agent has the translation's interface, not the file these line
        # numbers count in.
        errors = re.sub(r"src/lib\.rs(?::\d+)*", "the translation", errors)
        return (False, "\n".join(errors.split("\n")[:_ERROR_LINES]))
    if not any(path.startswith(check["module"] + "::") for path in listTests(executable)):
        return (False, "rust/out.rs defines no #[test] function.")
    return (True, "")


def main(argv):
    if len(argv) != 3:
        print(__doc__)
        return 2
    outPath = os.path.join(argv[2], "rust", "out.rs")
    source = ""
    if os.path.isfile(outPath):
        with open(outPath, errors="replace") as f:
            source = f.read()
    (successFlag, message) = checkModule(argv[1], source)
    print("OK" if successFlag else message)
    return 0 if successFlag else 1


if __name__ == "__main__":
    sys.exit(main(sys.argv))
