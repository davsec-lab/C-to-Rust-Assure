import os
import random
import re
import sys
import time
from collections import OrderedDict

try:
    from openai import OpenAI
except ImportError:
    OpenAI = None

try:
    import anthropic
except ImportError:
    anthropic = None

try:
    from google import genai
    from google.genai import errors as genai_errors
    from google.genai import types as genai_types
except ImportError:
    genai = None
    genai_errors = None
    genai_types = None

from functionAndDeps import FunctionAndDependencies
from tokenUsageTracker import TokenUsageTracker
from translationResultManager import TranslationResultManager

from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.config import (
    CLAUDE_CTX_WINDOW_LEN,
    CLAUDE_HAIKU_4_5_MODEL,
    CLAUDE_HAIKU_CTX_WINDOW_LEN,
    CLAUDE_HAIKU_MAX_COMPLETION_TOKENS,
    CLAUDE_MAX_COMPLETION_TOKENS,
    CLAUDE_OPUS_4_1_MODEL,
    CLAUDE_SONNET_4_6_MODEL,
    GEMINI_CTX_WINDOW_LEN,
    GEMINI_FLASH_MODEL,
    GEMINI_MAX_COMPLETION_TOKENS,
    GEMINI_PRO_MODEL,
    GPT5_MINI_MODEL,
    GPT5_MODEL,
    GPT5_MODEL_CTX_WINDOW_LEN,
    GPT5_MODEL_MAX_COMPLETION_TOKENS,
    GPT5_NANO_MODEL,
    LLMModels,
    Stage,
    TranslatorModes,
)
from gpt_translation.dependency_utils_mixin import DependencyUtilsMixin
from gpt_translation.llm_utils_mixin import LLMUtilsMixin
from gpt_translation.performance_mixin import PerformanceMixin
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
from gpt_translation.translation_utils_mixin import TranslationUtilsMixin


class Translator(
    CodeUtilsMixin,
    DependencyUtilsMixin,
    SymbolExtractionMixin,
    PerformanceMixin,
    TranslationUtilsMixin,
    TranslationPipelineMixin,
    LLMUtilsMixin,
):
    """
    https://platform.openai.com/docs/guides/text-generation/chat-completions-api
    """

    def getLLMModel(LLMModeStr):
        if LLMModeStr == "claude" or LLMModeStr == "claude-opus" or LLMModeStr == "claude-opus-4-1":
            return LLMModels.CLAUDE_OPUS
        elif LLMModeStr in ("claude-sonnet", "claude-sonnet-4-6", "sonnet"):
            return LLMModels.CLAUDE_SONNET
        elif LLMModeStr in ("claude-haiku", "claude-haiku-4-5", "haiku"):
            return LLMModels.CLAUDE_HAIKU
        elif LLMModeStr in ("gemini", "gemini-flash", "gemini-3.5-flash"):
            return LLMModels.GEMINI_FLASH
        elif LLMModeStr in ("gemini-pro", "gemini-3.1-pro", "gemini-3.1-pro-preview"):
            return LLMModels.GEMINI_PRO
        elif LLMModeStr == "gpt-5":
            return LLMModels.GPT_5
        elif LLMModeStr in ("gpt-5-mini", "gpt-5.4-mini", "mini"):
            return LLMModels.GPT_5_MINI
        elif LLMModeStr in ("gpt-5-nano", "nano"):
            return LLMModels.GPT_5_NANO
        else:
            print("Invalid Mode Str")
            sys.exit(-1)

    def getTranslatorMode(translatorModeStr):
        if translatorModeStr == "basic":
            return TranslatorModes.BASIC_CHUNK_CHAIN
        elif translatorModeStr == "feedback":
            return TranslatorModes.COMPILATION_FEEDBACK
        elif translatorModeStr == "cf-struct-replay":
            return TranslatorModes.CF_STRUCT_REPLAY
        elif translatorModeStr == "struct-fn-replay":
            return TranslatorModes.CF_STRUCT_FN_REPLAY
        elif translatorModeStr == "single-request-merge":
            return TranslatorModes.CF_SINGLE_REQUEST_MERGE
        elif translatorModeStr == "new-mode":
            return TranslatorModes.NEW_MODE
        elif translatorModeStr == "new-mode-single-stage":
            return TranslatorModes.NEW_MODE_SINGLE_STAGE
        elif translatorModeStr == "new-mode-merged-views":
            return TranslatorModes.NEW_MODE_MERGED_VIEWS
        elif translatorModeStr == "new-mode-resume":
            return TranslatorModes.NEW_MODE_RESUME
        else:
            print("Invalid translator mode")
            sys.exit(-1)

    def __init__(self, logger, baseUrl, apiKey, ctxWindow, maxCompletionTokens,
                 srcLang, dstLang,
                 model, systemPrompt, translatorMode):
        self.logger = logger
        self.baseUrl = baseUrl
        self.apiKey = apiKey
        self.ctxWindow = ctxWindow
        self.maxCompletionTokens = maxCompletionTokens
        self.requestTokenLimit = self.ctxWindow - maxCompletionTokens
        self.srcLang = srcLang
        self.dstLang = dstLang
        self.model = model
        self.systemPrompt = systemPrompt
        self.translatorMode = translatorMode
        self.previousResponse = None
        self.stage = ""
        # NEW_MODE_SINGLE_STAGE plumbing; CLI sets these post-construction.
        self.targetStage = None
        self.priorStageStateDir = None
        self.structIdentifierToStructKey = {}
        self.stageCheckStats = OrderedDict()
        self.tokenTracker = TokenUsageTracker(logger)
        self.currentCallKind = "function"
        if OpenAI is None:
            raise ImportError("openai package is required to use Translator")
        self.client = OpenAI(api_key=self.apiKey)

    def fetchStageCheckPrompt(self, stage):
        if stage == Stage.Stage_2:
            return """Identify types used as boolean values and determine whether converting them to bool would make the code more idiomatic."""
        elif stage == Stage.Stage_3:
            return """Identify types used as arrays in the following code and determine whether converting them to std::vector would make the code more idiomatic.

            If converting to std::vector, all of the following feature of std::vector will make the code more idiomatic:
            - Avoid manual memory management and resizing.
            - Use push_back() to append elements.
            - Use size() to query the number of elements.
            - Use resize() to remove elements when needed.
            - If operations are only at the end, avoid manual index tracking."""
        elif stage == Stage.Stage_4:
            return """Identify types used as strings in the following code and determine whether converting them to std::string would make the code more idiomatic. Please consider the change based on the following :
            1. We don't need any manual memory allocate operation.
            2. We don't need any custom allocator.
            3. We don't need exactly same semantic in C. for example, std::string cannot be null but char * can, we will wrap std::string with optional in the following step.
            4. We don't need exactly same semantic in C. for example, We don't need exactly same ownership semantic and we will lift the pointer to reference or smart pointers in the following steps.
            5. Stage_3 already converted byte-buffer char* fields to std::vector<unsigned char>. Only act on char* fields that are genuinely TEXT (ASCII / UTF-8 identifiers, format strings) and were NOT picked up by Stage_3.
            """
        elif stage == Stage.Stage_5:
            return """Identify types used as lists and determine whether converting them to std::list would make the code more idiomatic.

    Only use std::list when frequent insertions/removals in the middle are required; otherwise prefer std::vector."""
        elif stage == Stage.Stage_6:
            return """Identify types used as maps and determine whether converting them to std::unordered_map would make the code more idiomatic."""
        elif stage == Stage.Stage_7:
            return """Identify variables (parameters, fields, locals) where null is a STRUCTURAL state the function's logic distinguishes from non-null — wrap those in `std::optional<T>`. Do NOT wrap variables whose only null handling is a defensive top-of-function early-return guard followed by unconditional dereference; those are non-null by caller contract and Stage_9 will lift them to a reference and delete the guard."""
        elif stage == Stage.Stage_9:
            return """Decide ownership for every remaining raw pointer to a SINGLE object in parameters, fields, return types, and locals. Non-owning string views were already lowered by Stage_4 to `std::basic_string_view<char>` — leave those alone. Replace remaining `T*` with references, values, `std::unique_ptr`, or `std::shared_ptr` based on whether ownership transfers and whether the handle is the sole owner. A leftover defensive top-of-function null guard (`if (p == nullptr) return ...;`) does NOT block lifting a parameter to `T&` — Stage_7 left it unwrapped because the caller's contract is non-null; delete the guard along with the lift. Preserve any `std::optional<T>` wrapper Stage_7 already added rather than collapsing nullability into a smart-pointer's empty state."""
        elif stage == Stage.Stage_10:
            return """Transpile the code to Rust, leveraging idiomatic Rust features such as ownership, borrowing, and safe abstractions."""
        return ""

    def ensureStageCheckStats(self, stages=None):
        if stages is None:
            stages = list(Stage)
        for stage in stages:
            stageKey = stage.name if isinstance(stage, Stage) else str(stage)
            if stageKey not in self.stageCheckStats:
                self.stageCheckStats[stageKey] = {"yes": 0, "no": 0}

    def recordStageCheckResult(self, stage, approved):
        stageKey = stage.name if isinstance(stage, Stage) else str(stage)
        self.ensureStageCheckStats([stageKey])
        resultKey = "yes" if approved else "no"
        self.stageCheckStats[stageKey][resultKey] += 1

    def emitStageCheckSummary(self, outputDir, stages=None):
        self.ensureStageCheckStats(stages)
        summaryLines = ["StageCheck Summary:"]
        for stageKey, counts in self.stageCheckStats.items():
            summaryLines.append(f"{stageKey}: Yes={counts['yes']}, No={counts['no']}")

        summary = "\n".join(summaryLines)
        self.logger.info(summary)

        if outputDir:
            summaryPath = os.path.join(outputDir, "stagecheck_summary.txt")
            with open(summaryPath, "w") as summaryFile:
                summaryFile.write(summary + "\n")

    def isFitInLimits(self, request):
        tokens = self.countTokens(request)
        return tokens < self.requestTokenLimit and tokens < self.maxCompletionTokens

    def changeStage(self, stageStr):
        self.stage = stageStr

    def preanalyze(self, funcMap, individualFuncPath):
        analysisFilePath = os.path.join(individualFuncPath, "analysis.log")
        totalFuncs = len(funcMap)

        cumulResultMatrix = {}
        cumulResultMatrix['full'] = [0, 0]
        cumulResultMatrix['func'] = [0, 0]
        cumulResultMatrix['decl'] = [0, 0]

        with open(analysisFilePath, 'w') as f:
            f.write("Function: Tokens -> Full-Fits-Request : Full-Fits-Response: Function-Fits-Request: Function-Fits-Response: Decls-Fit-Request: Decls-Fit-Response \n")

            for func in funcMap:
                fullSrc = funcMap[func].typeDeclDefCodeLines + "\n" + funcMap[func].funcCodeLines

                resultMatrix = {}
                resultMatrix['full'] = [False, False]
                resultMatrix['func'] = [False, False]
                resultMatrix['decl'] = [False, False]

                tokens = self.countTokens(fullSrc)
                if tokens < self.requestTokenLimit:
                    resultMatrix['full'][0] = True
                    cumulResultMatrix['full'][0] = cumulResultMatrix['full'][0] + 1
                if tokens < self.maxCompletionTokens:
                    resultMatrix['full'][1] = True
                    cumulResultMatrix['full'][1] = cumulResultMatrix['full'][1] + 1

                tokens = self.countTokens(funcMap[func].funcCodeLines)
                if tokens < self.requestTokenLimit:
                    resultMatrix['func'][0] = True
                    cumulResultMatrix['func'][0] = cumulResultMatrix['func'][0] + 1
                if tokens < self.maxCompletionTokens:
                    resultMatrix['func'][1] = True
                    cumulResultMatrix['func'][1] = cumulResultMatrix['func'][1] + 1

                tokens = self.countTokens(funcMap[func].typeDeclDefCodeLines)
                if tokens < self.requestTokenLimit:
                    resultMatrix['decl'][0] = True
                    cumulResultMatrix['decl'][0] = cumulResultMatrix['decl'][0] + 1
                if tokens < self.maxCompletionTokens:
                    resultMatrix['decl'][1] = True
                    cumulResultMatrix['decl'][1] = cumulResultMatrix['decl'][1] + 1

                f.write("%s: %d -> %s : %s: %s: %s: %s: %s \n" % (func, tokens, resultMatrix['full'][0], resultMatrix['full'][1], resultMatrix['func'][0], resultMatrix['func'][1], resultMatrix['decl'][0], resultMatrix['decl'][1]))
            f.write("Summary:\n")
            f.write("Total function: %d\n" % totalFuncs)
            f.write("Full function + decls -> %d fits in request limit, %d fits in response limit\n" % (cumulResultMatrix['full'][0], cumulResultMatrix['full'][1]))
            f.write("Function only -> %d fits in request limit, %d fits in response limit\n" % (cumulResultMatrix['func'][0], cumulResultMatrix['func'][1]))
            f.write("Decls only -> %d fits in request limit, %d fits in response limit\n" % (cumulResultMatrix['decl'][0], cumulResultMatrix['decl'][1]))

    def updateFuncMap(self, funcMap):
        translationResultManager = TranslationResultManager()
        for typeKey in FunctionAndDependencies.typeRegistry.sorted_keys():
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            storageKey = typeKey.storage_key()
            newTranslateResult = translationResultManager.structTranslateResults[storageKey][translationResultManager.currentStage]
            typeNode.cCode = newTranslateResult

        for funcSum in funcMap:
            dependObj = funcMap[funcSum]
            newTranslateResult = translationResultManager.functionTranslateResults[funcSum][translationResultManager.currentStage]
            dependObj.funcCodeLines = newTranslateResult
            dependObj.typeDeclDefCodeLines = ""

class Gpt5Translator(Translator):
    _LOCAL_TIMESPEC_PATTERN = re.compile(
        r'\bstruct\s+timespec\s*\{[^{}]*\}\s*;',
        re.DOTALL,
    )
    _TIMESPEC_PROVIDER_INCLUDE_PATTERN = re.compile(
        r'#\s*include\s*<(ctime|cstdlib|cstdio|cstring|time\.h|sys/time\.h)>'
    )

    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        super().__init__(logger, "", apiKey, GPT5_MODEL_CTX_WINDOW_LEN, GPT5_MODEL_MAX_COMPLETION_TOKENS,
                         srcLang, dstLang, GPT5_MODEL, systemPrompt, translatorMode)

    # Budget-tier subclass: only the model name changes; all other behavior (cleanCode's timespec handling etc.) is fully inherited.
    @classmethod
    def _makeCheapVariant(cls, modelName):
        class _Variant(cls):
            def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
                Translator.__init__(self, logger, "", apiKey,
                                    GPT5_MODEL_CTX_WINDOW_LEN, GPT5_MODEL_MAX_COMPLETION_TOKENS,
                                    srcLang, dstLang, modelName, systemPrompt, translatorMode)
        _Variant.__name__ = f"Gpt5Translator_{modelName.replace('-', '_').replace('.', '_')}"
        return _Variant

    def cleanCode(self, code):
        if self._LOCAL_TIMESPEC_PATTERN.search(code):
            code = self._LOCAL_TIMESPEC_PATTERN.sub('', code)
            if 'timespec' in code and not self._TIMESPEC_PROVIDER_INCLUDE_PATTERN.search(code):
                code = '#include <ctime>\n' + code
        return super().cleanCode(code)


class Claude_Opus_Translator(Translator):
    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        if anthropic is None:
            raise ImportError("anthropic package is required to use Claude_Opus_Translator")
        self.logger = logger
        self.baseUrl = ""
        self.apiKey = apiKey
        self.ctxWindow = CLAUDE_CTX_WINDOW_LEN
        self.maxCompletionTokens = CLAUDE_MAX_COMPLETION_TOKENS
        self.requestTokenLimit = self.ctxWindow - self.maxCompletionTokens
        self.srcLang = srcLang
        self.dstLang = dstLang
        self.model = CLAUDE_OPUS_4_1_MODEL
        self.systemPrompt = systemPrompt
        self.translatorMode = translatorMode
        self.stage = ""
        self.structIdentifierToStructKey = {}
        self.stageCheckStats = OrderedDict()
        self.tokenTracker = TokenUsageTracker(logger)
        self.currentCallKind = "function"
        self.client = anthropic.Anthropic(api_key=self.apiKey, timeout=3600.0, max_retries=5)

    def getFingerPrint(self):
        self.logger.debug("Cannot fingerprint Anthropic models.")
        return ("", "")

    def isResponseTruncated(self, completion, funcOrStructName):
        finishReason = completion.stop_reason
        self.logger.debug("Finish reason for function/struct %s: %s", funcOrStructName, finishReason)
        return finishReason == "length"

    def getResponse(self, request):
        self.logger.debug("Sending request: %s", request)
        completion = self.client.messages.create(
            model=self.model,
            system=self.systemPrompt,
            messages=[
                {
                    "role": "user",
                    "content": [
                        {
                            "type": "text",
                            "text": request
                        }
                    ]
                }
            ],
            max_tokens=self.maxCompletionTokens,
            temperature=0.0)
        rawResponse = completion.content[0].text
        self.logger.debug("Rust raw response: %s", rawResponse)
        # Stash the raw (pre-extractTargetCode) text so stageCheck can find
        # yes/no answers that the model placed OUTSIDE the ```cpp``` fence.
        # extractTargetCode strips everything but the code block, which
        # silently drops a trailing "no" when sonnet replies in the form:
        #   "Final result code is:
        #    ```cpp <code> ```
        #    no"
        # Observed in cjson_new_validator_2026-05-11_16-07-14.log line 12427.
        self.lastRawResponse = rawResponse
        response = self.extractTargetCode(rawResponse, [self.dstLang.lower()])
        return (completion, response)


class Claude_Sonnet_Translator(Claude_Opus_Translator):
    """Cheaper debug variant: same wire protocol as Opus, smaller model."""
    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        super().__init__(logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode)
        self.model = CLAUDE_SONNET_4_6_MODEL


class Claude_Haiku_Translator(Claude_Opus_Translator):
    """Cheapest debug variant. API call shape mirrors Opus/Sonnet exactly
    (temperature=0.0, timeout=3600, max_retries=5, system+messages
    structure inherited from Claude_Opus_Translator.getResponse). The
    context window and max-completion cap are overridden because Haiku
    4.5 only supports 200K / 64K, vs Opus/Sonnet's 1M / 128K — leaving
    them at the parent's values would let preanalyze() silently report
    "fits" for prompts the Anthropic API will reject at request time.
    """
    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        super().__init__(logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode)
        self.model = CLAUDE_HAIKU_4_5_MODEL
        self.ctxWindow = CLAUDE_HAIKU_CTX_WINDOW_LEN
        self.maxCompletionTokens = CLAUDE_HAIKU_MAX_COMPLETION_TOKENS
        self.requestTokenLimit = self.ctxWindow - self.maxCompletionTokens


class Gemini_Flash_Translator(Translator):
    """Gemini 3.5 Flash backend. Mirrors Claude_Opus_Translator's pattern
    (bypass Translator.__init__'s OpenAI client construction and wire up
    the google-genai client instead) so the rest of the pipeline —
    mixins, stageCheck, retry loop — sees the same surface as the other
    providers.

    Key differences from the Claude/OpenAI clients:
      - thinking_budget=-1 (dynamic): 3.5 Flash bills thinking tokens at
        the same $9/1M output rate. Initially set to 0 (off) to keep cost
        flat on a one-call-per-function workflow, but flipped to dynamic
        after libcsv runs surfaced repeated semantic-translation bugs the
        model needed reasoning to catch — e.g. mixing std::vector size()
        with capacity() in csv_parse, or dropping cross-call state that
        was a struct field in the C original. Dynamic lets simple
        translations stay cheap and only spends thinking tokens when the
        prompt actually needs them.
      - usage_metadata: Gemini reports counts on `.usage_metadata` not
        `.usage`. Field-name aliasing is handled in
        tokenUsageTracker._extractUsage.
      - finish_reason on the candidate object, not the top-level
        completion — surfaced via isResponseTruncated below.
    """
    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        if genai is None:
            raise ImportError("google-genai package is required to use Gemini_Flash_Translator")
        self.logger = logger
        self.baseUrl = ""
        self.apiKey = apiKey
        self.ctxWindow = GEMINI_CTX_WINDOW_LEN
        self.maxCompletionTokens = GEMINI_MAX_COMPLETION_TOKENS
        self.requestTokenLimit = self.ctxWindow - self.maxCompletionTokens
        self.srcLang = srcLang
        self.dstLang = dstLang
        self.model = GEMINI_FLASH_MODEL
        self.systemPrompt = systemPrompt
        self.translatorMode = translatorMode
        self.previousResponse = None
        self.stage = ""
        self.targetStage = None
        self.priorStageStateDir = None
        self.structIdentifierToStructKey = {}
        self.stageCheckStats = OrderedDict()
        self.tokenTracker = TokenUsageTracker(logger)
        self.currentCallKind = "function"
        self.client = genai.Client(api_key=self.apiKey)

    def getFingerPrint(self):
        self.logger.debug("Cannot fingerprint Gemini models.")
        return ("", "")

    def isResponseTruncated(self, completion, funcOrStructName):
        candidates = getattr(completion, "candidates", None) or []
        if not candidates:
            return False
        finishReason = getattr(candidates[0], "finish_reason", None)
        finishReasonStr = getattr(finishReason, "name", None) or str(finishReason)
        self.logger.debug("Finish reason for function/struct %s: %s", funcOrStructName, finishReasonStr)
        return finishReasonStr == "MAX_TOKENS"

    # Retry policy for transient Gemini API failures. Mirrors the Anthropic
    # SDK's max_retries=5 / exponential-backoff behaviour, which we get for
    # free on the Claude path via the SDK's built-in retry but which
    # google-genai does NOT do client-side. Without this, a single 503
    # ("model is currently experiencing high demand") aborts a multi-hour
    # translation run.
    _RETRY_MAX_ATTEMPTS = 5
    _RETRY_BASE_DELAY_S = 1.0
    _RETRY_MAX_DELAY_S = 30.0

    def _isTransientGeminiError(self, exc):
        if genai_errors is None:
            return False
        # 5xx are always transient (incl. 503 "high demand", 500, 502, 504).
        if isinstance(exc, genai_errors.ServerError):
            return True
        # 4xx is mostly client error (bad request / unauthenticated / not
        # found). Only 429 (rate limit) is worth retrying.
        if isinstance(exc, genai_errors.ClientError):
            return getattr(exc, "code", None) == 429
        return False

    def _generateContentWithRetry(self, model, contents, config):
        lastExc = None
        for attempt in range(self._RETRY_MAX_ATTEMPTS):
            try:
                return self.client.models.generate_content(
                    model=model, contents=contents, config=config,
                )
            except Exception as exc:
                if not self._isTransientGeminiError(exc):
                    raise
                lastExc = exc
                # Exponential backoff with full jitter: pick a delay
                # uniformly from [0, min(base*2^attempt, cap)]. Full jitter
                # is the cheap "thundering herd" defence for the
                # multithreaded-Gemini case we may want later; today we
                # force single-thread, so it costs nothing either way.
                delay = min(
                    self._RETRY_BASE_DELAY_S * (2 ** attempt),
                    self._RETRY_MAX_DELAY_S,
                )
                delay = random.uniform(0, delay)
                self.logger.warning(
                    "Gemini transient error (attempt %d/%d): %s — retrying in %.1fs",
                    attempt + 1, self._RETRY_MAX_ATTEMPTS, exc, delay,
                )
                time.sleep(delay)
        self.logger.error(
            "Gemini request still failing after %d attempts; giving up.",
            self._RETRY_MAX_ATTEMPTS,
        )
        raise lastExc

    def getResponse(self, request):
        self.logger.debug("Sending request: %s", request)
        config = genai_types.GenerateContentConfig(
            system_instruction=self.systemPrompt,
            temperature=0.0,
            top_p=0.1,
            seed=1000,
            max_output_tokens=self.maxCompletionTokens,
            # thinking_budget=-1 → dynamic (model chooses budget per request).
            # Was 0 (thinking off) for cost; flipped on after seeing repeated
            # semantic-translation bugs (size/capacity mix-up, dropped
            # cross-call state) that need reasoning to catch. Cost trade:
            # thinking tokens bill at output rate, but landing translations
            # in fewer retries usually offsets that.
            thinking_config=genai_types.ThinkingConfig(thinking_budget=-1),
        )
        completion = self._generateContentWithRetry(
            model=self.model,
            contents=request,
            config=config,
        )
        rawResponse = completion.text or ""
        self.logger.debug("Raw response: %s", rawResponse)
        # See Claude_Opus_Translator.getResponse for rationale.
        self.lastRawResponse = rawResponse
        response = self.extractTargetCode(rawResponse, [self.dstLang.lower()])
        return (completion, response)


class Gemini_Pro_Translator(Gemini_Flash_Translator):
    """Pricier Pro variant. Same wire protocol as Flash
    (system_instruction, thinking_budget=-1 dynamic, usage_metadata
    field name) — only the model id changes. Context and max-output
    caps are inherited from Flash because Gemini 3.1 Pro shares the
    1M / 64K limits of the family; split into per-variant constants
    if they ever diverge. The model id carries the `-preview` suffix
    because the GA `gemini-3.1-pro` route does not exist yet — the
    API returns 404 for the unsuffixed name. When Google promotes it
    out of preview, drop the suffix here.
    """
    def __init__(self, logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode):
        super().__init__(logger, apiKey, srcLang, dstLang, systemPrompt, translatorMode)
        self.model = GEMINI_PRO_MODEL


if __name__ == "__main__":
    print("123")


# Budget-tier concrete classes (module-level, for easy import)
Gpt5MiniTranslator = Gpt5Translator._makeCheapVariant(GPT5_MINI_MODEL)
Gpt5NanoTranslator = Gpt5Translator._makeCheapVariant(GPT5_NANO_MODEL)
