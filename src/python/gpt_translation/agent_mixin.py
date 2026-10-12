import json
import re

from functionAndDeps import FunctionAndDependencies

from gpt_translation._call_kind_helper import callKindContext as _callKindContext
from gpt_translation.config import (
    AGENT_MAX_STEPS,
    AGENT_TRANSLATION,
    COMPILATION_RETRIES,
)
from gpt_translation.llm_utils_mixin import LLMUtilsMixin

# Lines of C shown on each side of a usage site.
_USAGE_CONTEXT_LINES = 3
# Cap on one tool result, in characters. A function called from hundreds of
# sites must not push the C source being translated out of the model's focus.
_TOOL_OUTPUT_LIMIT = 12000
# rustc lines handed back per failed compile. extractError's 20 is sized for a
# one-shot retry prompt; an agent can afford to read past the first error.
_COMPILE_ERROR_LINES = 60

_AGENT_INSTRUCTIONS = """
You are working as an agent: you have tools, and you decide when to use them.

How a C function is USED decides how it should be translated. Before writing
any Rust, call `find_usages` on the function you are translating and read its
call sites. Use them to settle what the C definition alone leaves open:
  - whether a pointer argument may be NULL, and what the callers pass
  - whether a pointer is a single object, or a buffer paired with a length argument
  - which arguments are outputs the caller reads back afterwards
  - who owns and frees what
  - whether the function is passed around as a callback, which pins its signature
  - which return values the callers distinguish between
Use `read_c_function` to read a caller or a callee in full, and
`read_rust_function` to see how a dependency was already translated.

The translation must behave exactly like the C on every input a caller can
supply: same parameter count and order, same return values, same writes
through every pointer. Usage tells you how to express the C faithfully; it is
not a licence to drop a path no current caller happens to take.

Use `compile` to check a draft. When it compiles, hand it in with `submit` -
that is the only way to finish. Submit only the translated function(s); the
dependency definitions and dependency functions are added for you.
"""


class AgentTranslationMixin:
    """Translate one function (or one mutual-recursion group) with a tool-using
    agent instead of a single request followed by compile-error retries.

    The agent reads the function's call sites before it writes anything, can
    read any other function of the codebase, compiles its own drafts, and hands
    the result in through ``submit``. It replaces the body of
    ``compileAndRetryLoopforDepency`` and returns the same
    ``(successFlag, result)`` pair, so everything downstream (signature
    extraction, merged file, split blocks) is untouched.
    """

    def agentTranslationEnabled(self):
        if not AGENT_TRANSLATION or self.dstLang != "Rust":
            return False
        # The loop speaks the OpenAI Responses tool protocol. The Claude and
        # Gemini translators override getResponse with their own SDK and stay
        # on the single-request path.
        return type(self).getResponse is LLMUtilsMixin.getResponse

    # ── tools ──────────────────────────────────────────────────────────────

    def _agentToolSpecs(self):
        def tool(name, description, properties, required):
            return {
                "type": "function",
                "name": name,
                "description": description,
                "parameters": {
                    "type": "object",
                    "properties": properties,
                    "required": required,
                    "additionalProperties": False,
                },
            }
        nameArg = {"function": {"type": "string", "description": "C function name"}}
        codeArg = {"code": {"type": "string", "description": "Rust source of the translated function(s) only"}}
        return [
            tool("find_usages",
                 "Show every place in the C codebase where a function is called or referenced, "
                 "with surrounding lines and the name of the enclosing function.",
                 nameArg, ["function"]),
            tool("read_c_function",
                 "Return the full C source of one function of the codebase.",
                 nameArg, ["function"]),
            tool("read_rust_function",
                 "Return the Rust translation of a function that has already been translated.",
                 nameArg, ["function"]),
            tool("compile",
                 "Compile a draft together with the dependency definitions and dependency functions. "
                 "Returns OK or the rustc errors.",
                 codeArg, ["code"]),
            tool("submit",
                 "Hand in the final translation. It is compiled first; on errors they are returned "
                 "and you must fix them and submit again.",
                 codeArg, ["code"]),
        ]

    @staticmethod
    def _agentClip(text):
        if len(text) <= _TOOL_OUTPUT_LIMIT:
            return text
        return text[:_TOOL_OUTPUT_LIMIT] + "\n... [truncated]"

    def _agentFindUsages(self, name):
        funcMap = getattr(self, "agentFuncMap", None) or {}
        pattern = re.compile(r"\b" + re.escape(name) + r"\b")
        sections = []
        for caller, funcDepsObj in funcMap.items():
            if caller == name:
                continue
            lines = self.stringifyCodeBlock(funcDepsObj.funcCodeLines).split("\n")
            hits = [i for i, line in enumerate(lines) if pattern.search(line)]
            if not hits:
                continue
            # Merge overlapping context windows so two calls three lines apart
            # are shown once, in order.
            windows = []
            for i in hits:
                lo = max(0, i - _USAGE_CONTEXT_LINES)
                hi = min(len(lines), i + _USAGE_CONTEXT_LINES + 1)
                if windows and lo <= windows[-1][1]:
                    windows[-1][1] = hi
                else:
                    windows.append([lo, hi])
            body = "\n    ...\n".join("\n".join(lines[lo:hi]) for lo, hi in windows)
            sections.append(f"/* in {caller}() */\n{body}")
        # Function-pointer tables and callback fields live in type and global
        # definitions rather than in any function body.
        for node in FunctionAndDependencies.typeRegistry.all_nodes():
            code = self.stringifyCodeBlock(node.cCode) if node.cCode else ""
            if code and pattern.search(code):
                sections.append(f"/* in the definition of {node.name} */\n{code}")
        if not sections:
            if name not in funcMap:
                return f"{name} is not a function of this codebase and nothing in it refers to that name."
            return (f"No function of this codebase calls or references {name}. It is an entry point "
                    "called from outside: any input the C accepts can arrive, so follow the C "
                    "definition exactly.")
        return self._agentClip("\n\n".join(sections))

    def _agentReadCFunction(self, name):
        funcMap = getattr(self, "agentFuncMap", None) or {}
        if name not in funcMap:
            return f"{name} is not a function of this codebase (it may be a libc function or a macro)."
        return self._agentClip(self.stringifyCodeBlock(funcMap[name].funcCodeLines))

    def _agentReadRustFunction(self, name):
        blocks = getattr(self, "agentRustBlocks", None) or {}
        if name in blocks:
            return self._agentClip(blocks[name])
        funcMap = getattr(self, "agentFuncMap", None) or {}
        if name in funcMap and funcMap[name].targetLangSignature:
            return funcMap[name].targetLangSignature
        if name in funcMap:
            return (f"{name} has not been translated yet. Functions are translated callees first, "
                    "so its callers are still C; read it with read_c_function.")
        return f"{name} is not a function of this codebase."

    def _agentCheck(self, code, ctx):
        """Compile ``code`` the way the single-request path does. Returns
        ``(successFlag, errorText, result)`` where ``result`` is the block to
        store if it is accepted."""
        result = self.extractTargetCode(code, [self.dstLang.lower()]) or code
        result = self._sanitizeResultAgainstDependencies(
            result, ctx["dependencyCodes"], ctx["dependencyKeys"], ctx["dependencyFunctionNames"],
        )
        if "fn " not in result:
            return (False, "The code contains no Rust function.", result)
        prefix = ctx["contextStructs"] + "\n" + ctx["translatedFuncs"] + "\n"
        (successFlag, err) = self.compile(self.cleanCode(prefix + result))
        if not successFlag:
            patched, appliedUses = self.applyRustcImportAutoFix(result, err)
            if appliedUses:
                self.logger.info("[AGENT] auto-applied rustc import hint(s): %s", ", ".join(appliedUses))
                result = patched
                (successFlag, err) = self.compile(self.cleanCode(prefix + result))
        if successFlag:
            return (True, "", result)
        self.logger.debug("Full compilation error: %s", err)
        return (False, "\n".join(err.split("\n")[:_COMPILE_ERROR_LINES]), result)

    # ── loop ───────────────────────────────────────────────────────────────

    def _agentRequest(self, name, inputItems, tools):
        requestArgs = {
            "model": self.model,
            "input": inputItems,
            "tools": tools,
            "max_output_tokens": self.maxCompletionTokens,
        }
        # Same sampling settings as LLMUtilsMixin.getResponse: the agent is a
        # change of procedure, not of model configuration.
        if self.model.startswith("gpt-5") or self.model.startswith("o"):
            requestArgs["reasoning"] = {"effort": "low", "summary": "auto"}
        if not self.model.startswith("gpt-5"):
            requestArgs["temperature"] = 0.0
            requestArgs["top_p"] = 0.1
        with _callKindContext(self, "agent_step"):
            completion = self.client.responses.create(**requestArgs)
            self._recordTokenUsage(name, completion)
        self.logger.debug("Raw response:")
        self.logger.debug(completion)
        return completion

    def agentTranslate(self, funcName, prompt, contextStructs,
                       translatedStructPrompt, translatedStructs,
                       translatedFuncPrompt, translatedFuncsSignatures, translatedFuncs,
                       dependencyFunctionNames, dependencyCodes, dependencyKeys,
                       funcSrc, targetFunctions=None):
        targets = list(targetFunctions or [funcName])
        ctx = {
            "contextStructs": contextStructs,
            "translatedFuncs": translatedFuncs,
            "dependencyFunctionNames": dependencyFunctionNames,
            "dependencyCodes": dependencyCodes,
            "dependencyKeys": dependencyKeys,
        }

        request = prompt + "\n" + funcSrc + "\n"
        if len(translatedStructs) > 0:
            request = request + "\n" + translatedStructPrompt + "\n" + translatedStructs + "\n"
        request = request + "\n" + translatedFuncPrompt + "/* \n" + translatedFuncsSignatures + "*/\n"
        request = request + _AGENT_INSTRUCTIONS + "\nFunction(s) to translate: " + ", ".join(targets) + "\n"

        inputItems = [
            {"role": "system", "content": self.systemPrompt},
            {"role": "user", "content": request},
        ]
        tools = self._agentToolSpecs()
        lastResult = ""
        failedSubmits = 0

        def handIn(code):
            nonlocal lastResult, failedSubmits
            (successFlag, err, result) = self._agentCheck(code, ctx)
            lastResult = result
            if successFlag:
                return (True, "OK")
            failedSubmits += 1
            return (False, "Compilation failed. Fix it and call submit again.\n" + err)

        for step in range(1, AGENT_MAX_STEPS + 1):
            completion = self._agentRequest(funcName, inputItems, tools)
            output = list(getattr(completion, "output", None) or [])
            inputItems.extend(output)
            calls = [item for item in output if getattr(item, "type", None) == "function_call"]

            if not calls:
                # The model answered in prose. If the answer carries code, take
                # it as a submission rather than spend a step asking again.
                text = getattr(completion, "output_text", "") or ""
                code = self.extractTargetCode(text, [self.dstLang.lower()])
                if code.strip() and "fn " in code:
                    self.logger.info("[AGENT] %s step %d: code in a text reply, taken as submit", funcName, step)
                    (accepted, message) = handIn(code)
                    if accepted:
                        return self._agentFinish(funcName, targets, step, lastResult)
                else:
                    message = "Continue with the tools, and finish by calling submit with the Rust code."
                inputItems.append({"role": "user", "content": message})
            else:
                for call in calls:
                    try:
                        args = json.loads(call.arguments or "{}")
                    except ValueError:
                        args = {}
                    name = args.get("function", "")
                    code = args.get("code", "")
                    accepted = False
                    if call.name == "find_usages":
                        toolOutput = self._agentFindUsages(name)
                    elif call.name == "read_c_function":
                        toolOutput = self._agentReadCFunction(name)
                    elif call.name == "read_rust_function":
                        toolOutput = self._agentReadRustFunction(name)
                    elif call.name == "compile":
                        (successFlag, err, lastResult) = self._agentCheck(code, ctx)
                        toolOutput = "OK - it compiles. Call submit to hand it in." if successFlag else err
                    elif call.name == "submit":
                        (accepted, toolOutput) = handIn(code)
                    else:
                        toolOutput = "Unknown tool: " + str(call.name)
                    self.logger.info("[AGENT] %s step %d: %s(%s) -> %d chars",
                                     funcName, step, call.name, name or "<code>", len(toolOutput))
                    self.logger.debug("[AGENT] %s tool output: %s", funcName, toolOutput)
                    if accepted:
                        return self._agentFinish(funcName, targets, step, lastResult)
                    inputItems.append({
                        "type": "function_call_output",
                        "call_id": call.call_id,
                        "output": toolOutput,
                    })

            # Same budget of failed hand-ins as the single-request path has of
            # failed compiles: the first attempt plus COMPILATION_RETRIES.
            if failedSubmits > COMPILATION_RETRIES:
                self.logger.info("[AGENT] %s: %d failed submissions, giving up", funcName, failedSubmits)
                return (False, lastResult)

        self.logger.info("[AGENT] %s: no accepted submission within %d steps", funcName, AGENT_MAX_STEPS)
        return (False, lastResult)

    def _agentFinish(self, funcName, targets, step, result):
        self.logger.info("[AGENT] %s: accepted at step %d", funcName, step)
        blocks = getattr(self, "agentRustBlocks", None)
        if blocks is None:
            blocks = self.agentRustBlocks = {}
        for target in targets:
            blocks[target] = result
        return (True, result)
