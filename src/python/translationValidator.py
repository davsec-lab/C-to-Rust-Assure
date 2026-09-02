import os
import logging
import sys
import re
import glob
import json
from openai import OpenAI
import subprocess
import traceback
import tiktoken
import argparse
import shutil
import threading

from datetime import datetime

from loggerFactory import getLogger
from gptTranslation import LLMModels, Translator, Claude_Opus_Translator, Claude_Sonnet_Translator, Claude_Haiku_Translator, TranslatorModes, Gpt5Translator, Gpt5MiniTranslator, Gpt5NanoTranslator, Gemini_Flash_Translator, Gemini_Pro_Translator
from functionAndDeps import FunctionAndDependencies
from functionAndDepsExtractor import FunctionAndDepsExtractor
from typedefFilter import TypedefFilter
from gpt_translation.config import (
    PERF_DEGRADE_THRESHOLD_PCT,
    PERF_DEGRADE_RETRY_COUNT,
    PERF_DEGRADE_DISCARD_ON_FAIL,
    PERF_DEGRADE_SKIP_RETRY,
    Stage,
)


CONTINUATION_PROMPT_LEN = 200 # try repeating 200 chars of past response to tell it to continue
MAX_THREADS=40
TRANSLATION_SKIP_FUNCTIONS = {
    # Perf-harness scaffolding emitted by clang-wrapper.sh, not part of any
    # library under test. `main` is the benchmark driver; get_now and
    # elapsed_ms_since are its timing helpers and are called from nowhere else.
    # Skipped unconditionally, for every codebase — loadPerformanceOnlyFunctions
    # already dropped `main`, but only when performance_information.json exists
    # and its prompt mentions main(, which left the two helpers being translated
    # and scored.
    "main",
    "get_now",
    "elapsed_ms_since",

    "__bswap_16",
    "__bswap_32",
    "__bswap_64",
    "__uint16_identity",
    "__uint32_identity",
    "__uint64_identity",
    "atof",
    "atoi",
    "atol",
    "atoll",
    "bsearch",
    "feof_unlocked",
    "ferror_unlocked",
    "fgetc_unlocked",
    "fputc_unlocked",
    "getc_unlocked",
    "getchar",
    "getchar_unlocked",
    "putc_unlocked",
    "putchar",
    "putchar_unlocked",
    "vprintf",
}


def _systemPromptFileForMode(translatorMode):
    # new-mode runs the C→C++→Rust multi-stage refactor; its prompt is tuned
    # for the C++ intermediate (non-POD containers, std::optional, etc.).
    # All other modes go C→Rust directly and use a leaner Rust-only prompt.
    if translatorMode in (
        TranslatorModes.NEW_MODE,
        TranslatorModes.NEW_MODE_SINGLE_STAGE,
        TranslatorModes.NEW_MODE_MERGED_VIEWS,
        TranslatorModes.NEW_MODE_RESUME,
    ):
        return "system.prompt"
    return "system_rust.prompt"


def createTranslator(logger,
                     llmmodel,
                     translatorMode,
                     fineTunedModel,
                     srcLang,
                     dstLang):
    # url = http://172.31.224.1:12345/v1 for LMStudio
    # The system prompt is a file in this repository. A candidate that wants to
    # change it edits the file on its own branch (SOURCE_CANDIDATE.md §6).
    with open(_systemPromptFileForMode(translatorMode)) as f:
        systemPrompt = f.read()
    logger.info("Using system prompt: %s", systemPrompt)
    if llmmodel == llmmodel.GPT_5:
        translator = Gpt5Translator(logger,
                                    os.environ.get('OPENAI_KEY'),
                                    srcLang,
                                    dstLang,
                                    systemPrompt,
                                    translatorMode)
    elif llmmodel == llmmodel.GPT_5_MINI:
        translator = Gpt5MiniTranslator(logger,
                                        os.environ.get('OPENAI_KEY'),
                                        srcLang,
                                        dstLang,
                                        systemPrompt,
                                        translatorMode)
    elif llmmodel == llmmodel.GPT_5_NANO:
        translator = Gpt5NanoTranslator(logger,
                                        os.environ.get('OPENAI_KEY'),
                                        srcLang,
                                        dstLang,
                                        systemPrompt,
                                        translatorMode)
    elif llmmodel == llmmodel.CLAUDE_OPUS:
        translator = Claude_Opus_Translator(logger,
                                            os.environ.get('ANTHROPIC_API_KEY'),
                                            srcLang,
                                            dstLang,
                                            systemPrompt,
                                            translatorMode)
    elif llmmodel == llmmodel.CLAUDE_SONNET:
        translator = Claude_Sonnet_Translator(logger,
                                              os.environ.get('ANTHROPIC_API_KEY'),
                                              srcLang,
                                              dstLang,
                                              systemPrompt,
                                              translatorMode)
    elif llmmodel == llmmodel.CLAUDE_HAIKU:
        translator = Claude_Haiku_Translator(logger,
                                             os.environ.get('ANTHROPIC_API_KEY'),
                                             srcLang,
                                             dstLang,
                                             systemPrompt,
                                             translatorMode)
    elif llmmodel == llmmodel.GEMINI_FLASH:
        translator = Gemini_Flash_Translator(logger,
                                             os.environ.get('GEMINI_API_KEY'),
                                             srcLang,
                                             dstLang,
                                             systemPrompt,
                                             translatorMode)
    elif llmmodel == llmmodel.GEMINI_PRO:
        translator = Gemini_Pro_Translator(logger,
                                           os.environ.get('GEMINI_API_KEY'),
                                           srcLang,
                                           dstLang,
                                           systemPrompt,
                                           translatorMode)
    else:
        logger.error("Unsupported llm mode: %s", llmmodel)
        raise ValueError(f"Unsupported llm mode: {llmmodel}")
    return translator

def getFunctions(logger, extractor, srcPath, singleFileName, fileList, functionOrderList = [], oldmap = None): # The second time getFunctions is called fileList is empty
    fileFuncMap = {}
    # Top-level only. Inputs have exactly one real .i at srcPath; any nested
    # .i files belong to prior-run outputs (individual-funcs_*/, v1/, v2/,
    # opus_v1/, etc.) and must not be re-ingested as sources. The second-call
    # srcPath (individualFuncPath) is also flat by construction.
    allFiles = glob.iglob(os.path.join(srcPath, "*.i"))

    for filename in allFiles:
        # Don't look at files inside the individual-funcs directories
        # the first time we invoke getFunctions
        # 
        if "individual-funcs" not in srcPath and "individual-funcs" in filename:
            continue
        if len(fileList) > 0 and os.path.splitext(os.path.basename(filename))[0] not in fileList:
            continue
        if len(singleFileName) > 0:
            if singleFileName not in filename and "individual-funcs" not in srcPath:
                continue
        logger.debug("Extracting function bodies for file: %s", filename)
        funcMap = extractor.extractFuncsAndDeps(filename, functionOrderList, oldmap)
        fileFuncMap.update(funcMap)

    # The per-file extractor only sees functions defined in the current file.
    # Refresh once across the full map so cross-file calls are captured too.
    extractor.refreshGlobalDependencies(fileFuncMap)

    # The second time we refresh the funcMap with the individual
    # files, we also extract additional meta-data.
    # For each struct type used in each function, extract _all_ uses of the same type
    # from other functions
    # TODO: Consider if refactoring the toolchain helps?
    """
    if "individual-funcs" in srcPath:
        logger.info("Going to extract type usage")
        extractor.extractGlobalTypeUsageDetails(srcPath, fileFuncMap)
    """

    return fileFuncMap


CTYPE_BIT_DEFINITIONS = """#ifndef _ISbit
#if defined(__BYTE_ORDER__) && (__BYTE_ORDER__ == __ORDER_BIG_ENDIAN__)
#define _ISbit(bit) (1 << (bit))
#else
#define _ISbit(bit) ((bit) < 8 ? ((1 << (bit)) << 8) : ((1 << (bit)) >> 8))
#endif
enum {
  _ISupper = _ISbit (0),
  _ISlower = _ISbit (1),
  _ISalpha = _ISbit (2),
  _ISdigit = _ISbit (3),
  _ISxdigit = _ISbit (4),
  _ISspace = _ISbit (5),
  _ISprint = _ISbit (6),
  _ISgraph = _ISbit (7),
  _ISblank = _ISbit (8),
  _IScntrl = _ISbit (9),
  _ISpunct = _ISbit (10),
  _ISalnum = _ISbit (11)
};
#endif
"""


def buildForwardDeclarationFromDefinition(functionCode):
    if not functionCode:
        return ""

    headerEnd = functionCode.find("{")
    if headerEnd == -1:
        return ""

    header = functionCode[:headerEnd].rstrip()
    if len(header) == 0:
        return ""

    return header + ";"


def stripLiteralsForIdentifierSearch(sourceCode):
    withoutComments = re.sub(r"/\*.*?\*/|//.*?$", " ", sourceCode, flags=re.DOTALL | re.MULTILINE)
    withoutStrings = re.sub(r'"(?:\\.|[^"\\])*"', '""', withoutComments, flags=re.DOTALL)
    return re.sub(r"'(?:\\.|[^'\\])*'", "''", withoutStrings, flags=re.DOTALL)


def collectReferencedIdentifiers(sourceCode, identifierNames, currentIdentifier=None):
    normalizedSource = stripLiteralsForIdentifierSearch(sourceCode)
    referencedIdentifiers = set()

    for identifierName in identifierNames:
        if identifierName == currentIdentifier:
            continue
        if re.search(r"\b" + re.escape(identifierName) + r"\s*\(", normalizedSource):
            referencedIdentifiers.add(identifierName)

    return referencedIdentifiers


def parseFunctionRanges(c_path):
    result = subprocess.run(
        ["ctags", "--fields=+ne", "-o", "-", "--language-force=C++", "--c-kinds=f", c_path],
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.DEVNULL,
    )
    if result.returncode != 0:
        return []

    with open(c_path, "r") as c_file:
        allLines = [line.rstrip("\n") for line in c_file.readlines()]

    functionRanges = []
    for line in result.stdout.splitlines():
        tokens = line.split("\t")
        if len(tokens) < 5:
            continue

        name = tokens[0]
        startToken = None
        endToken = None
        for token in tokens:
            if token.startswith("line:"):
                startToken = token
            elif token.startswith("end:"):
                endToken = token

        if startToken is None:
            continue

        startIndex = int(startToken.split(":")[1]) - 1
        endIndex = int(endToken.split(":")[1]) - 1 if endToken is not None else startIndex

        searchIndex = startIndex - 1
        while searchIndex >= 0:
            previousLine = allLines[searchIndex].strip()
            if len(previousLine) == 0 or "#" in previousLine or ";" in previousLine or "}" in previousLine:
                break
            startIndex = searchIndex
            searchIndex -= 1

        functionRanges.append({
            "name": name,
            "start": startIndex,
            "end": endIndex,
        })

    return sorted(functionRanges, key=lambda functionRange: functionRange["start"])


def removeDeadHelperDefinitions(c_path, logger=None):
    functionRanges = parseFunctionRanges(c_path)
    if len(functionRanges) < 2:
        return False

    rootFunction = os.path.splitext(os.path.basename(c_path))[0]
    rootRange = next((functionRange for functionRange in functionRanges if functionRange["name"] == rootFunction), None)
    if rootRange is None:
        if logger is not None and hasattr(logger, "warning"):
            logger.warning("Skipping dead helper filtering for %s because the root function was not found", c_path)
        return False

    helperRanges = [functionRange for functionRange in functionRanges if functionRange["end"] < rootRange["start"]]
    if len(helperRanges) == 0:
        return False

    helperNames = [functionRange["name"] for functionRange in helperRanges]
    helperRangesByName = {functionRange["name"]: functionRange for functionRange in helperRanges}

    with open(c_path, "r") as c_file:
        allLines = c_file.readlines()

    rootCode = "".join(allLines[rootRange["start"]:rootRange["end"] + 1])
    reachableHelpers = set()
    pendingHelpers = list(collectReferencedIdentifiers(rootCode, helperNames))

    while pendingHelpers:
        helperName = pendingHelpers.pop()
        if helperName in reachableHelpers:
            continue

        reachableHelpers.add(helperName)
        helperRange = helperRangesByName.get(helperName)
        if helperRange is None:
            continue

        helperCode = "".join(allLines[helperRange["start"]:helperRange["end"] + 1])
        transitiveHelpers = collectReferencedIdentifiers(helperCode, helperNames, helperName)
        for transitiveHelper in transitiveHelpers:
            if transitiveHelper not in reachableHelpers:
                pendingHelpers.append(transitiveHelper)

    deadHelperRanges = [functionRange for functionRange in helperRanges if functionRange["name"] not in reachableHelpers]
    if len(deadHelperRanges) == 0:
        return False

    deadLineIndexes = set()
    removedHelperNames = []
    for functionRange in deadHelperRanges:
        removedHelperNames.append(functionRange["name"])
        for lineIndex in range(functionRange["start"], functionRange["end"] + 1):
            deadLineIndexes.add(lineIndex)

    filteredLines = [
        line
        for lineIndex, line in enumerate(allLines)
        if lineIndex not in deadLineIndexes
    ]

    with open(c_path, "w") as c_file:
        c_file.writelines(filteredLines)

    if logger is not None and hasattr(logger, "info"):
        logger.info(
            "Removed dead helper definitions from %s: %s",
            c_path,
            ", ".join(sorted(removedHelperNames)),
        )

    return True


def collectReferencedFunctions(funcs, key):
    functionCode = stripLiteralsForIdentifierSearch(funcs[key].funcCodeLines)
    referencedFunctions = []
    seen = set()

    for dependencyName in funcs[key].dependFunctions:
        if dependencyName == key or dependencyName in seen:
            continue
        if dependencyName in funcs:
            referencedFunctions.append(dependencyName)
            seen.add(dependencyName)

    for functionName in funcs:
        if functionName == key or functionName in seen:
            continue
        if not re.search(r"\b" + re.escape(functionName) + r"\b", functionCode):
            continue

        referencedFunctions.append(functionName)
        seen.add(functionName)

    return referencedFunctions


def buildDependencyForwardDeclarations(funcs, key):
    declarations = []
    seen = set()

    for dependencyName in collectReferencedFunctions(funcs, key):
        if dependencyName in seen:
            continue
        if dependencyName not in funcs:
            continue

        declaration = buildForwardDeclarationFromDefinition(funcs[dependencyName].funcCodeLines)
        if len(declaration) == 0:
            continue

        declarations.append(declaration)
        seen.add(dependencyName)

    if len(declarations) == 0:
        return ""

    return "\n".join(declarations) + "\n\n"


def extractTypedefLine(originalSource, typeName):
    pattern = re.compile(r"^\s*typedef\b.*\b" + re.escape(typeName) + r"\b\s*;\s*$", re.MULTILINE)
    match = pattern.search(originalSource)
    if match:
        return match.group(0).strip()
    return ""


def repairMissingExternSemicolons(filteredSource):
    def canContinueExternDeclaration(declarationText, nextLine):
        nextStrippedLine = nextLine.strip()
        if len(nextStrippedLine) == 0:
            return False
        if nextStrippedLine == "{":
            return True
        if ";" in declarationText or "{" in declarationText:
            return False
        if nextStrippedLine.startswith("__attribute__") or nextStrippedLine.startswith("__asm__"):
            return True
        if nextLine[:1].isspace():
            return True

        # Some headers split `extern <type>` and the declarator across lines, eg:
        # `extern void` followed by `foo(Type*);`
        return re.match(r"^(?:\*+\s*)?[_A-Za-z]\w*\s*(?:\(|\[|;|,|=)", nextStrippedLine) is not None

    lines = filteredSource.splitlines(keepends=True)
    repairedLines = []
    index = 0

    while index < len(lines):
        line = lines[index]
        strippedLine = line.strip()

        if not strippedLine.startswith("extern "):
            repairedLines.append(line)
            index += 1
            continue

        declarationBlock = [line]
        index += 1
        while index < len(lines):
            nextLine = lines[index]
            declarationText = "".join(declarationBlock)
            if not canContinueExternDeclaration(declarationText, nextLine):
                break

            declarationBlock.append(nextLine)
            index += 1

        declarationText = "".join(declarationBlock)
        if "{" not in declarationText:
            lastLineIndex = len(declarationBlock) - 1
            while lastLineIndex >= 0 and len(declarationBlock[lastLineIndex].strip()) == 0:
                lastLineIndex -= 1

            if lastLineIndex >= 0:
                lastLine = declarationBlock[lastLineIndex].rstrip("\n")
                if len(lastLine.rstrip()) > 0 and not lastLine.rstrip().endswith(";"):
                    declarationBlock[lastLineIndex] = lastLine.rstrip() + ";\n"

        repairedLines.extend(declarationBlock)

    return "".join(repairedLines)


def repairFilteredPreprocessedFile(c_path, originalSource):
    with open(c_path, "r") as c_file:
        filteredSource = c_file.read()

    prependBlocks = []

    if re.search(r"\bsize_t\b", filteredSource) and not re.search(r"^\s*typedef\b.*\bsize_t\b\s*;\s*$", filteredSource, re.MULTILINE):
        sizeTLine = extractTypedefLine(originalSource, "size_t")
        if len(sizeTLine) > 0:
            prependBlocks.append(sizeTLine)

    if re.search(r"\bssize_t\b", filteredSource) and not re.search(r"^\s*typedef\b.*\bssize_t\b\s*;\s*$", filteredSource, re.MULTILINE):
        ssizeTLine = extractTypedefLine(originalSource, "ssize_t")
        if len(ssizeTLine) > 0:
            prependBlocks.append(ssizeTLine)

    if (re.search(r"\b_ISspace\b", filteredSource) or re.search(r"\b_ISdigit\b", filteredSource)) and "_ISbit" not in filteredSource:
        prependBlocks.append(CTYPE_BIT_DEFINITIONS.strip())

    repairedSource = repairMissingExternSemicolons(filteredSource)
    if len(prependBlocks) > 0:
        repairedSource = "\n".join(prependBlocks) + "\n" + repairedSource

    if repairedSource == filteredSource:
        return

    with open(c_path, "w") as c_file:
        c_file.write(repairedSource)

def createIndividualPreprocessedFiles(funcs, key, logger, individualFuncPath):
    c_path = os.path.join(individualFuncPath, f"{key}.i")
    # This is ugly
    # But we write once, then filter
    # then write again
    # This is because the clang tool needs a 
    # file and we need to reduce the typedefs
    # per function and not per (full) C source file
    dependencyForwardDecls = buildDependencyForwardDeclarations(funcs, key)
    combinedSource = funcs[key].typeDeclDefCodeLines + "\n" + dependencyForwardDecls + funcs[key].funcCodeLines
    with open(c_path, "w") as c_file:
        c_file.write(combinedSource)

    removeDeadHelperDefinitions(c_path, logger)

    # Filter
    typedefFilter = TypedefFilter(logger)
    typedefFilter.filterUnusedTypedefs(c_path)
    repairFilteredPreprocessedFile(c_path, combinedSource)


def loadPerformanceOnlyFunctions(codebasePath, logger):
    infoPath = os.path.join(codebasePath, "performance_information.json")
    if not os.path.isfile(infoPath):
        return set()

    try:
        with open(infoPath, "r") as infoFile:
            info = json.load(infoFile)
    except Exception as e:
        logger.warning("Failed to load performance-only function information from %s: %s", infoPath, e)
        return set()

    configuredFunctions = info.get("performance_only_functions", [])
    if isinstance(configuredFunctions, str):
        configuredFunctions = [configuredFunctions]

    performanceOnlyFunctions = {
        str(functionName).strip()
        for functionName in configuredFunctions
        if str(functionName).strip()
    }

    prompt = info.get("prompt", "")
    if isinstance(prompt, str) and re.search(r"\bmain\s*\(", prompt):
        performanceOnlyFunctions.add("main")

    if performanceOnlyFunctions:
        logger.info(
            "Skipping normal translation for performance-only functions: %s",
            ", ".join(sorted(performanceOnlyFunctions)),
        )

    return performanceOnlyFunctions


def loadPerformanceReferencedFunctions(codebasePath, candidateFunctionNames, logger):
    """Return the subset of ``candidateFunctionNames`` that the benchmark
    harness ``main()`` in ``performance_information.json`` actually calls.

    These must be translated even when their name matches the ``test_`` /
    ``_test`` unit-test skip heuristic, because the separately-generated ROI
    ``main()`` references them. Without this, a legitimately-named harness
    helper such as cjson_write's ``test_create_objects`` is silently dropped
    from the per-function decomposition and the performance build then fails
    with ``use of undeclared identifier 'test_create_objects'``.
    """
    infoPath = os.path.join(codebasePath, "performance_information.json")
    if not os.path.isfile(infoPath):
        return set()

    try:
        with open(infoPath, "r") as infoFile:
            info = json.load(infoFile)
    except Exception as e:
        logger.warning("Failed to load performance information from %s: %s", infoPath, e)
        return set()

    prompt = info.get("prompt", "")
    if not isinstance(prompt, str) or not prompt:
        return set()

    referenced = {
        name
        for name in candidateFunctionNames
        if re.search(r"\b" + re.escape(name) + r"\s*\(", prompt)
    }
    return referenced


def isSkippedTranslationFunction(functionName, extraSkippedFunctions=None):
    return functionName in TRANSLATION_SKIP_FUNCTIONS or functionName in (extraSkippedFunctions or set())


def filterSkippedFunctionOrder(functionOrderList, logger, extraSkippedFunctions=None):
    skippedFunctions = [func for func in functionOrderList if isSkippedTranslationFunction(func, extraSkippedFunctions)]
    if skippedFunctions:
        logger.info("Skipping translation for helper functions: %s", ", ".join(sorted(skippedFunctions)))
    return [func for func in functionOrderList if not isSkippedTranslationFunction(func, extraSkippedFunctions)]


def filterSkippedFunctions(funcMap, logger, extraSkippedFunctions=None):
    skippedFunctions = [func for func in funcMap if isSkippedTranslationFunction(func, extraSkippedFunctions)]
    if skippedFunctions:
        logger.info("Skipping translation for helper functions: %s", ", ".join(sorted(skippedFunctions)))

    skippedFunctionSet = set(skippedFunctions)
    filteredFuncMap = {}
    for func, deps in funcMap.items():
        if func in skippedFunctionSet:
            continue
        if hasattr(deps, "dependFunctions"):
            deps.setDepndFunctions([
                dependencyName
                for dependencyName in deps.dependFunctions
                if dependencyName not in skippedFunctionSet
            ])
        filteredFuncMap[func] = deps

    return filteredFuncMap


def parseBoolArg(value):
    normalizedValue = str(value).strip().lower()
    if normalizedValue == "true":
        return True
    if normalizedValue == "false":
        return False
    raise argparse.ArgumentTypeError("expected true or false")


def parseSkipStagesArg(value):
    """Parse "5,6" or "Stage_5,Stage_6" (mix allowed) into a set of Stage
    enum values. Empty string → empty set. Unknown token → ArgumentTypeError.
    """
    if value is None:
        return set()
    text = str(value).strip()
    if not text:
        return set()
    result = set()
    for raw in text.split(","):
        token = raw.strip()
        if not token:
            continue
        name = token if token.startswith("Stage_") else f"Stage_{token}"
        if name not in Stage.__members__:
            raise argparse.ArgumentTypeError(
                f"unknown stage {token!r}; expected 1..10 or Stage_1..Stage_10"
            )
        result.add(Stage[name])
    return result


# The basename must contain a "stage" token; we won't sniff a bare trailing
# digit. Otherwise a versioned-run shorthand like ``v1`` silently parses to
# Stage_1 (the user pointed at the run root, not a stage subdir) and the loader
# downstream gives a confusing "stage_state.json not found" error after we've
# already mis-routed the target.
_PRIOR_STAGE_BASENAME = re.compile(r"stage[._]*?(\d+)\s*$", re.IGNORECASE)


def inferStageFromPriorPath(priorPath):
    """Extract a Stage enum value from the basename of a prior-stage-state
    directory. Accepts the on-disk layout NEW_MODE writes (``_Stage.Stage_1``)
    as well as friendlier shorthands the user may type at the CLI
    (``Stage_1`` / ``stage_1`` / ``_stage_1``).

    The basename must end in ``stage<N>`` (any case, optional separators) so
    that pointing at the run root (e.g. ``v1``) errors out cleanly instead of
    silently mis-routing to Stage_1.
    """
    basename = os.path.basename(os.path.normpath(priorPath or ""))
    if not basename or basename == ".":
        raise argparse.ArgumentTypeError(
            f"prior-stage-state path is empty or has no basename: {priorPath!r}"
        )
    match = _PRIOR_STAGE_BASENAME.search(basename)
    if not match:
        raise argparse.ArgumentTypeError(
            f"could not infer prior stage from path basename {basename!r}; "
            "expected a directory name like '_Stage.Stage_1', 'stage_1', "
            "or 'Stage_1'."
        )
    enumName = f"Stage_{match.group(1)}"
    if enumName not in Stage.__members__:
        raise argparse.ArgumentTypeError(
            f"prior stage number {match.group(1)!r} parsed from {basename!r} "
            f"is not a known stage; expected one of "
            f"{sorted(Stage.__members__)}"
        )
    return Stage[enumName]


def nextStageAfter(priorStage, skippedStages):
    """Return the first Stage that sorts after ``priorStage`` and is not in
    ``skippedStages``. Returns ``None`` when no such stage exists (i.e. the
    prior stage was the last one under the current skip set).
    """
    priorNum = int(priorStage.name.split("_", 1)[1])
    skipped = set(skippedStages or [])
    nextCandidate = None
    nextCandidateNum = None
    for stage in Stage:
        stageNum = int(stage.name.split("_", 1)[1])
        if stageNum <= priorNum or stage in skipped:
            continue
        if nextCandidateNum is None or stageNum < nextCandidateNum:
            nextCandidate = stage
            nextCandidateNum = stageNum
    return nextCandidate


_STAGE_STATE_FILENAME = "stage_state.json"


def resolvePriorStagePath(priorPath, searchRoots=None):
    """Resolve a prior-stage-state path to a directory that actually contains
    ``stage_state.json``. Tries, in order:

      1. The path as-is (absolute or cwd-relative).
      2. ``<root>/<priorPath>`` for each ``root`` in ``searchRoots`` — the CLI
         passes ``--src`` here, so users can type a path that's intuitive
         relative to their codebase (``v1/stage_3`` under
         ``--src=./inputs-complex/cjson_write/`` is the same as typing the
         full ``./inputs-complex/cjson_write/v1/stage_3``).
      3. For each of the above candidate roots, sibling directories whose
         basename matches a known on-disk variant for the same stage number.
         NEW_MODE writes checkpoints to ``_Stage.Stage_N/`` (because
         ``str(Stage.Stage_N)`` is ``Stage.Stage_N``), but users naturally
         type the friendlier ``stage_3``; this branch bridges the two.

    Returns the resolved directory path. Falls back to the original
    ``priorPath`` when nothing matches, so the downstream loader's error
    message still points at exactly what the user typed.
    """
    if not priorPath:
        return priorPath

    normalizedRoots = ["."]
    if searchRoots:
        for root in searchRoots:
            if not root:
                continue
            normalizedRoots.append(os.path.expanduser(str(root)))

    basename = os.path.basename(os.path.normpath(priorPath))
    match = _PRIOR_STAGE_BASENAME.search(basename)
    stageNum = match.group(1) if match else None
    candidateBasenames = []
    if stageNum is not None:
        candidateBasenames = [
            f"_Stage.Stage_{stageNum}",
            f"Stage.Stage_{stageNum}",
            f"_Stage_{stageNum}",
            f"Stage_{stageNum}",
            f"_stage_{stageNum}",
            f"stage_{stageNum}",
        ]

    isAbsolute = os.path.isabs(priorPath)

    def _candidatePathExists(p):
        return os.path.isfile(os.path.join(p, _STAGE_STATE_FILENAME))

    # Pass 1: respect the path verbatim from each root.
    for root in normalizedRoots:
        candidate = priorPath if (isAbsolute or root == ".") else os.path.join(root, priorPath)
        if _candidatePathExists(candidate):
            return candidate

    # Pass 2: sibling-name fallback for friendly-vs-legacy naming. Only fires
    # when the basename parses to a stage number; otherwise there's nothing
    # to translate.
    if candidateBasenames:
        for root in normalizedRoots:
            base = priorPath if (isAbsolute or root == ".") else os.path.join(root, priorPath)
            parent = os.path.dirname(os.path.normpath(base)) or "."
            if not os.path.isdir(parent):
                continue
            for name in candidateBasenames:
                candidate = os.path.join(parent, name)
                if _candidatePathExists(candidate):
                    return candidate

    return priorPath


def findAvailableStageCheckpoints(srcDir, maxDepth=3):
    """Scan ``srcDir`` for any directory containing a ``stage_state.json``
    that NEW_MODE wrote. Used to render a helpful error when the user's
    ``--prior-stage-state`` does not resolve.

    Returns a sorted list of paths relative to ``srcDir`` (or absolute, if
    they sit outside ``srcDir``). Caps depth at ``maxDepth`` segments below
    ``srcDir`` because NEW_MODE only writes one level deep
    (``<run>/_Stage.Stage_N/stage_state.json``).
    """
    if not srcDir or not os.path.isdir(srcDir):
        return []

    matches = []
    srcAbs = os.path.abspath(srcDir)
    for dirpath, dirnames, filenames in os.walk(srcAbs):
        if _STAGE_STATE_FILENAME in filenames:
            try:
                rel = os.path.relpath(dirpath, srcAbs)
            except ValueError:
                rel = dirpath
            matches.append(rel)
            # No nested stage dirs under a stage dir; prune to keep the walk cheap.
            dirnames[:] = []
            continue
        relDepth = os.path.relpath(dirpath, srcAbs).count(os.sep)
        if relDepth >= maxDepth:
            dirnames[:] = []
    matches.sort()
    return matches


def _checkPriorStagePathResolved(resolvedPath, srcDir, label):
    """Verify ``resolvedPath/stage_state.json`` exists; if not, raise
    ``argparse.ArgumentTypeError`` with a list of valid checkpoints found
    under ``srcDir``. ``label`` tags the error so the user knows which mode
    triggered it.
    """
    if resolvedPath and os.path.isfile(os.path.join(resolvedPath, _STAGE_STATE_FILENAME)):
        return
    candidates = findAvailableStageCheckpoints(srcDir)
    suggestion = ""
    if candidates:
        suggestion = (
            "\n\nValid checkpoints found under --src=" + str(srcDir) + ":\n  "
            + "\n  ".join(candidates[:25])
            + ("\n  ..." if len(candidates) > 25 else "")
            + "\n\nPass any of these to --prior-stage-state (path relative to --src is OK)."
        )
    else:
        suggestion = (
            f"\n\nNo NEW_MODE checkpoints found under --src={srcDir}. "
            "Run translator-mode=new-mode first to generate stage_state.json files."
        )
    raise argparse.ArgumentTypeError(
        f"[{label}] --prior-stage-state did not resolve to a directory containing "
        f"{_STAGE_STATE_FILENAME}: {resolvedPath!r}" + suggestion
    )


def _captureToolchainInfo():
    """Best-effort snapshot of the compile toolchain used by this run.

    - ``clang_version`` / ``cargo_version``: first line of ``<tool> --version``
      output, or None when the binary is missing / errors out. Both compilers
      get invoked by the perf path (clang++ for C++ stages, cargo for Stage_10
      Rust), so recording both makes the binary reproducible.
    - ``perf_opt_level``: the ``-O`` level used to compile the measured binary
      (``PerformanceMixin.PERFORMANCE_OPT_LEVEL``). The single number that
      most-affects "is the regression real or just an -O0 noise"?
    - ``compile_check_flags``: the no-codegen syntax-check command used during
      retry loops (``-emit-llvm`` against ``temp.bc``). Documents that the
      compile-error path does NOT exercise optimization, so a translation can
      pass syntax-check and still regress perf at -O3.
    """
    def _firstLine(cmd):
        try:
            result = subprocess.run(
                cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT,
                text=True, timeout=10,
            )
            if result.returncode == 0:
                return result.stdout.strip().splitlines()[0] if result.stdout else None
        except (OSError, subprocess.SubprocessError):
            return None
        return None

    try:
        from gpt_translation.performance_mixin import PerformanceMixin
        perfOptLevel = getattr(PerformanceMixin, "PERFORMANCE_OPT_LEVEL", None)
    except Exception:
        perfOptLevel = None

    return {
        "clang_version": _firstLine(["clang++", "--version"]),
        "cargo_version": _firstLine(["cargo", "--version"]),
        "rustc_version": _firstLine(["rustc", "--version"]),
        "perf_opt_level": f"-O{perfOptLevel}" if perfOptLevel else None,
        "compile_check_flags": "-std=c++20 -w -emit-llvm -c (no optimization)",
    }


def dumpRunConfig(individualFuncPath, codebasePath, translator, llmmodel, translatorMode,
                  fineTunedModel, preanalysisOnly, singleFileName, dirPrefix, fileListFile,
                  multiThreading, perfDegradeThresholdPct, perfDegradeRetryCount,
                  perfDegradeDiscardOnFail, perfDegradeSkipRetry, skipCBaseline,
                  targetStage, priorStageStateDir, formattedDateTime, logger,
                  skippedStages=None, keepStage1OnDegrade=False):
    """Dump the resolved run configuration to <individualFuncPath>/run_config.json
    so each result directory is self-describing and reproducible.
    """
    config = {
        "timestamp": formattedDateTime,
        "src": codebasePath,
        "argv": list(sys.argv),
        "llm": {
            "mode": str(llmmodel),
            "model": getattr(translator, "model", None),
            "src_lang": getattr(translator, "srcLang", None),
            "dst_lang": getattr(translator, "dstLang", None),
            "fine_tuned_model": fineTunedModel or None,
        },
        "translator_mode": str(translatorMode),
        "preanalysis_only": preanalysisOnly,
        "single_file_name": singleFileName or None,
        "dir_prefix": dirPrefix or None,
        "file_list_file": fileListFile or None,
        "multithreading": multiThreading,
        "perf_degrade": {
            "threshold_pct": perfDegradeThresholdPct,
            "retry_count": perfDegradeRetryCount,
            "discard_on_fail": perfDegradeDiscardOnFail,
            "skip_retry": perfDegradeSkipRetry,
            "keep_stage_1": keepStage1OnDegrade,
        },
        "skip_c_baseline": skipCBaseline,
        "skip_stage_check": getattr(translator, "skipStageCheck", False),
        "skipped_stages": sorted(s.name for s in (skippedStages or [])),
        "single_stage": {
            "target_stage": str(targetStage) if targetStage else None,
            "prior_stage_state_dir": priorStageStateDir or None,
        },
        "python_version": sys.version,
        # Toolchain + optimization level: captured so each run is reproducible
        # against the exact compiler/runtime that built the binaries. Versions
        # are best-effort (None if the tool isn't on PATH); the perf opt-level
        # is the authoritative value the pipeline actually uses to compile the
        # measured binary, not just a guess.
        "toolchain": _captureToolchainInfo(),
    }

    # Capture system prompt content (it materially affects translation behavior).
    systemPromptFile = _systemPromptFileForMode(translatorMode)
    try:
        with open(systemPromptFile, "r") as f:
            config["system_prompt"] = f.read()
        config["system_prompt_file"] = systemPromptFile
    except OSError:
        config["system_prompt"] = None
        config["system_prompt_file"] = systemPromptFile

    # Capture git info for the codebase if it's a repo (helps reproducibility).
    try:
        gitHash = subprocess.run(
            ["git", "-C", codebasePath, "rev-parse", "HEAD"],
            stdout=subprocess.PIPE, stderr=subprocess.DEVNULL,
            text=True, timeout=5,
        )
        if gitHash.returncode == 0:
            config["git"] = {"head": gitHash.stdout.strip()}
            gitStatus = subprocess.run(
                ["git", "-C", codebasePath, "status", "--porcelain"],
                stdout=subprocess.PIPE, stderr=subprocess.DEVNULL,
                text=True, timeout=5,
            )
            if gitStatus.returncode == 0:
                dirtyLines = [l for l in gitStatus.stdout.splitlines() if l.strip()]
                config["git"]["dirty"] = bool(dirtyLines)
                config["git"]["dirty_files"] = len(dirtyLines)
    except (OSError, subprocess.SubprocessError):
        pass

    configPath = os.path.join(individualFuncPath, "run_config.json")
    with open(configPath, "w") as f:
        json.dump(config, f, indent=2, sort_keys=True)
    logger.info("Wrote run config to %s", configPath)


def processCodebase(codebasePath,
                    llmmodel,
                    fineTunedModel,
                    preanalysisOnly,
                    translatorMode,
                    singleFileName,
                    dirPrefix,
                    fileListFile,
                    multiThreading,
                    perfDegradeThresholdPct,
                    perfDegradeRetryCount,
                    perfDegradeDiscardOnFail,
                    perfDegradeSkipRetry,
                    skipCBaseline,
                    logger,
                    targetStage=None,
                    priorStageStateDir=None,
                    skipStageCheck=False,
                    skippedStages=None,
                    keepStage1OnDegrade=False,
                    resumeReloadFunctions=None,
                    interactiveFixOnFail=False):
    fileList = []
    if fileListFile is not None and len(fileListFile) > 0:
        with open(fileListFile) as f:
            for line in f.readlines():
                fileList.append(os.path.splitext(line.strip())[0])

    currentDatetime = datetime.now()
    formattedDateTime = currentDatetime.strftime("%Y-%m-%d_%H-%M-%S")
    
    extractor = FunctionAndDepsExtractor(logger)
    if translatorMode == translatorMode.NEW_MODE:
        translator = createTranslator(logger, llmmodel, translatorMode, fineTunedModel, "C", "C++")
    elif translatorMode == translatorMode.NEW_MODE_MERGED_VIEWS:
        # Deprecated alias for NEW_MODE — same C->C++ staged pipeline.
        # dstLang flips to Rust at Stage_10.
        translator = createTranslator(logger, llmmodel, translatorMode, fineTunedModel, "C", "C++")
    elif translatorMode == translatorMode.NEW_MODE_SINGLE_STAGE:
        # dstLang is finalized inside translateAll based on target_stage; the
        # initial value is overwritten before the stage runs. Picking C++ here
        # so attributes line up with NEW_MODE for stages 1-8.
        translator = createTranslator(logger, llmmodel, translatorMode, fineTunedModel, "C", "C++")
    elif translatorMode == translatorMode.NEW_MODE_RESUME:
        # Resume the staged pipeline from a prior checkpoint. translateAll
        # sets dstLang per-stage; pick C++ as the initial value so attributes
        # line up with NEW_MODE for stages 1-9.
        translator = createTranslator(logger, llmmodel, translatorMode, fineTunedModel, "C", "C++")
    else:
        translator = createTranslator(logger, llmmodel, translatorMode, fineTunedModel, "C", "Rust")
    translator.perfDegradeThresholdPct = perfDegradeThresholdPct
    translator.perfDegradeRetryCount = perfDegradeRetryCount
    translator.perfDegradeDiscardOnFail = perfDegradeDiscardOnFail
    translator.perfDegradeSkipRetry = perfDegradeSkipRetry
    translator.keepStage1OnDegrade = keepStage1OnDegrade
    translator.skipCBaseline = skipCBaseline
    translator.skipStageCheck = skipStageCheck
    translator.interactiveFixOnFail = interactiveFixOnFail
    # NEW_MODE iteration loop reads this; non-NEW_MODE paths ignore it.
    # Also consumed by _stageExclusionsForOtherStages to omit skipped
    # stages from both PRESERVE and DEFER prompt lists, so the LLM never
    # references a stage that won't run.
    translator.skippedStages = set(skippedStages) if skippedStages else set()
    if Stage.Stage_10 in translator.skippedStages:
        logger.warning(
            "[Skip stages] Stage_10 is in --skip-stages; the run will end "
            "with C++ output and produce no Rust transliteration."
        )

    # Plumb single-stage knobs into the translator. translateAll's
    # NEW_MODE_SINGLE_STAGE branch consumes these.
    if translatorMode == translatorMode.NEW_MODE_SINGLE_STAGE:
        if not targetStage:
            raise RuntimeError("--target-stage is required for translator-mode=new-mode-single-stage")
        try:
            translator.targetStage = Stage[targetStage] if isinstance(targetStage, str) else targetStage
        except KeyError:
            raise RuntimeError(
                f"Invalid --target-stage value: {targetStage!r}. "
                f"Expected one of: {[s.name for s in Stage]}"
            )
        translator.priorStageStateDir = priorStageStateDir or None

    # Resume mode reuses --prior-stage-state but does not take --target-stage:
    # the set of stages to run is derived from priorStage + skippedStages.
    if translatorMode == translatorMode.NEW_MODE_RESUME:
        if not priorStageStateDir:
            raise RuntimeError(
                "--prior-stage-state is required for translator-mode=new-mode-resume"
            )
        translator.priorStageStateDir = priorStageStateDir
        # List of function names whose post-stage body should be reloaded from
        # the prior stage's merged_funcs.{cpp,rs} on disk before any resumed
        # stage runs. Lets the user hand-fix a function in the prior stage's
        # output and have the fix flow into the resumed stages.
        translator.resumeReloadFunctions = list(resumeReloadFunctions or [])
    elif resumeReloadFunctions:
        logger.warning(
            "--resume-reload-functions=%s is ignored unless "
            "--translator-mode=new-mode-resume",
            resumeReloadFunctions,
        )
    performanceOnlyFunctions = loadPerformanceOnlyFunctions(codebasePath, logger)

    # TODO : @gabe Do we still need this?
    # fingerPrintModel(logger, codebasePath, translator)

    if len (dirPrefix) > 0:
        individualFuncPath = codebasePath + "/individual-funcs_" + dirPrefix + "_" + translator.model + "_" + formattedDateTime
    else:
        individualFuncPath = codebasePath + "/individual-funcs_" + translator.model + "_" + formattedDateTime

    if preanalysisOnly:
        individualFuncPath = individualFuncPath + "__preanalysis_only"
    # If the directory already exists, then wait for confirmation
    if os.path.isdir(individualFuncPath):
        logger.critical("Output directory already exists. Will delete to continue")
        input("Press any key to continue, or Ctrl+C to exit...")
        shutil.rmtree(individualFuncPath)
    os.mkdir(individualFuncPath)

    # Mirror the log into the output directory the moment it exists. Until
    # this point temp_log/ is the only file destination — the output dir's
    # name isn't even known earlier. From here on we write to both: temp_log/
    # stays the crash-safety fallback, and the in-output copy is complete
    # from the very first line because we seed it with what was already
    # logged.
    for handler in list(logger.handlers):
        if isinstance(handler, logging.FileHandler) and os.path.dirname(handler.baseFilename) != individualFuncPath:
            mirrorPath = os.path.join(individualFuncPath, os.path.basename(handler.baseFilename))
            shutil.copy(handler.baseFilename, mirrorPath)
            mirrorHandler = logging.FileHandler(mirrorPath)
            mirrorHandler.setLevel(handler.level)
            mirrorHandler.setFormatter(handler.formatter)
            logger.addHandler(mirrorHandler)
            break

    # Persist the run configuration so each result directory is self-describing.
    dumpRunConfig(
        individualFuncPath, codebasePath, translator, llmmodel, translatorMode,
        fineTunedModel, preanalysisOnly, singleFileName, dirPrefix, fileListFile,
        multiThreading, perfDegradeThresholdPct, perfDegradeRetryCount,
        perfDegradeDiscardOnFail, perfDegradeSkipRetry, skipCBaseline,
        targetStage, priorStageStateDir, formattedDateTime, logger,
        skippedStages=translator.skippedStages,
        keepStage1OnDegrade=keepStage1OnDegrade,
    )

    functionOrderList = []
    funcMap = getFunctions(logger, extractor, codebasePath, singleFileName, fileList, functionOrderList)
    functionOrderList = filterSkippedFunctionOrder(functionOrderList, logger, performanceOnlyFunctions)
    funcMap = filterSkippedFunctions(funcMap, logger, performanceOnlyFunctions)
    # Just save it in the directory
    with open(os.path.join(individualFuncPath, "file_order.txt"), 'w') as f:
        for func in functionOrderList:
            f.write(func + "\n")
    logger.debug("Extracted  0%d functions", len(funcMap))

    # Harness helpers that the benchmark main() calls (e.g. cjson_write's
    # ``test_create_objects``) match the ``test_`` skip heuristic below but
    # MUST still be translated — the separately-generated ROI main() references
    # them, so dropping the definition breaks the performance build. Exempt any
    # such function the performance main() actually calls.
    performanceReferencedFunctions = loadPerformanceReferencedFunctions(
        codebasePath, list(funcMap.keys()), logger)
    testNamedKept = sorted(
        k for k in performanceReferencedFunctions if "_test" in k or "test_" in k)
    if testNamedKept:
        logger.info(
            "Keeping test-named functions referenced by the performance main(): %s",
            ", ".join(testNamedKept),
        )

    threads = []
    for (i, key) in enumerate(funcMap):
        # We try to avoid tests here — but never drop a harness helper the
        # performance main() calls (otherwise its definition goes missing).
        isTestName = "_test" in key or "test_" in key
        if (isTestName and key not in performanceReferencedFunctions) or isSkippedTranslationFunction(key, performanceOnlyFunctions):
            continue
        t = threading.Thread(target=createIndividualPreprocessedFiles, args=(funcMap, key, logger, individualFuncPath))
        threads.append(t)
        if len(threads) > MAX_THREADS:
            for thread in threads:
                thread.start()
            for thread in threads:
                thread.join()
            threads = []
    for thread in threads:
        thread.start()
    for thread in threads:
        thread.join()
        threads = []
    """
    else:
        # Create the individual function files
        for i, key in enumerate(funcMap):
            # We try to avoid tests here
            if "_test" in key or "test_" in key:
                continue
            createIndividualPreprocessedFiles(funcMap, key, logger, individualFuncPath)
    """

    # Refresh from the individual function files
    funcMap = getFunctions(logger, extractor, individualFuncPath, singleFileName, [], [], funcMap) # No filtering using file-list this time because we have already filtered

    FunctionAndDependencies.resetTypeSystem()
    extractor.extractGlobalTypeUsageDetails(individualFuncPath, funcMap)
    extractor.extractNormalTypeUsageDetails(individualFuncPath, funcMap)
    extractor.extractEnumTypeUsageDetails(individualFuncPath, funcMap)
    extractor.extractStructFieldUsages(individualFuncPath, funcMap)
    # Second-pass: spread BYTE BUFFER tags through field-to-field
    # pointer-move use sites (e.g. cjson_new's
    # ``cJSON.string ← cJSON.valuestring`` hand-off). Must run AFTER
    # all per-field use lists are populated by the extract methods
    # above, BEFORE the type dependency graph / prompt build.
    extractor.propagateByteBufferTagsAcrossFields()
    # Detect callback bindings: explicit `(typedef_name)func_name`
    # casts that bind a function to a function-pointer typedef.
    # Performance prompt (the user-supplied main() template) is the
    # only place these casts live for entry-point callbacks like
    # `(comparator_t)intcmp`. Without this, when a later stage
    # transforms `comparator_t`'s signature, `intcmp`'s translation
    # prompt would not include the typedef, the LLM would have no
    # signal that intcmp needs to follow, and the cast at the call
    # site would silently bridge incompatible signatures. Runs after
    # all typedef nodes are registered (extract*UsageDetails above)
    # and before buildTypeDependencyGraph so the new edges are part
    # of the graph from the start.
    additionalSources = []
    try:
        infoPath = os.path.join(os.path.dirname(individualFuncPath), "performance_information.json")
        if os.path.isfile(infoPath):
            with open(infoPath, "r") as infoFile:
                info = json.load(infoFile)
            promptText = info.get("prompt", "") if isinstance(info, dict) else ""
            if promptText:
                additionalSources.append(promptText)
    except Exception as exc:
        logger.warning("Failed to load performance_information.json for callback-binding scan: %s", exc)
    extractor.extractCallbackBindings(funcMap, additionalSources=additionalSources)
    extractor.buildTypeDependencyGraph(funcMap)

    translatableFuncMap = filterSkippedFunctions(funcMap, logger, performanceOnlyFunctions)

    translator.preanalyze(translatableFuncMap, individualFuncPath)
    if not preanalysisOnly:
        translator.translateAll(translatableFuncMap, individualFuncPath, False)

    # Mark the directory as complete
    shutil.move(individualFuncPath, individualFuncPath+"__complete")

    return individualFuncPath+"__complete"



def fingerPrintModel(logger, srcDir, translator):
    # We check both the full model name and the fingerprint
    fingerPrintFileName = os.path.join(srcDir, "finger.print__" + translator.model + ".txt")
    oldFingerPrint = ""
    oldModelName = ""
    if os.path.exists(fingerPrintFileName):
        with open(fingerPrintFileName) as f:
            oldModelName = f.readline().strip()
            oldFingerPrint = f.readline().strip()
    else:
        logger.info("No previous fingerprint found...")

    (newModelName, newFingerPrint) = translator.getFingerPrint()
    newModelName = str(newModelName)
    newFingerPrint = str(newFingerPrint)
    logger.info("Fingerprinting details: model name: %s, finger print: %s", newModelName, newFingerPrint)
    if len(oldFingerPrint) == 0:
        with open(fingerPrintFileName, 'w') as f:
            f.write(newModelName+"\n")
            f.write(newFingerPrint+"\n")
    else:
        # Compare!!
        if oldFingerPrint == newFingerPrint and oldModelName == newModelName:
            logger.info("Finger print check succeeded...")
        else:
            if oldModelName != newModelName:
                logger.warning("The model aliases have diverged. You should try to run with the older model's full name, if it's still available.")
                input("Enter any key to continue...")
            logger.info("Finger print check mismatched (%s, %s) and (%s, %s). The results can potentially be very different from the previous run. Or it could just be that a different hardware was used to run the request!", oldModelName, oldFingerPrint, newModelName, newFingerPrint)


BENCHMARK_MENU_BLACKLIST = {"archive"}


def selectBenchmarkInteractively(inputsRoot="./inputs-complex"):
    """Prompt the user to pick a benchmark when --src is empty.

    Lists the subdirectories under ``inputsRoot`` (excluding the
    ``BENCHMARK_MENU_BLACKLIST`` entries, which are not benchmarks) and
    returns the chosen path (``<inputsRoot>/<name>``) so it slots straight
    into ``args.src``. Exits with a clear message if the inputs root is
    missing or holds no eligible subdirectories.
    """
    if not os.path.isdir(inputsRoot):
        sys.exit(f"--src is empty and inputs root {inputsRoot!r} does not exist; pass --src explicitly")

    candidates = sorted(
        entry for entry in os.listdir(inputsRoot)
        if os.path.isdir(os.path.join(inputsRoot, entry))
        and entry not in BENCHMARK_MENU_BLACKLIST
    )
    if not candidates:
        sys.exit(f"--src is empty and no benchmark subdirectories found under {inputsRoot}")

    print("Available benchmarks:")
    for i, name in enumerate(candidates, 1):
        print(f"  {i}. {name}")

    while True:
        choice = input(f"Select a benchmark [1-{len(candidates)}]: ").strip()
        if not choice:
            continue
        if not choice.isdigit():
            print(f"  invalid input {choice!r}; enter a number between 1 and {len(candidates)}")
            continue
        idx = int(choice)
        if idx < 1 or idx > len(candidates):
            print(f"  out of range; enter a number between 1 and {len(candidates)}")
            continue
        selected = os.path.join(inputsRoot, candidates[idx - 1])
        print(f"Selected: {selected}")
        return selected


"""
Some common invocations:
    python3 translationValidator.py --src=./inputs-complex/mbedtls/library --file-list-file=mbedtls_ssl_lib_files.txt --translator-mode=feedback
    python3 translationValidator.py --src=./inputs-complex/libcsv --translator-mode=cf-struct-replay
"""

if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Translate C code to Rust and then validate the translation, because why not?")
    parser.add_argument("--src", type=str, default="", help="The source directory that contains the preprocessed C files")
    # parser.add_argument("--src", type=str, default="./inputs-complex/libcsv", help="The source directory that contains the preprocessed C files")
    # parser.add_argument("--src", type=str, default="./inputs-complex/cjson_parse", help="The source directory that contains the preprocessed C files")
    # parser.add_argument("--src", type=str, default="./inputs-complex/cjson_write", help="The source directory that contains the preprocessed C files")
    # parser.add_argument("--src", type=str, default="./inputs-complex/libbmp_write", help="The source directory that contains the preprocessed C files")
    # parser.add_argument("--src", type=str, default="./inputs-complex/libbmp_parse", help="The source directory that contains the preprocessed C files")
    # parser.add_argument("--src", type=str, default="./inputs-complex/pageRank", help="The source directory that contains the preprocessed C files")
    # parser.add_argument("--src", type=str, default="./inputs-complex/skiplist", help="The source directory that contains the preprocessed C files")
    # parser.add_argument("--src", type=str, default="./inputs-complex/url.h", help="The source directory that contains the preprocessed C files")

    parser.add_argument("--preanalysis-only", type=bool, default=False, help="Only run the preanalysis")
    parser.add_argument("--llm-mode", type=str, default="claude-sonnet", help="The GPT model used for transpilation. Options: claude / claude-opus (= claude-opus-4-6), claude-sonnet / sonnet (= claude-sonnet-4-6, cheaper for debug), claude-haiku / haiku (= claude-haiku-4-5, cheapest; 200K context / 64K max output), gpt-5.")
    # parser.add_argument("--llm-mode", type=str, default="claude", help="The GPT model used for transpilation. Options: claude / claude-opus (= claude-opus-4-6), claude-sonnet / sonnet (= claude-sonnet-4-6, cheaper for debug), claude-haiku / haiku (= claude-haiku-4-5, cheapest; 200K context / 64K max output), gemini / gemini-flash (= gemini-3.5-flash, 1M context / 64K max output, requires GEMINI_API_KEY), gemini-pro (= gemini-3.1-pro-preview, same caps as flash, requires GEMINI_API_KEY), gpt-5.")
    # parser.add_argument("--llm-mode", type=str, default="gemini-3.1-pro", help="The GPT model used for transpilation. Options: claude / claude-opus (= claude-opus-4-6), claude-sonnet / sonnet (= claude-sonnet-4-6, cheaper for debug), claude-haiku / haiku (= claude-haiku-4-5, cheapest; 200K context / 64K max output), gpt-5.")
    # --llm-mode=gemini-3.5-flash
    # parser.add_argument("--llm-mode", type=str, default="gpt-5", help="The GPT model used for transpilation.")
    # parser.add_argument("--translator-mode", type=str, default="struct-fn-replay", help="Controls how the input file and its dependencies are chunked to fit into the LLM model context window. See gptTranslation.py for more information.")
    # parser.add_argument("--translator-mode", type=str, default="new-mode", help="Controls how the input file and its dependencies are chunked to fit into the LLM model context window. Options: basic, feedback, cf-struct-replay, struct-fn-replay, single-request-merge, new-mode, new-mode-single-stage, new-mode-merged-views (like new-mode but folds Stage_8 view-lowering into Stage_4). See gptTranslation.py for more information.")
    parser.add_argument("--translator-mode", type=str, default="new-mode-merged-views", help="Controls how the input file and its dependencies are chunked to fit into the LLM model context window. Options: basic, feedback, cf-struct-replay, struct-fn-replay, single-request-merge, new-mode, new-mode-single-stage, new-mode-merged-views (deprecated alias for new-mode), new-mode-resume (resume the staged pipeline from --prior-stage-state and run every later non-skipped stage). See gptTranslation.py for more information.")
    parser.add_argument("--fine-tuned-model", type=str, default="", help="The source directory that contains the preprocessed C files")
    parser.add_argument("--single-file-name", type=str, default="", help="The name of the single file that should be analyzed")
    parser.add_argument("--dir-prefix", type=str, default="", help="Add a prefix to the individual-funcs directory name")
    parser.add_argument("--file-list-file", type=str, default="", help="File containing list oft files to consider in the source directory")
    parser.add_argument("--multithreading", type=bool, default=True, help="Multithreading with 10 threads when sending OpenAI requests")
    parser.add_argument("--interactive-fix-on-fail", type=parseBoolArg, default=False,
                        help="When a function's compile-retry loop is exhausted, drop into an "
                             "interactive prompt: open the dumped per-function (or SCC) file in "
                             "your editor, fix it, save, press Enter to recompile + accept. "
                             "Accepted code flows back into previouslyTranslatedFunctions and "
                             "the translation result manager so downstream functions and stages "
                             "see the fix. Forces --multithreading=false. Auto-disabled if stdin "
                             "is not a TTY. Default: %(default)s")


    parser.add_argument("--perf-degrade-threshold-pct", type=float, default=30.0,
                        help="Trigger perf retryla when current_avg_ms > prev_stage_avg_ms * (1 + N/100). Default: %(default)s")
    # parser.add_argument("--perf-degrade-threshold-pct", type=float, default=PERF_DEGRADE_THRESHOLD_PCT,
    #                     help="Trigger perf retryla when current_avg_ms > prev_stage_avg_ms * (1 + N/100). Default: %(default)s")
    parser.add_argument("--perf-degrade-retry-count", type=int, default=PERF_DEGRADE_RETRY_COUNT,
                        help="Max per-function rerun attempts after a perf regression. Default: %(default)s")
    
    # when retry fail, do we throw current stage result
    parser.add_argument("--perf-degrade-discard-on-fail", type=parseBoolArg, default=True,
                        help="When all retries fail (or retry skipped) AND the stage exceeds threshold, "
                             "revert funcMap to previous stage. Default: %(default)s")

    # when performance degrade, do we skip retry
    parser.add_argument("--perf-degrade-skip-retry", type=parseBoolArg, default=PERF_DEGRADE_SKIP_RETRY,
                        help="Skip the entire perf retry mechanism. Degradation is still recorded; "
                             "no retry happens. Default: %(default)s")

    # Stage_1 (custom-allocator removal) is the foundation of the C++/Rust
    # rewrite; reverting it puts the custom allocator back and undoes every
    # later stage's assumption. When set, Stage_1 behaves like Stage_10:
    # perf regression is logged but never triggers a revert, regardless of
    # --perf-degrade-discard-on-fail / --perf-degrade-skip-retry.
    parser.add_argument("--perf-degrade-keep-stage-1", type=parseBoolArg, default=True,
                        help="Never discard Stage_1 on perf regression (mirrors Stage_10's "
                             "hardcoded exemption). Retry still runs; only the final revert "
                             "is suppressed. Default: %(default)s")

    # Skip the LLM-driven stageCheck (the Yes/No 'is this idiomatic?' gate
    # used by Stage_4/5/6/7). When true, every stageCheck returns True and
    # the proposed change is always applied. Useful when (a) you want to
    # debug pipeline behavior without paying for stage_check tokens, or
    # (b) the model under test is unreliable at single-word yes/no answers
    # (sonnet 4.6 hallucinates K&R-style example code instead of replying
    # yes/no — see cjson_new_validator_*.log "stageCheck got non yes/no").
    parser.add_argument("--skip-stage-check", type=parseBoolArg, default=True,
                        help="Skip the LLM stage_check (Yes/No idiomatic-change gate). "
                             "When true, every proposed change is auto-approved. "
                             "Default: %(default)s")
    parser.add_argument("--skip-c-baseline", type=parseBoolArg, default=False,
                        help="Skip running the original C source as a baseline for Stage_1's perf check. "
                             "By default (false), the pipeline REQUIRES a .c source with `int main(` at "
                             "the codebase root, compiles it 5x at the start of NEW_MODE, and records the "
                             "result under 'baseline_c' in performance_metrics.json so Stage_1 can detect "
                             "regressions vs the C version. Failure to compile/run this baseline aborts "
                             "the run. Set true ONLY when you understand Stage_1 perf check will then have "
                             "no baseline to compare against. Default: %(default)s")


    
    parser.add_argument("--target-stage", type=str, default="",
                        help="When translator-mode=new-mode-single-stage: which stage to run "
                             "(Stage_1..Stage_10). May be omitted when --prior-stage-state is set, "
                             "in which case the next non-skipped stage after the prior one is run "
                             "automatically. Pointing --prior-stage-state at a directory whose "
                             "basename ends in the stage number (e.g. 'v1/_Stage.Stage_1' or "
                             "'v1/stage_1') is enough to trigger a Stage_2-only run that tests "
                             "performance and stops.")
    parser.add_argument("--prior-stage-state", type=str, default="", help="Path to a prior NEW_MODE stage's directory (containing stage_state.json). Required for --target-stage other than Stage_1, and required for translator-mode=new-mode-resume (which then runs every later non-skipped stage).")
    parser.add_argument(
        "--resume-reload-functions", type=str, default="",
        help="(translator-mode=new-mode-resume only) Comma-separated list of "
             "function names whose body should be RELOADED from "
             "<prior-stage-state>/merged_funcs.{cpp,rs} on disk after the "
             "stage_state.json checkpoint is loaded. Use this when you have "
             "hand-fixed a function in the prior stage's merged file and want "
             "the fix to flow into the resumed stages — the checkpoint stores "
             "the in-memory funcMap, so on-disk edits are otherwise ignored. "
             "Names must match function definitions exactly (no edit-distance "
             "fallback); unknown names abort the run.",
    )
    parser.add_argument(
        "--skip-stages", type=parseSkipStagesArg,
        default={Stage.Stage_5, Stage.Stage_6},
        help="Comma-separated stage numbers (or Stage_N names) to skip in NEW_MODE. "
             "Default: 5,6 — Stage_5 (std::list) and Stage_6 (std::unordered_map) "
             "have been observed to reliably regress on cjson-shaped inputs "
             "(LLM produces no list/map conversion and instead reverts earlier "
             "stages' std::string fields, failing the perf gate). The pipeline "
             "runs the remaining stages in order; references to skipped stages "
             "are also removed from the per-stage PRESERVE/DEFER prompt text. "
             "Pass --skip-stages='' to run all 9 stages. Skipping Stage_9 leaves "
             "the output in C++ with no Rust transliteration."
    )

    args = parser.parse_args()
    if not args.src:
        args.src = selectBenchmarkInteractively()
    args.src = os.path.expanduser(args.src)

    tempLogRoot = os.path.join(os.getcwd(), "temp_log")
    os.makedirs(tempLogRoot, exist_ok=True)

    baseDir = os.path.basename(os.path.normpath(args.src))
    loggerFileName = os.path.join(tempLogRoot, baseDir + "_validator.log")
    if os.path.exists(loggerFileName):
        timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")
        loggerFileName = os.path.join(tempLogRoot, baseDir + "_validator_" + timestamp + ".log")
    logger = getLogger(loggerFileName)


    if Translator.getLLMModel(args.llm_mode) in (LLMModels.CLAUDE_OPUS, LLMModels.CLAUDE_SONNET, LLMModels.CLAUDE_HAIKU, LLMModels.GEMINI_FLASH, LLMModels.GEMINI_PRO):
        args.multithreading = False
    if args.interactive_fix_on_fail:
        args.multithreading = False

    # Single-stage UX. Two conveniences for --prior-stage-state, both
    # gated on translator-mode=new-mode-single-stage:
    #   1. Resolve a friendly basename (e.g. ``v1/stage_3``) to the actual
    #      on-disk directory NEW_MODE writes (``v1/_Stage.Stage_3``). Runs
    #      whether or not --target-stage is explicit, so the friendly name
    #      works in both auto-inference and explicit-target modes.
    #   2. If --target-stage is omitted, derive it as "the next non-skipped
    #      stage after the prior". Lets ``--prior-stage-state=v1/stage_1``
    #      alone trigger a Stage_2 perf-only run.
    if args.translator_mode == "new-mode-single-stage" and args.prior_stage_state:
        resolvedPriorPath = resolvePriorStagePath(args.prior_stage_state, searchRoots=[args.src])
        if resolvedPriorPath != args.prior_stage_state:
            logger.info(
                "[single-stage] resolved --prior-stage-state=%s -> %s",
                args.prior_stage_state, resolvedPriorPath,
            )
            args.prior_stage_state = resolvedPriorPath

        try:
            _checkPriorStagePathResolved(args.prior_stage_state, args.src, "single-stage")
        except argparse.ArgumentTypeError as e:
            parser.error(str(e))

        if not args.target_stage:
            priorStage = inferStageFromPriorPath(args.prior_stage_state)
            inferredNext = nextStageAfter(priorStage, args.skip_stages)
            if inferredNext is None:
                parser.error(
                    f"prior stage {priorStage.name} is the last stage under "
                    f"--skip-stages={sorted(s.name for s in args.skip_stages)}; "
                    "nothing left to run."
                )
            args.target_stage = inferredNext.name
            logger.info(
                "[single-stage] auto-inferred --target-stage=%s from --prior-stage-state=%s (prior=%s)",
                inferredNext.name, args.prior_stage_state, priorStage.name,
            )

    # Resume mode reuses the same friendly-basename resolution so the user
    # can type ``v1/stage_9`` and have it map to ``v1/_Stage.Stage_9``.
    # Unlike single-stage, --target-stage is not consulted here — the
    # translateAll branch derives every later non-skipped stage from the
    # prior-stage directory's basename.
    if args.translator_mode == "new-mode-resume" and args.prior_stage_state:
        resolvedPriorPath = resolvePriorStagePath(args.prior_stage_state, searchRoots=[args.src])
        if resolvedPriorPath != args.prior_stage_state:
            logger.info(
                "[resume] resolved --prior-stage-state=%s -> %s",
                args.prior_stage_state, resolvedPriorPath,
            )
            args.prior_stage_state = resolvedPriorPath

        try:
            _checkPriorStagePathResolved(args.prior_stage_state, args.src, "resume")
        except argparse.ArgumentTypeError as e:
            parser.error(str(e))

        # Fail fast at CLI parse time if the prior stage is the last one
        # under --skip-stages — same error condition as single-stage's
        # auto-inference path.
        priorStage = inferStageFromPriorPath(args.prior_stage_state)
        if nextStageAfter(priorStage, args.skip_stages) is None:
            parser.error(
                f"[resume] prior stage {priorStage.name} is the last stage "
                f"under --skip-stages={sorted(s.name for s in args.skip_stages)}; "
                "nothing left to run."
            )

    logger.info("Command line options: %s", args)

    processCodebase(args.src,
                    Translator.getLLMModel(args.llm_mode),
                    args.fine_tuned_model,
                    args.preanalysis_only,
                    Translator.getTranslatorMode(args.translator_mode),
                    args.single_file_name,
                    args.dir_prefix,
                    args.file_list_file,
                    args.multithreading,
                    args.perf_degrade_threshold_pct,
                    args.perf_degrade_retry_count,
                    args.perf_degrade_discard_on_fail,
                    args.perf_degrade_skip_retry,
                    args.skip_c_baseline,
                    logger,
                    targetStage=args.target_stage or None,
                    priorStageStateDir=args.prior_stage_state or None,
                    skipStageCheck=args.skip_stage_check,
                    skippedStages=args.skip_stages,
                    keepStage1OnDegrade=args.perf_degrade_keep_stage_1,
                    resumeReloadFunctions=[
                        n.strip() for n in (args.resume_reload_functions or "").split(",") if n.strip()
                    ],
                    interactiveFixOnFail=args.interactive_fix_on_fail) # ./inputs-complex/zlib-1.3.1/"
