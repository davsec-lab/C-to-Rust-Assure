import os
import sys

from functionAndDeps import FunctionAndDependencies
from tokenUsageTracker import TokenUsageTracker
from translationResultManager import TranslationResultManager

from gpt_translation.agent_mixin import AgentTranslationMixin
from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.config import (
    LLMModels,
    OPENCODE_CTX_WINDOW_LEN,
    OPENCODE_MAX_COMPLETION_TOKENS,
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

    # "opencode:<provider/model>" carries the model id inside the mode string;
    # getLLMModel parks it here for createTranslator.
    openCodeModel = ""

    def getLLMModel(LLMModeStr):
        if LLMModeStr.startswith("opencode:") and len(LLMModeStr) > len("opencode:"):
            Translator.openCodeModel = LLMModeStr[len("opencode:"):]
            return LLMModels.OPENCODE
        print("Invalid llm mode %r: translation runs through OpenCode, "
              "--llm-mode=opencode:<provider/model>" % LLMModeStr)
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
        else:
            print("Invalid translator mode")
            sys.exit(-1)

    def __init__(self, logger, ctxWindow, maxCompletionTokens,
                 srcLang, dstLang,
                 model, systemPrompt, translatorMode):
        self.logger = logger
        self.ctxWindow = ctxWindow
        self.maxCompletionTokens = maxCompletionTokens
        self.requestTokenLimit = self.ctxWindow - maxCompletionTokens
        self.srcLang = srcLang
        self.dstLang = dstLang
        self.model = model
        self.systemPrompt = systemPrompt
        self.translatorMode = translatorMode
        self.previousResponse = None
        self.structIdentifierToStructKey = {}
        self.tokenTracker = TokenUsageTracker(logger)
        self.currentCallKind = "function"

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


class OpenCodeTranslator(AgentTranslationMixin, Translator):
    """Translates through OpenCode sessions (see AgentTranslationMixin).
    ``model`` is an OpenCode model id, ``<provider>/<model>``, e.g.
    ``openrouter/deepseek/deepseek-v4-flash-0731``; the provider's API key is
    read by OpenCode from the environment."""

    def __init__(self, logger, model, srcLang, dstLang, systemPrompt, translatorMode):
        super().__init__(logger, OPENCODE_CTX_WINDOW_LEN, OPENCODE_MAX_COMPLETION_TOKENS,
                         srcLang, dstLang, model, systemPrompt, translatorMode)
