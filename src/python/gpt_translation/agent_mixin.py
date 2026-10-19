import atexit
import json
import os
import re
import shlex
import shutil
import signal
import subprocess
import sys
import tempfile
import time
import types

from fetchTargetFunction import RUST, Parser
from gpt_translation.agent_check import errorsOnly, firstLines
from functionAndDeps import FunctionAndDependencies

from gpt_translation.config import (
    AGENT_MAX_STEPS,
    AGENT_TIMEOUT,
    AGENT_UNIT_TIMEOUT,
    COMPILATION_RETRIES,
    OPENCODE_BIN,
    OPENCODE_CONTEXT_LIMIT,
    OPENCODE_OUTPUT_LIMIT,
    OPENCODE_VARIANT,
    OPENROUTER_PROVIDER,
)

# rustc lines handed back per rejected result. extractError's 20 is sized for a
# one-shot retry prompt; an agent can afford to read past the first error.
_COMPILE_ERROR_LINES = 60
# A placeholder body: ORBIT's Implementation Checker refuses these, after
# agents were seen to stub out a function instead of translating it.
_STUB = re.compile(r"\b(?:todo|unimplemented)!\s*\(")
# Source files of the codebase copied into the workspace for the agent to grep.
_C_SOURCE_SUFFIXES = (".c", ".h", ".i")
_C_SOURCE_SIZE_LIMIT = 5 * 1024 * 1024
# A provider error that ends an OpenCode run before it produced anything is
# retried after a pause: a pinned host being rate-limited is routine. Seconds
# before each retry.
_API_ERROR_BACKOFF = (30, 120, 300)
# Statuses no amount of waiting fixes: bad key, no credit, no access, and a
# model/host combination OpenRouter cannot route.
_FATAL_API_STATUSES = (401, 402, 403, 404)

_AGENTS_MD = """# C to Rust translation workspace

{systemPrompt}

Each task translates one unit of a C codebase to Rust: a batch of type or
global definitions, or one function (or one group of mutually recursive
functions). The task itself is in `task.md`.

## Layout

- `c/` - the original C sources. `c/functions/<name>.c` holds every function of
  the codebase on its own; `c/types/` holds every struct, union, enum, typedef
  and global definition on its own.
- `rust/out.rs` - the translation of this codebase so far: every type and
  function translated before this task. It is the final translation, not a
  copy of it. Add what the task asks for to it, in place.
- `./check` - compiles `rust/out.rs` the way the pipeline does. Prints `OK`
  or the rustc errors. It is the only shell command you can run; search and
  read with the grep, glob and read tools.

## How to work

1. Read `task.md`.
2. Before writing any Rust, find out how the thing is USED. grep `c/` yourself:
   for a function, its call sites; for a type, every place its fields are read,
   written, allocated, freed, compared or passed on. Usage settles what the
   definition alone leaves open:
   - whether a pointer may be NULL, and what is actually stored in it
   - whether a pointer is one object, or a buffer that travels with a length
   - which integer width and signedness the surrounding code relies on
   - which arguments are outputs the caller reads back afterwards
   - who owns and frees what
   - whether a function is passed around as a callback, which pins its signature
3. Write `rust/out.rs`, run `./check`, and fix it until it prints `OK`.
4. Stop. Reply with one line.

## Rules

- The Rust must behave exactly like the C on every input: same parameter count
  and order, same return values, same writes through every pointer, same field
  order in every struct. Usage tells you how to express the C faithfully; it is
  not a licence to drop a path no current caller happens to take.
- Translate everything the task names, under the C names. Where C uses one
  name twice - a struct tag and a typedef, an `extern` declaration and its
  definition - Rust has room for one item of that name: keep the C name for
  what code refers to by that name and give the other its own. Helper items
  of your own are fine.
- Reuse what `rust/out.rs` already has instead of defining it again. You may
  change an item already there when the new code needs it (a missing derive,
  a field type that turns out wrong), but remove no function that is there.
- No `todo!()` or `unimplemented!()` anywhere: a function is translated in
  full or not at all.
- Nothing is imported for you. Write every `use` your code needs, or use full
  paths (`libc::free`, `std::ptr::null_mut`). Only `std` and the `libc` crate
  are available.
- Edit nothing except `rust/out.rs`.
- Do not add a `main`, and do not write a stand-in for a function that is
  called but not defined.
- Work only inside this directory. Do not use the network.
"""

_CHECK_SCRIPT = """#!/bin/bash
exec {command} "$(cd "$(dirname "$0")" && pwd)"
"""


class AgentTranslationMixin:
    """Translate with OpenCode, the pipeline's only way of translating.

    Every unit - a type batch, a function, a mutual-recursion group - is one
    OpenCode session in a workspace that holds the C sources, the Rust produced
    so far, and a ``./check`` command. The agent greps the C for how the unit is
    used, writes ``rust/out.rs`` and compiles it itself. The pipeline then runs
    its own compile check on the result; a rejection goes back into the same
    session.

    Order of work is the pipeline's and unchanged: types first, then functions
    callees first.
    """

    # The agent adds every import its code needs; see compileWithCargoProject.
    injectLibcPrelude = False
    # Every unit is translated by editing one file, the final translation
    # (merged_funcs.rs), as ORBIT's agents edit the crate. What is checked is
    # what is shipped: no type is cut out of its batch and reassembled, and
    # no unit is compiled with a context it will not be used in.

    # ── workspace ──────────────────────────────────────────────────────────

    def agentSetup(self, funcMap, outputDir):
        """Called once from translateAll, before any unit is translated."""
        self.agentFuncMap = funcMap
        self.agentLogDir = os.path.join(outputDir, "agent_logs")
        os.makedirs(self.agentLogDir, exist_ok=True)
        # translationValidator creates <codebase>/individual-funcs_<run>/.
        self.agentCodebasePath = os.path.dirname(os.path.abspath(outputDir))
        self.agentRunCount = 0
        self.agentCostUsd = 0.0
        self.agentRoot = None
        # The translation so far; every accepted unit replaces it.
        self.agentFile = ""
        self.agentTypeNodes = []

    @staticmethod
    def _agentFileName(name):
        return re.sub(r"[^\w.-]", "_", str(name)) or "_"

    def _agentWorkspace(self):
        if getattr(self, "agentRoot", None):
            return os.path.join(self.agentRoot, "ws")
        self.agentRoot = tempfile.mkdtemp(prefix="assure_agent_")
        atexit.register(shutil.rmtree, self.agentRoot, True)
        ws = os.path.join(self.agentRoot, "ws")
        os.makedirs(os.path.join(ws, "rust"))
        self._agentPopulateWorkspace(ws)
        with open(os.path.join(ws, "opencode.json"), "w") as f:
            json.dump(self._agentOpenCodeConfig(), f, indent=2)
        return ws

    def _agentPopulateWorkspace(self, ws):
        """What the agent finds in a new workspace besides ``rust/`` and
        ``opencode.json``: the C to read, ``AGENTS.md`` and ``./check``."""
        for sub in ("c/functions", "c/types"):
            os.makedirs(os.path.join(ws, sub))
        self._agentCopyCodebase(ws)

        for funcSym, funcDepsObj in (getattr(self, "agentFuncMap", None) or {}).items():
            with open(os.path.join(ws, "c", "functions", self._agentFileName(funcSym) + ".c"), "w") as f:
                f.write(self.stringifyCodeBlock(funcDepsObj.funcCodeLines))
        for node in FunctionAndDependencies.typeRegistry.all_nodes():
            if not node.cCode:
                continue
            fileName = self._agentFileName(f"{node.kind.name.lower()}_{node.name}") + ".c"
            with open(os.path.join(ws, "c", "types", fileName), "w") as f:
                f.write(self.stringifyCodeBlock(node.cCode))

        with open(os.path.join(ws, "AGENTS.md"), "w") as f:
            f.write(_AGENTS_MD.format(systemPrompt=self.systemPrompt.strip()))
        self._agentWriteCheck(ws, "agent_check.py")

    def _agentCopyCodebase(self, ws):
        """The codebase's C sources, under ``c/`` with their own layout."""
        codebase = getattr(self, "agentCodebasePath", None)
        if not codebase or not os.path.isdir(codebase):
            return
        for dirPath, dirNames, fileNames in os.walk(codebase):
            # Earlier runs leave their output next to the sources.
            dirNames[:] = [d for d in dirNames if not d.startswith("individual-funcs")]
            for fileName in fileNames:
                src = os.path.join(dirPath, fileName)
                if not fileName.endswith(_C_SOURCE_SUFFIXES) or os.path.getsize(src) > _C_SOURCE_SIZE_LIMIT:
                    continue
                dst = os.path.join(ws, "c", os.path.relpath(src, codebase))
                os.makedirs(os.path.dirname(dst), exist_ok=True)
                shutil.copyfile(src, dst)

    def _agentWriteCheck(self, ws, checker, *args):
        """``./check``: ``checker`` (a script beside this file, or a path) run
        with ``args`` and then the workspace directory."""
        checker = os.path.join(os.path.dirname(os.path.abspath(__file__)), checker)
        checkPath = os.path.join(ws, "check")
        with open(checkPath, "w") as f:
            f.write(_CHECK_SCRIPT.format(
                command=" ".join(shlex.quote(str(a)) for a in (sys.executable, checker) + args)))
        os.chmod(checkPath, 0o755)

    def _agentOpenCodeConfig(self):
        config = {
            "$schema": "https://opencode.ai/config.json",
            "model": self.model,
            # Session titles would otherwise go to OpenCode's own default
            # small model, a second model the run did not ask for.
            "small_model": self.model,
            "autoupdate": False,
            "share": "disabled",
            "permission": {
                "edit": "allow",
                # The shell is for ./check only. Reading and searching go
                # through OpenCode's own read/grep/glob tools, which
                # external_directory keeps inside the workspace; an open shell
                # let the agent read the pipeline's source and the logs of
                # earlier sessions.
                "bash": {"*": "deny", "./check": "allow", "./check *": "allow"},
                "webfetch": "deny",
                "external_directory": "deny",
                # OpenCode asks before a third identical tool call in a row,
                # and `opencode run` answers its own question with "reject",
                # which ends the session. Let the step limit bound loops.
                "doom_loop": "allow",
            },
            "agent": {"build": {"steps": AGENT_MAX_STEPS}},
        }
        (provider, _sep, modelId) = self.model.partition("/")
        modelConfig = {}
        if provider == "openrouter" and OPENROUTER_PROVIDER:
            # Pin the serving host: the same open-weight model is served at
            # different quantisations by different hosts.
            modelConfig["options"] = {"provider": {
                "order": [host.strip() for host in OPENROUTER_PROVIDER.split(",") if host.strip()],
                "allow_fallbacks": False,
            }}
        if OPENCODE_OUTPUT_LIMIT:
            # A host may cap output below the model's catalogue limit
            # (DeepInfra serves deepseek-v4-pro with 16384); OpenCode then
            # asks for more than the host allows and OpenRouter drops the
            # host from routing ("Filter by Context Length").
            modelConfig["limit"] = {"context": OPENCODE_CONTEXT_LIMIT, "output": OPENCODE_OUTPUT_LIMIT}
        if modelConfig:
            config["provider"] = {provider: {"models": {modelId: modelConfig}}}
        return config

    # ── one OpenCode invocation ────────────────────────────────────────────

    def _agentInvoke(self, name, kind, message, sessionId):
        """Run ``opencode run`` once. Returns ``(sessionId, finalText, apiError)``.
        ``sessionId`` is None when OpenCode did not get as far as a session;
        ``apiError`` is the provider error the run ended on, if any, as
        ``{"status": int or None, "message": str}``."""
        ws = self._agentWorkspace()
        home = os.path.join(self.agentRoot, "home")
        env = dict(os.environ)
        # A private home: no user-level OpenCode config, plugins or sessions
        # leak into the run, and nothing from the run is left on the host.
        env.update({
            # OpenCode takes its project directory from $PWD, which
            # Popen(cwd=...) does not update. Left stale, it runs in the
            # pipeline's directory: the workspace's opencode.json is not read
            # (so not the configured model) and the agent edits the wrong tree.
            "PWD": ws,
            "HOME": home,
            "XDG_DATA_HOME": os.path.join(home, "data"),
            "XDG_CONFIG_HOME": os.path.join(home, "config"),
            "XDG_CACHE_HOME": os.path.join(home, "cache"),
            "XDG_STATE_HOME": os.path.join(home, "state"),
        })
        # cargo and rustup find their files through $HOME unless told
        # otherwise, and ./check needs both where they really are.
        env.setdefault("CARGO_HOME", os.path.join(os.path.expanduser("~"), ".cargo"))
        env.setdefault("RUSTUP_HOME", os.path.join(os.path.expanduser("~"), ".rustup"))
        cmd = [OPENCODE_BIN, "run", "--format", "json"]
        if OPENCODE_VARIANT:
            cmd += ["--variant", OPENCODE_VARIANT]
        if sessionId:
            cmd += ["--session", sessionId]
        cmd.append(message)

        self.agentRunCount += 1
        logBase = os.path.join(
            self.agentLogDir, "%04d_%s" % (self.agentRunCount, self._agentFileName(name)[:80]))
        self.logger.info("[AGENT] %s: opencode run #%d (%s)", name, self.agentRunCount, kind)
        with open(logBase + ".jsonl", "w") as out, open(logBase + ".err", "w") as err:
            # stdin must be closed: `opencode run` waits on an open pipe.
            # Own process group, so a timeout also takes the agent's shells.
            proc = subprocess.Popen(cmd, cwd=ws, env=env, stdin=subprocess.DEVNULL,
                                    stdout=out, stderr=err, start_new_session=True)
            try:
                proc.wait(timeout=AGENT_TIMEOUT)
            except subprocess.TimeoutExpired:
                self.logger.warning("[AGENT] %s: no result after %d s, killing opencode", name, AGENT_TIMEOUT)
                try:
                    os.killpg(proc.pid, signal.SIGKILL)
                except ProcessLookupError:
                    pass
                proc.wait()
        if proc.returncode != 0:
            self.logger.warning("[AGENT] %s: opencode exited %s, see %s.err", name, proc.returncode, logBase)

        foundSession = None
        finalText = ""
        apiError = None
        tools = []
        usage = {"input": 0, "output": 0, "cacheRead": 0, "cacheWrite": 0, "cost": 0.0}
        with open(logBase + ".jsonl", errors="replace") as f:
            for line in f:
                try:
                    event = json.loads(line)
                except ValueError:
                    continue
                foundSession = foundSession or event.get("sessionID")
                part = event.get("part") or {}
                if event.get("type") == "error":
                    data = (event.get("error") or {}).get("data") or {}
                    # Only a provider error carries an HTTP status. OpenCode
                    # reports its own aborts (a rejected permission) through
                    # the same event, and waiting does nothing for those.
                    if data.get("statusCode") is not None:
                        apiError = {"status": data.get("statusCode"), "message": str(data.get("message") or "")}
                    else:
                        self.logger.warning("[AGENT] %s: opencode error: %s", name, str(data.get("message") or "")[:200])
                elif event.get("type") == "tool_use":
                    tools.append(part.get("tool") or "?")
                elif event.get("type") == "text":
                    finalText = part.get("text") or finalText
                elif event.get("type") == "step_finish":
                    tokens = part.get("tokens") or {}
                    cache = tokens.get("cache") or {}
                    usage["input"] += tokens.get("input") or 0
                    # Reasoning is billed as output and reported beside it.
                    usage["output"] += (tokens.get("output") or 0) + (tokens.get("reasoning") or 0)
                    usage["cacheRead"] += cache.get("read") or 0
                    usage["cacheWrite"] += cache.get("write") or 0
                    usage["cost"] += part.get("cost") or 0.0

        self.agentCostUsd += usage["cost"]
        self.logger.info("[AGENT] %s: %d tool calls (%s), $%.4f, $%.4f so far",
                         name, len(tools), ", ".join(tools), usage["cost"], self.agentCostUsd)
        tracker = getattr(self, "tokenTracker", None)
        if tracker is not None:
            tracker.record(name=name, kind=kind, stage="", model=self.model,
                           completion=types.SimpleNamespace(usage=types.SimpleNamespace(
                               input_tokens=usage["input"],
                               output_tokens=usage["output"],
                               cache_read_input_tokens=usage["cacheRead"],
                               cache_creation_input_tokens=usage["cacheWrite"])))
        with open(os.path.join(self.agentLogDir, "spend.json"), "w") as f:
            json.dump({"model": self.model, "opencode_runs": self.agentRunCount,
                       "opencode_reported_cost_usd": self.agentCostUsd}, f)
        if apiError:
            self.logger.warning("[AGENT] %s: provider error %s: %s", name, apiError["status"], apiError["message"][:300])
        return (foundSession, finalText, apiError)

    def _agentInvokeWithBackoff(self, name, kind, message, sessionId, outPath, outInitial=None):
        """_agentInvoke, waiting out provider errors that left no result: no
        ``rust/out.rs``, or one still as it was given (``outInitial``). A run
        that cannot work at all (bad key, no credit, unroutable model) raises
        instead of failing every remaining unit one by one."""
        for pause in _API_ERROR_BACKOFF + (None,):
            (foundSession, finalText, apiError) = self._agentInvoke(name, kind, message, sessionId)
            if not apiError or self._agentReadOut(outPath) not in (None, outInitial):
                break
            if apiError["status"] in _FATAL_API_STATUSES:
                raise RuntimeError("OpenCode cannot reach %s (HTTP %s): %s"
                                   % (self.model, apiError["status"], apiError["message"]))
            if pause is None:
                break
            self.logger.warning("[AGENT] %s: retrying in %d s", name, pause)
            time.sleep(pause)
            sessionId = sessionId or foundSession
        return (foundSession, finalText)

    @staticmethod
    def _agentReadOut(outPath):
        if not os.path.exists(outPath):
            return None
        with open(outPath, errors="replace") as f:
            return f.read()

    # ── one unit ───────────────────────────────────────────────────────────

    def _agentRun(self, name, kind, task, contextRust, check=None, outInitial=None):
        """Have the agent carry out ``task`` and return ``(successFlag, result)``.

        ``check(code) -> (successFlag, errorText, result)`` is the pipeline's
        own verdict on ``rust/out.rs``. A rejection is sent back into the same
        session, at most COMPILATION_RETRIES times. With no ``check`` the
        first result is returned as is. ``outInitial`` is what
        ``rust/out.rs`` holds when the agent starts, for a task that edits it
        in place; without it the agent writes the file from nothing.
        """
        ws = self._agentWorkspace()
        outPath = os.path.join(ws, "rust", "out.rs")
        with open(os.path.join(ws, "rust", "context.rs"), "w") as f:
            f.write(contextRust or "")
        with open(os.path.join(ws, "task.md"), "w") as f:
            f.write(task)
        if outInitial is not None:
            with open(outPath, "w") as f:
                f.write(outInitial)
        elif os.path.exists(outPath):
            os.remove(outPath)

        if outInitial is not None:
            start = "Read task.md and carry it out by editing rust/out.rs in place."
        else:
            start = "Read task.md and carry it out. Write the result to rust/out.rs."
        message = start
        sessionId = None
        lastResult = ""
        deadline = time.monotonic() + AGENT_UNIT_TIMEOUT
        for attempt in range(COMPILATION_RETRIES + 1):
            if attempt and time.monotonic() > deadline:
                # Without this a unit the model cannot do costs
                # (COMPILATION_RETRIES + 1) x AGENT_TIMEOUT: two hours.
                self.logger.info("[AGENT] %s: unit budget of %d s used up", name, AGENT_UNIT_TIMEOUT)
                break
            (foundSession, finalText) = self._agentInvokeWithBackoff(
                name, kind if attempt == 0 else kind + "_retry", message, sessionId, outPath, outInitial)
            sessionId = sessionId or foundSession
            code = self._agentReadOut(outPath)
            if code is None or code == outInitial:
                # Some models answer in the reply instead of writing the file.
                reply = self.extractTargetCode(finalText, [self.dstLang.lower()])
                if outInitial is None:
                    code = reply
                elif "```" in (finalText or "") and reply.strip():
                    # Only a fenced block: the one-line reply AGENTS.md asks
                    # for is not code to add to the translation.
                    code = outInitial + "\n" + reply
            if check is None:
                return (True, code)
            if code.strip():
                (successFlag, err, lastResult) = check(code)
                if successFlag:
                    self.logger.info("[AGENT] %s: accepted on attempt %d", name, attempt + 1)
                    return (True, lastResult)
                message = ("rust/out.rs was rejected by the pipeline's compile check. Fix rust/out.rs.\n"
                           + firstLines(errorsOnly(err), _COMPILE_ERROR_LINES * 2))
            else:
                message = "rust/out.rs is missing or empty. Write the result to rust/out.rs."
            if not sessionId:
                # Nothing to continue: the next run starts from the task again.
                message = start + "\n" + message
        self.logger.info("[AGENT] %s: no accepted result", name)
        return (False, lastResult)

    def agentTranslate(self, funcName, prompt, contextStructs,
                       translatedStructPrompt, translatedStructs,
                       translatedFuncPrompt, translatedFuncsSignatures, translatedFuncs,
                       dependencyFunctionNames, dependencyCodes, dependencyKeys,
                       funcSrc, targetFunctions=None):
        """Agent replacement for the body of compileAndRetryLoopforDepency.

        The agent adds the function(s) to the translation so far
        (``agentFile``). Accepted, the edited file is the new translation and
        the pipeline gets the target functions cut out of it, for the
        signatures and split blocks it keeps per function. The types and
        functions the pipeline passes in are already in the file."""
        targets = list(targetFunctions or [funcName])
        # A callee the pipeline translated before this unit but that is not in
        # the file failed: the unit cannot compile without it, and an agent
        # session only spends its whole budget finding that out.
        names = set(self._agentFunctionNames(self.agentFile))
        failedCallees = [c for c in dict.fromkeys(dependencyFunctionNames or [])
                         if c not in targets and c in (self.agentFuncMap or {}) and c not in names]
        if failedCallees:
            self.logger.info("[AGENT] %s: not translated, callee(s) without a translation: %s",
                             funcName, ", ".join(failedCallees))
            return (False, "")
        task = ("Translate the C function" + ("s " if len(targets) > 1 else " ") + ", ".join(targets)
                + " to Rust and add " + ("them" if len(targets) > 1 else "it") + " to rust/out.rs.\n\n"
                + funcSrc.strip() + "\n" + prompt
                + self._agentCalleeHint(dependencyFunctionNames, targets))
        before = set(self._agentFunctionNames(self.agentFile))

        def check(code):
            (successFlag, err) = self._agentCheckFile(code, targets, before)
            if not successFlag and err.startswith("error"):
                patched, appliedUses = self.applyRustcImportAutoFix(code, err)
                if appliedUses:
                    self.logger.info("[AGENT] auto-applied rustc import hint(s) to %s: %s",
                                     funcName, ", ".join(appliedUses))
                    code = patched
                    (successFlag, err) = self._agentCheckFile(code, targets, before)
            return (successFlag, err, code)

        (successFlag, result) = self._agentRun(funcName, "agent_function", task, "", check,
                                               outInitial=self.agentFile)
        if not successFlag:
            return (False, self._agentCutFunctions(result, targets) or result)
        self.agentFile = result
        return (True, self._agentCutFunctions(result, targets))

    def agentTranslateTypeBatch(self, batchName, request, batchNodes):
        """Agent replacement for _translateTypeBatchWithLlm: the agent adds
        the batch's definitions to the translation so far (``agentFile``).
        Its nodes are given their code in agentFinishTypes, once every batch
        is in."""
        before = set(self._agentFunctionNames(self.agentFile))

        def check(code):
            # Left as it was, the file passes only if it already has the
            # batch, say as an earlier batch's helper.
            if code == self.agentFile:
                undefined = [node.name for node in batchNodes if not self._agentDefines(code, node.name)]
                if undefined:
                    return (False, "rust/out.rs is unchanged and does not define " + ", ".join(undefined) + ".", code)
            (successFlag, err) = self._agentCheckFile(code, [], before)
            return (successFlag, err, code)

        (successFlag, result) = self._agentRun(batchName, "agent_type_batch", request, "", check,
                                               outInitial=self.agentFile)
        if successFlag:
            self.agentFile = result
        self.agentTypeNodes.extend(batchNodes)

    def agentAppendType(self, node):
        """A typedef the pipeline resolved without a model goes into the
        translation unless the agent already defined that name."""
        if node.rustCode and not self._agentDefines(self.agentFile, node.name):
            self.agentFile = self.agentFile + "\n" + node.rustCode + "\n"
        self.agentTypeNodes.append(node)

    def agentFinishTypes(self):
        """After the last type batch: every translated type node holds the
        whole type part of the translation. The readers of rustCode dedupe
        identical code, so it is emitted once, and no node is empty, which
        would start _cascadeDeleteEmptyTypeReferences on it."""
        for node in self.agentTypeNodes:
            node.rustCode = self.agentFile
            self._logStoredTypeResult(node)

    def agentMergedFile(self, assembled):
        """What the pipeline writes as merged_funcs.rs: the file the agents
        edited, not the pipeline's reassembly of it."""
        return self.agentFile

    # ── checks on the translation file ─────────────────────────────────────

    def _agentCheckFile(self, code, targets, before):
        """The pipeline's verdict on an edited translation: it compiles, every
        target function is in it in full, and no function it had before the
        unit is gone. Returns ``(successFlag, errorText)``."""
        names = self._agentFunctionNames(code)
        missing = [t for t in targets if t not in names]
        if missing:
            return (False, "rust/out.rs has no function named " + ", ".join(missing)
                    + ". Translate it under its C name (written r#name if the name is a Rust keyword).")
        gone = sorted(before - set(names))
        if gone:
            return (False, "rust/out.rs no longer has " + ", ".join(gone)
                    + ", translated before this task. Put it back; remove no function.")
        stubs = [n for n, body, _sig in self._agentFunctions(code) if _STUB.search(body)]
        if stubs:
            return (False, "todo!() or unimplemented!() in " + ", ".join(stubs)
                    + ". Translate every function in full.")
        (successFlag, err) = self.compile(self.cleanCode(code))
        if not successFlag:
            self.logger.debug("Full compilation error: %s", err)
        return (successFlag, err)

    @staticmethod
    def _agentFunctions(code):
        """``[(name, text, signature)]`` of every Rust function in ``code``,
        free or in an impl, in order."""
        data = (code or "").encode()
        tree = Parser(RUST).parse(data)
        found = []

        def visit(node):
            if node.type == "function_item":
                nameNode = node.child_by_field_name("name")
                body = node.child_by_field_name("body")
                if nameNode is not None:
                    end = body.start_byte if body is not None else node.end_byte
                    # A C name that is a Rust keyword (worsp's `match`) can only
                    # be written as a raw identifier, `r#match`: it is the same name.
                    name = data[nameNode.start_byte:nameNode.end_byte].decode()
                    found.append((name[2:] if name.startswith("r#") else name,
                                  data[node.start_byte:node.end_byte].decode(),
                                  " ".join(data[node.start_byte:end].decode().split())))
                return
            for child in node.children:
                visit(child)

        visit(tree.root_node)
        return found

    @classmethod
    def _agentFunctionNames(cls, code):
        return [name for name, _text, _sig in cls._agentFunctions(code)]

    @classmethod
    def _agentCutFunctions(cls, code, targets):
        return "\n\n".join(text for name, text, _sig in cls._agentFunctions(code) if name in targets)

    def _agentCalleeHint(self, callees, targets):
        """The Rust signatures of the functions the unit calls, as a hint:
        rust/out.rs is where they are. Callees without one are named."""
        callees = [c for c in dict.fromkeys(callees or []) if c not in targets]
        if not callees:
            return ""
        signatures = {name: sig for name, _text, sig in self._agentFunctions(self.agentFile)}
        found = [signatures[c] for c in callees if c in signatures]
        missing = [c for c in callees if c not in signatures]
        hint = "\nFunctions it calls (a hint; rust/out.rs has them in full):\n"
        hint += "".join(sig + "\n" for sig in found)
        if missing:
            hint += "Not in rust/out.rs: " + ", ".join(missing) + "\n"
        return hint

    @staticmethod
    def _agentDefines(code, name):
        return re.search(r"\b(?:type|struct|union|enum|const|static(?:\s+mut)?|fn)\s+"
                         + re.escape(name) + r"\b", code or "") is not None

    def agentRequest(self, name, request, contextRust=""):
        """A request the pipeline does not check itself: the agent's first
        result is returned. ``contextRust`` is what ``./check`` compiles the
        result together with."""
        kind = "agent_" + (getattr(self, "currentCallKind", "") or "request")
        (_successFlag, result) = self._agentRun(name, kind, request, contextRust)
        return result

    def chunkAndSend(self, funcOrStructName, request):
        """Every model request of this translator goes through OpenCode, so a
        call site without an agent hook of its own still reaches the same
        model the same way."""
        return self.agentRequest(funcOrStructName, request)
