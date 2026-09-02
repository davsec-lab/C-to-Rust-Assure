import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback

from sympy.codegen.cnodes import struct

import util

# sys.path.append("/home/tpalit/clang-llvm/llvm-project-14.0.0.src/clang/bindings/python/")
# 
# import clang.cindex
# 
# clang.cindex.Config.set_library_file('/usr/lib/libclang.so')  # Adjust path if necessary
# index = clang.cindex.Index.create()

from functionAndDeps import FunctionAndDependencies
from type_registry import TranslationMode, TypeDependencyGraph, TypeKind
from gpt_translation.byte_buffer_classifier import (
    classify_use_site,
    propagate_byte_buffer_tags,
)


unusedStructLists = ["_IO_FILE", "_IO_marker", "_IO_codecvt", "_IO_wide_data", "timespec"]
structPrefixAllowList = ("_bmp",)

# libc / glibc / POSIX extern globals that arrive in preprocessed ``.i``
# files via system headers (<stdio.h>, <unistd.h>, <errno.h>, <getopt.h>,
# <time.h>, ...). Handing these to the LLM as "types to translate" makes
# the model hallucinate FFI wrappers (e.g. translating ``extern FILE
# *stderr;`` into a ``fn write_to_stderr(...)`` helper that calls
# ``io::stderr()`` without the required ``use std::io::Write;`` — see
# run individual-funcs_claude-sonnet-4-6_2026-05-27_15-47-35). The Rust /
# C++ side already reaches these through the standard library (
# ``eprintln!``, ``std::cerr``, etc.) or via the ``libc`` crate, so the
# correct behavior is to drop them from the dependency graph entirely.
#
# Origin-based filtering (``_is_system_header_path``) catches these when
# the ``.i`` file preserves ``# <line> "<file>"`` markers, but the
# existing benchmarks preprocess with ``clang -E -P`` which strips those
# markers. The name list below is the belt-and-suspenders for that case.
libcExternSkipNames = frozenset({
    # <stdio.h>
    "stderr", "stdout", "stdin",
    "_IO_2_1_stderr_", "_IO_2_1_stdout_", "_IO_2_1_stdin_",
    # <errno.h>
    "errno",
    "program_invocation_name", "program_invocation_short_name",
    "sys_errlist", "sys_nerr", "_sys_errlist", "_sys_nerr",
    # <unistd.h> / <getopt.h>
    "environ", "__environ",
    "optarg", "optind", "opterr", "optopt",
    "__progname", "__progname_full",
    # <time.h>
    "tzname", "daylight", "timezone",
    "__tzname", "__daylight", "__timezone",
})

class Range:
    """
    Represents a 0-indexed range of line numbers that span a definition (function, typedef, etc)
    This range is inclusive on both ends
    """
    def __init__(self, sym, start, end):
        self.sym = sym
        self.start = start
        self.end = end

class FileRanges:
    """
    Represents the ranges for the functions, and everything else that is useful
    It has an alwaysInclude range: This will be stuff that is mandatory for that function
    and will typically have the struct definitions, typedefs and so on.
    Then, there is optional content to be included, only if it fits in the
    context-window.
    """
    def __init__(self):
        # The ranges for the functions
        self.funcRanges = []
        self.funcRangesMap = {}

        # Any header file information that is necessarily included
        self.alwaysIncludeRanges = []
        self.alwaysIncludeRangesMap = {} 


    def addFuncRange(self, funcRange):
        self.funcRanges.append(funcRange)
        self.funcRangesMap[funcRange.sym] = funcRange

    def addAlwaysIncludeRange(self, alwaysIncludeRange):
        self.alwaysIncludeRanges.append(alwaysIncludeRange)
        self.alwaysIncludeRangesMap[alwaysIncludeRange.sym] = alwaysIncludeRange

class FunctionAndDepsExtractor:
    """
    ctags -c-kinds options:
        d  macro definitions [off]
        e  enumerators (values inside an enumeration) [off]
        f  function definitions
        g  enumeration names [off]
        h  included header files [off]
        l  local variables [off]
        m  struct, and union members [off]
        p  function prototypes
        s  structure names [off]
        t  typedefs [off]
        u  union names [off]
        v  variable definitions [off]
        x  external and forward variable declarations [off]
        z  function parameters inside function or prototype definitions [off]
        L  goto labels [off]
        D  parameters inside macro definitions [off]
    """
    def __init__(self, logger):
        self.logger = logger
        self._file_lines_cache = {}
        self._producer_body_cache = {}
        testCmd = "ctags --version"
        # We need universal-ctags
        result = subprocess.getoutput(testCmd)
        if "Universal" not in result:
            self.logger.critical("Need Universal Ctags to proceed")
            sys.exit(-1)

    def _get_file_lines(self, cFileName):
        if cFileName not in self._file_lines_cache:
            with open(cFileName, "r") as f:
                self._file_lines_cache[cFileName] = [line.rstrip("\n") for line in f.readlines()]
        return self._file_lines_cache[cFileName]

    def _readProducerBody(self, fullFileName):
        """Return the full text of a per-function ``.i`` file, used as the
        "producer body" by ``classify_use_site`` to verify byte-cursor
        build patterns. Cached; returns ``""`` if the file cannot be
        read (e.g. missing on disk) so the classifier degrades to "no
        annotation" rather than raising."""
        if fullFileName in self._producer_body_cache:
            return self._producer_body_cache[fullFileName]
        try:
            with open(fullFileName, "r") as fh:
                body = fh.read()
        except OSError:
            body = ""
        self._producer_body_cache[fullFileName] = body
        return body

    def propagateByteBufferTagsAcrossFields(self):
        """Second-pass propagation of BYTE BUFFER tags through
        field-to-field pointer-move use sites, on every struct in the
        live type registry.

        Must run AFTER ``extractGlobalTypeUsageDetails`` /
        ``extractNormalTypeUsageDetails`` / ``extractStructFieldUsages``
        — those passes populate the per-field use lists with direct
        tags from the first-pass classifier, and this method spreads
        those tags transitively. Running it earlier would miss edges
        whose endpoints aren't tagged yet.

        Closes the cjson_new ``cJSON.string ← cJSON.valuestring``
        double-free case: ``valuestring`` is tagged by the direct
        pass (cursor build in ``parse_string``); the move site
        ``current_item->string = current_item->valuestring`` in
        ``parse_object`` then propagates the tag to ``string`` so
        BOTH fields become ``std::vector<unsigned char>`` and the
        natural translation is ``std::move`` instead of
        ``(char*).data()`` aliasing.
        """
        structMap = FunctionAndDependencies.structsWithUsageInfoMap
        total = 0
        for structName, structInfo in structMap.items():
            if structInfo is None or not getattr(structInfo, "usageList", None):
                continue
            rawCCode = getattr(structInfo, "cCode", "") or ""
            if isinstance(rawCCode, (list, tuple)):
                structCCode = "\n".join(str(line) for line in rawCCode)
            else:
                structCCode = str(rawCCode)
            newly = propagate_byte_buffer_tags(structInfo.usageList, structCCode)
            if newly:
                self.logger.info(
                    "Byte-buffer tag propagated transitively in struct %s to fields: %s",
                    structName, sorted(newly),
                )
                total += len(newly)
        if total:
            self.logger.info(
                "Byte-buffer transitive propagation tagged %d additional field(s)",
                total,
            )

    @staticmethod
    def _annotateByteBufferUse(useLine, producerBody, structInfo, fieldName):
        """Append the BYTE BUFFER tag to ``useLine`` when the static
        analysis confirms the use is a cast-to-char* assignment whose
        RHS is filled by a cursor build in ``producerBody``. Scoped to
        ``char *`` fields only — all other field types pass through
        unchanged. Returns the (possibly annotated) use line.

        ``TypeNode.cCode`` is declared ``object`` and in practice can be
        either a string or a list of source lines; normalize to string
        before handing off to the classifier so the regex layer never
        sees a non-text input."""
        rawCCode = getattr(structInfo, "cCode", "") or ""
        if isinstance(rawCCode, (list, tuple)):
            structCCode = "\n".join(str(line) for line in rawCCode)
        else:
            structCCode = str(rawCCode)
        suffix = classify_use_site(
            useLine, producerBody, structCCode, fieldName,
        )
        return useLine + suffix if suffix else useLine

    def _get_definition_origin(self, cFileName, startIndex):
        lines = self._get_file_lines(cFileName)
        i = min(startIndex, len(lines) - 1)
        marker = re.compile(r'^\s*#\s*\d+\s+"([^"]+)"')
        while i >= 0:
            m = marker.match(lines[i])
            if m:
                return m.group(1)
            i -= 1
        return ""

    def _is_system_header_path(self, path):
        if not path:
            return False
        if path.startswith("<") and path.endswith(">"):
            return True
        system_prefixes = (
            "/usr/include/",
            "/usr/lib/",
            "/usr/lib64/",
            "/lib/",
            "/lib64/",
        )
        return path.startswith(system_prefixes)

    def _get_original_source_function_names(self, preprocessedFileName):
        baseName, _extension = os.path.splitext(preprocessedFileName)
        sourceFileName = baseName + ".c"
        if not os.path.isfile(sourceFileName):
            return set()

        cmd = "ctags --fields=+ne -o - --language-force=C --c-kinds=f " + sourceFileName
        result = subprocess.getoutput(cmd)
        sourceFunctionNames = set()
        for line in result.splitlines():
            tokens = line.split("\t")
            if tokens:
                sourceFunctionNames.add(tokens[0])
        return sourceFunctionNames

    def should_keep_function_definition(self, cFileName, functionName, startIndex, sourceFunctionNames=None):
        if sourceFunctionNames and functionName not in sourceFunctionNames:
            self.logger.info(
                "Skipping function %s from %s because it is not defined in the original source file",
                functionName,
                cFileName,
            )
            return False

        origin = self._get_definition_origin(cFileName, startIndex)
        if self._is_system_header_path(origin):
            self.logger.info(
                "Skipping function %s from system header origin %s",
                functionName,
                origin,
            )
            return False

        return True

    def should_keep_struct(self, cFileName, structName, startIndex):
        if not structName:
            return False
        if structName in unusedStructLists:
            return False
        if structName.startswith(structPrefixAllowList):
            return True
        if structName.startswith("_"):
            return False

        origin = self._get_definition_origin(cFileName, startIndex)
        if self._is_system_header_path(origin):
            return False
        return True

    def should_keep_extern_var(self, cFileName, externVarName, startIndex):
        """Filter for ``extern`` globals discovered in a per-function
        ``.i`` file.

        We drop libc / glibc / POSIX externs (``stderr``, ``optarg``,
        ``__tzname``, ...) because they are NOT user-defined types that
        the LLM should translate — Rust accesses them through the
        standard library or the ``libc`` crate. Letting them through
        causes the LLM to invent broken wrapper helpers (observed:
        ``write_to_stderr`` synthesized for ``extern FILE *stderr;``).

        Returns True iff the extern should remain in the dependency
        graph and be handed to the LLM."""
        if not externVarName:
            return False
        if externVarName in libcExternSkipNames:
            self.logger.info(
                "Skipping libc extern global %s from %s (in libcExternSkipNames)",
                externVarName,
                cFileName,
            )
            return False
        # Glibc-internal externs almost always start with ``__`` (e.g.
        # ``__daylight``, ``__environ``). User code rarely defines
        # double-underscore names because that namespace is reserved
        # for the implementation by C99 §7.1.3, so dropping them is safe.
        if externVarName.startswith("__"):
            self.logger.info(
                "Skipping reserved-namespace extern %s from %s",
                externVarName,
                cFileName,
            )
            return False

        origin = self._get_definition_origin(cFileName, startIndex)
        if self._is_system_header_path(origin):
            self.logger.info(
                "Skipping extern %s from system header origin %s",
                externVarName,
                origin,
            )
            return False
        return True

    def has_extractable_struct_definition(self, cFileName, structName):
        if not structName:
            return False
        return util.extractStructDefRange(self.logger, cFileName, structName) is not None

    def createRangeFromCtagsLine(self, line, allLines):
        """ 
        A ctags line is:
        random_data     deflate.i       /^struct random_data$/;"        s       line:1167       file:   end:1176
        In some cases end: field is missing, but those are one-liners
        """
        tokens = line.split('\t')
        sym = tokens[0]
        start = tokens[4].split(":")[1]
        if "end:" in tokens[-1]:
            end = tokens[-1].split(":")[1]
        else:
            end = start
        # Need for hack!
        # The function header can span more than one lines
        # We hack to capture it
        startIndex = int(start) - 1
        endIndex = int(end) - 1 
        if startIndex > 0:
            s = startIndex - 1
            # As long the previous line isn't empty or containing #, ;, or }
            # self.logger.info("Prev index = %d, total = %d", s, len(allLines))
            prevLine = allLines[s].strip()
            while s >= 0 and len(prevLine) > 0 and "#" not in prevLine and ";" not in prevLine and "}" not in prevLine:
                # self.logger.info("prevLine: %s", prevLine)
                startIndex = s
                s = startIndex - 1
                # self.logger.info("startIndex = %d", startIndex)
                prevLine = allLines[s].strip()
        r = Range(sym, startIndex, endIndex)
        return r

    def extract_struct_name(self, line: str) -> str:
        prefix = "Struct: "
        if line.startswith(prefix):
            return line[len(prefix):].strip()
        return ""

    def extract_static_var_name(self, line: str) -> str:
        normalized_line = line.strip()
        static_prefix = "Static: "
        if normalized_line.startswith(static_prefix):
            return normalized_line[len(static_prefix):].strip()

        # Most static-and-struct-def outputs are declarations; take identifier
        # from the declaration before assignment/array suffix.
        declaration = normalized_line.split("=", 1)[0].rstrip(";").strip()
        declaration = re.sub(r"\[[^\]]*\]\s*$", "", declaration)
        match = re.search(r"([A-Za-z_][A-Za-z0-9_]*)\s*$", declaration)
        if match:
            candidate = match.group(1)
            if candidate != "static":
                return candidate
        return ""

    def extract_extern_var_name(self, line: str) -> str:
        normalized_line = line.strip()
        extern_prefix = "Extern: "
        if normalized_line.startswith(extern_prefix):
            return normalized_line[len(extern_prefix):].strip()

        declaration = normalized_line.split("=", 1)[0].rstrip(";").strip()
        declaration = re.sub(r"\[[^\]]*\]\s*$", "", declaration)
        match = re.search(r"([A-Za-z_][A-Za-z0-9_]*)\s*$", declaration)
        if match:
            candidate = match.group(1)
            if candidate != "extern":
                return candidate
        return ""

    def extract_enum_name(self, line: str) -> str:
        normalized_line = line.strip()
        enum_prefix = "Enum: "
        if normalized_line.startswith(enum_prefix):
            return normalized_line[len(enum_prefix):].strip()

        if normalized_line.lower().startswith("enum"):
            # Accept formats like:
            # - "enum my_enum"
            # - "enum my_enum {"
            # - "Enum my_enum"
            match = re.match(r"(?i)^enum\s+([A-Za-z_][A-Za-z0-9_]*)\b", normalized_line)
            if match:
                return match.group(1)
        return ""

    def extract_typedef_name(self, line: str) -> str:
        prefix = "Typedef: "
        if line.startswith(prefix):
            return line[len(prefix):].strip()
        return ""

    def extract_enum_definitions_by_text_match(self, cFileName):
        with open(cFileName, "r") as file:
            source = file.read()

        lines = [line.rstrip("\n") for line in source.splitlines()]
        enumDefs = {}
        seenSpans = []

        # typedef enum {...} Alias; or typedef enum Name {...} Alias;
        typedefEnumPattern = re.compile(
            r"typedef\s+enum(?:\s+[A-Za-z_][A-Za-z0-9_]*)?\s*\{.*?\}\s*([A-Za-z_][A-Za-z0-9_]*)\s*;",
            re.DOTALL,
        )
        # enum Name {...};
        namedEnumPattern = re.compile(
            r"\benum\s+([A-Za-z_][A-Za-z0-9_]*)\s*\{.*?\}\s*;",
            re.DOTALL,
        )

        for pattern in (typedefEnumPattern, namedEnumPattern):
            for match in pattern.finditer(source):
                # Avoid processing overlapping matches twice.
                overlap = False
                for (s, e) in seenSpans:
                    if not (match.end() <= s or match.start() >= e):
                        overlap = True
                        break
                if overlap:
                    continue
                seenSpans.append((match.start(), match.end()))

                enumName = match.group(1)
                if not enumName or enumName in enumDefs:
                    continue

                startIndex = source.count("\n", 0, match.start())
                endIndex = source.count("\n", 0, match.end() - 1)
                cEnumDefinition = lines[startIndex:endIndex + 1]
                enumDefs[enumName] = (startIndex, endIndex, cEnumDefinition)

        return enumDefs

    def stringifyCodeBlock(self, code):
        if isinstance(code, str):
            return code
        return "\n".join(code)

    def _find_brace_balanced_end(self, text, openBraceIndex):
        if openBraceIndex < 0 or openBraceIndex >= len(text) or text[openBraceIndex] != "{":
            return -1
        depth = 0
        for idx in range(openBraceIndex, len(text)):
            ch = text[idx]
            if ch == "{":
                depth += 1
            elif ch == "}":
                depth -= 1
                if depth == 0:
                    return idx + 1
        return -1

    def _lift_anonymous_unions(self, structName, cStructDefinition):
        """Detect anonymous unions inside a parent struct's textual body and
        lift each into a separately-named union definition.

        Returns:
            (modifiedDefinition, syntheticUnions)
            modifiedDefinition: same shape as input (list of lines or string)
                with each anonymous union body replaced by
                ``<SynthesizedName> <fieldName>;``.
            syntheticUnions: list of (unionName, unionCBody) tuples; unionCBody
                is a single string ending in ``;`` defining
                ``union <SynthesizedName> { ... };``.
        """
        if not structName or not cStructDefinition:
            return cStructDefinition, []

        wasList = isinstance(cStructDefinition, list)
        text = "\n".join(cStructDefinition) if wasList else cStructDefinition

        syntheticUnions = []
        counter = 0
        cursor = 0
        rebuilt = []

        anonymousUnionPattern = re.compile(r'\bunion\s*\{')

        while True:
            match = anonymousUnionPattern.search(text, cursor)
            if not match:
                rebuilt.append(text[cursor:])
                break

            braceIndex = match.end() - 1
            endIndex = self._find_brace_balanced_end(text, braceIndex)
            if endIndex < 0:
                rebuilt.append(text[cursor:])
                break

            tail = endIndex
            while tail < len(text) and text[tail].isspace():
                tail += 1
            fieldNameMatch = re.match(r'([A-Za-z_][A-Za-z0-9_]*)', text[tail:])
            if fieldNameMatch:
                fieldName = fieldNameMatch.group(1)
                tail += fieldNameMatch.end()
            else:
                fieldName = "u"
            while tail < len(text) and text[tail].isspace():
                tail += 1
            if tail < len(text) and text[tail] == ";":
                tail += 1

            counter += 1
            unionName = structName + "Union" if counter == 1 else f"{structName}Union{counter}"
            unionInlineBody = text[match.start():endIndex]
            unionCDefinition = re.sub(
                r'^union\s*\{',
                f'union {unionName} {{',
                unionInlineBody,
                count=1,
            ) + ";"

            rebuilt.append(text[cursor:match.start()])
            rebuilt.append(f"{unionName} {fieldName};")
            cursor = tail

            syntheticUnions.append((unionName, unionCDefinition))

        if not syntheticUnions:
            return cStructDefinition, []

        modifiedText = "".join(rebuilt)
        if wasList:
            modifiedDefinition = modifiedText.split("\n")
        else:
            modifiedDefinition = modifiedText
        return modifiedDefinition, syntheticUnions

    def _upsert_type_node(self, kind, name, c_code, translation_mode, extracted_by):
        return FunctionAndDependencies.upsertTypeNode(
            kind=kind,
            name=name,
            c_code=c_code,
            translation_mode=translation_mode,
            extracted_by=extracted_by,
        )

    def _register_type_reference(self, functionAndDeps, typeNode, startIndex, endIndex, funcSym):
        typeNode.add_function_use(funcSym)
        functionAndDeps.registerTypeReference(typeNode.key, startIndex, endIndex)

    def _extract_struct_identifiers(self, structName, structCode):
        identifiers = {structName}
        code = (structCode or "").strip()
        headerMatch = re.search(r'\b(?:typedef\s+)?struct\s+([A-Za-z_][A-Za-z0-9_]*)', code)
        if headerMatch:
            identifiers.add(headerMatch.group(1))
        typedefBodyMatch = re.search(
            r'\btypedef\s+struct(?:\s+[A-Za-z_][A-Za-z0-9_]*)?\s*\{[\s\S]*?\}\s*([A-Za-z_][A-Za-z0-9_]*)\s*;',
            code
        )
        if typedefBodyMatch:
            identifiers.add(typedefBodyMatch.group(1))
        typedefForwardMatch = re.search(
            r'\btypedef\s+struct\s+[A-Za-z_][A-Za-z0-9_]*\s+([A-Za-z_][A-Za-z0-9_]*)\s*;',
            code
        )
        if typedefForwardMatch:
            identifiers.add(typedefForwardMatch.group(1))
        return {identifier for identifier in identifiers if identifier}

    def _extract_union_identifiers(self, unionName, unionCode):
        identifiers = {unionName}
        code = (unionCode or "").strip()
        headerMatch = re.search(r'\b(?:typedef\s+)?union\s+([A-Za-z_][A-Za-z0-9_]*)', code)
        if headerMatch:
            identifiers.add(headerMatch.group(1))
        typedefBodyMatch = re.search(
            r'\btypedef\s+union(?:\s+[A-Za-z_][A-Za-z0-9_]*)?\s*\{[\s\S]*?\}\s*([A-Za-z_][A-Za-z0-9_]*)\s*;',
            code
        )
        if typedefBodyMatch:
            identifiers.add(typedefBodyMatch.group(1))
        return {identifier for identifier in identifiers if identifier}

    def _extract_enum_identifiers(self, enumName, enumCode):
        identifiers = {enumName}
        code = (enumCode or "").strip()
        namedEnumMatch = re.search(r'\benum\s+([A-Za-z_][A-Za-z0-9_]*)\b', code)
        if namedEnumMatch:
            identifiers.add(namedEnumMatch.group(1))
        typedefEnumMatch = re.search(
            r'\btypedef\s+enum(?:\s+[A-Za-z_][A-Za-z0-9_]*)?\s*\{[\s\S]*?\}\s*([A-Za-z_][A-Za-z0-9_]*)\s*;',
            code
        )
        if typedefEnumMatch:
            identifiers.add(typedefEnumMatch.group(1))
        return {identifier for identifier in identifiers if identifier}

    def _extract_typedef_identifiers(self, typedefName, typedefCode):
        identifiers = {typedefName}
        code = (typedefCode or "").strip()
        aliasMatch = re.search(
            r'\btypedef\s+.+?\s+([A-Za-z_][A-Za-z0-9_]*)\s*;\s*$',
            " ".join(code.split()),
        )
        if aliasMatch:
            identifiers.add(aliasMatch.group(1))
        return {identifier for identifier in identifiers if identifier}

    def _extract_static_identifiers(self, staticName, staticCode):
        identifiers = {staticName}
        declaration = (staticCode or "").strip()
        for match in re.finditer(r'\b([A-Za-z_][A-Za-z0-9_]*)\b', declaration):
            candidate = match.group(1)
            if candidate == staticName:
                identifiers.add(candidate)
        return identifiers

    def _extract_extern_identifiers(self, externName, externCode):
        identifiers = {externName}
        declaration = (externCode or "").strip()
        for match in re.finditer(r'\b([A-Za-z_][A-Za-z0-9_]*)\b', declaration):
            candidate = match.group(1)
            if candidate == externName:
                identifiers.add(candidate)
        return identifiers

    def _resolve_type_identifiers(self, typeNode):
        code = self.stringifyCodeBlock(typeNode.cCode)
        if typeNode.kind == TypeKind.STRUCT:
            return self._extract_struct_identifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.UNION:
            return self._extract_union_identifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.ENUM:
            return self._extract_enum_identifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.TYPEDEF:
            return self._extract_typedef_identifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.EXTERN:
            return self._extract_extern_identifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.STATIC:
            return self._extract_static_identifiers(typeNode.name, code)
        return {typeNode.name}

    def buildTypeDependencyGraph(self, funcMap=None):
        nodes = FunctionAndDependencies.typeRegistry.all_nodes()
        sortedKeys = FunctionAndDependencies.typeRegistry.sorted_keys()
        nodeIdentifiers = {}
        codeMap = {}

        for node in nodes:
            code = self.stringifyCodeBlock(node.cCode)
            codeMap[node.key] = code
            identifiers = self._resolve_type_identifiers(node)
            node.identifiers = set(identifiers)
            node.depends_on = set()
            nodeIdentifiers[node.key] = identifiers

        adjacency = {key: set() for key in sortedKeys}
        for sourceKey in sortedKeys:
            sourceCode = codeMap.get(sourceKey, "")
            for targetKey in sortedKeys:
                if targetKey == sourceKey:
                    continue
                targetIdentifiers = nodeIdentifiers.get(targetKey, set())
                if not targetIdentifiers:
                    continue
                if any(re.search(r'\b' + re.escape(identifier) + r'\b', sourceCode) for identifier in targetIdentifiers):
                    adjacency[sourceKey].add(targetKey)

        graph = TypeDependencyGraph(sortedKeys, adjacency)
        for key, dependencies in adjacency.items():
            node = FunctionAndDependencies.getTypeNode(key)
            if node is not None:
                node.depends_on = set(dependencies)
        FunctionAndDependencies.setTypeDependencyGraph(graph)
        self.logCollectedTypesAndDefinitions()
        return graph

    def logCollectedTypesAndDefinitions(self):
        sortedKeys = FunctionAndDependencies.typeRegistry.sorted_keys()
        if not sortedKeys:
            self.logger.info("[type-registry] no collected types")
            return

        self.logger.info("[type-registry] collected %d definitions", len(sortedKeys))
        for typeKey in sortedKeys:
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None:
                continue
            dependencyNames = sorted(dep.storage_key() for dep in typeNode.depends_on)
            self.logger.info(
                "[type-registry] %s extracted_by=%s depends_on=%s\n%s",
                typeKey.storage_key(),
                sorted(typeNode.extracted_by),
                dependencyNames,
                self.stringifyCodeBlock(typeNode.cCode),
            )

    def extractSymbolDefinition(self, cFileName, symbolName, cKinds = "v"):
        findSymCmd = "ctags --fields=+ne -o - --language-force=C++ --c-kinds=" + cKinds + " " + cFileName
        result = subprocess.run(findSymCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
        if result.returncode != 0:
            return None

        for line in result.stdout.split('\n'):
            tokens = line.split('\t')
            if len(tokens) < 5 or tokens[0] != symbolName:
                continue
            startToken = None
            endToken = None
            for token in tokens:
                if token.startswith("line:"):
                    startToken = token
                if token.startswith("end:"):
                    endToken = token

            if not startToken:
                continue

            start = int(startToken.split(":")[1])
            end = int(endToken.split(":")[1]) if endToken else start
            with open(cFileName, 'r') as file:
                allLines = [singleLine.rstrip() for singleLine in file.readlines()]
            return (start - 1, end, allLines[start - 1:end])
        return None

    def extractNormalTypeUsageDetails(self, srcPath, funcMap):
        self.logger.info("Extracting normal structs from %d functions", len(funcMap))
        for funcSym in funcMap:
            fullFileName = os.path.join(srcPath, funcSym + ".i")
            functionAndDeps = funcMap[funcSym]
            cmd = "static-and-struct-def " + fullFileName
            self.logger.info("Extracting normal structs from for file %s", funcSym)
            result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            stdoutText = result.stdout or ""
            stderrText = result.stderr or ""
            if not stdoutText.strip():
                self.logger.info(
                    "static-and-struct-def produced no output for %s (rc=%d). stderr head: %s",
                    fullFileName, result.returncode, stderrText[:300],
                )
                continue
            if result.returncode != 0:
                self.logger.debug(
                    "static-and-struct-def returned rc=%d for %s but produced output; "
                    "proceeding with stdout. stderr head: %s",
                    result.returncode, fullFileName, stderrText[:300],
                )
            else:
                print(f"successfully run {cmd} 2>/dev/null")

            for line in result.stdout.split("\n"):
                if len(line) > 0:
                    if line.startswith("Struct"):
                        structName = self.extract_struct_name(line)
                        if structName:
                            result = util.extractStructDefinition(self.logger,
                                                                  fullFileName,
                                                                  structName)
                            if not result:
                                continue
                            (startIndex, endIndex, cStructDefinition) = result
                            if not self.should_keep_struct(fullFileName, structName, startIndex):
                                continue
                            cStructDefinition, syntheticUnions = self._lift_anonymous_unions(
                                structName, cStructDefinition,
                            )
                            for unionName, unionCBody in syntheticUnions:
                                unionNode = self._upsert_type_node(
                                    TypeKind.UNION,
                                    unionName,
                                    unionCBody,
                                    TranslationMode.UNION,
                                    "anon-union-lift",
                                )
                                self._register_type_reference(
                                    functionAndDeps, unionNode, startIndex, endIndex, funcSym,
                                )
                            structWithUsageInfo = self._upsert_type_node(
                                TypeKind.STRUCT,
                                structName,
                                cStructDefinition,
                                TranslationMode.PLAIN_STRUCT,
                                "normal",
                            )
                            self._register_type_reference(functionAndDeps, structWithUsageInfo, startIndex, endIndex, funcSym)
                    if line.startswith("Typedef"):
                        typedefName = self.extract_typedef_name(line)
                        if typedefName:
                            result = util.extractTypedefDefinition(self.logger, fullFileName, typedefName)
                            if not result:
                                continue
                            (startIndex, endIndex, cTypedefDefinition) = result
                            cTypedefDefinition, syntheticUnions = self._lift_anonymous_unions(
                                typedefName, cTypedefDefinition,
                            )
                            for unionName, unionCBody in syntheticUnions:
                                unionNode = self._upsert_type_node(
                                    TypeKind.UNION,
                                    unionName,
                                    unionCBody,
                                    TranslationMode.UNION,
                                    "anon-union-lift",
                                )
                                self._register_type_reference(
                                    functionAndDeps, unionNode, startIndex, endIndex, funcSym,
                                )
                            typedefWithUsageInfo = self._upsert_type_node(
                                TypeKind.TYPEDEF,
                                typedefName,
                                cTypedefDefinition,
                                TranslationMode.TYPEDEF,
                                "normal",
                            )
                            self._register_type_reference(functionAndDeps, typedefWithUsageInfo, startIndex, endIndex, funcSym)
                    if line.startswith("Extern"):
                        externVarName = self.extract_extern_var_name(line)
                        if not externVarName:
                            continue
                        externVarDefResult = self.extractSymbolDefinition(fullFileName, externVarName, "x")
                        if not externVarDefResult:
                            continue
                        (startIndex, endIndex, cExternVarDefinition) = externVarDefResult
                        if not self.should_keep_extern_var(fullFileName, externVarName, startIndex):
                            continue
                        externWithUsageInfo = self._upsert_type_node(
                            TypeKind.EXTERN,
                            externVarName,
                            cExternVarDefinition,
                            TranslationMode.EXTERN,
                            "normal",
                        )
                        self._register_type_reference(functionAndDeps, externWithUsageInfo, startIndex, endIndex, funcSym)
                    if line.startswith("static") or line.startswith("Static"):
                        staticVarName = self.extract_static_var_name(line)
                        if not staticVarName:
                            continue
                        staticVarDefResult = self.extractSymbolDefinition(fullFileName, staticVarName, "v")
                        if not staticVarDefResult:
                            continue
                        if staticVarName:
                            (startIndex, endIndex, cStaticVarDefinition) = staticVarDefResult
                            staticWithUsageInfo = self._upsert_type_node(
                                TypeKind.STATIC,
                                staticVarName,
                                cStaticVarDefinition,
                                TranslationMode.STATIC,
                                "normal",
                            )
                            self._register_type_reference(functionAndDeps, staticWithUsageInfo, startIndex, endIndex, funcSym)

    def extractEnumTypeUsageDetails(self, srcPath, funcMap):
        self.logger.info("Extracting enums from %d functions", len(funcMap))
        for funcSym in funcMap:
            fullFileName = os.path.join(srcPath, funcSym + ".i")
            functionAndDeps = funcMap[funcSym]
            self.logger.info("Extracting enums for file %s", funcSym)
            enumDefs = self.extract_enum_definitions_by_text_match(fullFileName)
            for enumName in enumDefs:
                (startIndex, endIndex, cEnumDefinition) = enumDefs[enumName]
                enumWithUsageInfo = self._upsert_type_node(
                    TypeKind.ENUM,
                    enumName,
                    cEnumDefinition,
                    TranslationMode.ENUM,
                    "enum",
                )
                self._register_type_reference(functionAndDeps, enumWithUsageInfo, startIndex, endIndex, funcSym)

    def extractStructFieldUsages(self, srcPath, funcMap):
        """Attach field-usage examples and function-use tracking to EVERY
        struct in the type registry, regardless of how it was initially
        classified (RICH_STRUCT vs PLAIN_STRUCT).

        ``extractGlobalTypeUsageDetails`` only does this for structs that
        ``struct-with-generic-pointer-printer`` flags — historically that
        tool only matches structs containing ``char *`` or ``void *``
        fields, so view-style structs with ``const unsigned char *content``
        (e.g. ``parse_buffer`` in cjson_new, ``error`` with
        ``const unsigned char *json``) end up as ``PLAIN_STRUCT`` with an
        empty ``usageList`` — and ``_formatTypeUsageExamples`` then shows
        the LLM nothing about how their fields are actually used, leading
        the model to keep raw-pointer fields when their access pattern
        would clearly fit ``std::basic_string_view<unsigned char>``.

        This pass closes that gap: run ``struct-field-use-printer`` over
        each per-function ``.i`` file, look every emitted ``<struct,
        field, use>`` triple up against the live registry, and merge
        usage into whatever node is found. Plain structs that gain real
        usage data get promoted to ``RICH_STRUCT`` so the formatter
        surfaces them.

        Must run AFTER ``extractGlobalTypeUsageDetails`` and
        ``extractNormalTypeUsageDetails`` so every struct the codebase
        defines is already in the registry.
        """
        self.logger.info("Extracting struct field usages across %d functions", len(funcMap))
        for funcSym in funcMap:
            fullFileName = os.path.join(srcPath, funcSym + ".i")
            cmd = "struct-field-use-printer " + fullFileName
            result = subprocess.run(cmd, shell=True, text=True,
                                    stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
            if result.returncode != 0:
                self.logger.info("Failed command and bailing: %s", cmd)
                continue
            producerBody = self._readProducerBody(fullFileName)
            for outputLine in result.stdout.split("\n"):
                tokens = outputLine.split(":")
                if len(tokens) < 3:
                    continue
                structName = tokens[0].strip()
                fieldName = tokens[1].strip()
                use = tokens[2].strip()
                structInfo = FunctionAndDependencies.structsWithUsageInfoMap.get(structName)
                if structInfo is None:
                    continue
                if ';' in use:
                    for useToken in use.split(";"):
                        if fieldName in useToken:
                            annotated = self._annotateByteBufferUse(
                                useToken, producerBody, structInfo, fieldName,
                            )
                            structInfo.merge_usage_list_entry(fieldName, annotated)
                            structInfo.add_usage_example(funcSym, annotated, (fieldName,))
                else:
                    annotated = self._annotateByteBufferUse(
                        use, producerBody, structInfo, fieldName,
                    )
                    structInfo.merge_usage_list_entry(fieldName, annotated)
                    structInfo.add_usage_example(funcSym, annotated, (fieldName,))
                structInfo.add_function_use(funcSym)
                if structInfo.translation_mode == TranslationMode.PLAIN_STRUCT:
                    structInfo.translation_mode = TranslationMode.RICH_STRUCT

    def extractGlobalTypeUsageDetails(self, srcPath, funcMap):
        # This information doesn't have to be completely 
        # syntactically accurate.
        # So, we can get by doing text-level processing
        # and don't need a clang tool or anything
        
        self.logger.info("Extracting char*/void* fields from %d functions", len(funcMap))
        for funcSym in funcMap:
            # 1. collect all struct types that have void* or char* pointers
            # 2. gather their uses in other functions
            fullFileName = os.path.join(srcPath, funcSym+".i")

            cmd = "struct-with-generic-pointer-printer " + fullFileName

            self.logger.info("Extracting char*/void* field pointers from structs for file %s", funcSym)

            result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
            stdoutText = result.stdout or ""
            stderrText = result.stderr or ""
            if not stdoutText.strip():
                self.logger.info(
                    "struct-with-generic-pointer-printer produced no output for %s (rc=%d). stderr head: %s",
                    fullFileName, result.returncode, stderrText[:300],
                )
                continue
            if result.returncode != 0:
                self.logger.debug(
                    "struct-with-generic-pointer-printer returned rc=%d for %s but produced output; "
                    "proceeding with stdout. stderr head: %s",
                    result.returncode, fullFileName, stderrText[:300],
                )
            else:
                print(f"successfully run {cmd} 2>/dev/null")


            structNames = set()

            functionAndDeps = funcMap[funcSym]
            for line in result.stdout.split("\n"):
                if len(line) > 0:
                    if not self.has_extractable_struct_definition(fullFileName, line):
                        self.logger.info(
                            "Skipping generic-pointer type candidate %s in %s because it is not an extractable struct definition.",
                            line,
                            fullFileName,
                        )
                        continue
                    # Extract the source line
                    result = util.extractStructDefinition(self.logger, fullFileName, line)
                    if not result:
                        continue
                    (startIndex, endIndex, cStructDefinition) = result
                    if not self.should_keep_struct(fullFileName, line, startIndex):
                        self.logger.info(
                            "Skipping generic-pointer type candidate %s in %s because it is filtered by should_keep_struct.",
                            line,
                            fullFileName,
                        )
                        continue
                    cStructDefinition, syntheticUnions = self._lift_anonymous_unions(
                        line, cStructDefinition,
                    )
                    for unionName, unionCBody in syntheticUnions:
                        unionNode = self._upsert_type_node(
                            TypeKind.UNION,
                            unionName,
                            unionCBody,
                            TranslationMode.UNION,
                            "anon-union-lift",
                        )
                        self._register_type_reference(
                            functionAndDeps, unionNode, startIndex, endIndex, funcSym,
                        )
                    structNames.add(line)
                    structWithUsageInfo = self._upsert_type_node(
                        TypeKind.STRUCT,
                        line,
                        cStructDefinition,
                        TranslationMode.RICH_STRUCT,
                        "global",
                    )
                    self._register_type_reference(functionAndDeps, structWithUsageInfo, startIndex, endIndex, funcSym)


            # Didn't find any problematic struct
            if len(structNames) == 0:
                continue

            # Then go over every other function
            for otherFunc in funcMap:

                # we first fetch the struct usage in all functions
                # right now we only use string match..
                for structName in structNames:
                    structInfo = FunctionAndDependencies.structsWithUsageInfoMap.get(structName)
                    if structInfo is None:
                        self.logger.warning(
                            "Skipping usage extraction for %s in %s because the struct definition was not captured.",
                            structName,
                            fullFileName,
                        )
                        continue
                    if structName in funcMap[otherFunc].funcCodeLines:
                        structInfo.add_function_use(otherFunc)

                # We will use the python-clang bindings
                # It is read-only so it shouldn't cause much of a trouble
                otherFullFileName = os.path.join(srcPath, otherFunc+".i")
                # self.logger.info("Testing file %s", otherFullFileName)
                # Run the command
                otherCmd = "struct-field-use-printer " + otherFullFileName
                result = subprocess.run(otherCmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.DEVNULL)
                if result.returncode != 0:
                    self.logger.info("Failed command and bailing: %s", otherCmd)
                    continue
                else:
                    # self.logger.debug("Output of %s", otherCmd)
                    # self.logger.debug("%s", result.stdout)
                    print(f"successfully run {cmd}")

                otherProducerBody = self._readProducerBody(otherFullFileName)

                # Let's parse
                # output looks like this
                # <Struct name> : <field name> : <use>
                for outputLine in result.stdout.split("\n"):
                    tokens = outputLine.split(":")
                    structName = tokens[0].strip()
                    if structName not in structNames:
                        continue
                    structInfo = FunctionAndDependencies.structsWithUsageInfoMap.get(structName)
                    if structInfo is None:
                        continue
                    if len(tokens) < 3:
                        continue
                    fieldName = tokens[1].strip()
                    # self.logger.info("Field name: %s", fieldName)
                    use = tokens[2].strip()
                    # self.logger.info("Use: %s", use)
                    if ';' in use:
                        # Multiple statements
                        useTokens = use.split(";")
                        for useToken in useTokens:
                            if fieldName in useToken:
                                annotated = self._annotateByteBufferUse(
                                    useToken, otherProducerBody, structInfo, fieldName,
                                )
                                structInfo.merge_usage_list_entry(fieldName, annotated)
                                structInfo.add_usage_example(otherFunc, annotated, (fieldName,))
                    else:
                        annotated = self._annotateByteBufferUse(
                            use, otherProducerBody, structInfo, fieldName,
                        )
                        structInfo.merge_usage_list_entry(fieldName, annotated)
                        structInfo.add_usage_example(otherFunc, annotated, (fieldName,))

    def extractDependFunctions(self, functionName, functionBody, allFunctions):
        scannedBody = self._stripCommentsAndStringLiterals(functionBody)
        result = []
        seen = set()
        for function in allFunctions:
            if function == functionName or function in seen:
                continue
            pattern = re.compile(r"\b" + re.escape(function) + r"\b")
            for match in pattern.finditer(scannedBody):
                trailing = scannedBody[match.end():match.end() + 2]
                if trailing.startswith("("):
                    result.append(function)
                    seen.add(function)
                    break
                if trailing.startswith(" (") or trailing.startswith("\t("):
                    result.append(function)
                    seen.add(function)
                    break
                preceding = scannedBody[max(0, match.start() - 1):match.start()]
                if preceding == "&" or self._looksLikeFunctionPointerReference(scannedBody, match.start(), match.end()):
                    result.append(function)
                    seen.add(function)
                    break
        return result

    @staticmethod
    def _stripCommentsAndStringLiterals(code):
        if not code:
            return code
        # Block comments
        code = re.sub(r"/\*.*?\*/", "", code, flags=re.DOTALL)
        # Line comments
        code = re.sub(r"//[^\n]*", "", code)
        # String literals (preserve length-ish by replacing with empty pair)
        code = re.sub(r'"(?:\\.|[^"\\\n])*"', '""', code)
        # Char literals
        code = re.sub(r"'(?:\\.|[^'\\\n])*'", "''", code)
        return code

    @staticmethod
    def _looksLikeFunctionPointerReference(body, start, end):
        """A bare identifier reference that is not a call. Must be in a context that
        suggests value use: argument list, initializer, assignment RHS, return, comparison, cast.

        This only fires when the trailing char is NOT '(' (handled separately) — it captures
        cases like `foo(a, callback, b)` where `callback` is passed as a function pointer.
        """
        # Look at preceding non-whitespace token
        i = start - 1
        while i >= 0 and body[i] in " \t":
            i -= 1
        if i < 0:
            return False
        prevChar = body[i]
        # Skip if previous token suggests this is a declaration / definition
        # Common declaration markers: ';' followed by storage class is fine, but a type token
        # would precede the identifier — we want to exclude declarations like
        # `static void foo(...)` (for `foo`). Easiest check: look at what TRAILS the identifier.
        # If trailing is one of these, it's not a function pointer reference:
        j = end
        while j < len(body) and body[j] in " \t":
            j += 1
        if j >= len(body):
            return False
        nextChar = body[j]
        # Trailing context that indicates NOT a value use:
        # '=' (declaration init like `int foo = 5`) is actually a use of foo - keep
        # ';' end of statement - could still be a value use (e.g., `return foo;`) - keep
        # ',' next argument - definitely a value use - keep
        # ')' closing argument list - value use - keep
        # ':' label or type spec - not a value use, skip
        # '{' beginning of body - definition, skip
        # alphanumeric/underscore - shouldn't happen due to \b but be safe
        if nextChar in "{:":
            return False
        # Preceding context that suggests value use: '(' ',' '=' 'return' 'sizeof' etc.
        if prevChar in "(,=":
            return True
        # Heuristic: scan back a few tokens for `return`, `sizeof`, `&`, `?`, ':'
        snippet = body[max(0, start - 16):start]
        if re.search(r"\b(?:return|sizeof|case|goto)\s*$", snippet):
            return True
        return False

    def refreshGlobalDependencies(self, funcMap):
        """
        Recompute direct call dependencies using the full codebase-wide symbol set.
        This fixes cross-file cases such as checkerboard.i:main calling functions
        whose definitions live in libbmp.i.
        """
        allFunctions = list(funcMap.keys())
        for funcSym, functionAndDeps in funcMap.items():
            dependencyFunctions = self.extractDependFunctions(
                funcSym,
                functionAndDeps.funcCodeLines,
                allFunctions,
            )
            functionAndDeps.setDepndFunctions(dependencyFunctions)

    # Function-pointer typedefs come in several shapes:
    #   typedef RET (*NAME)(ARGS);
    #   typedef RET (NAME)(ARGS);                 # rare but legal
    #   typedef RET (CALLCONV *NAME)(ARGS);       # with calling-conv qualifiers
    # The leading "(*?" / qualifier sequence is optional from the regex's
    # point of view; we only require the parenthesized declarator to wrap
    # an identifier, followed by an arg list "(".
    _FUNC_POINTER_TYPEDEF_PATTERN = re.compile(
        r'\btypedef\b[^;{}]*?\(\s*(?:[A-Za-z_][\w\s]*\s)?\*?\s*([A-Za-z_]\w*)\s*\)\s*\('
    )

    @classmethod
    def _isFunctionPointerTypedef(cls, code):
        """Return True iff ``code`` declares a function-pointer typedef
        (e.g. ``typedef char (*comparator_t)(void *, void *);``). Only
        function-pointer typedefs are relevant for callback bindings —
        plain aliases like ``typedef unsigned long size_t;`` are not."""
        if not code:
            return False
        return bool(cls._FUNC_POINTER_TYPEDEF_PATTERN.search(code))

    def extractCallbackBindings(self, funcMap, additionalSources=None):
        """Detect callback bindings: functions that are bound to a
        function-pointer typedef via an explicit ``(typedef_name)func_name``
        cast at a call site.

        For each detected binding ``F ⊨ T``:

          * ``T`` is added to ``F.directTypeRefs`` so ``T``'s translated
            form is included in ``F``'s per-function translation prompt
            via the existing dependency-block plumbing.
          * ``T`` is added to ``F.conformingTypedefs`` so the prompt
            builder can render an explicit "callback contract" section
            (see ``compileWithFeedback``). Just listing the typedef as
            background context is not enough — the LLM needs an
            explicit instruction that the function's signature MUST
            stay compatible with the (possibly stage-modified) typedef.

        Source coverage:
          * Every function's ``funcCodeLines`` — picks up bindings
            visible inside ordinary source code.
          * ``additionalSources`` — extra code strings; the primary
            caller is the pipeline pass that hands in
            ``performance_information.json``'s ``prompt`` field
            (the program's ``main`` template). Without this, casts that
            only appear in the user-provided main — like
            ``(comparator_t)intcmp`` — would never be observed because
            the per-function ``.i`` files don't contain main's body.
        """
        if not funcMap:
            return

        funcPointerTypedefs = {}
        for typedefNode in FunctionAndDependencies.typeRegistry.iter_by_kind(TypeKind.TYPEDEF):
            code = self.stringifyCodeBlock(typedefNode.cCode)
            if self._isFunctionPointerTypedef(code):
                funcPointerTypedefs[typedefNode.name] = typedefNode

        if not funcPointerTypedefs:
            return

        funcNames = [name for name in funcMap.keys() if name]
        if not funcNames:
            return

        typedefAlternation = "|".join(re.escape(name) for name in funcPointerTypedefs)
        funcAlternation = "|".join(re.escape(name) for name in funcNames)
        castPattern = re.compile(
            r'\(\s*(' + typedefAlternation + r')\s*\)\s*\(?\s*&?\s*('
            + funcAlternation + r')\b'
        )

        sourceBlocks = []
        for funcSym, funcDeps in funcMap.items():
            body = self.stringifyCodeBlock(funcDeps.funcCodeLines)
            if body:
                sourceBlocks.append(body)
        if additionalSources:
            for extra in additionalSources:
                if extra:
                    sourceBlocks.append(extra)

        seenBindings = set()
        for body in sourceBlocks:
            scanned = self._stripCommentsAndStringLiterals(body)
            for match in castPattern.finditer(scanned):
                typedefName = match.group(1)
                targetFuncName = match.group(2)
                if (typedefName, targetFuncName) in seenBindings:
                    continue
                seenBindings.add((typedefName, targetFuncName))
                typedefNode = funcPointerTypedefs.get(typedefName)
                targetDeps = funcMap.get(targetFuncName)
                if typedefNode is None or targetDeps is None:
                    continue
                self.logger.info(
                    "[callback binding] %s conforms to typedef %s "
                    "(detected via (%s)%s cast)",
                    targetFuncName, typedefName, typedefName, targetFuncName,
                )
                self._register_type_reference(
                    targetDeps, typedefNode, 0, 0, targetFuncName,
                )
                targetDeps.conformingTypedefs.add(typedefNode.key)

    def extractFuncsAndDeps(self, filename, functionListOrder, oldmap):
        """
        Use Universal ctags to get the start and end line numbers for
        1. function definitions [f]
        2. Everything else [-flL] except functions, local vars, gotolabels

        Note that we expect preprocessed files.
        Sample cmd: ctags --fields=+ne -o -  --language-force=C --c-kinds=f gzclose.i
        """
        if not filename.endswith('i'):
            self.logger.critical("Can handle only preprocessed files")
            sys.exit(-1)

        self.logger.info("(Re-)extracting functions from file %s", filename)
        fileRanges = FileRanges()

        funcExtractCmd = "ctags --fields=+ne -o -  --language-force=C++ --c-kinds=f " + filename
        result = subprocess.getoutput(funcExtractCmd)
        totalRange = len(result.splitlines()) - 1
        sourceFunctionNames = self._get_original_source_function_names(filename)

        fileContents = []
        # Read the file contents
        with open(filename, 'r') as f:
            for line in f:
                fileContents.append(line)

        for line in result.splitlines():
            r = self.createRangeFromCtagsLine(line, fileContents)
            if not self.should_keep_function_definition(filename, r.sym, r.start, sourceFunctionNames):
                continue
            fileRanges.addFuncRange(r)
            functionListOrder.append(r.sym)

        # Compute the always include range
        # The logic here is that everything that comes _before_ this function
        # will be treated as "always included" in case there is a dependency

        # When this python function is invoked for an entire C file, this will
        # contain everything include in the header files
        # When this python function is invoked for the individual C files, this
        # will contain only the necessary dependencies. A clang tool (or many) 
        # will remove the unnecessary dependencies.
        sortedFileRanges = sorted(fileRanges.funcRanges, key = lambda x: x.start)

        start = 0
        for fileRange in sortedFileRanges:
            if fileRange.start > start:
                r = Range("", start, fileRange.start-1)
                fileRanges.addAlwaysIncludeRange(r)
            start = fileRange.end + 1
        
        if start < totalRange:
            r = Range("", start, totalRange)
            fileRanges.addAlwaysIncludeRange(r)
        """
        alwaysIncludeExtractCmd = "ctags --fields=+ne -o -  --language-force=C --c-kinds=-fLl " + filename
        result = subprocess.getoutput(alwaysIncludeExtractCmd)
        for line in result.splitlines():
            r = self.createRangeFromCtagsLine(line, fileContents)
            fileRanges.addAlwaysIncludeRange(r)
        """

        funcMap = {}

        # for each function, add everything before it in the AlwaysInclude map
        for funcSym in fileRanges.funcRangesMap:
            if oldmap is not None and funcSym not in oldmap:
                self.logger.info(
                    "Skipping function %s from %s because it is not present in the previous function map",
                    funcSym,
                    filename,
                )
                continue

            # Get the function and its dependencies
            functionAndDeps = FunctionAndDependencies(funcSym)
            funcRange = fileRanges.funcRangesMap[funcSym]
            sortedAlwaysIncludedRanges = sorted(fileRanges.alwaysIncludeRanges, key = lambda x: x.start)
            typeDeclDefCode = []
            for alwaysIncludeRange in sortedAlwaysIncludedRanges:
                if alwaysIncludeRange.end < funcRange.start:
                    # This range was before the function in the file
                    # self.logger.info("For file %s, for function %s, with range %d - %d, appending ranges %d - %d", filename, funcSym, funcRange.start, funcRange.end + 1, alwaysIncludeRange.start, alwaysIncludeRange.end + 1)

                    typeDeclDefCode.extend(fileContents[alwaysIncludeRange.start : alwaysIncludeRange.end + 1])
            functionAndDeps.setTypeDeclDefCodeLines("".join(typeDeclDefCode))

            functionAndDeps.setFuncCodeLines("".join(fileContents[funcRange.start : funcRange.end + 1]))

            if oldmap is not None:
                dependencyFunctions = oldmap[funcSym].dependFunctions
            else:
                dependencyFunctions = self.extractDependFunctions(funcSym,
                                                                  functionAndDeps.funcCodeLines,
                                                                  fileRanges.funcRangesMap)

            functionAndDeps.setDepndFunctions(dependencyFunctions)

            print(f"[gabb]{funcSym} : {dependencyFunctions}")
            funcMap[funcSym] = functionAndDeps
            # self.logger.info(functionAndDeps.typeDeclDefCodeLines)
            # self.logger.info(functionAndDeps.funcCodeLines)

        
        return funcMap
