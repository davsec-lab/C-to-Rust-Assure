import os
import re
import shutil
import subprocess
import sys
import threading

from more_itertools import unique_everseen

try:
    from fetchTargetFunction import *
except ImportError:
    def find_target_rust_function(*args, **kwargs):
        raise ImportError("tree_sitter dependencies are required to inspect translated functions")

    def find_target_rust_function_node(*args, **kwargs):
        raise ImportError("tree_sitter dependencies are required to inspect translated functions")


try:
    from createArgumentMap import fetch_rust_function_signature_with_byte, find_target_cpp_function, fetch_cpp_function_signature_with_byte
except ImportError:
    def fetch_rust_function_signature_with_byte(*args, **kwargs):
        raise ImportError("tree_sitter dependencies are required to inspect translated functions")

    def find_target_cpp_function(*args, **kwargs):
        raise ImportError("tree_sitter dependencies are required to inspect translated functions")

    def fetch_cpp_function_signature_with_byte(*args, **kwargs):
        raise ImportError("tree_sitter dependencies are required to inspect translated functions")


from functionAndDeps import FunctionAndDependencies
from translationResultManager import TranslationResultManager
from type_registry import TranslationMode, TypeKind

from gpt_translation._call_kind_helper import callKindContext as _callKindContext
from gpt_translation.byte_buffer_classifier import _TAG_CORE as _BYTE_BUFFER_TAG
from gpt_translation.behaviour_contract import C_SEMANTIC_FIDELITY_CONTRACT
from gpt_translation.libc_bindings import libcBindingContract
from gpt_translation.config import (
    COMPILATION_RETRIES,
    MAX_THREADS,
    PERF_DEGRADE_THRESHOLD_PCT,
    STRUCT_RETRIES,
    TranslatorModes,
)

# Detects `goto` keyword in C/C++ source. Uses word boundary to avoid
# matching identifiers like `gotos_count`. Used by the on-demand
_GOTO_RE = re.compile(r"\bgoto\b")

# Detects any C++ borrowed-view type in struct field declarations.
# `std::string_view`, `std::basic_string_view<...>`, `std::span<...>` —
# all translate to Rust borrowed forms (`&str` / `&[T]`) that force a
# lifetime parameter on the enclosing struct. Used by the on-demand
_BORROWED_VIEW_RE = re.compile(r"\b(?:basic_)?string_view\b|\bstd::span\b")

# Detects stdio File I/O in C++ source: a `FILE` typename used as
# a pointer / reference (parameter, return type, local) OR any of the
# C stdio entry points the model would translate 1:1 to `libc::*`. Used
_FILE_IO_RE = re.compile(
    r"\bFILE\s*[*&]"
    r"|\bf(?:open|read|write|close|seek|tell|flush|eof|error|gets|puts|scanf|printf)\b"
)


class TranslationPipelineMixin:

    def _semanticFidelityContract(self):
        """The behaviour-preservation contract appended to the C -> Rust
        function prompts (single-function and SCC)."""
        return C_SEMANTIC_FIDELITY_CONTRACT

    STAGE_STATE_FILENAME = "stage_state.json"




    def _libcBindingContract(self, funcSrc):
        """Exact Rust spellings for the C library symbols this C source calls.

        typedefFilter.stripLibcExternDeclarations deletes glibc-derived
        declarations from the per-function `.i` because the C++ stages get them
        back from `#include <cstdlib>`. Rust has no include, so for a Rust
        target the model is shown C that calls `realloc` and `free` with
        neither declared and has to guess. On csv_init it guessed
        `std::alloc::realloc`, then `libc::realloc` with a bare `free`, three
        times over, reasoning "I'm making an assumption that `free` is in
        scope" — and three retries were spent on the errors that guess did not
        cause. Six of libcsv's 23 functions reference a stripped symbol.

        Only emitted for Rust output, and only when the source actually
        mentions one of the table's symbols, so the C++ prompts and the 17
        libcsv functions that need nothing are byte-identical.
        """
        if self.dstLang != "Rust":
            return ""
        return libcBindingContract(funcSrc)










    def _dumpTokenUsage(self, outputDir):
        """Persist token-usage records and summary at the end of a run.
        Safe to call multiple times (each call rewrites the files)."""
        tracker = getattr(self, "tokenTracker", None)
        if tracker is None:
            return
        try:
            tracker.dump(outputDir)
        except Exception as e:
            self.logger.warning("Failed to dump token usage: %s", e)






    def translateSimpleTypedefDefinition(self, typedefCode):
        code = self.stringifyCodeBlock(typedefCode).strip()
        if not code:
            return ""

        normalizedCode = " ".join(code.split())
        match = re.match(
            r"^typedef\s+(?P<target>.+?)\s+(?P<alias>[A-Za-z_][A-Za-z0-9_]*)\s*;\s*$",
            normalizedCode,
        )
        if not match:
            return ""

        aliasName = match.group("alias")
        targetType = match.group("target").strip()
        targetLang = getattr(self, "dstLang", "")
        cppTarget = re.sub(r"\s+", " ", targetType).strip()
        cppTarget = re.sub(r"\b_Bool\b", "bool", cppTarget)
        cppTarget = re.sub(r"\b(?:restrict|__restrict__?)\b", "", cppTarget)
        cppTarget = re.sub(r"\s+", " ", cppTarget).strip()

        if targetLang != "Rust":
            if not cppTarget:
                return ""
            return f"typedef {cppTarget} {aliasName};"

        normalizedTarget = re.sub(r"\s+", " ", targetType)
        normalizedTarget = re.sub(r"\b(?:const|volatile|restrict|__restrict__?)\b", "", normalizedTarget)
        normalizedTarget = re.sub(r"\s+", " ", normalizedTarget).strip()

        builtinTypeMap = {
            "_Bool": "bool",
            "char": "std::ffi::c_char",
            "signed char": "i8",
            "unsigned char": "u8",
            "short": "i16",
            "short int": "i16",
            "signed short": "i16",
            "signed short int": "i16",
            "unsigned short": "u16",
            "unsigned short int": "u16",
            "int": "i32",
            "signed": "i32",
            "signed int": "i32",
            "unsigned": "u32",
            "unsigned int": "u32",
            "long": "i64",
            "long int": "i64",
            "signed long": "i64",
            "signed long int": "i64",
            "unsigned long": "u64",
            "unsigned long int": "u64",
            "long long": "i64",
            "long long int": "i64",
            "signed long long": "i64",
            "signed long long int": "i64",
            "unsigned long long": "u64",
            "unsigned long long int": "u64",
            "float": "f32",
            "double": "f64",
        }

        rustTarget = builtinTypeMap.get(normalizedTarget)
        if not rustTarget and re.fullmatch(r"[A-Za-z_][A-Za-z0-9_]*", normalizedTarget):
            if FunctionAndDependencies.getTypeNodeByName(TypeKind.TYPEDEF, normalizedTarget) is not None:
                rustTarget = normalizedTarget

        if not rustTarget:
            return ""

        return f"type {aliasName} = {rustTarget};"


    def _typeStorageKey(self, typeNodeOrKey):
        typeKey = typeNodeOrKey.key if hasattr(typeNodeOrKey, "key") else typeNodeOrKey
        return typeKey.storage_key()

    def _logStoredTypeResult(self, node):
        if node is None:
            return
        debugLog = getattr(self.logger, "debug", None)
        if not callable(debugLog):
            return
        storageKey = self._typeStorageKey(node)
        debugLog("[type stored %s]: %s", storageKey, node.rustCode)

    def _logStoredFunctionResult(self, funcName, translatedResult):
        if not funcName:
            return
        debugLog = getattr(self.logger, "debug", None)
        if not callable(debugLog):
            return
        debugLog("[function stored %s]: %s", funcName, translatedResult)

    # `#include <...>` and `#include "..."` directives. The capture
    # group is intentionally absent; we only need to drop the whole
    # line (and the trailing newline so the surrounding code stays
    # tightly packed).
    _INCLUDE_DIRECTIVE_LINE_PATTERN = re.compile(
        r'(?m)^[ \t]*#\s*include\s*[<"][^>"\n]+[>"][ \t]*\r?\n?'
    )

    @classmethod
    def _stripIncludeDirectives(cls, code):
        """Drop ``#include <...>`` / ``#include "..."`` lines from a
        translated-type code blob.

        ``_extractTypeDefinitionFromResult`` attaches the LLM's include
        block to the first node of each type batch so the final
        merged file gets the includes ordered before the definitions.
        That's correct for ``merged_funcs.{cpp,rs}`` assembly. But the
        same ``rustCode`` field is also read by
        ``_collectTranslatedTypeCodes`` when rendering the
        "translated dependency definitions for reference only" block
        of *later* prompts. Includes are noise in that block — they
        aren't definitions, they're directives — and the surrounding
        prompt explicitly tells the model "Do not repeat these
        dependency definitions in your response," which makes the
        leftover ``#include`` lines look like a definition the model
        is forbidden to repeat. Removing them at the rendering
        boundary keeps ``node.rustCode`` itself unchanged (so merged
        file assembly still gets the includes) while cleaning up
        prompt context for downstream batches.
        """
        if not code:
            return code
        cleaned = cls._INCLUDE_DIRECTIVE_LINE_PATTERN.sub("", code)
        return cleaned.strip()

    def _collectTranslatedTypeCodes(self, typeKeys):
        seenCodes = set()
        orderedCodes = []
        for typeKey in typeKeys:
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None or not typeNode.rustCode:
                continue
            cleanedCode = self._stripIncludeDirectives(typeNode.rustCode)
            if not cleanedCode:
                # The node's rustCode was *only* include lines (rare —
                # typically means the LLM returned no body for this
                # node). Treat the same as "no translated code": skip
                # rather than feed an empty string into the prompt.
                continue
            if cleanedCode in seenCodes:
                continue
            seenCodes.add(cleanedCode)
            orderedCodes.append(cleanedCode)
        return orderedCodes

    def _buildTranslatedTypeContext(self, typeKeys):
        return "\n".join(self._collectTranslatedTypeCodes(typeKeys))

    def _dedupeCodeList(self, codes):
        seen = set()
        ordered = []
        for code in codes:
            if not code or code in seen:
                continue
            seen.add(code)
            ordered.append(code)
        return ordered

    def _extractDefinitionForTypeKey(self, snippet, typeKey):
        if not snippet or typeKey is None:
            return ""
        if typeKey.kind == TypeKind.STRUCT:
            return self.extractStructDefinitionByName(snippet, typeKey.name)
        if typeKey.kind == TypeKind.UNION:
            return self.extractUnionDefinitionByName(snippet, typeKey.name)
        if typeKey.kind == TypeKind.ENUM:
            return self.extractEnumDefinitionByName(snippet, typeKey.name)
        if typeKey.kind == TypeKind.TYPEDEF:
            return self._extractTypedefDefinitionForDstLang(snippet, typeKey.name)
        if typeKey.kind == TypeKind.EXTERN:
            return self.extractExternDefinitionByName(snippet, typeKey.name)
        if typeKey.kind == TypeKind.STATIC:
            return self.extractStaticDefinitionByName(snippet, typeKey.name)
        return ""

    def _extractTypedefDefinitionForDstLang(self, snippet, aliasName):
        """Dispatch typedef extraction by destination language.

        Rust uses ``type X = Y;`` syntax; C++ uses ``typedef T X;`` (and
        the function-pointer form ``typedef R (*X)(args);``) or the C++11
        alias form ``using X = T;``. Picking the
        wrong extractor silently drops the LLM-translated typedef from
        ``rustCode``, which then causes every dependent struct/function
        prompt to be missing the typedef in its predecessor context —
        observed as cascade compile failures with ``unknown type name
        '<alias>'`` in every per-function file. See
        ``extractCppTypedefDefinitionByName`` for the C++ scanner.
        """
        if not snippet or not aliasName:
            return ""
        if getattr(self, "dstLang", "") == "Rust":
            return self.extractTypeAliasDefinitionByName(snippet, aliasName)
        # C++ (and any non-Rust default): try the C++ scanner first;
        # fall back to the Rust extractor in case the LLM happened to
        # emit a Rust-style ``type X = ...;`` line inside a C++ batch.
        cppResult = self.extractCppTypedefDefinitionByName(snippet, aliasName)
        if cppResult:
            return cppResult
        return self.extractTypeAliasDefinitionByName(snippet, aliasName)

    def _extractDefinitionBundleForTypeKey(self, snippet, typeKey):
        definition = self._extractDefinitionForTypeKey(snippet, typeKey)
        if not definition:
            return ""

        bundleParts = []
        if typeKey.kind in (TypeKind.STRUCT, TypeKind.UNION) and self.dstLang == "Rust":
            bundleParts.extend(self.extractReferencedRustTypeAliasDefinitions(snippet, definition))
            bundleParts.extend(self.extractReferencedRustConstDefinitions(snippet, definition))

        bundleParts.append(definition)
        orderedParts = []
        seenParts = set()
        for part in bundleParts:
            normalizedPart = (part or "").strip()
            if not normalizedPart or normalizedPart in seenParts:
                continue
            seenParts.add(normalizedPart)
            orderedParts.append(normalizedPart)
        return "\n\n".join(orderedParts)

    def _stripProvidedDependencyDefinitions(self, snippet, dependencyCodes, dependencyKeys=None):
        stripped = snippet or ""
        for dependencyCode in dependencyCodes:
            if dependencyCode:
                stripped = stripped.replace(dependencyCode, "")
        if dependencyKeys:
            changed = True
            while changed:
                changed = False
                for dependencyKey in dependencyKeys:
                    dependencyBundle = self._extractDefinitionBundleForTypeKey(stripped, dependencyKey)
                    if not dependencyBundle:
                        continue
                    updated = stripped.replace(dependencyBundle, "")
                    if updated == stripped:
                        dependencyDefinition = self._extractDefinitionForTypeKey(stripped, dependencyKey)
                        if dependencyDefinition:
                            helperDefinitions = []
                            if dependencyKey.kind in (TypeKind.STRUCT, TypeKind.UNION) and self.dstLang == "Rust":
                                helperDefinitions.extend(
                                    self.extractReferencedRustTypeAliasDefinitions(stripped, dependencyDefinition)
                                )
                                helperDefinitions.extend(
                                    self.extractReferencedRustConstDefinitions(stripped, dependencyDefinition)
                                )
                            for helperDefinition in helperDefinitions:
                                updated = updated.replace(helperDefinition, "")
                            updated = updated.replace(dependencyDefinition, "")
                    if updated != stripped:
                        stripped = updated
                        changed = True
        return stripped.strip()

    def _stripProvidedDependencyFunctions(self, snippet, dependencyFunctionNames=None):
        stripped = snippet or ""
        if not dependencyFunctionNames or self.dstLang != "Rust":
            return stripped.strip()

        changed = True
        while changed:
            changed = False
            for functionName in dependencyFunctionNames:
                functionDefinition = self.extractFunctionDefinitionByName(stripped, functionName)
                if not functionDefinition:
                    continue
                updated = stripped.replace(functionDefinition, "")
                if updated != stripped:
                    stripped = updated
                    changed = True

        stripped = re.sub(r'(?ms)^\s*extern\s+"[^"]+"\s*\{\s*\}\s*', "", stripped)
        return stripped.strip()

    _USE_CRATE_SINGLE_PATTERN = re.compile(
        r'(?m)^[ \t]*use[ \t]+crate::([A-Za-z_][A-Za-z0-9_]*)'
        r'(?:[ \t]+as[ \t]+[A-Za-z_][A-Za-z0-9_]*)?[ \t]*;[ \t]*\n?'
    )
    _USE_CRATE_BRACE_PATTERN = re.compile(
        r'(?ms)^[ \t]*use[ \t]+crate::\{\s*([^}]*?)\s*\}[ \t]*;[ \t]*\n?'
    )

    def _stripCrateUsesOfProvidedDependencies(self, snippet, dependencyKeys=None, dependencyFunctionNames=None):
        """Strip ``use crate::<name>;`` and remove matching names from
        ``use crate::{<a>, <b>, …};`` when ``<name>`` is a dependency that
        the compile harness already pastes into the same ``lib.rs``.

        Why: ``compileAndRetryLoopforDepency`` builds the compile-check
        source as ``contextStructs + "\n" + translatedFuncs + "\n" + result``
        and writes it to a single ``src/lib.rs``. If ``result`` carries
        ``use crate::size_t;`` while ``contextStructs`` already contains
        ``pub type size_t = u64;`` at the crate root, ``cargo check``
        reports ``error[E0255]: the name `size_t` is defined multiple
        times`` — the import refers to the very type sitting next to it.
        The LLM keeps emitting the same pattern across retries because the
        per-function prompt looks like a multi-module project; we can't
        re-frame the prompt cheaply, so we scrub the redundant import
        here, before the compile-check runs.

        Only the flat ``use crate::Foo;`` and ``use crate::{Foo, Bar};``
        forms are touched — anything nested (``use crate::module::Foo;``)
        is left alone since it cannot collide with the flattened
        contextStructs blob.
        """
        if not snippet:
            return snippet or ""

        providedNames = set()
        for dependencyKey in (dependencyKeys or []):
            name = getattr(dependencyKey, "name", None)
            if name:
                providedNames.add(name)
        for functionName in (dependencyFunctionNames or []):
            if functionName:
                providedNames.add(functionName)
        # No deps to dedup against, or non-Rust pipeline (no ``use crate::``
        # syntax to worry about). Mirror the parameter-first short-circuit
        # used by ``_stripProvidedDependencyFunctions`` so empty-deps test
        # harnesses don't need to bother setting ``dstLang``.
        if not providedNames or getattr(self, "dstLang", None) != "Rust":
            return snippet

        def _replaceSingle(match):
            return "" if match.group(1) in providedNames else match.group(0)

        def _replaceBrace(match):
            rawItems = [item.strip() for item in match.group(1).split(",")]
            keptItems = []
            for item in rawItems:
                if not item:
                    continue
                # `Foo as Bar` -> imported name is `Foo`
                importedName = item.split()[0]
                if importedName in providedNames:
                    continue
                keptItems.append(item)
            if not keptItems:
                return ""
            return f"use crate::{{{', '.join(keptItems)}}};\n"

        snippet = self._USE_CRATE_SINGLE_PATTERN.sub(_replaceSingle, snippet)
        snippet = self._USE_CRATE_BRACE_PATTERN.sub(_replaceBrace, snippet)
        return snippet

    LIBC_FUNCTION_NAMES = frozenset([
        # memory
        "malloc", "calloc", "realloc", "free", "memset", "memcpy", "memmove", "memcmp",
        # strings
        "strcmp", "strncmp", "strcpy", "strncpy", "strcat", "strncat", "strlen",
        "strstr", "strchr", "strrchr", "strdup", "strtok", "strtok_r", "strerror",
        # numeric parsing
        "atoi", "atol", "atoll", "atof", "strtol", "strtoll", "strtoul", "strtoull",
        "strtod", "strtof",
        # printf family
        "printf", "fprintf", "sprintf", "snprintf", "vsnprintf", "vfprintf", "vprintf",
        "scanf", "sscanf", "fscanf",
        # stdio
        "fopen", "fclose", "fread", "fwrite", "fseek", "ftell", "fflush", "fgets",
        "fputs", "fputc", "fgetc", "fileno", "fdopen", "freopen", "feof", "ferror",
        "puts", "getchar", "putchar",
        # ctype
        "isspace", "isdigit", "isalpha", "isalnum", "isupper", "islower", "isxdigit",
        "ispunct", "iscntrl", "isprint", "isgraph", "tolower", "toupper",
        # math (libm)
        "abs", "labs", "llabs", "fabs", "fabsf", "sqrt", "sqrtf", "sin", "sinf",
        "cos", "cosf", "tan", "tanf", "asin", "asinf", "acos", "acosf", "atan",
        "atanf", "atan2", "atan2f", "exp", "expf", "log", "logf", "log10", "log10f",
        "pow", "powf", "ceil", "ceilf", "floor", "floorf", "round", "roundf",
        "trunc", "truncf", "fmod", "fmodf",
        # process / env / time
        "exit", "abort", "getenv", "setenv", "system", "time", "clock",
        "clock_gettime", "rand", "srand",
        # qsort/bsearch
        "qsort", "bsearch",
    ])

    _LIBC_EXTERN_BLOCK_PATTERN = re.compile(
        r'(?ms)^[^\S\n]*extern\s+"C"\s*\{\s*((?:[^{}]|\{[^{}]*\})*)\}\s*'
    )
    _FN_DECL_NAME_PATTERN = re.compile(
        r'(?m)^\s*(?:pub\s+)?(?:unsafe\s+)?fn\s+([A-Za-z_][A-Za-z0-9_]*)\s*\('
    )
    _STATIC_DECL_NAME_PATTERN = re.compile(
        r'(?m)^\s*(?:pub\s+)?static\s+(?:mut\s+)?([A-Za-z_][A-Za-z0-9_]*)\s*:'
    )

    def _stripRedeclaredLibcExternBlocks(self, snippet):
        """Remove LLM-emitted ``extern "C" { fn malloc(...); ... }`` blocks where
        every declaration names a known libc/libm function, AND inject a
        replacement ``use libc::{...};`` statement at the top so call sites
        like ``malloc(...)`` resolve.

        The ``libc`` crate already provides these symbols and re-declaring causes
        ``E0255: name defined multiple times``. We only strip blocks where ALL
        declarations are libc symbols; mixed blocks (containing legitimate FFI)
        are left intact.

        The use-statement injection is what closes the loop for the regression
        seen in nanosvg ``parseSVG`` failures: stripping the extern block alone
        leaves the LLM's call sites unresolved, the LLM compensates by adding
        its own ad-hoc ``use libc::{...};`` lines on each retry, and the lines
        accumulate with slightly different prefixes / ordering until ``cleanCode``
        no longer dedupes them and rustc reports E0252.
        """
        if not snippet:
            return snippet

        collectedLibcFnNames = set()

        def replacement(match):
            body = match.group(1)
            fnNames = self._FN_DECL_NAME_PATTERN.findall(body)
            staticNames = self._STATIC_DECL_NAME_PATTERN.findall(body)
            allNames = fnNames + staticNames
            if not allNames:
                # Empty extern block - drop it (consistent with existing cleanup).
                return ""
            if all(name in self.LIBC_FUNCTION_NAMES for name in allNames):
                # Track only function names; static-variable imports (e.g. errno)
                # are rarer and ``use libc::stderr`` is handled elsewhere.
                collectedLibcFnNames.update(fnNames)
                return ""
            return match.group(0)

        out = self._LIBC_EXTERN_BLOCK_PATTERN.sub(replacement, snippet)

        if collectedLibcFnNames:
            useStmt = "use libc::{" + ", ".join(sorted(collectedLibcFnNames)) + "};\n"
            # Prepend; subsequent ``cleanCode`` runs will merge with any
            # pre-existing ``use libc::{...}`` lines in the broader snippet.
            out = useStmt + out

        return out

    def _sanitizeResultAgainstDependencies(self, snippet, dependencyCodes=None, dependencyKeys=None, dependencyFunctionNames=None):
        cleaned = self.cleanCode(snippet)
        cleaned = self._stripRedeclaredLibcExternBlocks(cleaned)
        cleaned = self._stripProvidedDependencyDefinitions(cleaned, dependencyCodes or [], dependencyKeys)
        cleaned = self._stripProvidedDependencyFunctions(cleaned, dependencyFunctionNames)
        cleaned = self._stripCrateUsesOfProvidedDependencies(cleaned, dependencyKeys, dependencyFunctionNames)
        # LLMs frequently emit forward declarations of dependency functions
        # alongside their translated body even when the prompt does not
        # request them — they want to make the body locally compilable. We
        # strip them here so the same single-source-of-truth invariant the
        # input-side strip enforces (``previouslyTranslatedFunctionSignatures``
        # is the only place callee signatures live) holds end-to-end. Without
        # this, LLM-emitted decls accumulate in ``previouslyTranslatedFunctions``
        # and ``merged_funcs.{cpp,rs}`` and go stale when a later stage rewrites
        # a callee's signature, producing the same-name-different-signature
        # link error we saw on cjson_new ``parse_value``.
        return self._stripDependencyForwardDeclarations(cleaned, dependencyFunctionNames)

    @staticmethod
    def _findBalancedParenClose(text, openIdx):
        """Return the index of the ``)`` matching the ``(`` at ``openIdx``,
        or -1 if unbalanced. Skips over string and char literals."""
        if openIdx < 0 or openIdx >= len(text) or text[openIdx] != "(":
            return -1
        depth = 1
        i = openIdx + 1
        n = len(text)
        while i < n:
            ch = text[i]
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
                if depth == 0:
                    return i
            elif ch == '"':
                i += 1
                while i < n and text[i] != '"':
                    if text[i] == "\\" and i + 1 < n:
                        i += 2
                        continue
                    i += 1
            elif ch == "'":
                i += 1
                while i < n and text[i] != "'":
                    if text[i] == "\\" and i + 1 < n:
                        i += 2
                        continue
                    i += 1
            i += 1
        return -1

    @staticmethod
    def _computeBraceDepthAt(text):
        """Return a list of length ``len(text) + 1`` whose i-th entry is the
        ``{...}`` brace depth at character offset ``i`` in ``text``,
        respecting string/char literals and ``//`` / ``/* */`` comments.

        Used by ``_stripDependencyForwardDeclarations`` to distinguish a
        top-level forward declaration / definition from an in-body call
        site that happens to mention the same name."""
        n = len(text)
        depthAt = [0] * (n + 1)
        depth = 0
        i = 0
        while i < n:
            depthAt[i] = depth
            ch = text[i]
            if ch == '"':
                i += 1
                while i < n and text[i] != '"':
                    depthAt[i] = depth
                    if text[i] == "\\" and i + 1 < n:
                        i += 1
                        depthAt[i] = depth
                    i += 1
                if i < n:
                    depthAt[i] = depth
                    i += 1
                continue
            if ch == "'":
                # Distinguish a Rust label / lifetime ('fail, 'a, etc.) from a
                # char literal ('x', '\n', '\\', '\u{1F600}', etc.). A char
                # literal closes with another `'` within at most 11 chars
                # ('\u{10FFFF}' is the longest form). A label / lifetime is
                # `'<ident>` with NO closing `'` — and `_computeBraceDepthAt`
                # used to slip into char-literal mode at every such label,
                # then chew up all the `{` and `}` until the next char
                # literal, mis-computing depth for the rest of the snippet.
                # Concrete failure: parse_string's `let result = 'fail: { …
                # }` swallowed every brace until `b'"'`, which caused the
                # call to `utf16_literal_to_utf8(...)` later in the function
                # body to be reported at brace-depth 0; the dependency-
                # forward-declaration stripper then deleted that line
                # thinking it was a top-level forward decl, and parse_string
                # could no longer compile.
                #
                # Heuristic: if the next char is an identifier-start
                # character AND no closing `'` appears within a Rust char
                # literal's max length, treat this as a label and just
                # advance past the apostrophe — do NOT enter char-mode.
                lookahead_close = text.find("'", i + 1, i + 12)
                next_ch = text[i + 1] if i + 1 < n else ""
                is_label = (
                    next_ch != "" and (next_ch.isalpha() or next_ch == "_")
                    and lookahead_close == -1
                )
                if is_label:
                    depthAt[i] = depth
                    i += 1
                    continue
                i += 1
                while i < n and text[i] != "'":
                    depthAt[i] = depth
                    if text[i] == "\\" and i + 1 < n:
                        i += 1
                        depthAt[i] = depth
                    i += 1
                if i < n:
                    depthAt[i] = depth
                    i += 1
                continue
            if ch == "/" and i + 1 < n:
                if text[i + 1] == "/":
                    while i < n and text[i] != "\n":
                        depthAt[i] = depth
                        i += 1
                    continue
                if text[i + 1] == "*":
                    depthAt[i] = depth
                    i += 1
                    depthAt[i] = depth
                    i += 1
                    while i + 1 < n and not (text[i] == "*" and text[i + 1] == "/"):
                        depthAt[i] = depth
                        i += 1
                    if i + 1 < n:
                        depthAt[i] = depth
                        i += 1
                        depthAt[i] = depth
                        i += 1
                    continue
            if ch == "{":
                depth += 1
            elif ch == "}":
                depth -= 1
            i += 1
        depthAt[n] = depth
        return depthAt

    def _stripDependencyForwardDeclarations(self, snippet, dependencyFunctionNames):
        """Strip top-level forward declarations of any function name in
        ``dependencyFunctionNames`` from ``snippet``.

        Per-function ``.i`` files emitted by the C preprocessor carry
        forward declarations of every function the body calls (so each
        file is self-contained for the C parser). The first stage's LLM
        translates these along with the body, and they get stored back
        into ``funcCodeLines``. Across later stages those declarations
        linger with their original (often pointer) signatures while the
        actual definitions get rewritten to use references / smart
        pointers / etc. — producing same-name-different-signature pairs
        in the merged output (cjson_new ``parse_value``).

        With correct topological order, dependency definitions are
        already emitted earlier in ``merged_funcs.cpp`` / ``.rs``, so no
        forward declaration is needed at all. Stripping them on input
        also means the LLM only sees the fresh signature provided via
        ``previouslyTranslatedFunctionSignatures``, eliminating the
        "two conflicting signatures in one prompt" failure mode.

        Identification rules:
        - Find each ``\\bNAME\\s*\\(`` occurrence at brace-depth 0
          (so in-body call sites don't trigger).
        - Walk balanced parens past the argument list.
        - Walk forward (skipping nested parens, strings, comments).
        - Hit ``;`` first → forward declaration → strip the whole line
          (or multi-line span) plus its trailing newline.
        - Hit ``{`` first → function definition → leave untouched.
        """
        if not snippet or not dependencyFunctionNames:
            return snippet

        nameSet = {n for n in dependencyFunctionNames if n}
        if not nameSet:
            return snippet

        depthAt = self._computeBraceDepthAt(snippet)
        nameAlternation = "|".join(re.escape(name) for name in sorted(nameSet, key=len, reverse=True))
        namePattern = re.compile(r"\b(" + nameAlternation + r")\s*\(")

        spansToRemove = []
        n = len(snippet)
        for match in namePattern.finditer(snippet):
            if depthAt[match.start()] != 0:
                continue

            openParen = match.end() - 1
            closeParen = self._findBalancedParenClose(snippet, openParen)
            if closeParen < 0:
                continue

            terminator = self._scanForDeclarationTerminator(snippet, closeParen + 1)
            if terminator is None or terminator[0] != ";":
                continue

            terminatorPos = terminator[1]
            lineStart = snippet.rfind("\n", 0, match.start()) + 1
            endIdx = terminatorPos + 1
            while endIdx < n and snippet[endIdx] in " \t":
                endIdx += 1
            if endIdx < n and snippet[endIdx] == "\n":
                endIdx += 1
            spansToRemove.append((lineStart, endIdx))

        if not spansToRemove:
            return snippet

        spansToRemove.sort()
        out = []
        cursor = 0
        for spanStart, spanEnd in spansToRemove:
            if spanStart < cursor:
                spanStart = cursor
            if spanEnd <= cursor:
                continue
            if spanStart > cursor:
                out.append(snippet[cursor:spanStart])
            cursor = spanEnd
        out.append(snippet[cursor:])
        return "".join(out)

    @classmethod
    def _scanForDeclarationTerminator(cls, text, startIdx):
        """Walk ``text`` from ``startIdx`` and return ``(';', idx)`` or
        ``('{', idx)`` for whichever appears first at the top level (i.e.
        not inside nested parens / strings / comments), or ``None`` if
        neither is found before EOF."""
        n = len(text)
        i = startIdx
        while i < n:
            ch = text[i]
            if ch == "(":
                close = cls._findBalancedParenClose(text, i)
                if close < 0:
                    return None
                i = close + 1
                continue
            if ch == '"':
                i += 1
                while i < n and text[i] != '"':
                    if text[i] == "\\" and i + 1 < n:
                        i += 2
                        continue
                    i += 1
                i += 1
                continue
            if ch == "'":
                i += 1
                while i < n and text[i] != "'":
                    if text[i] == "\\" and i + 1 < n:
                        i += 2
                        continue
                    i += 1
                i += 1
                continue
            if ch == "/" and i + 1 < n:
                if text[i + 1] == "/":
                    nl = text.find("\n", i)
                    if nl < 0:
                        return None
                    i = nl + 1
                    continue
                if text[i + 1] == "*":
                    end = text.find("*/", i + 2)
                    if end < 0:
                        return None
                    i = end + 2
                    continue
            if ch == ";":
                return (";", i)
            if ch == "{":
                return ("{", i)
            i += 1
        return None





    def _buildTypeBatchBasePrompt(self, batchNodes):
        kinds = {node.kind for node in batchNodes}
        hasRichStruct = any(node.translation_mode == TranslationMode.RICH_STRUCT for node in batchNodes)
        prompt = "Please translate the following C definitions to " + self.dstLang + ".\n"
        prompt = prompt + "Please add any necessary header files, include statements, imports, or use statements required for the translated code to compile.\n"
        if kinds == {TypeKind.STATIC}:
            prompt = prompt + "The definitions are file-scope variable definitions.\n"
        elif kinds == {TypeKind.EXTERN}:
            prompt = prompt + "The definitions are file-scope external variable declarations.\n"
        elif kinds.issubset({TypeKind.STATIC, TypeKind.EXTERN}):
            prompt = prompt + "The definitions are file-scope variable declarations or definitions.\n"
        elif hasRichStruct:
            #
            # The phrasing here is deliberately NOT "translate to a more
            # idiomatic type". The previous open-ended wording, combined
            # with the unscoped example-usage block, was getting an earlier pass
            # to also do an earlier pass's job (e.g. converting char* fields to
            # std::string because the usage looked string-like, even
            # though an earlier pass's only mandate is to remove the custom
            # allocator). The STAGE-EXCLUSIVITY block already enumerates
            # what each future stage owns; this sentence's job is just
            # to tell the model what the example block is FOR.
            prompt = prompt + "\n"
            prompt = prompt + (
                "I will provide the example usage of each field below. Use "
                "it to understand how the field is read/written in the "
                "surrounding code, so that any type change you do make "
                "(within this stage's scope as defined above) propagates "
                "consistently to its call sites. The example-usage block "
                "is NOT a license to change a field's type just because "
                "its usage looks like a good fit for a future stage's "
                "transformation — those changes belong to those stages, "
                "see STAGE-EXCLUSIVITY above.\n"
            )
        if TypeKind.UNION in kinds and self.dstLang == "Rust":
            prompt = prompt + (
                "Each union must be emitted as `#[repr(C)] pub union <Name> { ... }`. "
                "Every field type of a union must implement `Copy` (wrap with "
                "`std::mem::ManuallyDrop<T>` if it does not). When in doubt, **wrap "
                "with `ManuallyDrop<T>`** - it is always safe; you can NOT retroactively "
                "add `#[derive(Copy, Clone)]` to a field type that was translated in a "
                "prior batch, so do not assume the field type derives Copy unless its "
                "definition is shown in this batch with a `Copy` derive. Also emit "
                "`#[derive(Copy, Clone)]` only on the union itself, not on its fields' "
                "owning types unless they are already trivially copyable.\n"
            )
        prompt = prompt + '\nFor the final code result, please response with "Final result code" is : \n'
        return prompt

    def _buildTypeBatchPrompt(self, batchNodes, predecessorContext, err="", lastTimeResult=""):
        request = self._buildTypeBatchBasePrompt(batchNodes)

        # On perf retry, prepend the PERFORMANCE CONTEXT suffix so the model
        # sees the rejected rendering BEFORE the "definitions:" block, mirroring
        # the function-level prompt layout. The fence markers on each node's
        # cCode below give the model an unambiguous "this is the source" anchor.
        perfSuffix = ""
        if perfSuffix:
            request = request + perfSuffix

        request = request + "definitions:\n"
        for node in batchNodes:
            inputCode = self.stringifyCodeBlock(node.cCode)
            if perfSuffix:
                # Fence inputs only on perf retry; non-retry prompts stay byte-
                # for-byte identical to the legacy shape so cached requests
                # still hit the prompt cache.
                inputCode = (
                    "// === BEGIN TYPE TO TRANSFORM "
                    f"({node.key.storage_key()}; prior-stage output; this is your input) ===\n"
                    + inputCode
                    + "\n// === END TYPE TO TRANSFORM ==="
                )
            request = request + inputCode + "\n\n"

        if predecessorContext:
            request = request + "translated dependency definitions for reference only:\n"
            request = request + "Do not repeat these dependency definitions in your response. Translate only the target definitions listed above.\n"
            request = request + predecessorContext + "\n\n"

        usageBlock = self._formatTypeUsageExamples(batchNodes)
        if usageBlock:
            request = request + usageBlock
            # On-demand: only spell out the BYTE BUFFER tag rule to the

        if err:
            request = request + "In the previous translation, I got an compile error \n" + err + "\n"
            request = request + "This is the previous translation result : \n" + lastTimeResult
        return request

    @staticmethod
    def _formatTypeUsageExamples(nodes):
        """Render the "example usage:" block shown to both the translation
        prompt and the stage_check judge. Returns "" when there is nothing
        worth showing.

        Single source of truth: callers/translators and the yes/no judge
        used to disagree on whether usage was available — the type-batch
        prompt rendered it from ``node.usageList`` while the judge
        rendered nothing at all. That asymmetry let cases like the
        an earlier pass ``char* → std::string`` slip past the judge (which saw
        only the type definitions) even though the actual translation
        prompt had usage evidence (``item->valuestring = (char*)output;``
        / ``free(item->valuestring)``) that would have flagged the
        conversion as unsafe. Routing both through this helper guarantees
        they see byte-identical evidence.

        the Rust pass (Rust) intentionally returns "" — the mechanical mapping
        hint covers what to do without per-field usage, and dangling
        promises of examples we don't deliver mislead the model into
        "guess what's idiomatic" mode (see _buildTypeBatchBasePrompt).
        """
        richNodes = [
            n for n in nodes
            if getattr(n, "translation_mode", None) == TranslationMode.RICH_STRUCT
        ]
        if not richNodes:
            return ""
        lines = []
        for node in richNodes:
            for fieldName, usageList in node.usageList.items():
                for usage in usageList:
                    lines.append(f"{node.name}: {fieldName}: {usage}")
        if not lines:
            return ""
        return "example usage:\n" + "\n".join(lines) + "\n\n"

    def _extractTypeDefinitionFromResult(self, result, typeNode, includeBlock="", attachInclude=False):
        splitResult = ""
        helperDefinitions = []
        if typeNode.kind == TypeKind.STRUCT:
            splitResult = self.extractStructDefinitionByName(result, typeNode.name)
            if not splitResult:
                structCode = self.stringifyCodeBlock(typeNode.cCode)
                candidateNames = self.extractStructIdentifiers(typeNode.name, structCode)
                candidateNames.add(self.toPascalCaseIdentifier(typeNode.name))
                for candidateName in list(candidateNames):
                    candidateNames.add(self.toPascalCaseIdentifier(candidateName))
                for candidateName in candidateNames:
                    if not candidateName:
                        continue
                    splitResult = self.extractStructDefinitionByName(result, candidateName)
                    if splitResult:
                        break
            helperDefinitions = self.extractReferencedRustTypeAliasDefinitions(result, splitResult)
            helperDefinitions.extend(self.extractReferencedRustConstDefinitions(result, splitResult))
        elif typeNode.kind == TypeKind.UNION:
            splitResult = self.extractUnionDefinitionByName(result, typeNode.name)
            if not splitResult:
                unionCode = self.stringifyCodeBlock(typeNode.cCode)
                candidateNames = self.extractUnionIdentifiers(typeNode.name, unionCode)
                candidateNames.add(self.toPascalCaseIdentifier(typeNode.name))
                for candidateName in list(candidateNames):
                    candidateNames.add(self.toPascalCaseIdentifier(candidateName))
                for candidateName in candidateNames:
                    if not candidateName:
                        continue
                    splitResult = self.extractUnionDefinitionByName(result, candidateName)
                    if splitResult:
                        break
            helperDefinitions = self.extractReferencedRustTypeAliasDefinitions(result, splitResult)
            helperDefinitions.extend(self.extractReferencedRustConstDefinitions(result, splitResult))
        elif typeNode.kind == TypeKind.ENUM:
            splitResult = self.extractEnumDefinitionByName(result, typeNode.name)
        elif typeNode.kind == TypeKind.TYPEDEF:
            splitResult = self._extractTypedefDefinitionForDstLang(result, typeNode.name)
            if not splitResult and getattr(self, "dstLang", "") == "Rust":
                # LLMs habitually rename C typedef aliases to PascalCase
                # (e.g. ``comparator_t`` -> ``ComparatorT``, especially common
                # for function-pointer typedefs because PascalCase is idiomatic
                # Rust for type aliases). The exact-name extractor above then
                # returns "", and downstream ``_collectTranslatedTypeCodes``
                # silently drops the typedef from every dependent struct /
                # function prompt while ``_stripProvidedDependencyDefinitions``
                # still treats its key as "already translated" and strips any
                # re-emitted definition. Net effect: every struct that
                # references the typedef compiles into a half-defined Rust
                # form that fails E0412 in all downstream per-function checks.
                #
                # Mirror the PascalCase fallback the STRUCT / UNION branches
                # above already do, then rename the alias back to the original
                # C identifier so the rest of the pipeline (which keys off the
                # C name throughout) stays consistent.
                #
                # PascalCase renaming is a Rust-idiom problem; C++ keeps the
                # original snake_case name so we skip this branch for C++.
                pascalName = self.toPascalCaseIdentifier(typeNode.name)
                if pascalName and pascalName != typeNode.name:
                    splitResult = self.extractTypeAliasDefinitionByName(result, pascalName)
                    if splitResult:
                        splitResult = re.sub(
                            r'\b' + re.escape(pascalName) + r'\b',
                            typeNode.name,
                            splitResult,
                        )
        elif typeNode.kind == TypeKind.EXTERN:
            splitResult = self.extractExternDefinitionByName(result, typeNode.name)
        elif typeNode.kind == TypeKind.STATIC:
            splitResult = self.extractStaticDefinitionByName(result, typeNode.name)

        if not splitResult:
            if typeNode.kind == TypeKind.TYPEDEF:
                return ""
            finalCode = result
        else:
            finalCode = splitResult
            if helperDefinitions:
                finalCode = "\n\n".join(helperDefinitions + [splitResult])
            if includeBlock and attachInclude:
                finalCode = includeBlock + "\n\n" + finalCode
        if finalCode and typeNode.kind in (TypeKind.STATIC, TypeKind.EXTERN):
            finalCode = self.stripTypeOnlyAttributesFromValueDefinition(finalCode)
        if finalCode:
            finalCode = self.cleanCode(finalCode)
        return finalCode

    def _translateDeterministicTypedefBatch(self, batchNodes, translationManager):
        unresolvedNodes = []
        for node in batchNodes:
            node.rustCode = self.translateSimpleTypedefDefinition(node.cCode)
            if node.rustCode:
                self._logStoredTypeResult(node)
            else:
                unresolvedNodes.append(node)
        return unresolvedNodes

    def _translateTypedefBatch(self, batchNodes, predecessorContext, dependencyCodes, predecessorKeys, translationManager):
        unresolvedNodes = self._translateDeterministicTypedefBatch(batchNodes, translationManager)
        if not unresolvedNodes:
            return

        resolvedTypedefCodes = [node.rustCode for node in batchNodes if node.rustCode]
        llmDependencyCodes = self._dedupeCodeList(list(dependencyCodes) + resolvedTypedefCodes)
        llmPredecessorContext = "\n".join(llmDependencyCodes)
        self._translateTypeBatchWithLlm(
            unresolvedNodes,
            llmPredecessorContext,
            llmDependencyCodes,
            predecessorKeys,
            translationManager,
                    )

    def _translateTypeBatchWithLlm(self, batchNodes, predecessorContext, dependencyCodes, dependencyKeys, translationManager):
        trialCount = 0
        err = ""
        lastTimeResult = ""

        while True:
            request = self._buildTypeBatchPrompt(
                batchNodes, predecessorContext, err, lastTimeResult,
            )
            reusePreviousResult = False

            if not reusePreviousResult:
                batchName = "+".join(node.name for node in batchNodes)
                with _callKindContext(self, "type_batch"):
                    result = self.chunkAndSend(batchName, request)
                result = self._sanitizeResultAgainstDependencies(result, dependencyCodes, dependencyKeys)
                self.logger.debug("[type batch %s] sanitized result: %s", batchName, result)
                lastTimeResult = result
                trialCount = trialCount + 1
                combinedResult = predecessorContext + "\n" + result if predecessorContext else result
                # Predecessor types and the new batch each carry their own
                # `use` / `#[derive]` / include lines. cleanCode dedupes them
                # before the compile-check so we don't trip E0252/E0255 on
                # duplicate imports (which previously dominated retry loops).
                combinedResult = self.cleanCode(combinedResult)
                (successFlag, err) = self.compile(combinedResult)
                includeBlock = self.extractIncludeBlock(result)
                includeAttached = False

                for node in batchNodes:
                    attachInclude = False
                    if includeBlock and not includeAttached:
                        attachInclude = True
                        includeAttached = True
                    finalCode = self._extractTypeDefinitionFromResult(result, node, includeBlock, attachInclude)
                    if node.kind == TypeKind.TYPEDEF and not finalCode:
                        finalCode = self.translateSimpleTypedefDefinition(node.cCode)
                    # Fix A: normalize comment-only LLM output to "" so later
                    # stages don't see a "// X removed: ..." placeholder and
                    # mistakenly try to translate / re-translate it.
                    if self._isEmptyOrCommentOnly(finalCode):
                        if finalCode and finalCode.strip():
                            self.logger.info(
                                "[type normalize] %s: comment-only output normalized to empty (was %r)",
                                getattr(node, "name", "?"), finalCode[:80],
                            )
                        finalCode = ""
                    node.rustCode = finalCode
                    self._logStoredTypeResult(node)

                if successFlag or trialCount > 5:
                    break
            else:
                for node in batchNodes:
                    self._logStoredTypeResult(node)
                break

    def preTranslateComplexStructs(self):
        """Translate all complex type definitions for the current stage.

        ``perfRetryContext`` is propagated to ``_translateTypeBatchWithLlm`` so
        the type-batch prompt can show the previous (rejected) rendering as a
        negative example. The retry path expects this method to first revert
        the typeRegistry to the prior-stage snapshot, then call this method to
        re-translate types — see ``_runStagePerfRetryLoop``.
        """
        if self.translatorMode not in [TranslatorModes.CF_STRUCT_REPLAY,
                                       TranslatorModes.CF_STRUCT_FN_REPLAY,
                                       TranslatorModes.CF_SINGLE_REQUEST_MERGE,
                                       TranslatorModes.COMPILATION_FEEDBACK]:
            return

        translationManager = TranslationResultManager()

        graph = self.getTypeDependencyGraph()
        for batchKeys in graph.topo_batches():
            batchNodes = [FunctionAndDependencies.getTypeNode(typeKey) for typeKey in batchKeys]
            batchNodes = [node for node in batchNodes if node is not None]
            # Fix B: drop types whose cCode is empty / comment-only — they
            # were removed by an earlier stage and have nothing left to
            # translate. Calling the LLM with an empty input section in the
            # type-batch prompt risks hallucinated content (observed: sonnet
            # emitted `pub struct internal_hooks { default_allocate, ... }`
            # from an empty input during the Rust pass perf retry, cascade-failing
            # every function compile). Their rustCode stays as it was (= "")
            # which is the correct "still removed" state.
            batchNodes = [
                node for node in batchNodes
                if not self._isEmptyOrCommentOnly(self.stringifyCodeBlock(node.cCode))
            ]
            if not batchNodes:
                continue

            predecessorKeys = graph.ordered_closure(graph.predecessors_of_batch(batchKeys))
            dependencyCodes = self._collectTranslatedTypeCodes(predecessorKeys)
            predecessorContext = "\n".join(dependencyCodes)
            batchKinds = {node.kind for node in batchNodes}

            if batchKinds == {TypeKind.TYPEDEF}:
                # Simple typedef batches go through a non-LLM resolver that
                # doesn't currently surface perf context. That's fine: typedef
                # aliases (e.g. cJSON_bool, size_t) are not the source of perf
                # regressions in any stage we've seen; the heavy hitters are
                # STRUCT/UNION batches which take the LLM path below.
                self._translateTypedefBatch(batchNodes, predecessorContext, dependencyCodes, predecessorKeys, translationManager)
                continue

            if any(node.kind in (TypeKind.STRUCT, TypeKind.UNION, TypeKind.ENUM) for node in batchNodes):
                self._translateTypeBatchWithLlm(
                    batchNodes, predecessorContext, dependencyCodes, predecessorKeys,
                    translationManager,
                )
                continue

            self._translateTypeBatchWithLlm(
                batchNodes, predecessorContext, dependencyCodes, predecessorKeys,
                translationManager,
            )

        # After all type batches finish: cascade-delete any entry that
        # still references a struct whose translation came out empty
        # (LLM deleted the struct in this stage). Without this, dangling
        # `static <DeletedStruct> g = …;` lines survive into the merged
        # file and every per-function compile-and-link fails with
        # `error: unknown type name '<DeletedStruct>'`. See
        # _cascadeDeleteEmptyTypeReferences for the full rationale.
        self._cascadeDeleteEmptyTypeReferences(translationManager)

    def _cascadeDeleteEmptyTypeReferences(self, translationManager):
        """Repair every type entry that still mentions a struct whose
        translation came out empty in this stage.

        Behavior depends on the *victim's* kind:

          * STATIC / EXTERN  (a variable declaration referencing the
            deleted type) — the whole entry is removed. The variable
            cannot exist without its type.
          * TYPEDEF          (a pure alias of the deleted type, e.g.
            `using H = internal_hooks;`) — removed for the same reason.
          * STRUCT / UNION   (a composite that has a *field* of the
            deleted type, e.g. `struct C { internal_hooks h; int x; }`)
            — only the offending field line(s) are removed. The
            composite type itself is kept so its other fields, and the
            functions that use them, keep compiling.
          * Functions are not handled here at all; they live in
            function_bodies and get the (corrected) type context fresh
            when they are translated downstream of this method.

        A fix-point loop handles chains (a typedef alias of a deleted
        struct + a static of that alias both vanish in two passes).
        STRUCT/UNION surgical edits never feed the cascade — by design,
        the struct itself stays alive.

        Concrete case observed (cjson_new):
          * struct:internal_hooks was normalized to "" (LLM dropped the
            custom-allocator hook type).
          * static:global_hooks was translated in a SEPARATE request
            that still saw `internal_hooks` as a dependency and emitted
                static internal_hooks global_hooks = { nullptr, ... };
            → cascade-deleted here (variable, full removal).
          * Hypothetically: had `parse_buffer` retained its
                internal_hooks hooks;
            field, we would surgically drop that one line and keep
            parse_buffer's other fields intact.
        """
        graph = self.getTypeDependencyGraph()
        flatKeys = [k for batch in graph.topo_batches() for k in batch]

        nodes = []
        for key in flatKeys:
            node = FunctionAndDependencies.getTypeNode(key)
            if node is not None and getattr(node, "name", None):
                nodes.append(node)

        # Seed: STRUCT entries whose translation is empty / comment-only.
        # Matches the user-specified trigger `k.startswith("struct:") and
        # v.strip() == ""`. Other kinds are not used as triggers because
        # typedef aliases (e.g. size_t) carry generic names that would
        # cause catastrophic over-deletion if ever emptied by mistake.
        deletedNames = {
            n.name for n in nodes
            if n.kind == TypeKind.STRUCT
            and self._isEmptyOrCommentOnly((n.rustCode or "").strip())
        }
        if not deletedNames:
            return

        surgicalKinds = {TypeKind.STRUCT, TypeKind.UNION}

        while True:
            newlyDeleted = set()
            for n in nodes:
                if n.name in deletedNames:
                    continue
                code = n.rustCode or ""
                if not code:
                    continue
                refs = sorted(
                    d for d in deletedNames
                    if re.search(rf'\b{re.escape(d)}\b', code)
                )
                if not refs:
                    continue
                storageKey = self._typeStorageKey(n)

                if n.kind in surgicalKinds:
                    # Surgical: drop only the field lines that mention a
                    # deleted type. Keep the composite type itself so
                    # its other fields, and the code that uses them,
                    # keep compiling.
                    newCode, removedLines = self._surgicallyRemoveLines(code, refs)
                    if removedLines:
                        self.logger.warning(
                            "[type cascade-surgical] %s referenced deleted "
                            "types %s; removed %d field line(s), kept the "
                            "rest of the type. Removed lines: %r",
                            storageKey, refs, len(removedLines),
                            [ln.strip() for ln in removedLines],
                        )
                        n.rustCode = newCode
                    else:
                        # Reference is present but we couldn't find a
                        # clean single-line field declaration to drop
                        # (multi-line decl, macro, or reference inside a
                        # block comment). Log loud and leave the entry
                        # alone — full deletion would break callers of
                        # this composite type.
                        self.logger.error(
                            "[type cascade-surgical] %s references deleted "
                            "types %s but no removable single-line field "
                            "was found. Manual fix may be required; "
                            "leaving entry unchanged.",
                            storageKey, refs,
                        )
                    # Either way, do NOT mark this struct as deleted —
                    # the composite type stays alive.
                    continue

                # Non-composite victim (STATIC / EXTERN / TYPEDEF /
                # anything else): full delete.
                self.logger.warning(
                    "[type cascade-delete] %s referenced deleted types %s; "
                    "removed entire entry.", storageKey, refs,
                )
                n.rustCode = ""
                newlyDeleted.add(n.name)

            if not newlyDeleted:
                break
            deletedNames |= newlyDeleted

    @staticmethod
    def _surgicallyRemoveLines(code, deletedNames):
        """Drop lines from `code` that reference any name in
        `deletedNames` AND look like a single-line declaration
        (terminated by ';' or ',', allowing trailing whitespace or a
        trailing `// ...` line comment).

        Returns ``(newCode, removedLines)``. ``removedLines`` is empty
        when nothing matched, which the caller treats as "leave the
        entry alone and log an error" — better than full-deleting a
        composite type whose other fields are still live.

        Conservative on purpose:
          * Multi-line declarations are NOT touched.
          * References that appear only inside a comment with no
            trailing ';' or ',' (e.g. a block-comment header) are NOT
            removed.
        """
        if isinstance(deletedNames, str):
            deletedNames = [deletedNames]
        if not deletedNames:
            return code, []

        namePattern = "|".join(re.escape(n) for n in deletedNames)
        refRe = re.compile(rf"\b(?:{namePattern})\b")
        # Strip a trailing `// ...` comment before checking terminator,
        # so `internal_hooks h;  // legacy hook` still qualifies.
        lineCommentRe = re.compile(r"//.*$")
        terminatorRe = re.compile(r"[;,]\s*$")

        kept = []
        removed = []
        for line in code.split("\n"):
            withoutComment = lineCommentRe.sub("", line).rstrip()
            if refRe.search(withoutComment) and terminatorRe.search(withoutComment):
                removed.append(line)
            else:
                kept.append(line)
        return "\n".join(kept), removed

    def compileSccWithFeedback(self, sccGroup, funcMap, contextStructs, previouslyTranslatedFunctions):
        """Translate a strongly-connected group of mutually-recursive functions in one
        LLM round-trip. Returns ``(successFlag, translatedResult, sccLabel)``.

        ``sccGroup`` is a tuple of function names forming one SCC (size >= 2 in practice;
        size==1 also works but the caller should prefer the single-function path).
        """
        sccSet = set(sccGroup)
        sccLabel = "scc_" + "__".join(sccGroup)
        if len(sccLabel) > 80:
            sccLabel = sccLabel[:77] + "..."

        externalDeps = []
        seenDep = set()
        for funcName in sccGroup:
            for dep in funcMap[funcName].dependFunctions:
                if dep in sccSet or dep in seenDep:
                    continue
                if dep not in funcMap:
                    continue
                externalDeps.append(dep)
                seenDep.add(dep)

        allSignature = ""
        for dep in externalDeps:
            sig = funcMap[dep].targetLangSignature
            if sig:
                allSignature = allSignature + sig + "\n"

        rustTranslatedStructs = ""
        rustTranslatedStructPrompt = ""
        seenRustCodes = set()
        dependencyCodes = []
        dependencyKeys = []
        cCodesToStrip = []

        for funcName in sccGroup:
            funcDepsObj = funcMap[funcName]
            orderedTypeKeys = self.getOrderedTypeKeysForFunction(funcDepsObj)
            for typeKey in orderedTypeKeys:
                typeNode = FunctionAndDependencies.getTypeNode(typeKey)
                if typeNode is None:
                    continue
                if typeNode.rustCode and typeNode.rustCode not in seenRustCodes:
                    if rustTranslatedStructs:
                        rustTranslatedStructs += "\n"
                    rustTranslatedStructs += f"/* {self.dstLang} definitions\n{typeNode.rustCode}\n*/"
                    seenRustCodes.add(typeNode.rustCode)
                    dependencyCodes.append(typeNode.rustCode)
                    dependencyKeys.append(typeKey)
                    cCodesToStrip.append(typeNode.cCode)

        if rustTranslatedStructs:
            rustTranslatedStructPrompt = (
                f"Please use the following {self.dstLang} translations of dependency definitions "
                f"enclosed in /* {self.dstLang} definitions ... */. Please do not include this "
                f"translation in your response.\n"
            )
            rustTranslatedStructs += "\n"

        funcSrcParts = []
        for funcName in sccGroup:
            funcDepsObj = funcMap[funcName]
            typeDeclDefCodeLines = funcDepsObj.typeDeclDefCodeLines
            for cCode in cCodesToStrip:
                typeDeclDefCodeLines = typeDeclDefCodeLines.replace(self.stringifyCodeBlock(cCode), "")
            # Strip stale forward declarations of NON-SCC dependencies (their
            # current signatures are already supplied via ``allSignature``);
            # keep declarations of fellow SCC members so the LLM sees the
            # mutual-recursion shape it must translate consistently. Operates
            # on the assembled per-function block so dep forward decls in the
            # type-declaration preamble are also cleaned.
            assembledPart = (
                f"// === function: {funcName} ===\n"
                + typeDeclDefCodeLines
                + "\n"
                + funcDepsObj.funcCodeLines
            )
            assembledPart = self._stripDependencyForwardDeclarations(
                assembledPart, externalDeps
            )
            funcSrcParts.append(assembledPart)
        funcSrc = "\n\n".join(funcSrcParts)

        sccPreamble = (
            f"The following {len(sccGroup)} {self.srcLang} functions form a mutual-recursion group "
            f"and MUST be translated TOGETHER in a single response. They call each other, so their "
            f"signatures must be mutually consistent: when one function in the group calls another, "
            f"the call site argument types must match the callee's parameter types exactly.\n"
            f"Define ALL {len(sccGroup)} functions in your output as full implementations. Do NOT "
            f"declare any of them as `extern` and do NOT generate wrapper functions to bridge type "
            f"mismatches between them - choose consistent signatures so the calls type-check directly.\n"
            f"Functions in this group: {', '.join(sccGroup)}\n\n"
        )

        prompt = (
            sccPreamble
            + "Translate " + self.srcLang + " to " + self.dstLang
            + ". If the source code does not have a main function, please do not add a main function. "
            + "If the source code does not have a called function defined, please do NOT add a dummy definition. "
            + "Translate ONLY the provided functions.\n"
            + "Please use standard library functions if a C function has been implemented by the target standard library.\n"
            + self._semanticFidelityContract()
            + 'For the final code result, please respond with "Final result code" is :\n'
        )

        previouslyTranslatedPrompt = ""
        if previouslyTranslatedFunctions:
            previouslyTranslatedPrompt = (
                f"For the dependency functions, I will provide the function signature of {self.dstLang} "
                "included in /*// and //*/. These dependency functions are available for reference. "
                "Call them only when they are still required by the generated code; if the current stage "
                "has made a dependency unnecessary, do not call it. \n"
            )


        prompt = prompt + self._libcBindingContract(funcSrc)

        (successFlag, result) = self.compileAndRetryLoopforDepency(
            sccLabel,
            prompt,
            contextStructs,
            rustTranslatedStructPrompt,
            rustTranslatedStructs,
            previouslyTranslatedPrompt,
            allSignature,
            previouslyTranslatedFunctions,
            externalDeps,
            dependencyCodes,
            dependencyKeys,
                        funcSrc,
        )
        return (successFlag, result, sccLabel)

    def _extractSccFunctionSignatures(self, translatedResult, sccGroup):
        """For each function in ``sccGroup``, locate it in ``translatedResult`` and return
        its target-language signature. Missing entries are reported as empty string.

        Output is a dict ``{funcName: signature}`` plus a list of names that were not found.

        Bug fix history: the C++ branch's ``find_target_cpp_function`` returns
        ``(best_name, node)`` while the Rust branch's ``find_target_rust_function``
        returns just ``best_name``. The previous implementation passed
        ``target`` directly to ``sigFn`` for both branches, which silently
        broke C++: ``fetch_cpp_function_signature_with_byte`` got a tuple
        where a string was expected, then ``edit_distance(func_name, tuple)``
        collapsed to a single "closest" answer regardless of which member of
        an SCC was being looked up — so for SCC ``[parse_array, parse_object,
        parse_value]`` only the first-in-source-order member's signature was
        ever resolved correctly. Always pass the string name to ``sigFn`` so
        both branches behave identically.
        """
        signatures = {funcName: "" for funcName in sccGroup}
        missing = []
        encoded = translatedResult.encode() if isinstance(translatedResult, str) else translatedResult
        if self.dstLang == "Rust":
            findFn = find_target_rust_function
            sigFn = fetch_rust_function_signature_with_byte
        else:
            findFn = find_target_cpp_function
            sigFn = fetch_cpp_function_signature_with_byte

        for funcName in sccGroup:
            try:
                target = findFn(encoded, funcName)
            except Exception:
                target = None
            if target is None:
                missing.append(funcName)
                continue
            # For C++, target is (name, node); for Rust, target is name.
            # Extract the canonical name so sigFn always receives a string —
            # it will run its own edit-distance search internally.
            realName = target if self.dstLang == "Rust" else (target[0] if isinstance(target, (list, tuple)) and target else None)
            if not realName:
                missing.append(funcName)
                continue
            try:
                sig = sigFn(encoded, realName)
            except Exception:
                sig = None
            if sig and sig[0] == realName:
                signatures[funcName] = sig[1]
            else:
                missing.append(funcName)
        return signatures, missing

    def _splitSccTranslatedResult(self, translatedResult, sccGroup):
        """Split a multi-function SCC translation back into per-function bodies.

        ``compileSccWithFeedback`` returns a single blob containing the LLM's
        translation of every function in the SCC plus a shared preamble
        (#include lines, forward declarations, etc.). The downstream
        ``updateFuncMap`` path needs each member's ``funcCodeLines`` populated
        independently — otherwise per-function paths (notably the perf-retry
        loop, which calls ``compileWithFeedback`` for one function at a time)
        see an empty source and the LLM is given an unanswerable prompt.

        Returns a dict ``{funcName: body}`` where ``body`` is the shared
        preamble followed by just that function's definition. Falls back to
        the full ``translatedResult`` for any function we cannot locate via
        tree-sitter (preserves the legacy "all 3 in the leader's slot"
        behavior for that one function rather than dropping it entirely).
        """
        result = {funcName: translatedResult for funcName in sccGroup}
        if not translatedResult:
            return result

        encoded = translatedResult.encode("utf-8") if isinstance(translatedResult, str) else translatedResult

        try:
            from tree_sitter import Language, Parser
            if self.dstLang == "Rust":
                import tree_sitter_rust
                language = Language(tree_sitter_rust.language())
                fnNodeType = "function_item"
            else:
                import tree_sitter_cpp
                language = Language(tree_sitter_cpp.language())
                fnNodeType = "function_definition"
        except ImportError:
            return result

        try:
            parser = Parser(language)
            tree = parser.parse(encoded)
        except Exception:
            return result

        sccSet = set(sccGroup)
        rangesByName = {}
        firstFnStart = None

        def cppFuncName(node):
            decl = node.child_by_field_name("declarator")
            if decl is None:
                return None
            stack = [decl]
            lastIdent = None
            while stack:
                cur = stack.pop()
                if cur.type == "identifier":
                    lastIdent = cur
                stack.extend(reversed(cur.children))
            if lastIdent is None:
                return None
            return encoded[lastIdent.start_byte:lastIdent.end_byte].decode("utf-8", errors="replace")

        def rustFuncName(node):
            nameNode = node.child_by_field_name("name")
            if nameNode is None:
                return None
            return encoded[nameNode.start_byte:nameNode.end_byte].decode("utf-8", errors="replace")

        getName = rustFuncName if self.dstLang == "Rust" else cppFuncName

        def visit(node):
            nonlocal firstFnStart
            if node.type == fnNodeType:
                if firstFnStart is None:
                    firstFnStart = node.start_byte
                name = getName(node)
                if name in sccSet and name not in rangesByName:
                    rangesByName[name] = (node.start_byte, node.end_byte)
            for child in node.children:
                visit(child)

        try:
            visit(tree.root_node)
        except Exception:
            return result

        if not rangesByName:
            return result

        preamble = encoded[:firstFnStart].decode("utf-8", errors="replace") if firstFnStart else ""

        for funcName in sccGroup:
            if funcName not in rangesByName:
                continue
            start, end = rangesByName[funcName]
            body = encoded[start:end].decode("utf-8", errors="replace")
            result[funcName] = preamble + body

        return result

    def compileWithFeedback(self, funcName, funcDepsObj, contextStructs, dependencyTranslate=False):
        prompt = "Translate " + self.srcLang + " to " + self.dstLang + ". If the C source code does not have a main function, please do not add a main function. If the C source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function." + "\n Please use standard library function if a C function has been implemented by Rust standard library"
        prompt = prompt + self._semanticFidelityContract()
        prompt = prompt + "\n For the final code result, please response with \"Final result code\" is : \n"
        callbackContract = self._buildCallbackContractSection(funcDepsObj)
        if callbackContract:
            prompt = prompt + callbackContract
        signatureChange = self._buildTypedefSignatureChangeSection(funcDepsObj)
        if signatureChange:
            prompt = prompt + signatureChange
        rustTranslatedStructs = ""
        rustTranslatedStructPrompt = ""
        orderedTypeKeys = self.getOrderedTypeKeysForFunction(funcDepsObj)
        dependencyCodes = []
        dependencyKeys = []
        if orderedTypeKeys:
            if not dependencyTranslate:
                rustTranslatedStructPrompt = f"Please use the following {self.dstLang} translations of dependency definitions enclosed in /* {self.dstLang} definitions ... */. Please include the original translation in your response. \n"
            else:
                rustTranslatedStructPrompt = f"Please use the following {self.dstLang} translations of dependency definitions enclosed in /* {self.dstLang} definitions ... */. Please do not include this translation in your response. \n"

        typeDeclDefCodeLines = funcDepsObj.typeDeclDefCodeLines
        seenRustCodes = set()
        for typeKey in orderedTypeKeys:
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None:
                continue
            if typeNode.rustCode and typeNode.rustCode not in seenRustCodes:
                if len(rustTranslatedStructs):
                    rustTranslatedStructs = rustTranslatedStructs + "\n"
                rustTranslatedStructs = rustTranslatedStructs + f"/* {self.dstLang} definitions" + "\n" + typeNode.rustCode + "\n" + "*/"
                seenRustCodes.add(typeNode.rustCode)
                dependencyCodes.append(typeNode.rustCode)
                dependencyKeys.append(typeKey)
                typeDeclDefCodeLines = typeDeclDefCodeLines.replace(self.stringifyCodeBlock(typeNode.cCode), "")

        funcSrc = typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines
        # Strip stale forward declarations of dependency functions; their
        # current signatures are already supplied via
        # ``previouslyTranslatedFunctionSignatures``. Keeps signature info
        # single-sourced and avoids cross-stage signature drift (e.g. a
        # caller's snapshot still showing ``parse_value(cJSON*, ...)`` after
        # the SCC translated parse_value to ``parse_value(cJSON&, ...)``).
        # Operates on the assembled ``funcSrc`` because the per-function ``.i``
        # places dep forward decls in the type-declaration preamble (i.e. in
        # ``typeDeclDefCodeLines``), not in the function body proper.
        funcSrc = self._stripDependencyForwardDeclarations(
            funcSrc, funcDepsObj.dependFunctions
        )
        if len(rustTranslatedStructs) > 0:
            rustTranslatedStructs = rustTranslatedStructs + "\n"

        # Prefer providing only dependency function SIGNATURES rather than full
        # bodies — saves tokens, matches the prompt wording ("I will provide the
        # function signature"), and removes the temptation for the model to
        # "fix" dependency function bodies it can see in full. Fall back to
        # full bodies only if signatures are unavailable (e.g. signature
        # extraction failed).
        depSignatures = funcDepsObj.previouslyTranslatedFunctionSignatures
        depFullBodies = funcDepsObj.previouslyTranslatedFunctions
        usingSignatures = bool(depSignatures and depSignatures.strip())
        depContent = depSignatures if usingSignatures else depFullBodies

        previouslyTranslatedPrompt = ""
        if len(depContent) != 0:
            kindLabel = "function signature" if usingSignatures else "translation"
            previouslyTranslatedPrompt = (
                f"For the dependency functions, I will provide the {kindLabel} of {self.dstLang} "
                "included in /*// and //*/. These dependency functions are available for reference. "
                "Call them only when they are still required by the generated code; if the current stage "
                "has made a dependency unnecessary, do not call it. \n"
            )
        if not dependencyTranslate:
            (successFlag, result) = self.compileAndRetryLoop(funcName,
                                                             prompt,
                                                             rustTranslatedStructPrompt,
                                                             rustTranslatedStructs,
                                                             previouslyTranslatedPrompt,
                                                             depContent,
                                                             funcSrc,
                                                             funcDepsObj=funcDepsObj)
        else:
            prompt = prompt + self._libcBindingContract(funcSrc)
            (successFlag, result) = self.compileAndRetryLoopforDepency(funcName,
                                                                       prompt,
                                                                       contextStructs,
                                                                       rustTranslatedStructPrompt,
                                                                       rustTranslatedStructs,
                                                                       previouslyTranslatedPrompt,
                                                                       funcDepsObj.previouslyTranslatedFunctionSignatures,
                                                                       funcDepsObj.previouslyTranslatedFunctions,
                                                                       funcDepsObj.dependFunctions,
                                                                       dependencyCodes,
                                                                       dependencyKeys,
                                                                                                                                              funcSrc)
        return (successFlag, result)

    def compileAndRetryLoopforDepency(self,
                                      funcName,
                                      prompt,
                                      contextStructs,
                                      translatedStructPrompt,
                                      translatedStructs,
                                      translatedFuncPrompt,
                                      translatedFuncsSignatures,
                                      translatedFuncs,
                                      dependencyFunctionNames,
                                      dependencyCodes,
                                      dependencyKeys,
                                                                            funcSrc):
        # When this is a perf retry, fence the actual source code with explicit
        # SOURCE-TO-TRANSFORM markers. Without these, the prompt has two C++
        # snippets back-to-back — the rejected attempt in PERFORMANCE CONTEXT
        # and the prior-stage source as funcSrc — and the model has been
        # observed to apply the stage transformation to the wrong one.
        request = prompt + "\n" + funcSrc + "\n"
        if len(translatedStructs) > 0:
            request = request + "\n" + translatedStructPrompt + "\n" + translatedStructs + "\n"

        request = request + "\n" + translatedFuncPrompt + "/* \n" + translatedFuncsSignatures + "*/\n"

        result = self.chunkAndSend(funcName, request)
        result = self._sanitizeResultAgainstDependencies(
            result,
            dependencyCodes,
            dependencyKeys,
            dependencyFunctionNames,
        )
        completeResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + result)
        (successFlag, err) = self.compile(completeResult)
        self.logger.debug("[%s], complete result : %s", funcName, completeResult)
        # rustc import-hint auto-fix: free attempt that doesn't burn an
        # LLM retry slot. When rustc reports E0433 ("unresolved module")
        # or similar, it emits a "help: consider importing this module"
        # block whose suggested `use ...;` lines are exact. The LLM
        # sometimes ignores that hint and rewrites unrelated code
        # (observed on jrsl_center_string in run 16-48-26:
        # 5 retries on identical `io::stdout()` calls with no
        # `use std::io;`). Apply the hint deterministically here; if it
        # fixes the build, skip the retry loop entirely. Only relevant
        # for Rust output — clang's "missing header" hints are surfaced
        # through inferMissingPerformanceIncludes elsewhere.
        if (not successFlag
                and self.dstLang == "Rust"):
            patched, appliedUses = self.applyRustcImportAutoFix(result, err)
            if appliedUses:
                self.logger.info(
                    "[COMPILE AND LINK] auto-applied rustc import hint(s) to %s: %s",
                    funcName, ", ".join(appliedUses),
                )
                result = patched
                completeResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + result)
                (successFlag, err) = self.compile(completeResult)
        # C++ POSIX-collision auto-fix. clang reports "template argument
        # for template type parameter must be a type" when a libc /
        # POSIX function name (typically ``link()`` from ``<unistd.h>``,
        # pulled in via ``<memory>``) shadows a user struct of the same
        # tag in template-argument position
        # (``std::vector<link>`` -> ``std::vector<struct link>``).
        # an earlier pass's introduction of ``std::unique_ptr<...>`` was
        # observed (run 17-23-48) to trigger this exact bug on
        # ``skip_node_t.forward``, and the LLM cannot fix it because the
        # broken code lives in the dependency block, not the function it
        # is being asked to rewrite. We rewrite the dep block AND
        # persist the elaborated form back to the type registry so
        # later compiles in the same stage don't re-trigger.
        if not successFlag and self.dstLang != "Rust":
            patched_struct_names = self._autoElaborateStructTemplateArgs(err)
            if patched_struct_names:
                # Heal the in-flight context string directly. A registry
                # rebuild keyed on dependencyKeys goes stale here: the
                # stage loop computes contextStructs once, so after the
                # first function patches the registry, later functions
                # still hold the bare-<link> text while the helper sees
                # nothing left to patch (run 18-16-41).
                updatedContext = contextStructs
                for name in patched_struct_names:
                    updatedContext = self.rewriteUnelaboratedTemplateArg(updatedContext, name)
                if updatedContext != contextStructs:
                    self.logger.info(
                        "[COMPILE AND LINK] auto-elaborated struct tag(s) in template args for %s: %s",
                        funcName, ", ".join(patched_struct_names),
                    )
                    contextStructs = updatedContext
                    completeResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + result)
                    (successFlag, err) = self.compile(completeResult)
        # Same family of dep-block damage, different shape: the stage's
        # struct rewrite can strip the elaborated ``struct`` keyword from
        # a member referencing a later-defined struct
        # (``struct skip_node_t *node;`` -> ``skip_node_t *node;``),
        # losing the implicit forward declaration. Observed twice on
        # an earlier pass skiplist (runs 17-04-00 and 17-54-38); the LLM repeats
        # it deterministically, so retries are wasted. Heal the in-flight
        # context string directly (prepended forward declarations fix any
        # use-before-definition regardless of struct order, and unlike a
        # dependency-keyed registry rebuild they also work when this
        # function has no type dependencies of its own — run 18-05-56's
        # jrsl_max_level). The helper persists the same fix to the
        # registry for the merged file and later stages.
        if not successFlag and self.dstLang != "Rust":
            forward_declared = self._autoForwardDeclareStructs(err)
            missingDecls = [
                n for n in forward_declared
                if ("struct %s;" % n) not in contextStructs
            ]
            if missingDecls:
                self.logger.info(
                    "[COMPILE AND LINK] auto-forward-declared struct(s) for %s: %s",
                    funcName, ", ".join(missingDecls),
                )
                contextStructs = (
                    "\n".join("struct %s;" % n for n in missingDecls)
                    + "\n" + contextStructs
                )
                completeResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + result)
                (successFlag, err) = self.compile(completeResult)
        attempts = 0
        while not successFlag and attempts < COMPILATION_RETRIES:
            self.logger.info("[COMPILE AND LINK]Trying to recompile translated function %s, attempt # %d", funcName, attempts + 1)
            # Try the import-hint auto-fix at the start of every retry
            # too. If the LLM's previous attempt re-introduced the same
            # missing-`use` problem (a common failure mode), patch it
            # before paying for another LLM round.
            if self.dstLang == "Rust":
                patched, appliedUses = self.applyRustcImportAutoFix(result, err)
                if appliedUses:
                    self.logger.info(
                        "[COMPILE AND LINK] auto-applied rustc import hint(s) to %s on attempt %d: %s",
                        funcName, attempts + 1, ", ".join(appliedUses),
                    )
                    result = patched
                    completeResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + result)
                    (successFlag, err) = self.compile(completeResult)
                    if successFlag:
                        break
            # C++ POSIX struct collision can also surface on a later
            # retry round (e.g. the LLM emits the same dep code shape
            # back into a re-translation). Same handling: rewrite the
            # dep block, persist to registry, recompile.
            if self.dstLang != "Rust":
                patched_struct_names = self._autoElaborateStructTemplateArgs(err)
                if patched_struct_names:
                    updatedContext = contextStructs
                    for name in patched_struct_names:
                        updatedContext = self.rewriteUnelaboratedTemplateArg(updatedContext, name)
                    if updatedContext != contextStructs:
                        self.logger.info(
                            "[COMPILE AND LINK] auto-elaborated struct tag(s) for %s on attempt %d: %s",
                            funcName, attempts + 1, ", ".join(patched_struct_names),
                        )
                        contextStructs = updatedContext
                        completeResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + result)
                        (successFlag, err) = self.compile(completeResult)
                        if successFlag:
                            break
            if self.dstLang != "Rust":
                forward_declared = self._autoForwardDeclareStructs(err)
                missingDecls = [
                    n for n in forward_declared
                    if ("struct %s;" % n) not in contextStructs
                ]
                if missingDecls:
                    self.logger.info(
                        "[COMPILE AND LINK] auto-forward-declared struct(s) for %s on attempt %d: %s",
                        funcName, attempts + 1, ", ".join(missingDecls),
                    )
                    contextStructs = (
                        "\n".join("struct %s;" % n for n in missingDecls)
                        + "\n" + contextStructs
                    )
                    completeResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + result)
                    (successFlag, err) = self.compile(completeResult)
                    if successFlag:
                        break
            errorStr = self.extractError(err)
            compilerHints = self.extractCompilerHints(err)
            # Delimiter-balance hint surfaces the exact missing-brace count
            # when rustc/clang report an unclosed delimiter — a class of error
            # the model cannot fix from a generic message because it has no
            # line number (rustc reports at EOF). See
            # buildDelimiterBalanceHint for the patterns it triggers on.
            delimiterHint = self.buildDelimiterBalanceHint(err, result)
            hintEmphasis = ""
            if delimiterHint:
                hintEmphasis = delimiterHint
            if compilerHints:
                hintEmphasis += (
                    "IMPORTANT: the compiler gave specific fix suggestions below. "
                    "Apply them DIRECTLY before considering any other rewrite:\n"
                    + "\n".join(f"  - {h}" for h in compilerHints)
                    + "\n\n"
                )
            basicFeedback = "I got compilation error. Please help me fix or rewrite the target function" + "\n"

            inputInformation = "The code is in the following :" + "\n" + self.cleanCode(result) + "\n"
            inputInformation = inputInformation + "The function signature of the dependency functions is : " + "/* \n" + translatedFuncsSignatures + "*/\n"
            inputInformation = inputInformation + "The dependency structs definition is  " + "/* \n" + contextStructs + "*/\n"

            targetFunction = "target function is " + funcName + "\n" + "Please do not change or modify any other functions" + "\n"

            # The "add missing include files" hint is appropriate for C/C++
            # but actively harmful for Rust: in past the Rust pass perf-retries the
            # model took the suggestion literally and emitted `#include
            # <cstddef>` at the top of a .rs file, producing
            #   `error: expected one of `!` or `[`, found `include``
            # on every attempt — burning all 5 inner retries on the same
            # trivial bug. Gate the hint on dstLang.
            if self.dstLang == "Rust":
                dependencyHint = (
                    "Do NOT add C/C++ preprocessor directives "
                    "(`#include`, `#define`, etc.) — this is Rust. "
                    "If a new dependency is needed, add a `use` statement."
                )
            else:
                dependencyHint = "You can also add missing include files."
            correctInformation = "Please only reply with the modified or re-generated version of the target function: " + funcName + "\n" + dependencyHint

            compileErrorInformation = "The compile error information : " + errorStr + "\n"

            compilefix = "If the compile error is caused by missing dependency such as no member named, please fix try to generate code with the missing dependency \n"
            # A compile-error rewrite is the most common place where the
            # behaviour contract silently gets dropped: the model is now
            # optimising for "make rustc happy", not for fidelity. Restate
            # the rules that a rustc-driven rewrite actually tends to break.
            compilefix = compilefix + (
                "While fixing the error, keep the translation behaviourally identical to the C: "
                "do not change a variable's C type (an `int` flag stays `i32`, never `bool`), "
                "do not hoist a call out of the branch that guards it, "
                "do not move statements into or out of a conditional, and "
                "do not add null/bounds/overflow checks or early returns the C does not have.\n"
            )
            # A rustc-driven rewrite is where the C library binding drifts:
            # restate the exact libc spellings alongside the error.
            compilefix = compilefix + self._libcBindingContract(funcSrc)
            otherInformation = "\n For the final code result, please response with \"Final result code\" is : \n"
            # Preserve perf-retry context across compile-fix iterations so the
            # model does not forget WHY it is being retried (perf regression),
            # and so it does not regenerate the slow pattern just to satisfy
            # clang. Without this, fixing the compile can silently produce the
            # same slow idiom and the perf retry burns an attempt for nothing.
            perfContextSuffix = ""
            request = hintEmphasis + basicFeedback + inputInformation + targetFunction + correctInformation + compileErrorInformation + compilefix + otherInformation + perfContextSuffix
            with _callKindContext(self, "function_retry"):
                result = self.chunkAndSend(funcName, request)
            result = self._sanitizeResultAgainstDependencies(
                result,
                dependencyCodes,
                dependencyKeys,
                dependencyFunctionNames,
            )
            completeResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + result)
            self.logger.debug("[%s], complete result : %s", funcName, completeResult)
            (successFlag, err) = self.compile(completeResult)
            attempts = attempts + 1
        if attempts != 0:
            self.logger.debug("[COMPILE AND LINK] After %d retranslation attempts result, complete result: %s, %s", attempts, result, completeResult)

        return (successFlag, result)

    def compileAndRetryLoop(self, funcName, prompt, translatedStructPrompt, translatedStructs, translatedFuncPrompt, translatedFuncs, funcSrc, funcDepsObj=None):
        request = prompt + "\n" + funcSrc + "\n"
        if len(translatedStructs) > 0:
            request = request + "\n" + translatedStructPrompt + "/*\n" + translatedStructs + "\n*/\n"
        if len(translatedFuncs) > 0:
            request = request + "\n" + translatedFuncPrompt + "/*// \n" + translatedFuncs + "/*//\n"
        result = self.chunkAndSend(funcName, request)
        result = self.cleanCode(result)

        if len(translatedStructs) > 0:
            structIncluded = self.checkStructDefination(result, translatedStructs, funcName)

            structAttempt = 0

            while not structIncluded and structAttempt < STRUCT_RETRIES:
                self.logger.info("function %s does not include target struct, attempt # %d", funcName, structAttempt)

                request = ("The original function miss a necessary struct definition. please help me include that and make sure the result function can be compiled. Please reply with only the " + self.dstLang + " Code and no English word need"
                           + "\n" + "The original function is" + "\n" + result + "necessary struct : " + translatedStructs)
                if len(translatedStructs) > 0:
                    request = request + "\n" + translatedStructPrompt + "/*\n" + translatedStructs + "\n*/\n"

                if len(translatedFuncs) > 0:
                    request = request + "\n" + translatedFuncPrompt + "/*// \n" + translatedFuncs + "/*//\n"
                with _callKindContext(self, "struct_retry"):
                    result = self.chunkAndSend(funcName, request)
                result = self.cleanCode(result)
                structIncluded = self.checkStructDefination(result, translatedStructs, funcName)
                structAttempt = structAttempt + 1
                if structAttempt != 0:
                    self.logger.debug("After %d struct retranslation attempts result: %s", structAttempt, result)
        (successFlag, err) = self.compile(result)
        if "extern \"C\"" in result:
            successFlag = False
        # Rust-only sanity check: the response must actually contain a Rust
        # function. For C++ the equivalent ("function_definition" present)
        # is already covered by ``self.compile``; applying the ``fn `` check
        # there would force successFlag=False on every C++ response and trap
        # the loop in COMPILATION_RETRIES.
        if self.dstLang == "Rust" and "fn " not in result:
            successFlag = False
        attempts = 0
        while not successFlag and attempts < COMPILATION_RETRIES:
            self.logger.info("Trying to recompile translated function %s, attempt # %d", funcName, attempts + 1)
            # extractError logs the full compiler stderr at DEBUG so retries are
            # diagnosable from the log file, AND returns the trimmed text we
            # feed back to the model (regardless of provider). Without this the
            # Claude branch was sending a generic "compile failed" with no error
            # text and the model would just re-try the same broken output.
            errorStr = self.extractError(err)
            compilerHints = self.extractCompilerHints(err)
            # See compileAndRetryLoopforDepency for rationale — surface the
            # missing-brace count explicitly so the model can fix delimiter
            # imbalance instead of repeating the same dropped-`}` error.
            delimiterHint = self.buildDelimiterBalanceHint(err, result)
            hintEmphasis = ""
            if delimiterHint:
                hintEmphasis = delimiterHint
            if compilerHints:
                hintEmphasis += (
                    "IMPORTANT: the compiler gave specific fix suggestions below. "
                    "Apply them DIRECTLY before considering any other rewrite:\n"
                    + "\n".join(f"  - {h}" for h in compilerHints)
                    + "\n\n"
                )
            if "claude" in self.model:
                feedback = (
                    "I got compilation error. If the C source code does not have a main function, please do not add a main function. "
                    "If the C source code does not have a called function defined, please do NOT add a dummy definition.\n"
                    "Compiler error:\n" + errorStr + "\n"
                )
            else:
                feedback = "I got compilation error.\n" + errorStr + "\n The original function was "
            request = hintEmphasis + feedback + "\n" + funcSrc + "\n"
            if len(translatedStructs) > 0:
                request = request + "\n" + translatedStructPrompt + "/*\n" + translatedStructs + "\n*/\n"

            if len(translatedFuncs) > 0:
                request = request + "\n" + translatedFuncPrompt + "/*// \n" + translatedFuncs + "/*//\n"

            request = request + "\n Translate ONLY the provided function. Also DO NOT reply with anything other than the " + self.dstLang + " code. No English words needed.\n"

            with _callKindContext(self, "function_retry"):
                result = self.chunkAndSend(funcName, request)
            (successFlag, err) = self.compile(self.cleanCode(result + "\n" + translatedFuncs))
            attempts = attempts + 1
        if attempts != 0:
            self.logger.debug("After %d retranslation attempts result: %s", attempts, result)

        return (successFlag, result)

    def translate(self, funcName, funcDepsObj):
        if self.translatorMode == TranslatorModes.BASIC_CHUNK_CHAIN:
            request = "Translate " + self.srcLang + " to " + self.dstLang + ". If the C source code does not have a main function, please do not add a main function. If the C source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"
            result = self.chunkAndSend(funcName, request)
        elif self.translatorMode == TranslatorModes.COMPILATION_FEEDBACK:
            funcSrc = funcDepsObj.typeDeclDefCodeLines + "\n" + funcDepsObj.funcCodeLines
            funcSrc = self._stripDependencyForwardDeclarations(
                funcSrc, funcDepsObj.dependFunctions
            )
            prompt = "Translate " + self.srcLang + " to " + self.dstLang + ". If the C source code does not have a main function, please do not add a main function. If the C source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function. Also DO NOT reply with anything other than the Rust code. No English words needed.\n"
            (successFlag, result) = self.compileAndRetryLoop(funcName, prompt, "", "", "", "", funcSrc)
        elif self.translatorMode == TranslatorModes.CF_STRUCT_REPLAY:
            (successFlag, result) = self.compileWithFeedback(funcName, funcDepsObj, "")

        return result

    def runPerformanceCheckForOutput(self, outputPath, label, funcMap=None, updateFuncMapAfterCheck=False):

        performancePrompt, performanceArguments = self.loadPerformanceInformation(outputPath)
        self.logger.info("[Performance check start] : %s", label)
        performanceCheckPassed = self.runPerformanceCheck(outputPath, performancePrompt, performanceArguments)

        # Pull the just-written record for richer signals (correctness, checksum).
        record = self.loadCurrentStageRecord(outputPath)
        correctnessCheckPassed = record.get("correctness_check_passed")
        currentChecksum = record.get("checksum")
        expectedChecksum = record.get("expected_checksum")
        currentMs = record.get("average_elapsed_ms")
        prevMs = record.get("previous_stage_baseline_ms")

        if updateFuncMapAfterCheck and funcMap is not None:
            self.updateFuncMap(funcMap)

        # 1. Correctness gate (independent of perf): if this stage produced wrong
        #    output (checksum mismatch), discard it. No retry — retry only fixes perf.
        #
        # Exception: the Rust pass emits Rust while every prior stage emits C++.
        # Reverting the Rust pass to its predecessor would replace Rust output with
        # C++ output, which is never the user's intent — keep the the Rust pass
        # result regardless and surface the failure via the False return.
        if correctnessCheckPassed is False:
            self.logger.warning(
                "[Stage discarded] : %s reason=correctness expected=%s got=%s",
                label, expectedChecksum, currentChecksum,
            )
            return False

        # 2. Perf gate.
        if performanceCheckPassed:
            self.logger.info("[Performance check pass] : %s", label)
            return True

        self.logger.info("[Performance check fail] : %s", label)

        # 3. Skip retry mechanism entirely?
        skipRetry = bool(getattr(self, "perfDegradeSkipRetry", False))
        discardOnFail = bool(getattr(self, "perfDegradeDiscardOnFail", False))

        if skipRetry:
            self.logger.info("[Perf retry skipped] : %s", label)
            return True

        # 4. Trigger retry only if degradation actually exceeds threshold.
        thresholdPct = float(getattr(self, "perfDegradeThresholdPct", PERF_DEGRADE_THRESHOLD_PCT))
        retryCount = int(getattr(self, "perfDegradeRetryCount", 2))

        if prevMs is None or currentMs is None or prevMs <= 0:
            self.logger.info("[Perf retry skipped] : %s (no prev baseline)", label)
            return True

        degradePct = (currentMs - prevMs) / prevMs * 100.0
        if degradePct <= thresholdPct:
            # perf check failed under the legacy +100ms heuristic but does not
            # exceed our percentage threshold — accept silently.
            self.logger.info(
                "[Perf retry skipped] : %s degrade=%.2f%% within threshold=%.2f%%",
                label, degradePct, thresholdPct,
            )
            return True

        self.logger.info(
            "[Perf retry start] : %s degrade=%.2f%% threshold=%.2f%% max_attempts=%d",
            label, degradePct, thresholdPct, retryCount,
        )

        retryPassed = False

        if retryPassed:
            self.logger.info("[Performance check pass] : %s (after perf retry)", label)
            return True

        self.logger.info("[Perf retry exhausted] : %s", label)

        # Default: keep the slow result, log clearly.
        self.logger.info("[Performance degrade accepted] : %s", label)
        return True

    # -------------------------------------------------------------------------
    # Per-function perf retry mechanism
    # -------------------------------------------------------------------------

    def _snapshotFuncMap(self, funcMap):
        """Take a deep-enough snapshot of funcMap to support revert/adopt.

        Only snapshots the fields that the perf retry path may overwrite.
        """
        snapshot = {}
        for funcName, funcDeps in funcMap.items():
            snapshot[funcName] = {
                "funcCodeLines": getattr(funcDeps, "funcCodeLines", ""),
                "typeDeclDefCodeLines": getattr(funcDeps, "typeDeclDefCodeLines", ""),
                "targetLangSignature": getattr(funcDeps, "targetLangSignature", ""),
            }
        return snapshot

    def _adoptFuncMapSnapshot(self, funcMap, snapshot):
        """Replace mutable fields in ``funcMap`` from a snapshot."""
        for funcName, fields in snapshot.items():
            if funcName not in funcMap:
                continue
            target = funcMap[funcName]
            for key, value in fields.items():
                setattr(target, key, value)


    def _adoptTypeRegistrySnapshot(self, snapshot):
        """Restore TypeNode fields from a snapshot produced by
        ``_snapshotTypeRegistry``."""
        if not snapshot:
            return
        for typeKey, fields in snapshot.items():
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None:
                continue
            for key, value in fields.items():
                setattr(typeNode, key, value)





    def _autoElaborateStructTemplateArgs(self, errStr):
        """When clang stderr contains the
        "template argument for template type parameter must be a type"
        diagnostic on a name that matches a registered struct, rewrite
        the struct's stored ``rustCode`` (and any other type node whose
        rustCode references the same name in template-argument
        position) to use the elaborated ``struct NAME`` form. This
        unblocks downstream compiles in the same stage and survives
        across the rest of the run.

        Returns the registered-struct names the diagnostic names; empty
        list means no actionable diagnostic was found (or the diagnosed
        name wasn't a registered struct, so we don't risk spurious
        rewrites). The registry rewrite is idempotent — a non-empty
        return only guarantees the registry is now elaborated. Callers
        must apply ``rewriteUnelaboratedTemplateArg`` to their own
        in-flight ``contextStructs`` as well: the stage translate loop
        computes that string once, so after the first function patches
        the registry every later function re-hits the same diagnostic
        on stale context while the helper sees nothing left to patch
        (run 18-16-41, every function after jrsl_node_at)."""
        names = self.extractCppTemplateNotATypeNames(errStr)
        if not names:
            return []

        # Only act on names that match a registered struct tag — the
        # rewrite is unambiguously correct only when an entity called
        # `struct NAME` actually exists. If clang complained about a
        # name that isn't a struct, the fix would be a hallucination.
        registered_structs = set()
        for typeKey in FunctionAndDependencies.typeRegistry.all_keys():
            if typeKey.kind == TypeKind.STRUCT:
                registered_structs.add(typeKey.name)
        actionable = [n for n in names if n in registered_structs]
        if not actionable:
            return []

        # Rewrite every type node's rustCode that references one of
        # the actionable names as a bare template arg. The rewrite is
        # idempotent (``<struct link>`` doesn't match ``<link>``).
        for typeNode in FunctionAndDependencies.typeRegistry.all_nodes():
            if not typeNode.rustCode:
                continue
            updated = typeNode.rustCode
            for name in actionable:
                updated = self.rewriteUnelaboratedTemplateArg(updated, name)
            if updated != typeNode.rustCode:
                typeNode.rustCode = updated
        return actionable

    def _autoForwardDeclareStructs(self, errStr):
        """When clang stderr contains "unknown type name 'NAME'" for a
        name that matches a registered struct, prepend a ``struct NAME;``
        forward declaration to every other type node whose stored
        ``rustCode`` references NAME, and persist it to the registry.

        Companion to ``_autoElaborateStructTemplateArgs`` for the other
        shape of stage-rewrite damage: the LLM strips the elaborated
        ``struct`` keyword from a member referencing a later-defined
        struct (``struct skip_node_t *node;`` -> ``skip_node_t *node;``),
        silently losing the implicit forward declaration. The LLM cannot
        repair this from the function retry loop because the broken code
        lives in the dependency block, so every dependent function burns
        all its retries on the same diagnostic (observed on skiplist, runs 17-04-00 and 17-54-38). Forward declarations are
        order-independent, idempotent, and legal even when the definition
        later appears via ``typedef struct``.

        Returns the list of registered-struct names the diagnostic names
        (empty when the diagnosed name isn't a registered struct, so we
        don't risk spurious rewrites). The registry patch is idempotent;
        a non-empty return only guarantees the registry now carries the
        forward declarations. Callers must heal their own in-flight
        ``contextStructs`` string as well — the stage translate loop
        computes that string ONCE (``createSccTopoQueue``), so a later
        function's compile can fail on stale context even after an
        earlier function's failure already patched the registry."""
        names = re.findall(r"unknown type name '([A-Za-z_]\w*)'", errStr or "")
        if not names:
            return []

        registered_structs = set()
        for typeKey in FunctionAndDependencies.typeRegistry.all_keys():
            if typeKey.kind == TypeKind.STRUCT:
                registered_structs.add(typeKey.name)
        actionable = [n for n in unique_everseen(names) if n in registered_structs]
        if not actionable:
            return []

        for typeNode in FunctionAndDependencies.typeRegistry.all_nodes():
            if not typeNode.rustCode:
                continue
            updated = typeNode.rustCode
            for name in actionable:
                if typeNode.name == name:
                    continue
                forwardDecl = f"struct {name};"
                if forwardDecl in updated:
                    continue
                if re.search(r"\b%s\b" % re.escape(name), updated):
                    updated = forwardDecl + "\n" + updated
            if updated != typeNode.rustCode:
                typeNode.rustCode = updated
        return actionable

    def _healContextStructsBlob(self, blob):
        """Syntax-check the assembled struct/typedef context snapshot and
        repair the two an earlier pass dep-block regressions IN THE STRING, so the
        fix reaches everything assembled from this one snapshot.

        ``createSccTopoQueue`` computes ``contextedStructs`` once; the
        merged file is written from it and the performance entry is built
        by reading that merged file back (``runPerformanceCheck``). The
        per-function compile retries heal only their own local copy, so
        the snapshot on disk kept the broken structs — every function
        compiled, yet ``merged_funcs.cpp`` and ``performance.cpp`` shipped
        ``struct link { skip_node_t *node; }`` (no forward decl) and
        ``std::vector<link>`` (bare tag), and the perf compile aborted the
        whole run (run 20-48-14).

        Compile-driven, repeated until clean or no further progress:
          * ``unknown type name 'X'``                -> prepend ``struct X;``
          * ``template argument ... must be a type`` -> ``<X>`` to ``<struct X>``
        for any ``X`` that is a registered struct. Returns the healed blob,
        or the input unchanged when it already compiles or the errors are
        neither kind (unrelated breakage is left for the normal paths)."""
        if self.dstLang == "Rust" or not blob:
            return blob
        registered = {
            k.name for k in FunctionAndDependencies.typeRegistry.all_keys()
            if k.kind == TypeKind.STRUCT
        }
        if not registered:
            return blob
        healed = blob
        for _ in range(8):
            ok, err = self.compile(healed)
            if ok:
                return healed
            changed = False
            missing = [
                n for n in unique_everseen(
                    re.findall(r"unknown type name '([A-Za-z_]\w*)'", err))
                if n in registered and ("struct %s;" % n) not in healed
            ]
            if missing:
                healed = "\n".join("struct %s;" % n for n in missing) + "\n" + healed
                changed = True
            for n in self.extractCppTemplateNotATypeNames(err):
                if n in registered:
                    rewritten = self.rewriteUnelaboratedTemplateArg(healed, n)
                    if rewritten != healed:
                        healed = rewritten
                        changed = True
            if not changed:
                break
        return healed

    def _rebuildContextStructsFromRegistry(self, dependencyKeys, fallbackContext):
        """Recompute the contextStructs blob from the current
        ``rustCode`` of each type node in ``dependencyKeys``.

        After ``_autoElaborateStructTemplateArgs`` mutates rustCode in
        place, the in-flight ``contextStructs`` string the function
        retry loop is holding is stale. We rebuild it by concatenating
        the updated rustCode in the same order
        ``_collectTranslatedTypeCodes`` would. Falls back to the
        unchanged ``fallbackContext`` if the registry has no
        rustCode for any key (which shouldn't happen at this point in
        the pipeline but is treated as a safe no-op)."""
        if not dependencyKeys:
            return fallbackContext
        codes = self._collectTranslatedTypeCodes(dependencyKeys)
        if not codes:
            return fallbackContext
        return "\n".join(codes)

    def _buildCallbackContractSection(self, funcDepsObj):
        """Render the "Callback contracts" section that tells the LLM
        the current function must remain ABI/semantics-compatible with
        a set of function-pointer typedefs detected at call sites.

        Bindings are populated by
        ``FunctionAndDepsExtractor.extractCallbackBindings`` from
        explicit ``(typedef_name)func_name`` casts. The casts that
        matter most live in the user-supplied ``performance_information.json``
        ``prompt`` field (the program's ``main`` template) — without
        this section, when a later stage transforms the typedef the
        LLM has no signal that this function must follow, and the
        cast at the call site silently bridges incompatible signatures.

        Returns ``""`` when no bindings exist (the common case), so
        function prompts without callback bindings stay byte-identical
        to the pre-fix shape and still hit the prompt cache.
        """
        bindings = getattr(funcDepsObj, "conformingTypedefs", None)
        if not bindings:
            return ""

        funcName = getattr(funcDepsObj, "funcSym", "")
        contractLines = []
        for typeKey in sorted(bindings, key=lambda k: k.name):
            contractLines.append(f"  {funcName} -> {typeKey.name}")
        if not contractLines:
            return ""

        return (
            "\n\nCALLBACK CONTRACTS:\n"
            "This function is registered as a callback bound to the "
            "following function-pointer typedef(s). The bindings were "
            "detected from explicit `(typedef_name)func_name` casts at "
            "call sites (e.g. in the program's main entry point). The "
            "function's signature, parameter types, return type, and "
            "return-value semantics MUST stay compatible with the "
            "CURRENT translated form of each bound typedef shown in the "
            "dependency block below.\n"
            "\n"
            "If THIS stage has modified the typedef's signature or "
            "semantics, you MUST update this function's signature and "
            "body in the SAME response so the callback contract still "
            "holds — do NOT preserve the original C signature when it "
            "no longer matches the typedef. Treat the bound typedef as "
            "the source of truth for this function's external interface.\n"
            "\n"
            "Bindings for this function:\n"
            + "\n".join(contractLines) + "\n"
        )

    # `typedef <RET> (*<NAME>)(<ARGS>);` — C/C++ function-pointer form.
    # `(.+?)` is non-greedy so it stops at the smallest substring that
    # still lets the trailing `\s*\(\s*[^*]*\*\s*<NAME>\s*\)\s*\(`
    # match — that locks the boundary so we capture the actual return
    # type and not the leading bit of `(*NAME)`.
    _CPP_FUNC_POINTER_RETURN_PATTERN = re.compile(
        r'^\s*typedef\s+(.+?)\s*\(\s*[^*()]*\*\s*[A-Za-z_]\w*\s*\)\s*\('
    )
    # `type <NAME> = ... fn(<ARGS>) -> <RET>;` — Rust function-pointer
    # form, with optional `Option<...>` / `unsafe` / `extern "C"`
    # wrappers. The terminator can be `>` (when inside Option) or `;`.
    _RUST_FUNC_POINTER_RETURN_PATTERN = re.compile(
        r'\bfn\s*\(.*?\)\s*->\s*([^;>]+?)\s*(?:>|;)'
    )

    @classmethod
    def _extractFunctionPointerReturnType(cls, typedefText, lang):
        """Pull the return-type token from a function-pointer typedef.

        ``lang`` is either ``"C"``/``"C++"``-ish (anything not Rust) or
        ``"Rust"``. The matcher uses the lang-appropriate regex; for
        non-function-pointer typedefs (plain aliases, arrays, etc.) it
        returns ``""`` and the caller silently skips the diff check.

        Whitespace is collapsed to single spaces inside the captured
        token so cosmetic LLM differences (newlines, tabs) don't
        masquerade as semantic changes.
        """
        if not typedefText:
            return ""
        normalized = " ".join(typedefText.split())
        if (lang or "").lower() == "rust":
            match = cls._RUST_FUNC_POINTER_RETURN_PATTERN.search(normalized)
        else:
            match = cls._CPP_FUNC_POINTER_RETURN_PATTERN.match(normalized)
        if not match:
            return ""
        return " ".join(match.group(1).split()).strip()

    def _buildTypedefSignatureChangeSection(self, funcDepsObj):
        """Render the "Typedef signature changes" section that tells
        the LLM which function-pointer typedefs in its dependency
        closure have had their RETURN TYPE changed by this         compared to the original C form.

        Scope is intentionally narrow — return type only, no parameter
        count / type comparison — to keep the prompt change small and
        the false-positive rate near zero. The motivating regression:
        an earlier pass transforms ``comparator_t`` from
        ``char (*)(void*, void*)`` (three-way ``-1/0/+1``) to
        ``bool (*)(void*, void*)`` (less-than predicate). Functions
        that *call* the typedef through a struct field (e.g.
        ``jrsl_search``, ``jrsl_remove`` doing
        ``skip_list->comparator(a, b) < 0``) need to be told the return
        type changed so they update their ``< 0`` / ``== 0`` arithmetic.
        Without this hint, the LLM has the new typedef in its prompt's
        dependency block but doesn't reliably make the connection.

        Returns ``""`` when no return-type-changed typedefs are in the
        function's closure, so unaffected functions keep byte-identical
        prompts and stay in the prompt cache.
        """
        try:
            orderedKeys = self.getOrderedTypeKeysForFunction(funcDepsObj)
        except Exception:
            # Pre-analysis hasn't built the type-dep graph yet
            # (early-exit code path / smoke tests that don't go through
            # the full pipeline). Falling back to a silent empty section
            # is safer than crashing the prompt assembly.
            return ""
        if not orderedKeys:
            return ""

        dstLang = getattr(self, "dstLang", "")
        changes = []
        seen = set()
        for typeKey in orderedKeys:
            if typeKey.kind != TypeKind.TYPEDEF or typeKey in seen:
                continue
            seen.add(typeKey)
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None:
                continue
            translated = (typeNode.rustCode or "").strip()
            original = self.stringifyCodeBlock(typeNode.cCode).strip()
            if not translated or not original:
                continue
            # Original is always C; translated is in dstLang.
            originalReturn = self._extractFunctionPointerReturnType(original, "C")
            translatedReturn = self._extractFunctionPointerReturnType(translated, dstLang)
            if not originalReturn or not translatedReturn:
                continue
            if originalReturn == translatedReturn:
                continue
            changes.append((typeKey.name, originalReturn, translatedReturn))

        if not changes:
            return ""

        lines = []
        for name, oldRet, newRet in sorted(changes, key=lambda x: x[0]):
            lines.append(f"  {name} : return type `{oldRet}` -> `{newRet}`")

        return (
            "\n\nTYPEDEF SIGNATURE CHANGES IN THIS STAGE:\n"
            "The following function-pointer typedef(s) in this function's "
            "dependency closure have had their RETURN TYPE changed by this "
            "stage compared to the original C form. Any expression in your "
            "code that calls or compares against the result of a value of "
            "this typedef MUST be rewritten so the result is used "
            "consistently with the NEW return type.\n"
            "\n"
            "Common patterns that need to change when a comparator return "
            "type goes from a signed integer (three-way `-1/0/+1`) to "
            "`bool` (less-than predicate):\n"
            "  * `cmp(a, b) < 0`   ->   `cmp(a, b)`\n"
            "  * `cmp(a, b) > 0`   ->   `cmp(b, a)`\n"
            "  * `cmp(a, b) == 0`  ->   `!cmp(a, b) && !cmp(b, a)`\n"
            "  * `cmp(a, b) != 0`  ->   `cmp(a, b) || cmp(b, a)`\n"
            "Apply the analogous transform if the new return type is "
            "something other than `bool`. Do NOT keep `< 0` / `== 0` "
            "checks against a `bool` value — `bool` is always 0 or 1 so "
            "`< 0` is always false and the loop / branch becomes dead "
            "code, silently breaking correctness.\n"
            "\n"
            "Return-type changes for this function's closure:\n"
            + "\n".join(lines) + "\n"
        )




    # Files and directories that exist inside a stage dir but are NOT part of
    # the per-attempt artifact set: build caches, lock dirs, our own archive
    # subdirs from previous attempts. Excluded both from the top-level listing
    # and from any subtree we descend into.
    _ATTEMPT_ARCHIVE_SKIP_NAMES = frozenset({"temp", ".performance_cargo_build"})



    def prepareStructFnReplayPerformanceOutput(self, outputPath):
        outputDir = os.path.abspath(os.path.dirname(outputPath))
        outputFileName = os.path.basename(outputPath)

        tempRoot = self.getStructFnReplayPerformanceTempRoot(outputPath)
        relocatedOutputPath = os.path.join(tempRoot, outputFileName)

        if os.path.exists(tempRoot):
            shutil.rmtree(tempRoot)

        shutil.copytree(
            outputDir,
            tempRoot,
            ignore=shutil.ignore_patterns(
                ".performance_cargo_build",
                "temp",
                "performance.cpp",
                "performance.rs",
                "performance.out",
                "performance_metrics.json",
                self.CROWN_STATISTICS_OUTPUT_NAME,
            ),
        )
        self.logger.info(
            "Copied struct-fn-replay output to temporary performance directory %s before performance check",
            tempRoot,
        )
        return relocatedOutputPath

    def getStructFnReplayPerformanceTempRoot(self, outputPath):
        tempDirName = getattr(self, "PERFORMANCE_TEMP_DIR_NAME", "temp")
        return os.path.join(os.path.abspath(os.path.dirname(outputPath)), tempDirName)

    def cleanupStructFnReplayPerformanceTemp(self, performanceOutputPath, outputPath):
        tempRoot = self.getStructFnReplayPerformanceTempRoot(outputPath)
        performanceDir = os.path.abspath(os.path.dirname(performanceOutputPath))

        if not os.path.isdir(tempRoot):
            return

        try:
            commonPath = os.path.commonpath([tempRoot, performanceDir])
        except ValueError:
            return
        if commonPath != tempRoot:
            return

        shutil.rmtree(tempRoot)
        self.logger.info("Removed temporary performance directory %s", tempRoot)

    def syncStructFnReplayPerformanceResults(self, performanceOutputPath, outputPath):
        performanceDir = os.path.abspath(os.path.dirname(performanceOutputPath))
        outputDir = os.path.abspath(os.path.dirname(outputPath))
        if performanceDir == outputDir:
            return

        for fileName in ("performance.rs", "performance.out", "performance_metrics.json"):
            srcPath = os.path.join(performanceDir, fileName)
            if os.path.isfile(srcPath):
                shutil.copy2(srcPath, os.path.join(outputDir, fileName))

    def runMergedOutputChecksForOutput(self, outputPath, label, funcMap=None, updateFuncMapAfterCheck=False):
        if getattr(self, "skipPerformanceCheck", False):
            self.logger.info("[Performance check skipped] : %s", label)
            if updateFuncMapAfterCheck and funcMap is not None:
                self.updateFuncMap(funcMap)
            self.runCrownAnalysisForOutput(outputPath, label)
            return True

        performanceOutputPath = outputPath
        if label == "struct-fn-replay":
            performanceOutputPath = self.prepareStructFnReplayPerformanceOutput(outputPath)

        try:
            performanceCheckPassed = self.runPerformanceCheckForOutput(
                performanceOutputPath,
                label,
                funcMap,
                updateFuncMapAfterCheck,
            )
        except Exception as exc:
            # The perf harness is a *separate* LLM-written `main` compiled on
            # top of the merged translation; when it does not build,
            # runPerformanceCheck raises and — because nothing caught it — the
            # exception unwound out of translateAll and killed processCodebase
            # before it could rename the individual-funcs directory
            # `__complete` or run the CROWN pass. Observed on all three
            # iteration-1 libcsv rounds, where the generated main contained
            # `let argc = libc::argc;`. The translations themselves were
            # already written to disk at that point, so aborting bought
            # nothing and cost the post-translation steps.
            #
            # The perf number is not the metric under evolution here; a
            # harness that cannot measure it must still hand its translations
            # to the backend.
            self.logger.error(
                "[Performance check aborted] : %s (%s: %s) — continuing; "
                "the translations are already written",
                label, type(exc).__name__, exc,
            )
            performanceCheckPassed = False
        finally:
            if label == "struct-fn-replay":
                self.syncStructFnReplayPerformanceResults(performanceOutputPath, outputPath)
                self.cleanupStructFnReplayPerformanceTemp(performanceOutputPath, outputPath)
        self.runCrownAnalysisForOutput(outputPath, label)
        return performanceCheckPassed

    def translateAll(self, funcMap, individualFuncPath, multiThreading):
        self.preTranslateComplexStructs()
        if self.translatorMode in [TranslatorModes.BASIC_CHUNK_CHAIN, TranslatorModes.COMPILATION_FEEDBACK, TranslatorModes.CF_STRUCT_REPLAY]:
            if multiThreading:
                threads = []
                for i, key in enumerate(funcMap):
                    t = threading.Thread(target=self.translateAndCreateRustFiles, args=(funcMap, key, individualFuncPath))
                    threads.append(t)
                    if len(threads) == MAX_THREADS:
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

            else:
                for i, key in enumerate(funcMap):
                    self.translateAndCreateRustFiles(funcMap, key, individualFuncPath)
        else:
            if self.translatorMode == TranslatorModes.CF_STRUCT_FN_REPLAY:
                self._runSccTopoTranslateLoop(funcMap, individualFuncPath)
                self._dumpTokenUsage(individualFuncPath)

    def canPromptForInteractiveFix(self):
        """True iff the user opted in via --interactive-fix-on-fail AND we are
        attached to a TTY. Mirrors canPromptForManualPerformanceFix so headless
        CI runs degrade silently instead of blocking on stdin."""
        return getattr(self, "interactiveFixOnFail", False) and sys.stdin.isatty()

    def _printManualFixPreamble(self, title, failurePath):
        print(f"\n[Manual Fix] {title}")
        print("Edit this file (it is a complete, self-contained compile unit):")
        print(f"  {failurePath}")
        if self.dstLang == "Rust":
            print("Verify your edit locally with:")
            print(f"  cd $(dirname {failurePath!r}) && cargo check  # or paste into the cargo project")
        else:
            print("Verify your edit locally with:")
            print(f"  clang++ -x c++ -std=c++20 -w -c -o /tmp/x.o {failurePath!r}")
        print("\n[Enter] recompile + accept   [s] skip (drop)   [Ctrl+C] abort run")

    def _readEditedSource(self, failurePath):
        try:
            with open(failurePath, "r") as f:
                return f.read()
        except OSError as e:
            print(f"Could not re-read {failurePath}: {e}")
            return None

    def _offerManualFunctionFix(self, funcSym, failurePath):
        """Block on user input: they edit ``failurePath`` (a complete compile
        unit dumped by the failure branch), then press Enter to recompile and
        accept. On accept, returns ``(True, fixedFunctionBlock)`` where the
        block is the target function's byte-range from the edited file --
        suitable for appending directly into ``previouslyTranslatedFunctions``.
        On skip / EOF / unparseable edit, returns ``(False, None)`` and the
        caller falls back to the original 'drop function' behavior.

        The caller is responsible for re-extracting the target signature and
        routing the accepted result through the existing success-branch side
        effects (merged_funcs write, translationResultManager update).
        """
        title = f"{funcSym} failed to compile after all retries."
        while True:
            self._printManualFixPreamble(title, failurePath)
            try:
                choice = input("> ").strip().lower()
            except EOFError:
                self.logger.warning("[Manual Fix] reached EOF; skipping %s", funcSym)
                return (False, None)
            if choice == "s":
                self.logger.info("[Manual Fix] user skipped %s", funcSym)
                return (False, None)

            editedSource = self._readEditedSource(failurePath)
            if editedSource is None:
                continue

            (successFlag, err) = self.compile(editedSource)
            if not successFlag:
                errText = self.extractError(err)
                print("\nCompile still fails:")
                print(errText)
                self.logger.info(
                    "[Manual Fix] recompile of %s still fails after edit; looping for another revision",
                    funcSym,
                )
                continue

            editedBytes = editedSource.encode()
            if self.dstLang == "Rust":
                _, node = find_target_rust_function_node(editedBytes, funcSym)
            else:
                _, node = find_target_cpp_function(editedBytes, funcSym)

            if node is None:
                print(
                    f"\nCould not locate function '{funcSym}' in the edited file. "
                    "Make sure the function name is unchanged, save again, then press Enter."
                )
                continue

            fixedBlock = editedBytes[node.start_byte:node.end_byte].decode("utf-8", errors="replace")
            self.logger.info(
                "[Manual Fix] accepted hand-fixed %s (%d bytes) in %s",
                funcSym, len(fixedBlock),
            )
            print(f"\n[Manual Fix] Accepted. {funcSym} will flow into merged_funcs and downstream stages.")
            return (True, fixedBlock)

    def _offerManualSccFix(self, sccGroup, failurePath):
        """SCC variant of ``_offerManualFunctionFix``. Returns
        ``(True, joinedFunctionBlocks)`` on accept, where the joined string
        concatenates every SCC member's hand-fixed body in source-position
        order -- same shape the SCC success branch expects when assigning to
        ``translatedResult``. Returns ``(False, None)`` on skip / EOF / parse
        failure.
        """
        title = f"SCC group [{', '.join(sccGroup)}] failed to compile."
        while True:
            self._printManualFixPreamble(title, failurePath)
            try:
                choice = input("> ").strip().lower()
            except EOFError:
                self.logger.warning("[Manual Fix] reached EOF; skipping SCC %s", sccGroup)
                return (False, None)
            if choice == "s":
                self.logger.info("[Manual Fix] user skipped SCC %s", sccGroup)
                return (False, None)

            editedSource = self._readEditedSource(failurePath)
            if editedSource is None:
                continue

            (successFlag, err) = self.compile(editedSource)
            if not successFlag:
                errText = self.extractError(err)
                print("\nCompile still fails:")
                print(errText)
                continue

            editedBytes = editedSource.encode()
            nodes = []
            missing = []
            for funcName in sccGroup:
                if self.dstLang == "Rust":
                    _, node = find_target_rust_function_node(editedBytes, funcName)
                else:
                    _, node = find_target_cpp_function(editedBytes, funcName)
                if node is None:
                    missing.append(funcName)
                else:
                    nodes.append((funcName, node))

            if missing:
                print(
                    f"\nCould not locate SCC member(s) {missing} in the edited file. "
                    "Each function in the SCC must be present by name. Fix and press Enter."
                )
                continue

            nodes.sort(key=lambda kv: kv[1].start_byte)
            fixedBlock = "\n".join(
                editedBytes[node.start_byte:node.end_byte].decode("utf-8", errors="replace")
                for _, node in nodes
            )
            self.logger.info(
                "[Manual Fix] accepted hand-fixed SCC %s (%d bytes) in %s",
                sccGroup, len(fixedBlock),
            )
            print(f"\n[Manual Fix] Accepted. SCC will flow into merged_funcs and downstream stages.")
            return (True, fixedBlock)

    def _dumpSplitBlock(self, outputDir, name, translatedResult):
        """Write each translation block that successfully made it into the merge to its own file (split_blocks/<name>.rs).

        Used by split_merged.py to assemble self-contained "single function + dependency
        closure" files (DESIGN.md T13). Block content is verbatim identical to what gets
        concatenated into merged_funcs.rs — the same translatedResult.
        """
        d = os.path.join(outputDir, "split_blocks")
        os.makedirs(d, exist_ok=True)
        with open(os.path.join(d, f"{name}.rs"), "w") as f:
            f.write(self.cleanCode(translatedResult))

    def _dumpSplitManifest(self, outputDir, funcMap, sccs, funcToScc, contextedStructs):
        """Write the dependency graph + type header to disk (split_manifest.json / contexted_structs.rs).

        Dependency edges come from dependFunctions of the C-side AST (authoritative);
        block name = function name, and an SCC group's block name = "fn1@fn2"
        (members in the order given by sccs).
        """
        import json
        blockOf = {}
        for sccId, group in enumerate(sccs):
            blockName = "@".join(group)
            for fn in group:
                blockOf[fn] = blockName
        deps = {}
        for fn, obj in funcMap.items():
            deps[fn] = sorted(d for d in getattr(obj, "dependFunctions", [])
                              if d in funcMap and d != fn)
        manifest = {"block_of": blockOf, "deps": deps,
                    "topo_sccs": ["@".join(g) for g in sccs]}
        with open(os.path.join(outputDir, "split_manifest.json"), "w") as f:
            json.dump(manifest, f, indent=2, sort_keys=True)
        with open(os.path.join(outputDir, "contexted_structs.rs"), "w") as f:
            f.write(contextedStructs)

    def _runSccTopoTranslateLoop(self, funcMap, outputDir, translationResultManager=None):
        """SCC-aware topo loop for CF_STRUCT_FN_REPLAY.

        Single-function SCCs go through ``compileWithFeedback`` (existing behavior).
        Multi-function SCCs go through ``compileSccWithFeedback`` and produce one merged
        translation block for the whole group.

        Writes ``merged_funcs.rs`` (or ``.cpp``) into ``outputDir`` and falls back to a
        per-failure file on compile errors. After the loop drains, logs an error if any
        SCC was left unprocessed (i.e., topo invariant violated).
        """
        sccQueue, sccIncomingEdges, sccConsumers, sccs, funcToScc, contextedStructs = \
            self.createSccTopoQueue(funcMap)
        # Heal the snapshot at the source so the merged file and the
        # perf entry (assembled from it) inherit the fix, not just the
        # per-function compiles. See _healContextStructsBlob.
        contextedStructs = self._healContextStructsBlob(contextedStructs)

        previouslyTranslatedFunctions = ""

        targetFileName = "merged_funcs.rs" if self.dstLang == "Rust" else "merged_funcs.cpp"
        targetFileSuffix = "rs" if self.dstLang == "Rust" else "cpp"

        while sccQueue:
            sccId = sccQueue.popleft()
            sccGroup = sccs[sccId]

            if len(sccGroup) == 1:
                funcSym = sccGroup[0]
                if translationResultManager is not None:
                    translationResultManager.updateCurrentFuncNameAndStage(funcSym)
                funcDepsObj = funcMap[funcSym]
                funcDepsObj.previouslyTranslatedFunctions = previouslyTranslatedFunctions

                allSignature = ""
                for dependentFunction in funcDepsObj.dependFunctions:
                    if dependentFunction in funcMap:
                        allSignature = allSignature + funcMap[dependentFunction].targetLangSignature + "\n"
                funcDepsObj.previouslyTranslatedFunctionSignatures = allSignature

                (successFlag, translatedResult) = self.compileWithFeedback(
                    funcSym, funcDepsObj, contextedStructs, True,
                )

                manuallyFixed = False
                if not successFlag:
                    # Always dump the per-function failure file up front: the
                    # user (or downstream debugging) gets a complete compile
                    # unit on disk regardless of whether the interactive prompt
                    # is enabled or skipped.
                    failurePath = os.path.join(outputDir, f"{funcSym}.{targetFileSuffix}")
                    with open(failurePath, "w") as rs_file:
                        rs_file.write(self.cleanCode(contextedStructs + "\n" + previouslyTranslatedFunctions + "\n" + translatedResult))

                    if self.canPromptForInteractiveFix():
                        accepted, fixedResult = self._offerManualFunctionFix(
                            funcSym, failurePath,
                        )
                        if accepted:
                            translatedResult = fixedResult
                            successFlag = True
                            manuallyFixed = True

                # NOTE: find_target_cpp_function returns (name, node) whereas
                # find_target_rust_function returns name. fetch_*_signature_*
                # both expect a string and re-run the edit-distance search
                # themselves, so always hand them the canonical name string —
                # passing a tuple makes edit_distance compare chars to
                # objects, collapses to a "first function in source order"
                # answer, and silently mis-attributes signatures. (Same root
                # cause as the SCC-path bug fixed in
                # _extractSccFunctionSignatures.)
                if self.dstLang == "Rust":
                    realtargetLangFunctionName = find_target_rust_function(translatedResult.encode(), funcSym)
                else:
                    cppTarget = find_target_cpp_function(translatedResult.encode(), funcSym)
                    realtargetLangFunctionName = cppTarget[0] if isinstance(cppTarget, (list, tuple)) and cppTarget else None

                if realtargetLangFunctionName:
                    if self.dstLang == "Rust":
                        targetLangSignature = fetch_rust_function_signature_with_byte(translatedResult.encode(), realtargetLangFunctionName)
                    else:
                        targetLangSignature = fetch_cpp_function_signature_with_byte(translatedResult.encode(), realtargetLangFunctionName)
                    if targetLangSignature and targetLangSignature[0] == realtargetLangFunctionName:
                        funcDepsObj.targetLangSignature = targetLangSignature[1]

                if successFlag:
                    if manuallyFixed:
                        self.logger.warn("[Manual Fix] Successfully added %s to the merged file via hand-fix.", funcSym)
                    else:
                        self.logger.warn("Successfully added %s to the merged file.", funcSym)
                    # Split material (used by split_merged.py, DESIGN.md T13): each function's raw translation block.
                    # Don't slice it back out of merged_funcs.rs — this is where the block is produced, so why parse it again.
                    self._dumpSplitBlock(outputDir, funcSym, translatedResult)
                    outputPath = os.path.join(outputDir, targetFileName)
                    with open(outputPath, "w") as rs_file:
                        rs_file.write(previouslyTranslatedFunctions + "\n" + translatedResult)
                    previouslyTranslatedFunctions = previouslyTranslatedFunctions + "\n" + translatedResult
                else:
                    self.logger.warn("[COMPILE AND LINK] Failed to add %s to the merged file.", funcSym)
                    # The failure dump was already written above when successFlag
                    # first flipped to False; nothing more to do here.

                if translationResultManager is not None:
                    storedResult = self.cleanCode(translatedResult)
                    translationResultManager.updateFunctionTranslateResult(storedResult)
                    self._logStoredFunctionResult(funcSym, storedResult)

            else:
                self.logger.info(
                    "[SCC] Translating mutual-recursion group of %d functions: %s",
                    len(sccGroup),
                    list(sccGroup),
                )
                for funcName in sccGroup:
                    funcDepsObj = funcMap[funcName]
                    funcDepsObj.previouslyTranslatedFunctions = previouslyTranslatedFunctions
                    sigBuilder = ""
                    for dep in funcDepsObj.dependFunctions:
                        if dep in funcMap and dep not in sccGroup:
                            sigBuilder = sigBuilder + funcMap[dep].targetLangSignature + "\n"
                    funcDepsObj.previouslyTranslatedFunctionSignatures = sigBuilder

                if translationResultManager is not None:
                    translationResultManager.updateCurrentFuncNameAndStage(sccGroup[0])

                (successFlag, translatedResult, sccLabel) = self.compileSccWithFeedback(
                    sccGroup, funcMap, contextedStructs, previouslyTranslatedFunctions,
                )

                manuallyFixedScc = False
                if not successFlag:
                    failurePath = os.path.join(outputDir, f"{sccLabel}.{targetFileSuffix}")
                    with open(failurePath, "w") as rs_file:
                        rs_file.write(self.cleanCode(contextedStructs + "\n" + previouslyTranslatedFunctions + "\n" + translatedResult))

                    if self.canPromptForInteractiveFix():
                        accepted, fixedResult = self._offerManualSccFix(
                            sccGroup, failurePath,
                        )
                        if accepted:
                            translatedResult = fixedResult
                            successFlag = True
                            manuallyFixedScc = True

                signatures, missing = self._extractSccFunctionSignatures(translatedResult, sccGroup)
                for funcName in sccGroup:
                    funcMap[funcName].targetLangSignature = signatures[funcName]
                if missing:
                    self.logger.warning(
                        "[SCC] Could not extract signatures for %s in group %s",
                        missing,
                        list(sccGroup),
                    )

                if successFlag:
                    if manuallyFixedScc:
                        self.logger.warn(
                            "[Manual Fix] Successfully added SCC group [%s] to the merged file via hand-fix.",
                            ", ".join(sccGroup),
                        )
                    else:
                        self.logger.warn(
                            "Successfully added SCC group [%s] to the merged file.",
                            ", ".join(sccGroup),
                        )
                    # An SCC group is written as a single block — the members are mutually recursive, so splitting them apart would necessarily leave definitions missing
                    self._dumpSplitBlock(outputDir, "@".join(sccGroup), translatedResult)
                    outputPath = os.path.join(outputDir, targetFileName)
                    with open(outputPath, "w") as rs_file:
                        rs_file.write(previouslyTranslatedFunctions + "\n" + translatedResult)
                    previouslyTranslatedFunctions = previouslyTranslatedFunctions + "\n" + translatedResult
                else:
                    self.logger.warn(
                        "[COMPILE AND LINK] Failed to add SCC group [%s] to the merged file.",
                        ", ".join(sccGroup),
                    )
                    # The failure dump was already written above when successFlag
                    # first flipped to False; nothing more to do here.

                if translationResultManager is not None:
                    storedResult = self.cleanCode(translatedResult)
                    perFunction = self._splitSccTranslatedResult(storedResult, sccGroup)
                    for funcName in sccGroup:
                        translationResultManager.updateCurrentFuncNameAndStage(funcName)
                        translationResultManager.updateFunctionTranslateResult(perFunction[funcName])
                        self._logStoredFunctionResult(funcName, perFunction[funcName])

            for consumerSccId in sccConsumers[sccId]:
                sccIncomingEdges[consumerSccId] -= 1
                if sccIncomingEdges[consumerSccId] == 0:
                    sccQueue.append(consumerSccId)

        leftover = [sid for sid, count in sccIncomingEdges.items() if count > 0]
        if leftover:
            leftoverFuncs = [func for sid in leftover for func in sccs[sid]]
            self.logger.error(
                "[SCC topo] Loop ended with %d unprocessed SCC(s) covering %d function(s); "
                "this indicates a bug in SCC detection or the dependency graph. Functions: %s",
                len(leftover),
                len(leftoverFuncs),
                leftoverFuncs,
            )

        translatedResult = contextedStructs + "\n" + previouslyTranslatedFunctions
        outputPath = os.path.join(outputDir, targetFileName)
        with open(outputPath, "w") as rs_file:
            rs_file.write(self.cleanCode(translatedResult))

        # Split material, part two: the dependency graph (from the C-side AST, authoritative) + type header.
        # split_merged.py uses it to compute dependency closures; SCC block names contain "@" and the whole group is expanded when taking the closure.
        self._dumpSplitManifest(outputDir, funcMap, sccs, funcToScc, contextedStructs)

        if self.translatorMode == TranslatorModes.CF_STRUCT_FN_REPLAY:
            self.runMergedOutputChecksForOutput(outputPath, "struct-fn-replay")

