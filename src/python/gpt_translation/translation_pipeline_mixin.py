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
from gpt_translation.config import (
    COMPILATION_RETRIES,
    MAX_THREADS,
    PERF_DEGRADE_THRESHOLD_PCT,
    PERF_DEGRADE_THRESHOLD_PCT_PER_STAGE,
    STRUCT_RETRIES,
    Stage,
    TranslatorModes,
)
from gpt_translation.prompt_hints import (
    GOTO_BYPASS_INIT_HINT,
    STAGE_3_TAGGED_USAGE_HINT,
    STAGE_10_FILE_IO_HINT,
    STAGE_10_GLOBAL_OWNERSHIP_HINT,
    STAGE_10_LIFETIME_SELF_CHECK_HINT,
    STAGE_10_MECHANICAL_MAPPING_HINT,
)

# Detects `goto` keyword in C/C++ source. Uses word boundary to avoid
# matching identifiers like `gotos_count`. Used by the on-demand
# injection of GOTO_BYPASS_INIT_HINT — see _gotoBypassHintIfNeeded.
_GOTO_RE = re.compile(r"\bgoto\b")

# Detects any C++ borrowed-view type in struct field declarations.
# `std::string_view`, `std::basic_string_view<...>`, `std::span<...>` —
# all translate to Rust borrowed forms (`&str` / `&[T]`) that force a
# lifetime parameter on the enclosing struct. Used by the on-demand
# injection of STAGE_10_LIFETIME_SELF_CHECK_HINT — see
# _stage10LifetimeSelfCheckHintIfNeeded.
_BORROWED_VIEW_RE = re.compile(r"\b(?:basic_)?string_view\b|\bstd::span\b")

# Detects stdio File I/O in C++ source: a `FILE` typename used as
# a pointer / reference (parameter, return type, local) OR any of the
# C stdio entry points the model would translate 1:1 to `libc::*`. Used
# by the on-demand injection of STAGE_10_FILE_IO_HINT — see
# _stage10FileIoHintIfNeeded.
_FILE_IO_RE = re.compile(
    r"\bFILE\s*[*&]"
    r"|\bf(?:open|read|write|close|seek|tell|flush|eof|error|gets|puts|scanf|printf)\b"
)


class TranslationPipelineMixin:

    STAGE_STATE_FILENAME = "stage_state.json"

    def _isStagedMode(self):
        """True for any mode that runs the per-stage NEW_MODE pipeline (full,
        single-stage, merged-views, or resume). Used to gate prompt formatting
        and stageCheck logic that should fire identically in all of them."""
        return self.translatorMode in (
            TranslatorModes.NEW_MODE,
            TranslatorModes.NEW_MODE_SINGLE_STAGE,
            TranslatorModes.NEW_MODE_MERGED_VIEWS,
            TranslatorModes.NEW_MODE_RESUME,
        )

    def _stagePromptText(self, stage):
        """The instruction text injected for ``stage``. Normally this is
        ``stage.value`` (the Stage enum's prompt); ``self.stagePromptOverrides``
        is a general-purpose hook for installing a per-stage override."""
        if stage is None:
            return ""
        overrides = getattr(self, "stagePromptOverrides", None) or {}
        return overrides.get(stage, stage.value)

    def _gotoBypassHintIfNeeded(self, stage, sourceText):
        """Return the C++ goto-bypass-init hint when it actually applies:
        output is C++ (Stage_1..Stage_9, NOT Stage_10 / Rust) AND the
        source contains a `goto` keyword. Empty string otherwise.

        The rule is ~50 lines / ~2500 chars of system-prompt-grade
        guidance; injecting it on every LLM call wastes tokens when the
        codebase doesn't use goto. Function bodies are the only place
        the pattern can appear (typedefs / struct definitions don't
        carry control flow), so this helper is called from the function-
        translation prompt assembly path only.
        """
        if stage is None or stage == Stage.Stage_10:
            return ""
        if not sourceText or not _GOTO_RE.search(sourceText):
            return ""
        return GOTO_BYPASS_INIT_HINT

    def _stage10HasMutableGlobals(self):
        """True iff this codebase has any file-scope `static` declaration
        the extractor registered as `TypeKind.STATIC` in the type
        registry. Cached on first call — the type registry is populated
        at extraction (before any stage), so the answer is stable for
        the lifetime of this Translator instance.
        """
        cached = getattr(self, "_stage10HasGlobalsCache", None)
        if cached is not None:
            return cached
        registry = getattr(self, "typeRegistry", None)
        has = False
        if registry is not None:
            for key in registry.all_keys():
                if key.kind == TypeKind.STATIC:
                    has = True
                    break
        self._stage10HasGlobalsCache = has
        return has

    def _stage10GlobalOwnershipHintIfNeeded(self, stage):
        """Return the Stage_10 mutable-global ownership hint when the
        codebase has any file-scope `static` (per the type registry).
        Empty string otherwise.

        Gating prevents the ~25 lines / ~1.4K chars of hint from being
        sent on the 6 / 8 known codebases that have no globals, and —
        more importantly — keeps the section's "owning field is
        CORRECT" example from over-generalising to non-global structs
        in codebases that don't need it.
        """
        if stage != Stage.Stage_10:
            return ""
        if not self._stage10HasMutableGlobals():
            return ""
        return STAGE_10_GLOBAL_OWNERSHIP_HINT

    def _stage10HasBorrowedStructFields(self):
        """True iff any struct (or typedef) in the type registry holds a
        C++ borrowed-view field — `std::string_view`,
        `std::basic_string_view<...>`, `std::span<...>` — that translates
        to a Rust borrowed form (`&str` / `&[T]`) and thus forces a
        lifetime parameter on the struct. Cached on first call (the
        type registry is stable by Stage_10).

        Used to decide whether STAGE_10_LIFETIME_SELF_CHECK_HINT must
        be injected: without any such struct, the model never writes
        `<'a>` and can't hit the single-lifetime trap.
        """
        cached = getattr(self, "_stage10HasBorrowedFieldsCache", None)
        if cached is not None:
            return cached
        registry = getattr(self, "typeRegistry", None)
        has = False
        if registry is not None:
            for node in registry.all_nodes():
                cCode = getattr(node, "cCode", None)
                if cCode and _BORROWED_VIEW_RE.search(cCode):
                    has = True
                    break
        self._stage10HasBorrowedFieldsCache = has
        return has

    def _stage10LifetimeSelfCheckHintIfNeeded(self, stage):
        """Return the Stage_10 lifetime self-check hint when at least
        one struct holds a borrowed-view field. Empty string otherwise.

        Gating saves ~6 lines / ~400 chars per LLM call on codebases
        whose structs are purely owning types (libcsv, libbmp_*, etc.).
        On view-heavy codebases (url.h has 69 string_view fields), the
        rule still ships in full.
        """
        if stage != Stage.Stage_10:
            return ""
        if not self._stage10HasBorrowedStructFields():
            return ""
        return STAGE_10_LIFETIME_SELF_CHECK_HINT

    def _stage10FileIoHintIfNeeded(self, stage, sourceText):
        """Return the Stage_10 stdio→std::fs hint when ``sourceText``
        actually contains File I/O (`FILE *` / `FILE &` parameters or
        any `f{open,read,write,close,seek,...}` call). Empty otherwise.

        Per-prompt detection (not codebase-cached) because the input is
        the C++ already assembled for THIS SCC group / function — the
        regex scan is O(len) and runs once per Stage_10 LLM call. The
        SCC-level assembly means a function that takes only a `FILE *`
        parameter still triggers (its body's `fread(..., img_file)`
        matches), so caller and callee both see the rule and pick
        mutually-consistent signatures (`&mut impl Read` etc.).

        Skipped on the type-batch prompt site: struct/typedef definitions
        rarely embed stdio handles, and pre-emptively appending a 10-line
        I/O rule to every type batch would be pure overhead.
        """
        if stage != Stage.Stage_10:
            return ""
        if not sourceText or not _FILE_IO_RE.search(sourceText):
            return ""
        return STAGE_10_FILE_IO_HINT

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

    def _dumpStageState(self, stageDir, stage, funcMap):
        """Snapshot the stage-varying state at the END of ``stage`` so a later
        ``new-mode-single-stage`` run can resume immediately at stage+1.

        What we write captures the post-``updateFuncMap`` snapshot:
          * ``type_code`` per type (== ``TypeNode.cCode`` after this stage's
            ``updateFuncMap``, which equals ``rustCode`` for the same node)
          * ``function_bodies`` per function (== ``funcMap[name].funcCodeLines``
            after ``updateFuncMap``)
          * ``stage`` and ``dstLang`` for sanity checks at load time.

        Static-analysis state (type kinds, dependency graph, RICH_STRUCT
        markers, funcMap.dependFunctions) is intentionally NOT serialised; it
        is recomputed deterministically from the C source on every run.
        """
        import json
        if not stageDir:
            return

        state = {
            "stage": stage.name if stage is not None else None,
            "dstLang": self.dstLang,
            "type_code": {},
            "function_bodies": {},
        }

        for typeKey in FunctionAndDependencies.typeRegistry.sorted_keys():
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None:
                continue
            cCode = typeNode.cCode if isinstance(typeNode.cCode, str) else self.stringifyCodeBlock(typeNode.cCode)
            state["type_code"][typeKey.storage_key()] = cCode or ""

        for funcName, deps in funcMap.items():
            state["function_bodies"][funcName] = deps.funcCodeLines or ""

        os.makedirs(stageDir, exist_ok=True)
        statePath = os.path.join(stageDir, self.STAGE_STATE_FILENAME)
        with open(statePath, "w") as f:
            json.dump(state, f, indent=2)
        self.logger.info("[stage-state] dumped %d types and %d functions to %s",
                         len(state["type_code"]), len(state["function_bodies"]), statePath)
        return statePath

    def _loadStageState(self, stateJsonPath, funcMap):
        """Restore the post-``updateFuncMap`` snapshot of a previous stage so
        the next stage can run as if the prior stage had just completed.

        Mirrors the field mutations ``Translator.updateFuncMap`` performs:
          - ``TypeNode.cCode`` and ``TypeNode.rustCode`` set to ``type_code[...]``
          - ``funcMap[name].funcCodeLines`` set to ``function_bodies[name]``
          - ``funcMap[name].typeDeclDefCodeLines`` cleared to ""
          - ``funcMap[name].targetLangSignature`` re-extracted from body via
            tree-sitter (deterministic; failure modes match NEW_MODE)
        """
        import json
        from type_registry import TypeKind, TypeNodeKey

        with open(stateJsonPath, "r") as f:
            state = json.load(f)

        recordedStage = state.get("stage")
        recordedDstLang = state.get("dstLang")
        self.logger.info("[stage-state] loading checkpoint stage=%s dstLang=%s from %s",
                         recordedStage, recordedDstLang, stateJsonPath)

        loadedTypes = 0
        for storageKey, cCode in (state.get("type_code") or {}).items():
            if ":" not in storageKey:
                continue
            kindStr, name = storageKey.split(":", 1)
            try:
                kind = TypeKind(kindStr)
            except ValueError:
                self.logger.warning("[stage-state] unknown type kind %s for %s", kindStr, name)
                continue
            typeKey = TypeNodeKey(kind=kind, name=name)
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None:
                # Static analysis didn't surface this key locally; nothing to
                # write into. Skip rather than error - missing types are
                # harmless when they're not referenced by the target stage.
                continue
            typeNode.cCode = cCode
            typeNode.rustCode = cCode
            loadedTypes += 1

        loadedFuncs = 0
        for funcName, body in (state.get("function_bodies") or {}).items():
            if funcName not in funcMap:
                continue
            funcMap[funcName].funcCodeLines = body
            funcMap[funcName].typeDeclDefCodeLines = ""
            funcMap[funcName].targetLangSignature = self._extractSignatureFromBody(body, funcName)
            loadedFuncs += 1

        self.logger.info("[stage-state] restored %d types and %d functions",
                         loadedTypes, loadedFuncs)
        return recordedStage, recordedDstLang

    def _extractSignatureFromBody(self, body, funcName):
        """Re-derive a function's ``targetLangSignature`` from its body using
        the same tree-sitter helpers NEW_MODE uses online. Empty string when
        extraction fails (matches NEW_MODE's behavior on parse failure).
        """
        if not body:
            return ""
        try:
            encoded = body.encode()
        except Exception:
            return ""

        if self.dstLang == "Rust":
            try:
                target = find_target_rust_function(encoded, funcName)
            except Exception:
                target = None
            if not target:
                return ""
            try:
                sig = fetch_rust_function_signature_with_byte(encoded, target)
            except Exception:
                sig = None
            if sig and sig[0] == target:
                return sig[1]
            return ""
        else:
            try:
                target = find_target_cpp_function(encoded, funcName)
            except Exception:
                target = None
            if not target:
                return ""
            try:
                sig = fetch_cpp_function_signature_with_byte(encoded, target)
            except Exception:
                sig = None
            realName = target[0] if isinstance(target, (list, tuple)) and target else None
            if sig and realName and sig[0] == realName:
                return sig[1]
            return ""

    def _walkFunctionSpansFromSource(self, srcBytes, isRust):
        """Walk every function_definition (C++) or function_item (Rust) in
        ``srcBytes`` and return ``{name: (start_byte, end_byte)}``.

        Exact-name lookup table for ``_reloadFunctionsFromDisk``. Unlike the
        edit-distance ``find_target_cpp_function`` / ``find_target_rust_function``,
        this returns *every* function so the caller can detect a missing name
        instead of silently substituting the nearest neighbour. Duplicate names
        keep the later span (the implementation following any forward decl).
        """
        try:
            parser = Parser(RUST if isRust else CPP)
        except NameError as e:
            raise ImportError(
                "tree_sitter parsers are required for --resume-reload-functions; "
                f"fetchTargetFunction did not initialise ({e})."
            )
        tree = parser.parse(srcBytes)
        root = tree.root_node

        spans = {}

        def visit(node):
            if isRust and node.type == "function_item":
                nameNode = node.child_by_field_name("name")
                if nameNode is not None:
                    fname = srcBytes[nameNode.start_byte:nameNode.end_byte].decode(
                        "utf-8", errors="replace"
                    )
                    spans[fname] = (node.start_byte, node.end_byte)
            elif (not isRust) and node.type in (
                "function_definition",
                "constructor_or_destructor_definition",
            ):
                decl = node.child_by_field_name("declarator")
                if decl is not None:
                    identNode = find_identifier(decl)
                    if identNode is not None:
                        fname = srcBytes[identNode.start_byte:identNode.end_byte].decode(
                            "utf-8", errors="replace"
                        )
                        spans[fname] = (node.start_byte, node.end_byte)
            for c in node.children:
                visit(c)

        visit(root)
        return spans

    def _reloadFunctionsFromDisk(self, funcMap, priorStateDir, functionNames,
                                 recordedDstLang=None):
        """Override ``funcMap[name].funcCodeLines`` for each name in
        ``functionNames`` using the function body found in
        ``<priorStateDir>/merged_funcs.{cpp,rs}``.

        Use when the user has hand-fixed a function in the prior stage's merged
        file and wants the fix to carry into the resumed stages.
        ``stage_state.json`` captures the in-memory funcMap, so on-disk edits
        made between the prior run and a resume invocation are otherwise lost.

        Exact-name match — a requested name that does not appear in the file
        raises RuntimeError so a typo surfaces immediately instead of silently
        loading a sibling function's body.

        Returns the number of functions overridden.
        """
        if not functionNames:
            return 0

        # Pick the extension from the prior stage's recorded dstLang (falls
        # back to whichever file exists). Stages 1-9 emit C++, Stage_10 emits
        # Rust; the prior stage being resumed-from determines this.
        dstLang = (recordedDstLang or self.dstLang or "C++").strip()
        primaryName = "merged_funcs.rs" if dstLang.lower() == "rust" else "merged_funcs.cpp"
        fallbackName = "merged_funcs.cpp" if primaryName.endswith(".rs") else "merged_funcs.rs"

        primaryPath = os.path.join(priorStateDir, primaryName)
        fallbackPath = os.path.join(priorStateDir, fallbackName)

        if os.path.isfile(primaryPath):
            sourcePath = primaryPath
        elif os.path.isfile(fallbackPath):
            sourcePath = fallbackPath
            self.logger.warning(
                "[resume-reload] %s missing; falling back to %s",
                primaryPath, fallbackPath,
            )
        else:
            raise RuntimeError(
                f"[resume-reload] neither {primaryPath} nor {fallbackPath} "
                "exists; cannot reload function bodies from disk."
            )

        with open(sourcePath, "rb") as f:
            srcBytes = f.read()
        if not srcBytes:
            raise RuntimeError(f"[resume-reload] {sourcePath} is empty")

        isRust = sourcePath.endswith(".rs")
        spans = self._walkFunctionSpansFromSource(srcBytes, isRust)

        notInFuncMap = [n for n in functionNames if n and n not in funcMap]
        notInFile = [n for n in functionNames if n and n in funcMap and n not in spans]
        if notInFile:
            raise RuntimeError(
                f"[resume-reload] could not find these functions in {sourcePath}: "
                f"{notInFile}. Function names in {sourcePath}: "
                f"{sorted(spans.keys())[:30]}{' ...' if len(spans) > 30 else ''}."
            )
        if notInFuncMap:
            raise RuntimeError(
                f"[resume-reload] these names are not in funcMap (filtered upstream "
                f"or misspelled?): {notInFuncMap}"
            )

        overridden = 0
        for funcName in functionNames:
            if not funcName:
                continue
            startByte, endByte = spans[funcName]
            body = srcBytes[startByte:endByte].decode("utf-8", errors="replace")
            funcMap[funcName].funcCodeLines = body
            funcMap[funcName].typeDeclDefCodeLines = ""
            funcMap[funcName].targetLangSignature = self._extractSignatureFromBody(body, funcName)
            overridden += 1
            self.logger.info(
                "[resume-reload] overrode %s from %s (%d bytes)",
                funcName, sourcePath, endByte - startByte,
            )

        return overridden

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

    def stageCheck(self, stage=None, *, funcSrc="", contextStructs="", funcSignatures="",
                   usageExamples="", proposedChange=None):
        """Judge whether the proposed stage transformation should be applied.

        Slim, judgment-focused prompt. Caller MUST pass structured kwargs:

          * ``funcSrc``         — the code being judged (function body or
                                  type definitions)
          * ``contextStructs``  — translated dependency types, read-only
          * ``funcSignatures``  — translated dependency function signatures,
                                  read-only
          * ``usageExamples``   — formatted block from
                                  ``_formatTypeUsageExamples`` describing
                                  how dependency types are used by
                                  callers. Same string the translation
                                  prompt sees, so judge and translator
                                  agree on the evidence.

        Pre-fix this method accepted a single ``proposedChange`` blob that
        was the ENTIRE translation prompt (stage intent + funcSrc + structs +
        sigs + main-function disclaimers + "Final result code" formatting
        directives). That blob then got wrapped again with a judge-side
        template, leaving the model with:
          * the stage intent duplicated twice (judge template + translation
            prompt body),
          * ~50 lines of translation directives ("Only apply edits ...",
            "If the source does not have a main function ...", "For the
            final code result ...") that have no bearing on judgment,
          * ~88% template bloat and observed instruction confusion (sonnet
            returning the code itself instead of a yes/no answer).

        The slim prompt presents ONLY what a judge needs.

        ``proposedChange`` is kept as a legacy positional-name parameter that
        older callers / tests still pass. When provided we treat it as the
        funcSrc body.
        """
        # CLI escape hatch: --skip-stage-check forces every gate to approve.
        # Use cases: cheaper debug runs (no stage_check tokens), or models that
        # cannot reliably produce one-word yes/no answers. We do NOT call
        # recordStageCheckResult here so the stagecheck_summary.txt doesn't get
        # filled with fake "Yes" tallies that obscure the fact the gate was off.
        if getattr(self, "skipStageCheck", False):
            return True
        # Auto-approve stages whose transformations are either mechanical
        # (Stage_2 int→bool, Stage_10 C++→Rust transliteration) or whose
        # judge has been observed to false-negative on (Stage_3 vector,
        # Stage_9 raw-pointer ownership lift). The remaining stages —
        # std::string + std::string_view (Stage_4), list, map, optional —
        # still require judge approval.
        if stage in (Stage.Stage_1, Stage.Stage_2, Stage.Stage_3,
                     Stage.Stage_9, Stage.Stage_10):
            return True

        # Back-compat: if caller still uses the old single-blob API, treat
        # it as the funcSrc body. Newer callers pass structured kwargs.
        if proposedChange is not None and not funcSrc:
            funcSrc = proposedChange

        if not funcSrc and not contextStructs and not funcSignatures:
            if stage is not None:
                self.recordStageCheckResult(stage, False)
            return False

        stageIntent = self.fetchStageCheckPrompt(stage)

        request = (
            "You are judging a proposed C++ code transformation. "
            "Reply with exactly one word: yes or no.\n\n"
            "Question: Will applying the step below make the code more idiomatic?\n\n"
            "Step intent:\n"
            f"{stageIntent}\n\n"
            "Code under review:\n"
            f"{funcSrc}\n"
        )
        if contextStructs and contextStructs.strip():
            request += (
                "\nDependency types (read-only context, not part of the code under review):\n"
                f"{contextStructs}\n"
            )
        if funcSignatures and funcSignatures.strip():
            request += (
                "\nDependency function signatures (read-only context):\n"
                f"{funcSignatures}\n"
            )
        if usageExamples and usageExamples.strip():
            # Show the judge the same per-field usage evidence the
            # translation prompt sees. Critical for catching cases where
            # the proposed type change LOOKS idiomatic in isolation but
            # is incompatible with how the field is actually accessed
            # (e.g. Stage_4's char* → std::string while call sites still
            # do `field = (char*)malloc(...)` and `free(field)`).
            request += (
                "\nHow these types are actually used by callers (read-only "
                "context; the proposed change must remain compatible with "
                "these access patterns):\n"
                f"{usageExamples}\n"
            )
        with _callKindContext(self, "stage_check"):
            (_, response) = self.send("stage_check", request)
        # Prefer the RAW model text (pre-extractTargetCode) for yes/no
        # detection. extractTargetCode pulls out only the contents of
        # ```...``` fences, dropping any prose answer outside the fence.
        # Sonnet was observed replying in the form:
        #   "Final result code is: ```cpp <code> ``` no"
        # where the actual decision "no" sits outside the code block and
        # was being silently stripped. Fall back to the extracted response
        # if the raw isn't available (e.g. tests stub send/getResponse).
        rawResponse = getattr(self, "lastRawResponse", None)
        decision = self.extractYesNoDecision(rawResponse) if rawResponse else None
        if decision is None:
            decision = self.extractYesNoDecision(response)
        if decision == "yes":
            if stage is not None:
                self.recordStageCheckResult(stage, True)
            return True
        if decision == "no":
            if stage is not None:
                self.recordStageCheckResult(stage, False)
            return False

        self.logger.info("stageCheck got non yes/no response: %s", response)
        if stage is not None:
            self.recordStageCheckResult(stage, False)
        return False

    def _typeStorageKey(self, typeNodeOrKey):
        typeKey = typeNodeOrKey.key if hasattr(typeNodeOrKey, "key") else typeNodeOrKey
        return typeKey.storage_key()

    def _logStoredTypeResult(self, node, stage=None):
        if node is None:
            return
        debugLog = getattr(self.logger, "debug", None)
        if not callable(debugLog):
            return
        storageKey = self._typeStorageKey(node)
        if stage is not None:
            debugLog("[type stored %s][%s]: %s", storageKey, stage, node.rustCode)
            return
        debugLog("[type stored %s]: %s", storageKey, node.rustCode)

    def _logStoredFunctionResult(self, funcName, translatedResult, stage=None):
        if not funcName:
            return
        debugLog = getattr(self.logger, "debug", None)
        if not callable(debugLog):
            return
        if stage is not None:
            debugLog("[function stored %s][%s]: %s", funcName, stage, translatedResult)
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
        # link error we saw on Stage_8 cjson_new ``parse_value``.
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
        in the merged output (Stage_8 of cjson_new ``parse_value``).

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

    def _stageScopeInstruction(self, stage=None):
        if stage == Stage.Stage_10:
            return ""
        base = (
            "Only apply edits directly required by this proposed step. "
            "When this step changes a type, also update directly affected function signatures, "
            "return types, parameter types, forward declarations, and call sites to use the "
            "idiomatic target-language type. Signature or parameter-type changes required to "
            "propagate the proposed ownership/type change through the call chain (for example, "
            "changing a callee's parameter from T& to std::unique_ptr<T> by value so that "
            "ownership flows in explicitly, and adding std::move at the call sites) ARE "
            "expected and must be applied in this step. "
            "Do not make unrelated refactors, formatting-only rewrites, renames, control-flow "
            "changes, or semantic changes beyond what the proposed type change (and its "
            "required propagation) requires. "
            "Preserve all code outside what the propagation requires.\n"
        )
        return base + self._stageExclusionsForOtherStages(stage)

    # Per-stage "what each later stage owns" map. The current stage MUST
    # leave these surfaces alone — they are pre-empted otherwise (the
    # classic case: Stage_1's "remove custom allocator" prompt + the
    # open-ended "translate to more idiomatic type" sentence below
    # leads the LLM to also convert `char*` to `std::string` because
    # the usage looks string-like, silently doing Stage_4's job and
    # leaving downstream stages with code that's half-transformed in
    # ways their own prompts can't predict).
    _STAGE_OWNERSHIP_NOTES = {
        Stage.Stage_1: (
            "removes the `internal_hooks` / `global_hooks` custom-allocator "
            "infrastructure and any struct fields / call-sites that route "
            "through it"
        ),
        Stage.Stage_2: (
            "converts boolean-valued integers to `bool`"
        ),
        Stage.Stage_3: (
            "converts array-shaped pointers / byte-buffer `char *` fields "
            "(e.g. write-cursor outputs of escape decoding, hash digests, "
            "or any pointer populated byte-by-byte) to `std::vector<T>` / "
            "`std::vector<unsigned char>`"
        ),
        Stage.Stage_4: (
            "converts TEXT `char *` to `std::string` when the name owns its "
            "bytes, and to `std::basic_string_view<char>` when it only views "
            "bytes owned by a longer-lived object (interior pointers into "
            "another field's buffer, read-only parameters) — the owner+view "
            "cluster is decided together in one pass; both the std::string "
            "owners and the string_view views are deliberate and must be "
            "preserved"
        ),
        Stage.Stage_5: (
            "converts list-shaped structures to `std::list<T>`"
        ),
        Stage.Stage_6: (
            "converts map-shaped structures to `std::unordered_map<K, V>`"
        ),
        Stage.Stage_7: (
            "wraps in `std::optional<T>` those variables (parameters, "
            "fields, locals) where null is a STRUCTURAL state the "
            "function's logic distinguishes from non-null — and collapses "
            "their null checks to `has_value()` / `value()`; pointers "
            "whose only null handling is a defensive top-of-function "
            "early-return guard stay as raw pointers and will be lifted "
            "to references (with the guard deleted) by Stage_9"
        ),
        Stage.Stage_9: (
            "lifts remaining raw pointers to a SINGLE object to "
            "references, values, or smart pointers (`T*` → `T&` / value "
            "/ `std::unique_ptr<T>` / `std::shared_ptr<T>`) based on "
            "ownership, deleting any leftover defensive top-of-function "
            "null guards on parameters that get lifted to references, "
            "and preserving any `std::optional<T>` wrapper Stage_7 added "
            "so structural nullability is not silently collapsed"
        ),
    }

    def _stageExclusionsForOtherStages(self, stage):
        """Enumerate the transformations OTHER stages own, split by whether
        they ran BEFORE or AFTER the current one.

        Two asymmetric rules:
          * Past stages ⇒ PRESERVE. Their results are already in the input
            code; the current step must never undo them, even when the
            current prompt's topic doesn't involve them. A field that is
            already ``std::string`` / ``std::vector`` / ``std::optional``
            / ``std::unique_ptr`` is a load-bearing decision; silently
            reverting it to a raw pointer or manual buffer is a regression.
          * Future stages ⇒ DEFER. Reserved for later passes; do not do
            their work here, even if it looks "while-you're-at-it"
            idiomatic.

        Previously a single ``STAGE-EXCLUSIVITY`` block listed ALL other
        stages without distinguishing past from future. That wording let
        the LLM cite a past stage as a reason to refuse legitimate work
        (e.g. at Stage_9, "I shouldn't preempt Stage_5's list conversion"
        even though Stage_5 had already run and chose not to). And it
        offered no explicit anti-revert guarantee for the past half, so
        Stages 5–8 consistently reverted Stage_4's ``std::string`` fields
        back to ``char *``.

        Stage_10 gets a different prompt path (a short type-correspondence
        hint, not the staged C++-flavoured PRESERVE/DEFER text), so it
        short-circuits here.
        """
        if stage is None or stage == Stage.Stage_10:
            return ""
        try:
            stageNum = int(stage.name.split("_", 1)[1])
        except (AttributeError, IndexError, ValueError):
            return ""

        # When --skip-stages omits a stage, its line is also omitted from
        # both the PRESERVE and DEFER lists — the LLM should never read
        # about a stage that won't actually run in this pipeline.
        skipped = getattr(self, "skippedStages", set()) or set()
        # A mode may rewrite what a stage "owns" via stageNoteOverrides so the
        # PRESERVE/DEFER text other stages read matches what actually ran.
        noteOverrides = getattr(self, "stageNoteOverrides", None) or {}
        pastEntries = []
        futureEntries = []
        for otherStage, action in self._STAGE_OWNERSHIP_NOTES.items():
            try:
                otherNum = int(otherStage.name.split("_", 1)[1])
            except (AttributeError, IndexError, ValueError):
                continue
            if otherNum == stageNum:
                continue
            if otherStage in skipped:
                continue
            action = noteOverrides.get(otherStage, action)
            line = f"  * {otherStage.name} {action}."
            if otherNum < stageNum:
                pastEntries.append(line)
            else:
                futureEntries.append(line)

        if not pastEntries and not futureEntries:
            return ""

        sections = []
        if pastEntries:
            sections.append(
                "\nALREADY-COMPLETED STAGES — these ran BEFORE this step. "
                "Their decisions are baked into the input code. PRESERVE them "
                "verbatim. If a field is already `std::string` / `std::vector` "
                "/ `std::optional` / `std::unique_ptr` / `std::shared_ptr` / "
                "`bool` / etc., that is a deliberate choice from the listed "
                "stage; do NOT silently change it back to a raw pointer, "
                "manual `malloc`/`free` buffer, `cJSON_bool`/`int` flag, "
                "null-checked `T*`, or any other pre-stage form, even when "
                "the current prompt's topic doesn't involve that field. "
                "This extends BEYOND types to the LOGIC around them: control "
                "flow, view-operation idioms, comparison expressions, "
                "helper-function signatures, and error-handling branches "
                "from prior stages also stay verbatim. The earlier stage "
                "that emitted that code had context the current step lacks "
                "— even when the form looks 'simplifiable', leave it.\n"
                + "\n".join(pastEntries) + "\n"
            )
        if futureEntries:
            sections.append(
                "\nUPCOMING STAGES — reserved for LATER passes. Do NOT do "
                "their work in this step, even when the example-usage block "
                "below makes the change look idiomatic or 'while-you're-at-"
                "it'. A later stage has more context than this one to make "
                "that call:\n"
                + "\n".join(futureEntries) + "\n"
            )

        return "".join(sections) + (
            "If a field's existing type is what THIS stage's intent wants "
            "(or is unrelated to this stage), keep it unchanged.\n"
        )

    # Stage_10 mechanical mapping hint: ``STAGE_10_MECHANICAL_MAPPING_HINT``
    # in ``prompt_hints``. Injected at THREE prompt sites — type-batch
    # (struct field declarations), SCC function-translate, compileWithFeedback.

    def _buildTypeBatchBasePrompt(self, batchNodes, stage=None):
        kinds = {node.kind for node in batchNodes}
        hasRichStruct = any(node.translation_mode == TranslationMode.RICH_STRUCT for node in batchNodes)
        if self._isStagedMode():
            if stage == Stage.Stage_1:
                prompt = "Translate the following C definitions to " + self.dstLang + " step by step. In this step, please only " + self._stagePromptText(stage) + "\n"
            elif stage == Stage.Stage_10:
                # Stage_10 receives the post-stage_9 C++ definitions (the
                # type registry's cCode field is overwritten at end of each
                # stage by updateFuncMap). Say "C++" not "C" so the model
                # treats the input as already-refined C++ to transliterate.
                prompt = "Translate the following C++ definitions to Rust.\n"
                prompt = prompt + STAGE_10_MECHANICAL_MAPPING_HINT
                prompt = prompt + self._stage10GlobalOwnershipHintIfNeeded(stage)
                prompt = prompt + self._stage10LifetimeSelfCheckHintIfNeeded(stage)
            else:
                prompt = "Modify the following " + self.dstLang + " definitions step by step. In this step, please only " + self._stagePromptText(stage) + "\n"
            prompt = prompt + self._stageScopeInstruction(stage)
            prompt = prompt + "Please add any necessary header files, include statements, imports, or use statements required for the translated code to compile.\n"
        else:
            prompt = "Please translate the following C definitions to " + self.dstLang + ".\n"
            prompt = prompt + "Please add any necessary header files, include statements, imports, or use statements required for the translated code to compile.\n"
        if kinds == {TypeKind.STATIC}:
            prompt = prompt + "The definitions are file-scope variable definitions.\n"
        elif kinds == {TypeKind.EXTERN}:
            prompt = prompt + "The definitions are file-scope external variable declarations.\n"
        elif kinds.issubset({TypeKind.STATIC, TypeKind.EXTERN}):
            prompt = prompt + "The definitions are file-scope variable declarations or definitions.\n"
        elif hasRichStruct and stage != Stage.Stage_10:
            # Stage_10 does NOT actually attach usage examples (see line where
            # `richNodes and stage != Stage.Stage_10` gates the attachment).
            # Promising examples we never deliver misleads the model into
            # "guess what's idiomatic" mode; the mechanical mapping hint
            # already covers what to do without per-field usage.
            #
            # The phrasing here is deliberately NOT "translate to a more
            # idiomatic type". The previous open-ended wording, combined
            # with the unscoped example-usage block, was getting Stage_1
            # to also do Stage_4's job (e.g. converting char* fields to
            # std::string because the usage looked string-like, even
            # though Stage_1's only mandate is to remove the custom
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

    def _buildTypeBatchPrompt(self, batchNodes, predecessorContext, stage=None, err="", lastTimeResult="",
                              perfRetryContext=None):
        request = self._buildTypeBatchBasePrompt(batchNodes, stage)

        # On perf retry, prepend the PERFORMANCE CONTEXT suffix so the model
        # sees the rejected rendering BEFORE the "definitions:" block, mirroring
        # the function-level prompt layout. The fence markers on each node's
        # cCode below give the model an unambiguous "this is the source" anchor.
        perfSuffix = self._buildPerfContextSuffixForTypes(batchNodes, perfRetryContext, stage)
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

        usageBlock = self._formatTypeUsageExamples(batchNodes, stage)
        if usageBlock:
            request = request + usageBlock
            # On-demand: only spell out the BYTE BUFFER tag rule to the
            # model when the usage block actually carries the tag literal.
            # Saves tokens on batches where the static-analysis classifier
            # produced nothing tagged.
            if stage == Stage.Stage_3 and _BYTE_BUFFER_TAG in usageBlock:
                request = request + STAGE_3_TAGGED_USAGE_HINT

        if err:
            request = request + "In the previous translation, I got an compile error \n" + err + "\n"
            request = request + "This is the previous translation result : \n" + lastTimeResult
        return request

    @staticmethod
    def _formatTypeUsageExamples(nodes, stage=None):
        """Render the "example usage:" block shown to both the translation
        prompt and the stage_check judge. Returns "" when there is nothing
        worth showing.

        Single source of truth: callers/translators and the yes/no judge
        used to disagree on whether usage was available — the type-batch
        prompt rendered it from ``node.usageList`` while ``stageCheck``
        rendered nothing at all. That asymmetry let cases like the
        Stage_4 ``char* → std::string`` slip past the judge (which saw
        only the type definitions) even though the actual translation
        prompt had usage evidence (``item->valuestring = (char*)output;``
        / ``free(item->valuestring)``) that would have flagged the
        conversion as unsafe. Routing both through this helper guarantees
        they see byte-identical evidence.

        Stage_10 (Rust) intentionally returns "" — the mechanical mapping
        hint covers what to do without per-field usage, and dangling
        promises of examples we don't deliver mislead the model into
        "guess what's idiomatic" mode (see _buildTypeBatchBasePrompt).
        """
        if stage == Stage.Stage_10:
            return ""
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

    def _translateDeterministicTypedefBatch(self, batchNodes, translationManager, stage=None):
        unresolvedNodes = []
        for node in batchNodes:
            node.rustCode = self.translateSimpleTypedefDefinition(node.cCode)
            if node.rustCode:
                self._logStoredTypeResult(node, stage)
                if stage:
                    translationManager.updateStructTranslateResultWithStructName(
                        self._typeStorageKey(node),
                        node.rustCode,
                    )
            else:
                unresolvedNodes.append(node)
        return unresolvedNodes

    def _translateTypedefBatch(self, batchNodes, predecessorContext, dependencyCodes, predecessorKeys, translationManager, stage=None):
        unresolvedNodes = self._translateDeterministicTypedefBatch(batchNodes, translationManager, stage)
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
            stage,
        )

    def _translateTypeBatchWithLlm(self, batchNodes, predecessorContext, dependencyCodes, dependencyKeys, translationManager, stage=None, perfRetryContext=None):
        trialCount = 0
        err = ""
        lastTimeResult = ""

        while True:
            request = self._buildTypeBatchPrompt(
                batchNodes, predecessorContext, stage, err, lastTimeResult,
                perfRetryContext=perfRetryContext,
            )
            reusePreviousResult = False
            if not err and self._isStagedMode():
                # Slim stage_check: pass only the type definitions being
                # judged + their predecessor types as context. Avoid stuffing
                # the entire translation prompt — see stageCheck docstring.
                #
                # usageExamples uses the SAME formatter the translation
                # prompt above already called, so the judge sees byte-
                # identical per-field evidence (no asymmetry between
                # "what we asked the translator to produce" and "what we
                # asked the judge to approve").
                typeDefsBlob = "\n\n".join(
                    self.stringifyCodeBlock(n.cCode) for n in batchNodes
                )
                if not self.stageCheck(
                    stage=stage,
                    funcSrc=typeDefsBlob,
                    contextStructs=predecessorContext,
                    usageExamples=self._formatTypeUsageExamples(batchNodes, stage),
                ):
                    reusePreviousResult = True

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
                    self._logStoredTypeResult(node, stage)
                    if self._isStagedMode():
                        translationManager.updateStructTranslateResultWithStructName(
                            self._typeStorageKey(node),
                            node.rustCode,
                        )

                if successFlag or trialCount > 5:
                    break
            else:
                for node in batchNodes:
                    self._logStoredTypeResult(node, stage)
                    if self._isStagedMode() and node.rustCode:
                        translationManager.updateStructTranslateResultWithStructName(
                            self._typeStorageKey(node),
                            node.rustCode,
                        )
                break

    def preTranslateComplexStructs(self, stage=None, perfRetryContext=None):
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
                                       TranslatorModes.COMPILATION_FEEDBACK,
                                       TranslatorModes.NEW_MODE,
                                       TranslatorModes.NEW_MODE_SINGLE_STAGE,
                                       TranslatorModes.NEW_MODE_MERGED_VIEWS,
                                       TranslatorModes.NEW_MODE_RESUME]:
            return

        translationManager = TranslationResultManager()
        if stage:
            translationManager.updateTranslationStage(stage)

        graph = self.getTypeDependencyGraph()
        for batchKeys in graph.topo_batches():
            batchNodes = [FunctionAndDependencies.getTypeNode(typeKey) for typeKey in batchKeys]
            batchNodes = [node for node in batchNodes if node is not None]
            # Fix B: drop types whose cCode is empty / comment-only — they
            # were removed by an earlier stage and have nothing left to
            # translate. Calling the LLM with an empty input section in the
            # type-batch prompt risks hallucinated content (observed: sonnet
            # emitted `pub struct internal_hooks { default_allocate, ... }`
            # from an empty input during Stage_10 perf retry, cascade-failing
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
                self._translateTypedefBatch(batchNodes, predecessorContext, dependencyCodes, predecessorKeys, translationManager, stage)
                continue

            if any(node.kind in (TypeKind.STRUCT, TypeKind.UNION, TypeKind.ENUM) for node in batchNodes):
                self._translateTypeBatchWithLlm(
                    batchNodes, predecessorContext, dependencyCodes, predecessorKeys,
                    translationManager, stage, perfRetryContext=perfRetryContext,
                )
                continue

            self._translateTypeBatchWithLlm(
                batchNodes, predecessorContext, dependencyCodes, predecessorKeys,
                translationManager, stage, perfRetryContext=perfRetryContext,
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

        Concrete case observed (cjson_new, Stage_1):
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
                        if self._isStagedMode():
                            translationManager.updateStructTranslateResultWithStructName(
                                storageKey, newCode
                            )
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
                if self._isStagedMode():
                    translationManager.updateStructTranslateResultWithStructName(
                        storageKey, ""
                    )
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

    def compileSccWithFeedback(self, sccGroup, funcMap, contextStructs, previouslyTranslatedFunctions, stage=None, perfRetryContext=None):
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

        if not self._isStagedMode():
            prompt = (
                sccPreamble
                + "Translate " + self.srcLang + " to " + self.dstLang
                + ". If the source code does not have a main function, please do not add a main function. "
                + "If the source code does not have a called function defined, please do NOT add a dummy definition. "
                + "Translate ONLY the provided functions.\n"
                + "Please use standard library functions if a C function has been implemented by the target standard library.\n"
                + 'For the final code result, please respond with "Final result code" is :\n'
            )
        else:
            if stage == Stage.Stage_1:
                prompt = sccPreamble + "Transpile " + self.srcLang + " to " + self.dstLang + " step by step. In this step, please only " + self._stagePromptText(stage) + "\n"
            elif stage == Stage.Stage_10:
                # Stage_10 input is the post-stage_9 C++ function body
                # (updateFuncMap copies rustCode -> funcCodeLines at end of
                # each stage). Tell the model it is reading C++, so it does
                # not "re-decide" what idiomatic Rust looks like, and inject
                # the mechanical mapping rules for function bodies.
                prompt = sccPreamble + "Translate C++ to Rust. Translate ONLY the provided functions; do not add a main function or dummy callees outside the group.\n"
                prompt = prompt + STAGE_10_MECHANICAL_MAPPING_HINT
                prompt = prompt + self._stage10GlobalOwnershipHintIfNeeded(stage)
                prompt = prompt + self._stage10LifetimeSelfCheckHintIfNeeded(stage)
                prompt = prompt + self._stage10FileIoHintIfNeeded(stage, funcSrc)
            else:
                prompt = sccPreamble + "Modify " + self.dstLang + " code step by step. In this step, please only " + self._stagePromptText(stage) + "\n"
            prompt = prompt + self._stageScopeInstruction(stage)
            prompt = prompt + (
                ". If the source code does not have a main function, please do not add a main function. "
                "If the source code does not have a called function defined, please do NOT add a dummy definition. "
                "Translate ONLY the provided functions and make sure to include proper header files.\n"
                'For the final code result, please respond with "Final result code" is :\n'
            )

        previouslyTranslatedPrompt = ""
        if previouslyTranslatedFunctions:
            previouslyTranslatedPrompt = (
                f"For the dependency functions, I will provide the function signature of {self.dstLang} "
                "included in /*// and //*/. These dependency functions are available for reference. "
                "Call them only when they are still required by the generated code; if the current stage "
                "has made a dependency unnecessary, do not call it. \n"
            )

        if perfRetryContext is not None:
            prompt = prompt + self._buildPerfContextSuffix(
                perfRetryContext.get("this_attempt_function", ""),
                perfRetryContext.get("degrade_pct", 0.0),
                stage=stage,
            )

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
            stage,
            funcSrc,
            perfRetryContext=perfRetryContext,
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

    def compileWithFeedback(self, funcName, funcDepsObj, contextStructs, dependencyTranslate=False, stage=None,
                            perfRetryContext=None):
        if not self._isStagedMode():
            prompt = "Translate " + self.srcLang + " to " + self.dstLang + ". If the C source code does not have a main function, please do not add a main function. If the C source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function." + "\n Please use standard library function if a C function has been implemented by Rust standard library" + "\n For the final code result, please response with \"Final result code\" is : \n"
        else:
            if stage == Stage.Stage_1:
                prompt = "Transpile " + self.srcLang + " to " + self.dstLang + " step by step. In this step, please only " + self._stagePromptText(stage) + "\n"
            elif stage == Stage.Stage_10:
                # Same C++ -> Rust transliteration rules as the SCC path;
                # the input is already-refined C++ from stage 9.
                prompt = "Translate C++ to Rust. If the C++ source code does not have a main function, please do not add a main function. If the C++ source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function.\n"
                prompt = prompt + STAGE_10_MECHANICAL_MAPPING_HINT
                prompt = prompt + self._stage10GlobalOwnershipHintIfNeeded(stage)
                prompt = prompt + self._stage10LifetimeSelfCheckHintIfNeeded(stage)
                prompt = prompt + self._stage10FileIoHintIfNeeded(stage, funcDepsObj.funcCodeLines)
            else:
                prompt = "Modify " + self.dstLang + " code step by step. In this step, please only " + self._stagePromptText(stage) + "\n"
            prompt = prompt + self._stageScopeInstruction(stage)
            otherInformation = ". If the source code does not have a main function, please do not add a main function. If the source code does not have a called function defined, please do NOT add a dummy definition. Translate ONLY the provided function and make sure including proper header files. \n" + "\n For the final code result, please response with \"Final result code\" is : "
            prompt = prompt + otherInformation
        if perfRetryContext is not None:
            prompt = prompt + self._buildPerfContextSuffix(
                perfRetryContext.get("this_attempt_function", ""),
                perfRetryContext.get("degrade_pct", 0.0),
                stage=stage,
            )
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
                                                                       stage,
                                                                       funcSrc,
                                                                       perfRetryContext=perfRetryContext)
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
                                      stage,
                                      funcSrc,
                                      perfRetryContext=None):
        # When this is a perf retry, fence the actual source code with explicit
        # SOURCE-TO-TRANSFORM markers. Without these, the prompt has two C++
        # snippets back-to-back — the rejected attempt in PERFORMANCE CONTEXT
        # and the prior-stage source as funcSrc — and the model has been
        # observed to apply the stage transformation to the wrong one.
        if perfRetryContext is not None:
            funcSrc = (
                "\n// === BEGIN SOURCE TO TRANSFORM (prior-stage output; this is your input) ===\n"
                + funcSrc
                + "\n// === END SOURCE TO TRANSFORM ===\n"
            )
        # On-demand: only spell out the C++ goto/init-bypass rule when the
        # source actually contains `goto` AND we're outputting C++ (Rust
        # has no goto, so Stage_10 never needs it). Most modern codebases
        # don't use goto, so this saves ~2.5K chars per LLM call in the
        # common case.
        gotoHint = self._gotoBypassHintIfNeeded(stage, funcSrc)
        request = prompt + gotoHint + "\n" + funcSrc + "\n"
        if len(translatedStructs) > 0:
            request = request + "\n" + translatedStructPrompt + "\n" + translatedStructs + "\n"

        request = request + "\n" + translatedFuncPrompt + "/* \n" + translatedFuncsSignatures + "*/\n"

        if self._isStagedMode():
            # Slim stage_check: feed only the structured pieces a judge needs
            # (the function source + dependency types + dependency function
            # signatures) — NOT the full translation request, which carries
            # ~50 lines of translation-side directives that don't belong in
            # a yes/no judgment context.
            #
            # usageExamples mirrors what the type-batch translation prompt
            # already shows for the SAME dependency types: rendered via the
            # shared _formatTypeUsageExamples helper so the judge and the
            # translator never disagree on the evidence available.
            dependencyNodes = [
                node for node in (
                    FunctionAndDependencies.getTypeNode(k) for k in dependencyKeys
                ) if node is not None
            ]
            if not self.stageCheck(
                stage=stage,
                funcSrc=funcSrc,
                contextStructs=translatedStructs,
                funcSignatures=translatedFuncsSignatures,
                usageExamples=self._formatTypeUsageExamples(dependencyNodes, stage),
            ):
                checkResult = self.cleanCode(contextStructs + "\n" + translatedFuncs + "\n" + funcSrc)
                (successFlag, err) = self.compile(checkResult)
                if successFlag:
                    return (True, funcSrc)
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
        # (observed on Stage_10's jrsl_center_string in run 16-48-26:
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
        # Stage_9's introduction of ``std::unique_ptr<...>`` was
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
        # Stage_9 skiplist (runs 17-04-00 and 17-54-38); the LLM repeats
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
            # but actively harmful for Rust: in past Stage_10 perf-retries the
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
            otherInformation = "\n For the final code result, please response with \"Final result code\" is : \n"
            # Preserve perf-retry context across compile-fix iterations so the
            # model does not forget WHY it is being retried (perf regression),
            # and so it does not regenerate the slow pattern just to satisfy
            # clang. Without this, fixing the compile can silently produce the
            # same slow idiom and the perf retry burns an attempt for nothing.
            perfContextSuffix = ""
            if perfRetryContext is not None:
                perfContextSuffix = self._buildPerfContextSuffix(
                    perfRetryContext.get("this_attempt_function", ""),
                    perfRetryContext.get("degrade_pct", 0.0),
                    stage=stage,
                )
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

    def runPerformanceCheckForOutput(self, outputPath, label, funcMap=None, updateFuncMapAfterCheck=False,
                                     stage=None, prevStageFuncMap=None, prevStageTypes=None):
        # ``stage`` is passed as a Stage enum in production code paths but as a
        # bare string ("Stage_3", "Stage_10", ...) in many unit tests. Normalise
        # to a plain stage-name string so per-stage lookups and Stage_10
        # comparisons work uniformly without forcing every test to switch.
        stageName = None
        if stage is not None:
            stageName = stage.name if hasattr(stage, "name") else str(stage)

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
        # Exception: Stage_10 emits Rust while every prior stage emits C++.
        # Reverting Stage_10 to its predecessor would replace Rust output with
        # C++ output, which is never the user's intent — keep the Stage_10
        # result regardless and surface the failure via the False return.
        if correctnessCheckPassed is False:
            self.logger.warning(
                "[Stage discarded] : %s reason=correctness expected=%s got=%s",
                label, expectedChecksum, currentChecksum,
            )
            if stageName != "Stage_10" and funcMap is not None and prevStageFuncMap is not None:
                self._revertStageToPrev(funcMap, prevStageFuncMap, prevStageTypes)
                self._flushPrevStageMergedFileToCurrent(outputPath, stage)
                self._markStageDiscardedInMetrics(outputPath, prevMs)
            return False

        # 2. Perf gate.
        if performanceCheckPassed:
            self.logger.info("[Performance check pass] : %s", label)
            return True

        self.logger.info("[Performance check fail] : %s", label)

        # 3. Skip retry mechanism entirely?
        skipRetry = bool(getattr(self, "perfDegradeSkipRetry", False))
        discardOnFail = bool(getattr(self, "perfDegradeDiscardOnFail", False))
        # Stage_10 (Rust) is never reverted to its C++ predecessor on perf
        # failure either — the only sensible action is to keep the Rust
        # output and log the degradation.
        if stageName == "Stage_10":
            discardOnFail = False
        # Stage_1 (custom-allocator removal) is the foundation every later
        # stage builds on; reverting it puts the custom allocator back and
        # invalidates the rewrite. Opt-in via --perf-degrade-keep-stage-1.
        if stageName == "Stage_1" and bool(getattr(self, "keepStage1OnDegrade", False)):
            discardOnFail = False

        if skipRetry:
            self.logger.info("[Perf retry skipped] : %s", label)
            if discardOnFail and funcMap is not None and prevStageFuncMap is not None:
                self.logger.info("[Stage discarded] : %s reason=perf (discard_on_fail=True)", label)
                self._revertStageToPrev(funcMap, prevStageFuncMap, prevStageTypes)
                self._flushPrevStageMergedFileToCurrent(outputPath, stage)
                self._markStageDiscardedInMetrics(outputPath, prevMs)
                return False
            return True

        # 4. Trigger retry only if degradation actually exceeds threshold.
        #    A per-stage override (config.PERF_DEGRADE_THRESHOLD_PCT_PER_STAGE)
        #    takes precedence over the global / CLI value — e.g. Stage_3 on
        #    pure-string parsers like cJSON has a theoretical floor near +8%
        #    even when implemented optimally.
        thresholdPct = float(getattr(self, "perfDegradeThresholdPct", PERF_DEGRADE_THRESHOLD_PCT))
        if stageName is not None:
            stageOverride = PERF_DEGRADE_THRESHOLD_PCT_PER_STAGE.get(stageName)
            if stageOverride is not None:
                thresholdPct = float(stageOverride)
        retryCount = int(getattr(self, "perfDegradeRetryCount", 2))

        if prevMs is None or currentMs is None or prevMs <= 0:
            self.logger.info("[Perf retry skipped] : %s (no prev baseline)", label)
            if discardOnFail and funcMap is not None and prevStageFuncMap is not None:
                self.logger.info("[Stage discarded] : %s reason=perf (no baseline)", label)
                self._revertStageToPrev(funcMap, prevStageFuncMap, prevStageTypes)
                self._flushPrevStageMergedFileToCurrent(outputPath, stage)
                # No prev baseline to stamp into the metrics record; the
                # discarded stage's average_elapsed_ms remains as-recorded.
                return False
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
        if funcMap is not None and prevStageFuncMap is not None and stage is not None:
            retryPassed = self._runStagePerfRetryLoop(
                stage=stage,
                label=label,
                funcMap=funcMap,
                prevStageFuncMap=prevStageFuncMap,
                outputPath=outputPath,
                performancePrompt=performancePrompt,
                performanceArguments=performanceArguments,
                prevMs=prevMs,
                currentMs=currentMs,
                expectedChecksum=expectedChecksum,
                thresholdPct=thresholdPct,
                retryCount=retryCount,
                prevStageTypes=prevStageTypes,
            )
        else:
            self.logger.warning(
                "[Perf retry skipped] : %s (missing funcMap/prevStageFuncMap/stage)", label,
            )

        if retryPassed:
            self.logger.info("[Performance check pass] : %s (after perf retry)", label)
            return True

        self.logger.info("[Perf retry exhausted] : %s", label)
        if discardOnFail and funcMap is not None and prevStageFuncMap is not None:
            self.logger.info("[Stage discarded] : %s reason=perf (discard_on_fail=True)", label)
            self._revertStageToPrev(funcMap, prevStageFuncMap, prevStageTypes)
            self._flushPrevStageMergedFileToCurrent(outputPath, stage)
            self._markStageDiscardedInMetrics(outputPath, prevMs)
            return False

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

    def _snapshotTypeRegistry(self):
        """Snapshot every TypeNode's translated code so perf retry can revert
        typedef/struct definitions to the prior-stage version before re-
        translating types. Mirrors ``_snapshotFuncMap`` for the type-registry
        side. Captured fields:
          - ``rustCode`` (the active translation for the current stage)
          - ``cCode``   (input baseline for the next stage; ``updateFuncMap``
                        copies ``rustCode`` to ``cCode`` at end of stage)
        Returns a ``{typeKey: {field: value}}`` dict suitable for
        ``_adoptTypeRegistrySnapshot``.

        Baseline fallback for rustCode: when a TypeNode has not yet been
        translated (rustCode == "" but cCode is real C source — the
        Stage_1 entry state), capture the stringified cCode as the
        snapshot's rustCode. Without this, Stage_1 perf-discard reverts
        rustCode back to "" for every type, and the next stage's SCC
        translation builds its dependency-definitions block by reading
        rustCode — which means cJSON / internal_hooks / parse_buffer are
        all silently absent from the LLM's "translated dependency
        definitions" prompt section. The LLM then redefines those types
        inconsistently across each function's translation (one with
        ``internal_hooks hooks;`` field, another without), the merged
        compile errors with "redefinition" + "no member 'hooks'", and
        retry-prompted models "fix" the call sites by passing
        ``nullptr`` to ``cJSON_New_Item`` — whose body unconditionally
        dereferences ``hooks->allocate(...)`` and segfaults at runtime.

        The fallback is intentionally NOT applied when both rustCode
        and cCode are empty: that pair means the type was deleted in a
        prior stage's cascade and the end-of-stage updateFuncMap
        propagated the deletion to cCode. Reviving such a type here
        would un-do the deletion.
        """
        snapshot = {}
        for typeKey in FunctionAndDependencies.typeRegistry.sorted_keys():
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None:
                continue
            rustCode = getattr(typeNode, "rustCode", "")
            cCode = getattr(typeNode, "cCode", "")
            if not rustCode and cCode:
                rustCode = self.stringifyCodeBlock(cCode)
            snapshot[typeKey] = {
                "rustCode": rustCode,
                "cCode": cCode,
            }
        return snapshot

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

    def _revertFuncMapToPrev(self, funcMap, prevStageFuncMap):
        """Restore funcMap entries from a prev-stage snapshot."""
        if not prevStageFuncMap:
            return
        # prevStageFuncMap may be either a snapshot dict or a real funcMap.
        for funcName in funcMap:
            if funcName not in prevStageFuncMap:
                continue
            prev = prevStageFuncMap[funcName]
            target = funcMap[funcName]
            if isinstance(prev, dict):
                for key, value in prev.items():
                    setattr(target, key, value)
            else:
                # Treat as another funcMap entry object.
                for key in ("funcCodeLines", "typeDeclDefCodeLines", "targetLangSignature"):
                    if hasattr(prev, key):
                        setattr(target, key, getattr(prev, key))

    def _revertStageToPrev(self, funcMap, prevStageFuncMap, prevStageTypes):
        """Symmetric revert: undo BOTH funcMap and typeRegistry mutations that
        a discarded stage may have introduced.

        Without the type half, a discarded stage that mutated struct fields
        (e.g. Stage_8's unique_ptr conversion) leaves typeRegistry in the
        failing-stage shape while funcMap is on the prev-stage shape → the
        next stage compiles into an inconsistent universe (functions expect
        raw pointers, struct fields are smart pointers).

        ``prevStageTypes`` is the snapshot captured in ``translateAll`` at
        stage entry (mirror of ``prevStageFuncMap``). Older code paths that
        don't yet plumb this through pass None — in that case only funcMap
        is reverted (matches pre-fix behavior).

        NOTE: this only updates IN-MEMORY state. The on-disk
        ``merged_funcs.{cpp,rs}`` is NOT touched here — call sites that
        are discarding a stage should also call
        ``_flushPrevStageMergedFileToCurrent`` to make the disk match.
        Failed perf-retry attempts archived under
        ``<stageDir>/attempt_<N>/`` are left intact.
        """
        self._revertFuncMapToPrev(funcMap, prevStageFuncMap)
        if prevStageTypes is not None:
            self._adoptTypeRegistrySnapshot(prevStageTypes)

    def _flushPrevStageMergedFileToCurrent(self, outputPath, stage):
        """After a stage is discarded back to its predecessor, copy the
        predecessor's ``merged_funcs.{cpp,rs}`` into the current stage's
        directory so the on-disk file matches the in-memory funcMap
        (already reverted by ``_revertStageToPrev``).

        Before this method existed, a discarded Stage_3 left
        ``_Stage.Stage_3/merged_funcs.cpp`` holding the failing attempt's
        code even though ``performance_metrics.json`` claimed
        ``effective_source: previous_stage (discarded by
        discard_on_fail)``. Users opening the file would see the
        broken code that the metrics said had been rolled back.

        When ``--skip-stages`` omits stages, the immediate ``stageNum-1``
        dir may not exist on disk. The walk-backwards mirrors
        ``getPerformanceMetricsContext`` so e.g. a discarded Stage_7 with
        Stage_5/6 skipped correctly flushes from ``_Stage.Stage_4`` rather
        than silently giving up because ``_Stage.Stage_6`` is missing.

        Per-attempt archives under ``<stageDir>/attempt_<N>/`` are
        intentionally left untouched — they remain forensic snapshots
        of what each retry attempt actually produced.

        Best-effort: any error here is logged but never raised — the
        discard path must not crash because the prev dir was, say,
        garbage-collected or read-only.
        """
        try:
            stageName = stage.name if hasattr(stage, "name") else (str(stage) if stage else "")
            # Parse "Stage_N" → N. Anything else (None, "Stage_1" with no
            # prior, malformed) → nothing to copy.
            if not stageName.startswith("Stage_"):
                return
            try:
                stageNum = int(stageName.split("_", 1)[1])
            except (IndexError, ValueError):
                return
            if stageNum <= 1:
                # Stage_1 has no predecessor; nothing to revert from.
                return

            currentStageDir = os.path.abspath(os.path.dirname(outputPath))
            parentDir = os.path.dirname(currentStageDir)
            # When --skip-stages omits stages, the immediate `stageNum - 1`
            # dir does not exist on disk. Walk backwards to find the most
            # recent stage that ACTUALLY ran — mirrors the walk in
            # ``getPerformanceMetricsContext`` so file-revert and metric-
            # revert stay consistent.
            prevStageDir = None
            prevStageDirName = None
            for candidate in range(stageNum - 1, 0, -1):
                candidateName = f"_Stage.Stage_{candidate}"
                candidateDir = os.path.join(parentDir, candidateName)
                if os.path.isdir(candidateDir):
                    prevStageDir = candidateDir
                    prevStageDirName = candidateName
                    break
            if prevStageDir is None:
                self.logger.warning(
                    "[Stage discarded] no prior stage dir found under %s; "
                    "leaving %s as-is", parentDir, currentStageDir,
                )
                return

            copied = []
            for name in ("merged_funcs.cpp", "merged_funcs.rs"):
                srcPath = os.path.join(prevStageDir, name)
                if not os.path.isfile(srcPath):
                    continue
                dstPath = os.path.join(currentStageDir, name)
                shutil.copy2(srcPath, dstPath)
                copied.append(name)
            if copied:
                self.logger.info(
                    "[Stage discarded] flushed prev-stage merged file(s) %s "
                    "from %s -> %s",
                    copied, prevStageDirName, os.path.basename(currentStageDir),
                )
        except Exception as e:
            self.logger.warning(
                "[Stage discarded] failed to flush prev-stage merged file: %s",
                e,
            )

    def _markStageDiscardedInMetrics(self, outputPath, prevStageBaselineMs):
        """When a stage is reverted via discard_on_fail, its effective perf is
        identical to the prior stage's (because funcMap + typeRegistry are now
        in the prior stage's exact shape). Update the persisted metrics so
        that subsequent stages use the prior stage's ms as their
        ``previous_stage_baseline_ms`` rather than the slow failing-attempt
        ms.

        Without this, e.g. Stage_4 fails @ 8s and gets discarded back to
        Stage_3 (2s); Stage_5 then reads Stage_4.average_elapsed_ms=8s as its
        baseline and a perfectly fine Stage_5 looks great vs an inflated
        baseline — masking real regressions. After this stamp,
        Stage_4.average_elapsed_ms=2s (telemetry of the failed attempt is
        preserved in ``discarded_attempt_ms`` for forensics).

        Returns the resolved baseline ms, or None when no update could be
        applied (missing record, missing prev baseline).
        """
        if prevStageBaselineMs is None:
            return None
        try:
            metricsPath, currentKey, _previousKey = self.getPerformanceMetricsContext(outputPath)
            metrics = self.loadPerformanceMetrics(metricsPath)
            if currentKey not in metrics:
                return None
            record = metrics[currentKey]
            failingMs = record.get("average_elapsed_ms")
            record["discarded"] = True
            record["discarded_attempt_ms"] = failingMs
            record["average_elapsed_ms"] = prevStageBaselineMs
            record["effective_source"] = "previous_stage (discarded by discard_on_fail)"
            metrics[currentKey] = record
            self.writePerformanceMetrics(metricsPath, metrics)
            self.logger.info(
                "[Stage discarded baseline stamp] : %s effective_ms=%.3f (was %.3f, discarded)",
                currentKey, prevStageBaselineMs,
                failingMs if isinstance(failingMs, (int, float)) else float("nan"),
            )
            return prevStageBaselineMs
        except Exception as e:
            self.logger.warning(
                "[Stage discarded baseline stamp] failed for %s: %s", outputPath, e,
            )
            return None

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
        all its retries on the same diagnostic (observed on Stage_9
        skiplist, runs 17-04-00 and 17-54-38). Forward declarations are
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
        repair the two Stage_9 dep-block regressions IN THE STRING, so the
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
        closure have had their RETURN TYPE changed by this stage,
        compared to the original C form.

        Scope is intentionally narrow — return type only, no parameter
        count / type comparison — to keep the prompt change small and
        the false-positive rate near zero. The motivating regression:
        Stage_2 transforms ``comparator_t`` from
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

    def _buildPerfContextSuffix(self, thisAttemptFuncCode, degradePct, stage=None):
        """Build the perf-retry suffix appended to a per-function user prompt.

        The prev-stage source is intentionally NOT included here: it is already
        supplied as the function body of the prompt (funcSrc), so duplicating it
        would only waste tokens. The retry message focuses on what NOT to repeat
        (the failed attempt) and how slow it was, and asks for a faster idiom.
        Pipeline-level discard_on_fail handles falling back to the prev stage
        automatically when retries are exhausted, so the prompt should drive the
        model toward a faster solution rather than toward keeping prev verbatim.
        """
        if self.dstLang.lower() == "rust":
            lang = "rust"
        else:
            lang = "cpp"
        suffix = (
            "\n\nPERFORMANCE CONTEXT (this is a retry due to perf regression):\n\n"
            f"Your previous (REJECTED) attempt at this stage produced the code below — "
            f"it ran {degradePct:.1f}% slower than the prior stage and was discarded:\n\n"
            f"```{lang}\n{thisAttemptFuncCode}\n```\n\n"
            "Try a different approach for this stage's transformation that avoids the "
            "slowdown pattern shown above. Do NOT replicate the same pattern — find a "
            "faster idiom that still satisfies this stage's goal.\n"
        )
        # The vector stage's perf-retry hint. Vector is now Stage_3 (after
        # the reorder that pulled bool to Stage_2 in front of all container
        # / pointer / optional stages).
        if stage == Stage.Stage_3:
            suffix += (
                "\nSTAGE_3 (std::vector) IDIOM HINT:\n"
                "Examine your previous attempt: if it iterates a std::vector via "
                "an explicit index (e.g. `for (size_t i = 0; i < v.size(); ++i) "
                "... v[i]`, or nested `v[y][x]`) and the loop body does NOT "
                "otherwise use the index `i` (or `y`, `x`), rewrite the loop "
                "with range-based for (`for (auto& p : v)`) or a standard "
                "algorithm (`std::accumulate`, `std::for_each`). Iterator-form "
                "loops often produce tighter codegen on vector-of-vector "
                "layouts and avoid redundant double-indirection through "
                "`v[y][x]`. Keep the index form ONLY when `i` participates in "
                "another expression (for example `row_index = (offset >= i) ? "
                "offset - i : i - offset`).\n"
                "Only adopt this rewrite if the regression appears to come "
                "from element-access patterns. If the bottleneck is allocation "
                "or copy (e.g. excessive `push_back` reallocations, full "
                "`std::vector` copies on assignment, or per-element constructor "
                "cost), address that root cause instead and leave the access "
                "pattern as is.\n"
            )
        # Always end with the source-vs-failed-attempt disambiguator so it sits
        # right before funcSrc in the assembled prompt. Without this, the model
        # has been observed to apply the stage transformation to the rejected
        # code shown above instead of to the actual source below.
        suffix += (
            "\nIMPORTANT — TWO code blocks appear in this prompt, do NOT confuse them:\n"
            "  * The block above (under 'Your previous (REJECTED) attempt') is the\n"
            "    slow output to AVOID. Use it ONLY as a negative example. Do NOT\n"
            "    apply the stage transformation to that code.\n"
            "  * The next code block immediately below this paragraph (fenced with\n"
            "    `// === BEGIN SOURCE TO TRANSFORM ... === END SOURCE TO TRANSFORM ===`)\n"
            "    is the prior-stage's accepted output — your real input. Apply this\n"
            "    stage's transformation to THAT code, using a different idiom than\n"
            "    the rejected attempt above.\n"
        )
        return suffix

    def _buildPerfContextSuffixForTypes(self, batchNodes, perfRetryContext, stage=None):
        """Type-batch counterpart of ``_buildPerfContextSuffix``. For each type
        in this batch whose prior-attempt rendering caused the regression, show
        the failing rendering as a negative example. ``perfRetryContext`` is a
        dict with keys:
          - ``this_attempt_types``: ``{typeKey: {"rustCode": ...}}`` snapshot
            of the failing-stage rendering (captured BEFORE we reverted to
            prev-stage state)
          - ``degrade_pct``: percent slowdown vs prior stage
        Returns empty string if no failing rendering is available for any
        type in the batch (so non-retry calls produce zero overhead).
        """
        if not perfRetryContext:
            return ""
        snapshot = perfRetryContext.get("this_attempt_types") or {}
        degradePct = perfRetryContext.get("degrade_pct", 0.0)
        if self.dstLang.lower() == "rust":
            lang = "rust"
        else:
            lang = "cpp"

        blocks = []
        for node in batchNodes:
            prior = snapshot.get(node.key)
            if not prior:
                continue
            priorCode = prior.get("rustCode") or ""
            if not priorCode:
                continue
            blocks.append(
                f"For type `{node.key.storage_key()}` your previous attempt was:\n\n"
                f"```{lang}\n{priorCode}\n```\n"
            )
        if not blocks:
            return ""

        suffix = (
            "\n\nPERFORMANCE CONTEXT (this is a retry due to perf regression):\n\n"
            + "\n".join(blocks)
            + f"\nThe merged binary using the above type definitions ran "
            f"{degradePct:.1f}% slower than the prior stage and was discarded. "
            "Try a different approach for this stage's type transformation that "
            "avoids the slowdown pattern shown above. Do NOT replicate the same "
            "pattern — find a faster idiom that still satisfies this stage's goal.\n"
        )
        suffix += (
            "\nIMPORTANT — TWO sets of type definitions appear in this prompt for each "
            "type, do NOT confuse them:\n"
            "  * The blocks above (under 'your previous attempt') are the slow output\n"
            "    to AVOID. Use them ONLY as negative examples. Do NOT apply the stage\n"
            "    transformation to those definitions.\n"
            "  * The type definitions immediately below this paragraph (fenced with\n"
            "    `// === BEGIN TYPE TO TRANSFORM ... === END TYPE TO TRANSFORM ===`)\n"
            "    are the prior-stage's accepted output — your real input. Apply this\n"
            "    stage's transformation to THOSE types, using a different idiom than\n"
            "    the rejected attempts above.\n"
        )
        return suffix

    def _resolvePrevStageFuncCode(self, prevStageFuncMap, funcName):
        """Look up ``funcName``'s prev-stage funcCodeLines from a snapshot or
        live funcMap. Returns "" when prev state is unavailable."""
        if isinstance(prevStageFuncMap, dict) and funcName in prevStageFuncMap:
            prevEntry = prevStageFuncMap[funcName]
            if isinstance(prevEntry, dict):
                return prevEntry.get("funcCodeLines", "")
            return getattr(prevEntry, "funcCodeLines", "")
        return ""

    # Files and directories that exist inside a stage dir but are NOT part of
    # the per-attempt artifact set: build caches, lock dirs, our own archive
    # subdirs from previous attempts. Excluded both from the top-level listing
    # and from any subtree we descend into.
    _ATTEMPT_ARCHIVE_SKIP_NAMES = frozenset({"temp", ".performance_cargo_build"})

    def _archiveAttemptDir(self, outputPath, attempt):
        """Copy this perf-retry attempt's artifacts into
        ``<stageDir>/attempt_<N>/`` so each attempt is preserved verbatim.

        Lifecycle: ``updateFuncMap`` at the top of every retry iteration
        rewrites the stage dir's ``merged_funcs.*``, and
        ``runPerformanceCheck`` then writes ``performance.{cpp,rs,out}``.
        Without an archive step those files are overwritten by the next
        iteration (or rolled back by the correctness-fail / loop-exhaust
        revert path), so only the LAST retained snapshot survives. That
        makes it impossible to see why attempt 2 was slower than 1, or to
        inspect the code a correctness-fail attempt actually produced.

        Called once per attempt, immediately after the perf-run completes
        and before any revert. ``stage_2/`` keeps the latest attempt's
        files as before; ``stage_2/attempt_1/``, ``stage_2/attempt_2/``,
        … each hold a frozen copy of their respective attempt.

        Best-effort: any failure here is logged but never raised — the
        retry loop must not crash because of a snapshot side-effect.
        """
        try:
            stageDir = os.path.abspath(os.path.dirname(outputPath))
            if not os.path.isdir(stageDir):
                return
            attemptDir = os.path.join(stageDir, f"attempt_{attempt}")
            # If a prior partial run left this dir behind, blow it away so we
            # don't merge two attempts' files into one place.
            if os.path.exists(attemptDir):
                shutil.rmtree(attemptDir, ignore_errors=True)
            os.makedirs(attemptDir, exist_ok=True)

            for name in os.listdir(stageDir):
                # Don't recurse into our own archive history, and skip the
                # build-cache dirs.
                if name.startswith("attempt_"):
                    continue
                if name in self._ATTEMPT_ARCHIVE_SKIP_NAMES:
                    continue
                src = os.path.join(stageDir, name)
                dst = os.path.join(attemptDir, name)
                if os.path.isdir(src):
                    shutil.copytree(
                        src, dst,
                        ignore=shutil.ignore_patterns(*self._ATTEMPT_ARCHIVE_SKIP_NAMES),
                    )
                else:
                    shutil.copy2(src, dst)

            self.logger.info(
                "[Perf retry archive] attempt %d artifacts -> %s",
                attempt, attemptDir,
            )
        except Exception as e:
            self.logger.warning(
                "[Perf retry archive] failed for attempt %d: %s",
                attempt, e,
            )

    def _runStagePerfRetryLoop(self, stage, label, funcMap, prevStageFuncMap, outputPath,
                               performancePrompt, performanceArguments, prevMs, currentMs,
                               expectedChecksum, thresholdPct, retryCount,
                               prevStageTypes=None):
        """Per-stage perf rerun loop. Returns True iff a retry attempt passes
        the perf threshold AND keeps checksum consistent.

        The inner translation walk mirrors ``_runSccTopoTranslateLoop``: SCCs
        are traversed in topological order (deps before consumers) and per-step
        we rebuild each function's ``previouslyTranslatedFunctionSignatures``
        and ``previouslyTranslatedFunctions`` from the CURRENT in-progress
        retry state, not from the failing-stage snapshot. This guarantees that
        when X's signature changes during retry (e.g. cJSON* -> cJSON&), the
        consumer Y translated later in the topo order sees the new signature
        rather than X's stale failing-stage signature.

        Before each ``compileWithFeedback`` call we reset ``funcCodeLines`` to
        the prev-stage version so the LLM is asked to re-apply this stage's
        transformation to the baseline input — not to "do this stage on top of
        my own already-broken attempt". The failing attempt is shown
        separately in the PERFORMANCE CONTEXT suffix so the model knows what
        pattern to avoid.

        Type-level retry: when ``prevStageTypes`` is provided, each attempt
        also reverts the typeRegistry to the prior-stage rendering and re-runs
        ``preTranslateComplexStructs`` with the failing rendering surfaced via
        ``perfRetryContext``. This lets the model fix regressions whose root
        cause is the struct/typedef shape itself (e.g. unique_ptr-in-hot-loop
        on Stage_8), not just the function bodies.
        """
        # bestSnapshot starts as the failing original (so if no attempt is faster,
        # we leave funcMap untouched).
        originalSnapshot = self._snapshotFuncMap(funcMap)
        originalTypeSnapshot = self._snapshotTypeRegistry()
        bestSnapshot = originalSnapshot
        bestTypeSnapshot = originalTypeSnapshot
        bestMs = currentMs

        # Archive the failing original as ``attempt_0/`` BEFORE the loop body
        # runs, because:
        #   1. With ``retryCount=0`` the for-loop below is empty, so without
        #      this call there is zero on-disk evidence of the failing state
        #      under ``<stageDir>/attempt_*/`` — the user sees
        #      ``[Perf retry exhausted]`` in the log but has nothing to diff
        #      against a passing baseline.
        #   2. With ``retryCount>0`` the FIRST thing the loop body does is
        #      ``updateFuncMap`` (overwrites ``<stageDir>/merged_funcs.*``)
        #      and ``runPerformanceCheck`` (overwrites
        #      ``<stageDir>/performance.{cpp,rs,out}``). Before this archive
        #      call existed, the failing-original artifacts were silently
        #      clobbered by attempt 1 and never preserved anywhere — the
        #      first thing archived was ``attempt_1`` = the FIRST RERUN.
        # Note: we intentionally do NOT call ``appendPerfRetryAttempt`` for
        # attempt 0. The original's metrics already live in
        # ``performance_metrics.json[currentKey]`` written by the perf-run
        # that triggered this loop; duplicating them under
        # ``perf_retry.attempts[]`` would invert the existing
        # ``attempted = len(attempts)`` semantics (rerun count, not total).
        self._archiveAttemptDir(outputPath, 0)

        for attempt in range(1, retryCount + 1):
            self.logger.info("[Perf retry attempt] : %s #%d/%d", label, attempt, retryCount)
            attemptSnapshot = {}
            degradePct = (currentMs - prevMs) / prevMs * 100.0

            # Capture each function's failing-stage body BEFORE we mutate
            # funcCodeLines back to prev-stage code below — the perf-context
            # suffix needs to display the failing body, not the prev one.
            thisAttemptCodeByFunc = {
                fn: getattr(fd, "funcCodeLines", "") for fn, fd in funcMap.items()
            }

            # Capture the failing-stage type rendering (for perf-context suffix
            # of the re-translation), then revert types to prior-stage so the
            # LLM is asked to redo this stage's TYPE transformation from a clean
            # baseline. Only does anything when the caller threaded
            # prevStageTypes through — non-perf callers (and legacy callers
            # pre-dating this plumbing) skip type retry entirely.
            if prevStageTypes is not None:
                thisAttemptTypeSnapshot = self._snapshotTypeRegistry()
                self._adoptTypeRegistrySnapshot(prevStageTypes)
                try:
                    self.preTranslateComplexStructs(
                        stage,
                        perfRetryContext={
                            "this_attempt_types": thisAttemptTypeSnapshot,
                            "degrade_pct": degradePct,
                        },
                    )
                except Exception as e:
                    self.logger.warning(
                        "[Perf retry] type re-translation failed for %s attempt %d: %s — "
                        "keeping prior-stage types and continuing with function retry",
                        label, attempt, e,
                    )

            # SCC topo walk. createSccTopoQueue also returns the concatenated
            # struct-context blob (contextedStructs) used by clang during the
            # prepend-and-compile path in compileAndRetryLoopforDepency.
            sccQueue, sccIncomingEdges, sccConsumers, sccs, _funcToScc, contextedStructs = \
                self.createSccTopoQueue(funcMap)
            contextedStructs = self._healContextStructsBlob(contextedStructs)
            previouslyTranslatedFunctions = ""

            while sccQueue:
                sccId = sccQueue.popleft()
                sccGroup = sccs[sccId]

                if len(sccGroup) == 1:
                    funcName = sccGroup[0]
                    funcDeps = funcMap[funcName]
                    prevCode = self._resolvePrevStageFuncCode(prevStageFuncMap, funcName)

                    # Fix A: funcSrc inside compileWithFeedback is read from
                    # funcDeps.funcCodeLines. Reset to prev so the LLM treats
                    # the prev-stage code as the input to transform.
                    if prevCode:
                        funcDeps.funcCodeLines = prevCode

                    # Fix DE: rebuild dep state from current topo-walk so that
                    # signatures and bodies reflect THIS retry attempt's progress.
                    funcDeps.previouslyTranslatedFunctions = previouslyTranslatedFunctions
                    allSignature = ""
                    for dep in funcDeps.dependFunctions:
                        if dep in funcMap:
                            allSignature = allSignature + funcMap[dep].targetLangSignature + "\n"
                    funcDeps.previouslyTranslatedFunctionSignatures = allSignature

                    ctx = {
                        "this_attempt_function": thisAttemptCodeByFunc.get(funcName, ""),
                        "degrade_pct": degradePct,
                    }
                    ok, newCode = False, None
                    try:
                        with _callKindContext(self, f"perf_retry_attempt_{attempt}"):
                            ok, newCode = self.compileWithFeedback(
                                funcName, funcDeps, contextedStructs,
                                dependencyTranslate=True,
                                stage=stage, perfRetryContext=ctx,
                            )
                    except Exception as e:
                        self.logger.warning(
                            "[Perf retry] compile/translate exception for %s: %s", funcName, e,
                        )
                        ok = False

                    if ok and newCode:
                        funcDeps.funcCodeLines = newCode
                        # Refresh targetLangSignature from the new body so
                        # downstream consumers in this same topo walk see this
                        # attempt's signature (fixes the stale-signature half
                        # of issue D+E).
                        sigs, _missing = self._extractSccFunctionSignatures(newCode, sccGroup)
                        if sigs.get(funcName):
                            funcDeps.targetLangSignature = sigs[funcName]
                    # else: funcCodeLines already left at prevCode above.

                    previouslyTranslatedFunctions = (
                        previouslyTranslatedFunctions + "\n" + funcDeps.funcCodeLines
                    )
                    attemptSnapshot[funcName] = {
                        "funcCodeLines": getattr(funcDeps, "funcCodeLines", ""),
                        "typeDeclDefCodeLines": getattr(funcDeps, "typeDeclDefCodeLines", ""),
                        "targetLangSignature": getattr(funcDeps, "targetLangSignature", ""),
                    }
                else:
                    # Multi-function SCC: translate the whole mutually-recursive
                    # group together via compileSccWithFeedback.
                    for funcName in sccGroup:
                        prevCode = self._resolvePrevStageFuncCode(prevStageFuncMap, funcName)
                        if prevCode:
                            funcMap[funcName].funcCodeLines = prevCode

                    for funcName in sccGroup:
                        funcDeps = funcMap[funcName]
                        funcDeps.previouslyTranslatedFunctions = previouslyTranslatedFunctions
                        sigBuilder = ""
                        for dep in funcDeps.dependFunctions:
                            if dep in funcMap and dep not in sccGroup:
                                sigBuilder = sigBuilder + funcMap[dep].targetLangSignature + "\n"
                        funcDeps.previouslyTranslatedFunctionSignatures = sigBuilder

                    # One perf-context snippet covers the whole group; the LLM
                    # gets to see all failing bodies side-by-side which is
                    # roughly how the SCC was translated to begin with.
                    sccThisAttempt = "\n\n".join(
                        thisAttemptCodeByFunc.get(fn, "") for fn in sccGroup
                    )
                    ctx = {
                        "this_attempt_function": sccThisAttempt,
                        "degrade_pct": degradePct,
                    }

                    sccOk = False
                    translatedResult = ""
                    try:
                        with _callKindContext(self, f"perf_retry_attempt_{attempt}"):
                            successFlag, translatedResult, _sccLabel = self.compileSccWithFeedback(
                                sccGroup, funcMap, contextedStructs, previouslyTranslatedFunctions,
                                stage=stage, perfRetryContext=ctx,
                            )
                        sccOk = successFlag
                    except Exception as e:
                        self.logger.warning(
                            "[Perf retry] SCC compile/translate exception for %s: %s",
                            list(sccGroup), e,
                        )
                        sccOk = False

                    if sccOk and translatedResult:
                        sigs, _missing = self._extractSccFunctionSignatures(translatedResult, sccGroup)
                        perFunction = self._splitSccTranslatedResult(translatedResult, sccGroup)
                        for funcName in sccGroup:
                            body = perFunction.get(funcName) or funcMap[funcName].funcCodeLines
                            funcMap[funcName].funcCodeLines = body
                            if sigs.get(funcName):
                                funcMap[funcName].targetLangSignature = sigs[funcName]
                        previouslyTranslatedFunctions = (
                            previouslyTranslatedFunctions + "\n" + translatedResult
                        )
                    else:
                        # Members already hold prev-stage code from the reset
                        # above; append those to keep the topo chain compileable.
                        for funcName in sccGroup:
                            previouslyTranslatedFunctions = (
                                previouslyTranslatedFunctions + "\n" + funcMap[funcName].funcCodeLines
                            )

                    for funcName in sccGroup:
                        funcDeps = funcMap[funcName]
                        attemptSnapshot[funcName] = {
                            "funcCodeLines": getattr(funcDeps, "funcCodeLines", ""),
                            "typeDeclDefCodeLines": getattr(funcDeps, "typeDeclDefCodeLines", ""),
                            "targetLangSignature": getattr(funcDeps, "targetLangSignature", ""),
                        }

                for consumerSccId in sccConsumers[sccId]:
                    sccIncomingEdges[consumerSccId] -= 1
                    if sccIncomingEdges[consumerSccId] == 0:
                        sccQueue.append(consumerSccId)

            # Re-merge & re-check. updateFuncMap re-emits the per-stage merged file.
            try:
                self.updateFuncMap(funcMap)
            except Exception as e:
                self.logger.warning("[Perf retry] updateFuncMap failed: %s", e)
                self._adoptFuncMapSnapshot(funcMap, originalSnapshot)
                self._adoptTypeRegistrySnapshot(originalTypeSnapshot)
                self.appendPerfRetryAttempt(outputPath, {
                    "attempt": attempt, "compiled": False, "perf_passed": False,
                    "correctness_passed": None, "reason": "merge_failed",
                })
                continue

            # Re-run perf check on the merged output. runPerformanceCheck both
            # captures perf and writes correctness to metrics; we then read it
            # back to decide.
            try:
                perfPassed = self.runPerformanceCheck(
                    outputPath, performancePrompt, performanceArguments,
                )
            except Exception as e:
                self.logger.warning("[Perf retry] runPerformanceCheck raised: %s", e)
                self._adoptFuncMapSnapshot(funcMap, originalSnapshot)
                self._adoptTypeRegistrySnapshot(originalTypeSnapshot)
                self.appendPerfRetryAttempt(outputPath, {
                    "attempt": attempt, "compiled": False, "perf_passed": False,
                    "correctness_passed": None, "reason": "perf_run_failed",
                })
                continue

            attemptRecord = self.loadCurrentStageRecord(outputPath)
            attemptMs = attemptRecord.get("average_elapsed_ms")
            attemptChecksum = attemptRecord.get("checksum")
            attemptCorrectness = attemptRecord.get("correctness_check_passed")

            self.logger.info(
                "[Perf retry attempt result] : %s #%d ms=%s checksum_ok=%s perf_ok=%s",
                label, attempt, attemptMs, attemptCorrectness, perfPassed,
            )

            # Snapshot this attempt's artifacts into <stageDir>/attempt_<N>/
            # BEFORE the correctness-fail revert below or the next iteration's
            # updateFuncMap overwrites the stage dir. Without this every
            # attempt clobbers the previous one and only the final retained
            # snapshot survives — making it impossible to inspect why
            # attempt 2 was slower than 1, or to look at the code a
            # correctness-fail attempt actually produced.
            self._archiveAttemptDir(outputPath, attempt)

            # Reject attempts that broke correctness.
            if attemptCorrectness is False:
                self.logger.warning(
                    "[Perf retry] attempt %d produced wrong checksum (expected=%s got=%s); reverting",
                    attempt, expectedChecksum, attemptChecksum,
                )
                self._adoptFuncMapSnapshot(funcMap, bestSnapshot)
                self._adoptTypeRegistrySnapshot(bestTypeSnapshot)
                self.appendPerfRetryAttempt(outputPath, {
                    "attempt": attempt, "compiled": True,
                    "average_elapsed_ms": attemptMs,
                    "checksum": attemptChecksum,
                    "perf_passed": False,
                    "correctness_passed": False,
                })
                continue

            self.appendPerfRetryAttempt(outputPath, {
                "attempt": attempt, "compiled": True,
                "average_elapsed_ms": attemptMs,
                "checksum": attemptChecksum,
                "perf_passed": bool(perfPassed),
                "correctness_passed": True,
            })

            if isinstance(attemptMs, (int, float)) and attemptMs < bestMs:
                bestMs = float(attemptMs)
                bestSnapshot = attemptSnapshot
                # Snapshot the typeRegistry alongside funcMap. Without this,
                # the funcMap is rolled back to a good attempt while types
                # silently keep the latest (potentially worse) rendering.
                bestTypeSnapshot = self._snapshotTypeRegistry()

            if perfPassed:
                # Already adopted via funcMap.funcCodeLines = newCode in the loop.
                return True

        # Exhausted all attempts — adopt the best snapshot (could equal original).
        self._adoptFuncMapSnapshot(funcMap, bestSnapshot)
        self._adoptTypeRegistrySnapshot(bestTypeSnapshot)
        try:
            self.updateFuncMap(funcMap)
        except Exception:
            pass
        return False

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

    def runMergedOutputChecksForOutput(self, outputPath, label, funcMap=None, updateFuncMapAfterCheck=False,
                                       stage=None, prevStageFuncMap=None, prevStageTypes=None):
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
                stage=stage,
                prevStageFuncMap=prevStageFuncMap,
                prevStageTypes=prevStageTypes,
            )
        finally:
            if label == "struct-fn-replay":
                self.syncStructFnReplayPerformanceResults(performanceOutputPath, outputPath)
                self.cleanupStructFnReplayPerformanceTemp(performanceOutputPath, outputPath)
        self.runCrownAnalysisForOutput(outputPath, label)
        return performanceCheckPassed

    def translateAll(self, funcMap, individualFuncPath, multiThreading):
        if self.translatorMode not in (
            TranslatorModes.NEW_MODE,
            TranslatorModes.NEW_MODE_SINGLE_STAGE,
            TranslatorModes.NEW_MODE_MERGED_VIEWS,
            TranslatorModes.NEW_MODE_RESUME,
        ):
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
                self._runSccTopoTranslateLoop(funcMap, individualFuncPath, stage=None)
                self._dumpTokenUsage(individualFuncPath)
            elif self.translatorMode in (
                TranslatorModes.NEW_MODE,
                TranslatorModes.NEW_MODE_MERGED_VIEWS,
            ):
                # CLI --skip-stages omits the named stages from the run.
                # Filter once here so the rest of NEW_MODE (stage-check stat
                # init, result-manager schema, iteration loop, and the
                # PRESERVE/DEFER prompt builder via self.skippedStages)
                # all observe the same reduced set.
                skipped = getattr(self, "skippedStages", set()) or set()
                allStages = [s for s in Stage if s not in skipped]
                if skipped:
                    self.logger.info(
                        "[Skip stages] omitting %s; running %s",
                        sorted(s.name for s in skipped),
                        [s.name for s in allStages],
                    )
                self.ensureStageCheckStats(allStages)
                translationResultManager = TranslationResultManager(funcMap, allStages)

                # MANDATORY: establish a Stage_1 baseline by running the
                # original C source 5 times. Recorded under "baseline_c" in
                # performance_metrics.json and used as Stage_1's prev. Any
                # failure here aborts the run — Stage_1 must have a baseline
                # to detect regressions like the libbmp empty-bmp_img_free
                # bug. Use --skip-c-baseline=true to bypass (not recommended).
                if not getattr(self, "skipCBaseline", False):
                    codebaseRoot = os.path.dirname(os.path.abspath(individualFuncPath))
                    _prompt, performanceArguments = self.loadPerformanceInformation(
                        os.path.join(individualFuncPath, "_baseline_c", "stub")
                    )
                    self.runCBaselinePerformance(
                        codebaseRoot, individualFuncPath, performanceArguments,
                    )
                else:
                    self.logger.warning(
                        "[C baseline skipped] : --skip-c-baseline=true; "
                        "Stage_1 perf check will have no baseline to compare against"
                    )

                for currentStage in allStages:
                    if currentStage == Stage.Stage_10:
                        self.dstLang = "Rust"
                    self.logger.info("[stageInfo] : %s", currentStage)
                    # Tag every LLM call made during this stage with the stage
                    # name so the token usage tracker can produce a by_stage
                    # breakdown (otherwise all records get stage=""). See
                    # _recordTokenUsage which reads self.stage.
                    if hasattr(self, "changeStage"):
                        self.changeStage(currentStage)
                    currentStageDirectory = os.path.join(individualFuncPath, f"_{currentStage}")
                    os.makedirs(currentStageDirectory, exist_ok=True)
                    # Snapshot funcMap AND typeRegistry state BEFORE this
                    # stage modifies them. The perf-retry path uses both to:
                    #   (a) feed prev-stage code into the perf-context prompt
                    #       (function bodies + type definitions are independent
                    #        retry surfaces — see _runStagePerfRetryLoop),
                    #   (b) revert on correctness or perf regressions.
                    prevStageFuncMapSnapshot = self._snapshotFuncMap(funcMap)
                    prevStageTypeSnapshot = self._snapshotTypeRegistry()
                    self.preTranslateComplexStructs(currentStage)
                    self._runSccTopoTranslateLoop(
                        funcMap,
                        currentStageDirectory,
                        stage=currentStage,
                        translationResultManager=translationResultManager,
                        prevStageFuncMap=prevStageFuncMapSnapshot,
                        prevStageTypes=prevStageTypeSnapshot,
                    )
                    # Dump checkpoint AFTER _runSccTopoTranslateLoop's
                    # runMergedOutputChecksForOutput has triggered updateFuncMap;
                    # at this point funcCodeLines / TypeNode.cCode are the
                    # post-stage translated code. Without this, single-stage
                    # mode cannot resume at stage+1.
                    self._dumpStageState(currentStageDirectory, currentStage, funcMap)
                self.emitStageCheckSummary(individualFuncPath, allStages)
                self._dumpTokenUsage(individualFuncPath)
            elif self.translatorMode == TranslatorModes.NEW_MODE_SINGLE_STAGE:
                targetStage = getattr(self, "targetStage", None)
                priorStateDir = getattr(self, "priorStageStateDir", None)
                if targetStage is None:
                    raise RuntimeError("NEW_MODE_SINGLE_STAGE requires translator.targetStage to be set")
                if not isinstance(targetStage, Stage):
                    targetStage = Stage[str(targetStage)]
                if targetStage != Stage.Stage_1 and not priorStateDir:
                    raise RuntimeError(
                        f"NEW_MODE_SINGLE_STAGE target_stage={targetStage} requires "
                        "translator.priorStageStateDir to be set (path to the prior stage's directory)"
                    )

                # Match NEW_MODE's dstLang-by-stage rule.
                self.dstLang = "Rust" if targetStage == Stage.Stage_10 else "C++"

                self.ensureStageCheckStats([targetStage])
                translationResultManager = TranslationResultManager(funcMap, [targetStage])

                if targetStage != Stage.Stage_1:
                    statePath = os.path.join(priorStateDir, self.STAGE_STATE_FILENAME)
                    if not os.path.isfile(statePath):
                        raise RuntimeError(
                            f"prior-stage-state checkpoint missing: {statePath}\n"
                            "Run NEW_MODE first to generate stage_state.json files for each stage."
                        )
                    self._loadStageState(statePath, funcMap)

                    # Seed performance_metrics.json from prior run so this stage's
                    # perf check has a baseline to compare against. Without this,
                    # single-stage mode passes perf trivially even when the new
                    # stage regresses vs the prior stage. Drop the target stage's
                    # prior record (e.g. a failed attempt being re-run) so the new
                    # attempt is recorded fresh and does not inherit stale retry
                    # history.
                    priorRunDir = os.path.dirname(os.path.normpath(priorStateDir))
                    priorMetricsPath = os.path.join(priorRunDir, "performance_metrics.json")
                    newMetricsPath = os.path.join(individualFuncPath, "performance_metrics.json")
                    if os.path.isfile(priorMetricsPath) and not os.path.exists(newMetricsPath):
                        priorMetrics = self.loadPerformanceMetrics(priorMetricsPath)
                        priorMetrics.pop(targetStage.name, None)
                        self.writePerformanceMetrics(newMetricsPath, priorMetrics)
                        self.logger.info(
                            "[single-stage] seeded performance_metrics.json from %s (dropped %s)",
                            priorMetricsPath, targetStage.name,
                        )

                self.logger.info("[stageInfo] : %s (single-stage mode)", targetStage)
                if hasattr(self, "changeStage"):
                    self.changeStage(targetStage)
                currentStageDirectory = os.path.join(individualFuncPath, f"_{targetStage}")
                os.makedirs(currentStageDirectory, exist_ok=True)
                prevStageFuncMapSnapshot = self._snapshotFuncMap(funcMap)
                prevStageTypeSnapshot = self._snapshotTypeRegistry()
                self.preTranslateComplexStructs(targetStage)
                self._runSccTopoTranslateLoop(
                    funcMap,
                    currentStageDirectory,
                    stage=targetStage,
                    translationResultManager=translationResultManager,
                    prevStageFuncMap=prevStageFuncMapSnapshot,
                    prevStageTypes=prevStageTypeSnapshot,
                )
                self._dumpStageState(currentStageDirectory, targetStage, funcMap)
                self.emitStageCheckSummary(individualFuncPath, [targetStage])
                self._dumpTokenUsage(individualFuncPath)
            elif self.translatorMode == TranslatorModes.NEW_MODE_RESUME:
                # Resume mode: load a prior NEW_MODE checkpoint and run every
                # later non-skipped stage in order. Combines the SINGLE_STAGE
                # state-loading with NEW_MODE's iteration loop so a partially
                # completed run can pick up at Stage_{N+1}..Stage_10 without
                # redoing the earlier stages.
                priorStateDir = getattr(self, "priorStageStateDir", None)
                if not priorStateDir:
                    raise RuntimeError(
                        "NEW_MODE_RESUME requires translator.priorStageStateDir "
                        "(path to the prior stage's directory containing stage_state.json)"
                    )

                statePath = os.path.join(priorStateDir, self.STAGE_STATE_FILENAME)
                if not os.path.isfile(statePath):
                    raise RuntimeError(
                        f"prior-stage-state checkpoint missing: {statePath}\n"
                        "Point --prior-stage-state at a NEW_MODE stage directory "
                        "(e.g. <run>/_Stage.Stage_9) that contains stage_state.json."
                    )

                # Derive the prior stage number from the checkpoint directory's
                # basename (NEW_MODE writes _Stage.Stage_N/). Falls back to the
                # stage recorded inside stage_state.json on parse failure.
                priorStage = None
                basename = os.path.basename(os.path.normpath(priorStateDir))
                match = re.search(r"[Ss]tage[._]*?(\d+)\s*$", basename)
                if match:
                    enumName = f"Stage_{match.group(1)}"
                    priorStage = Stage.__members__.get(enumName)
                if priorStage is None:
                    import json as _json
                    with open(statePath, "r") as _f:
                        recordedStageName = (_json.load(_f) or {}).get("stage")
                    if recordedStageName and recordedStageName in Stage.__members__:
                        priorStage = Stage[recordedStageName]
                if priorStage is None:
                    raise RuntimeError(
                        f"Could not infer prior stage from {priorStateDir!r} "
                        "(directory basename does not end in a stage number "
                        "and stage_state.json has no usable 'stage' field)."
                    )

                priorNum = int(priorStage.name.split("_", 1)[1])
                skipped = getattr(self, "skippedStages", set()) or set()
                remainingStages = [
                    s for s in Stage
                    if int(s.name.split("_", 1)[1]) > priorNum and s not in skipped
                ]
                if not remainingStages:
                    self.logger.warning(
                        "[resume] no stages left after %s under --skip-stages=%s; nothing to do",
                        priorStage.name,
                        sorted(s.name for s in skipped),
                    )
                    return

                self.logger.info(
                    "[resume] prior=%s, running %s (skipped=%s)",
                    priorStage.name,
                    [s.name for s in remainingStages],
                    sorted(s.name for s in skipped),
                )

                # Match NEW_MODE's dstLang-by-stage rule for the FIRST stage we
                # will run; the per-stage loop below flips to Rust on Stage_10.
                self.dstLang = "Rust" if remainingStages[0] == Stage.Stage_10 else "C++"

                # Load the checkpoint into funcMap / typeRegistry so the first
                # remaining stage sees the prior stage's post-translate state.
                _recordedStage, recordedDstLang = self._loadStageState(statePath, funcMap)

                # Optional: apply --resume-reload-functions overrides. The
                # checkpoint stores funcCodeLines from in-memory funcMap at the
                # end of the prior run, so any hand-fix made to the prior
                # stage's merged_funcs.{cpp,rs} on disk gets ignored by
                # default. Re-reading those functions from disk here lets the
                # user surgically patch the input to a resumed stage.
                reloadList = getattr(self, "resumeReloadFunctions", None) or []
                if reloadList:
                    overridden = self._reloadFunctionsFromDisk(
                        funcMap, priorStateDir, reloadList,
                        recordedDstLang=recordedDstLang,
                    )
                    self.logger.info(
                        "[resume-reload] overrode %d function(s) from %s before running %s",
                        overridden, priorStateDir, [s.name for s in remainingStages],
                    )

                # Seed performance_metrics.json from the prior run so the first
                # remaining stage's perf check has a baseline. Drops the entries
                # for stages we are about to (re-)run so stale retry history
                # doesn't leak in. Mirrors the SINGLE_STAGE seeding above.
                priorRunDir = os.path.dirname(os.path.normpath(priorStateDir))
                priorMetricsPath = os.path.join(priorRunDir, "performance_metrics.json")
                newMetricsPath = os.path.join(individualFuncPath, "performance_metrics.json")
                if os.path.isfile(priorMetricsPath) and not os.path.exists(newMetricsPath):
                    priorMetrics = self.loadPerformanceMetrics(priorMetricsPath)
                    for s in remainingStages:
                        priorMetrics.pop(s.name, None)
                    self.writePerformanceMetrics(newMetricsPath, priorMetrics)
                    self.logger.info(
                        "[resume] seeded performance_metrics.json from %s (dropped %s)",
                        priorMetricsPath, [s.name for s in remainingStages],
                    )

                self.ensureStageCheckStats(remainingStages)
                translationResultManager = TranslationResultManager(funcMap, remainingStages)

                for currentStage in remainingStages:
                    if currentStage == Stage.Stage_10:
                        self.dstLang = "Rust"
                    self.logger.info("[stageInfo] : %s (resume mode)", currentStage)
                    if hasattr(self, "changeStage"):
                        self.changeStage(currentStage)
                    currentStageDirectory = os.path.join(individualFuncPath, f"_{currentStage}")
                    os.makedirs(currentStageDirectory, exist_ok=True)
                    prevStageFuncMapSnapshot = self._snapshotFuncMap(funcMap)
                    prevStageTypeSnapshot = self._snapshotTypeRegistry()
                    self.preTranslateComplexStructs(currentStage)
                    self._runSccTopoTranslateLoop(
                        funcMap,
                        currentStageDirectory,
                        stage=currentStage,
                        translationResultManager=translationResultManager,
                        prevStageFuncMap=prevStageFuncMapSnapshot,
                        prevStageTypes=prevStageTypeSnapshot,
                    )
                    self._dumpStageState(currentStageDirectory, currentStage, funcMap)
                self.emitStageCheckSummary(individualFuncPath, remainingStages)
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

    def _offerManualFunctionFix(self, funcSym, failurePath, stage):
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
        stageLabel = stage.name if hasattr(stage, "name") else str(stage)
        title = f"{funcSym} failed to compile in {stageLabel} after all retries."
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
                funcSym, len(fixedBlock), stageLabel,
            )
            print(f"\n[Manual Fix] Accepted. {funcSym} will flow into merged_funcs and downstream stages.")
            return (True, fixedBlock)

    def _offerManualSccFix(self, sccGroup, failurePath, stage):
        """SCC variant of ``_offerManualFunctionFix``. Returns
        ``(True, joinedFunctionBlocks)`` on accept, where the joined string
        concatenates every SCC member's hand-fixed body in source-position
        order -- same shape the SCC success branch expects when assigning to
        ``translatedResult``. Returns ``(False, None)`` on skip / EOF / parse
        failure.
        """
        stageLabel = stage.name if hasattr(stage, "name") else str(stage)
        title = f"SCC group [{', '.join(sccGroup)}] failed to compile in {stageLabel}."
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
                sccGroup, len(fixedBlock), stageLabel,
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

    def _runSccTopoTranslateLoop(self, funcMap, outputDir, stage=None, translationResultManager=None,
                                 prevStageFuncMap=None, prevStageTypes=None):
        """Shared SCC-aware topo loop for both CF_STRUCT_FN_REPLAY and NEW_MODE.

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
                    translationResultManager.updateCurrentFuncNameAndStage(funcSym, stage)
                funcDepsObj = funcMap[funcSym]
                funcDepsObj.previouslyTranslatedFunctions = previouslyTranslatedFunctions

                allSignature = ""
                for dependentFunction in funcDepsObj.dependFunctions:
                    if dependentFunction in funcMap:
                        allSignature = allSignature + funcMap[dependentFunction].targetLangSignature + "\n"
                funcDepsObj.previouslyTranslatedFunctionSignatures = allSignature

                (successFlag, translatedResult) = self.compileWithFeedback(
                    funcSym, funcDepsObj, contextedStructs, True, stage,
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
                            funcSym, failurePath, stage,
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
                    self._logStoredFunctionResult(funcSym, storedResult, stage)

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
                    translationResultManager.updateCurrentFuncNameAndStage(sccGroup[0], stage)

                (successFlag, translatedResult, sccLabel) = self.compileSccWithFeedback(
                    sccGroup, funcMap, contextedStructs, previouslyTranslatedFunctions, stage,
                )

                manuallyFixedScc = False
                if not successFlag:
                    failurePath = os.path.join(outputDir, f"{sccLabel}.{targetFileSuffix}")
                    with open(failurePath, "w") as rs_file:
                        rs_file.write(self.cleanCode(contextedStructs + "\n" + previouslyTranslatedFunctions + "\n" + translatedResult))

                    if self.canPromptForInteractiveFix():
                        accepted, fixedResult = self._offerManualSccFix(
                            sccGroup, failurePath, stage,
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
                        translationResultManager.updateCurrentFuncNameAndStage(funcName, stage)
                        translationResultManager.updateFunctionTranslateResult(perFunction[funcName])
                        self._logStoredFunctionResult(funcName, perFunction[funcName], stage)

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
        elif self.translatorMode in (
            TranslatorModes.NEW_MODE,
            TranslatorModes.NEW_MODE_SINGLE_STAGE,
            TranslatorModes.NEW_MODE_MERGED_VIEWS,
            TranslatorModes.NEW_MODE_RESUME,
        ):
            self.runMergedOutputChecksForOutput(
                outputPath, stage, funcMap, True,
                stage=stage, prevStageFuncMap=prevStageFuncMap,
                prevStageTypes=prevStageTypes,
            )
