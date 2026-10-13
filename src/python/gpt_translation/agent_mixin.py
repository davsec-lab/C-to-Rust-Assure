import atexit
import json
import os
import re
import shutil
import signal
import subprocess
import sys
import tempfile
import time
import types

from functionAndDeps import FunctionAndDependencies

from gpt_translation.config import (
    AGENT_MAX_STEPS,
    AGENT_TIMEOUT,
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
- `rust/context.rs` - the Rust already produced for this codebase that your
  result is compiled together with: the translated definitions it depends on
  and, for a function task, the functions translated so far.
- `rust/out.rs` - write your result here. Only what the task asks for; repeat
  nothing that is already in `rust/context.rs`.
- `./check` - compiles `rust/context.rs` + `rust/out.rs` the way the pipeline
  does. Prints `OK` or the rustc errors. It is the only shell command you can
  run; search and read with the grep, glob and read tools.

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
- For a definitions task, write exactly one Rust item per C definition, under
  the C name. Only those items are kept: a helper type or wrapper of your own
  is dropped, and whatever depended on it stops compiling.
- Nothing is imported for you. Write every `use` your code needs, or use full
  paths (`libc::free`, `std::ptr::null_mut`). Only `std` and the `libc` crate
  are available. A `use` that `rust/context.rs` already has is in scope; do not
  repeat it.
- Edit nothing except `rust/out.rs`.
- Do not add a `main`, and do not write a stand-in for a function that is
  called but not defined.
- Work only inside this directory. Do not use the network.
"""

_CHECK_SCRIPT = """#!/bin/bash
exec {python} {checker} "$(cd "$(dirname "$0")" && pwd)"
"""


class AgentTranslationMixin:
    """Translate with OpenCode instead of with direct model requests.

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

    @staticmethod
    def _agentFileName(name):
        return re.sub(r"[^\w.-]", "_", str(name)) or "_"

    def _agentWorkspace(self):
        if getattr(self, "agentRoot", None):
            return os.path.join(self.agentRoot, "ws")
        self.agentRoot = tempfile.mkdtemp(prefix="assure_agent_")
        atexit.register(shutil.rmtree, self.agentRoot, True)
        ws = os.path.join(self.agentRoot, "ws")
        for sub in ("c/functions", "c/types", "rust"):
            os.makedirs(os.path.join(ws, sub))

        codebase = getattr(self, "agentCodebasePath", None)
        if codebase and os.path.isdir(codebase):
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
        with open(os.path.join(ws, "opencode.json"), "w") as f:
            json.dump(self._agentOpenCodeConfig(), f, indent=2)
        checkPath = os.path.join(ws, "check")
        with open(checkPath, "w") as f:
            f.write(_CHECK_SCRIPT.format(
                python=sys.executable,
                checker=os.path.join(os.path.dirname(os.path.abspath(__file__)), "agent_check.py"),
            ))
        os.chmod(checkPath, 0o755)
        return ws

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
                    apiError = {"status": data.get("statusCode"), "message": str(data.get("message") or "")}
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

    def _agentInvokeWithBackoff(self, name, kind, message, sessionId, outPath):
        """_agentInvoke, waiting out provider errors that left no result. A
        run that cannot work at all (bad key, no credit, unroutable model)
        raises instead of failing every remaining unit one by one."""
        for pause in _API_ERROR_BACKOFF + (None,):
            (foundSession, finalText, apiError) = self._agentInvoke(name, kind, message, sessionId)
            if not apiError or os.path.exists(outPath):
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

    # ── one unit ───────────────────────────────────────────────────────────

    def _agentRun(self, name, kind, task, contextRust, check=None):
        """Have the agent carry out ``task`` and return ``(successFlag, result)``.

        ``check(code) -> (successFlag, errorText, result)`` is the pipeline's
        own verdict on ``rust/out.rs``. A rejection is sent back into the same
        session, at most COMPILATION_RETRIES times - the budget the
        single-request path has for compile-error retries. With no ``check``
        the first result is returned as is.
        """
        ws = self._agentWorkspace()
        outPath = os.path.join(ws, "rust", "out.rs")
        with open(os.path.join(ws, "rust", "context.rs"), "w") as f:
            f.write(contextRust or "")
        with open(os.path.join(ws, "task.md"), "w") as f:
            f.write(task)
        if os.path.exists(outPath):
            os.remove(outPath)

        start = "Read task.md and carry it out. Write the result to rust/out.rs."
        message = start
        sessionId = None
        lastResult = ""
        for attempt in range(COMPILATION_RETRIES + 1):
            (foundSession, finalText) = self._agentInvokeWithBackoff(
                name, kind if attempt == 0 else kind + "_retry", message, sessionId, outPath)
            sessionId = sessionId or foundSession
            if os.path.exists(outPath):
                with open(outPath, errors="replace") as f:
                    code = f.read()
            else:
                # Some models answer in the reply instead of writing the file.
                code = self.extractTargetCode(finalText, [self.dstLang.lower()])
            if check is None:
                return (True, code)
            if code.strip():
                (successFlag, err, lastResult) = check(code)
                if successFlag:
                    self.logger.info("[AGENT] %s: accepted on attempt %d", name, attempt + 1)
                    return (True, lastResult)
                message = ("rust/out.rs was rejected by the pipeline's compile check. Fix rust/out.rs.\n"
                           + "\n".join(err.split("\n")[:_COMPILE_ERROR_LINES * 2]))
            else:
                message = "rust/out.rs is missing or empty. Write the result to rust/out.rs."
            if not sessionId:
                # Nothing to continue: the next run starts from the task again.
                message = start + "\n" + message
        self.logger.info("[AGENT] %s: no accepted result after %d attempts", name, COMPILATION_RETRIES + 1)
        return (False, lastResult)

    def agentTranslate(self, funcName, prompt, contextStructs,
                       translatedStructPrompt, translatedStructs,
                       translatedFuncPrompt, translatedFuncsSignatures, translatedFuncs,
                       dependencyFunctionNames, dependencyCodes, dependencyKeys,
                       funcSrc, targetFunctions=None):
        """Agent replacement for the body of compileAndRetryLoopforDepency."""
        targets = list(targetFunctions or [funcName])
        task = prompt + "\n" + funcSrc + "\n"
        if len(translatedStructs) > 0:
            task = task + "\n" + translatedStructPrompt + "\n" + translatedStructs + "\n"
        task = task + "\n" + translatedFuncPrompt + "/* \n" + translatedFuncsSignatures + "*/\n"
        task = task + "\nFunction(s) to translate: " + ", ".join(targets) + "\n"
        prefix = contextStructs + "\n" + translatedFuncs + "\n"

        def check(code):
            result = self._sanitizeResultAgainstDependencies(
                code, dependencyCodes, dependencyKeys, dependencyFunctionNames)
            if "fn " not in result:
                return (False, "rust/out.rs contains no Rust function.", result)
            (successFlag, err) = self.compile(self.cleanCode(prefix + result))
            if not successFlag:
                patched, appliedUses = self.applyRustcImportAutoFix(result, err)
                if appliedUses:
                    self.logger.info("[AGENT] auto-applied rustc import hint(s) to %s: %s",
                                     funcName, ", ".join(appliedUses))
                    result = patched
                    (successFlag, err) = self.compile(self.cleanCode(prefix + result))
            if not successFlag:
                self.logger.debug("Full compilation error: %s", err)
            return (successFlag, err, result)

        return self._agentRun(funcName, "agent_function", task, prefix, check)

    def agentTranslateTypeBatch(self, batchName, request, batchNodes, predecessorContext, dependencyCodes, dependencyKeys):
        """Agent replacement for the request in _translateTypeBatchWithLlm.
        Returns the Rust for the batch; the caller sanitizes, compiles and
        splits it per definition as before."""
        names = ", ".join(node.name for node in batchNodes)

        def check(code):
            result = self._sanitizeResultAgainstDependencies(code, dependencyCodes, dependencyKeys)
            # Judge what will be stored, not what was written: the pipeline
            # keeps one definition per C definition and drops everything else,
            # so a batch that compiles only thanks to a helper item of the
            # agent's own would break every unit translated after it.
            kept = "\n".join(c for (_node, c) in self._splitTypeBatchResult(result, batchNodes) if c)
            combined = predecessorContext + "\n" + kept if predecessorContext else kept
            (successFlag, err) = self.compile(self.cleanCode(combined))
            if not successFlag:
                self.logger.debug("Full compilation error: %s", err)
                err = ("Only the definitions of " + names + " are kept from rust/out.rs, one Rust item per C "
                       "definition under the same name; every other item (helper type, wrapper struct, extra "
                       "constant) is dropped. This is what was kept:\n" + kept
                       + "\nIt does not compile:\n" + err)
            return (successFlag, err, code)

        (_successFlag, result) = self._agentRun(batchName, "agent_type_batch", request, predecessorContext, check)
        return result

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
