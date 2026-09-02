import json
import os
import re
import shlex
import shutil
import subprocess
import sys
from types import SimpleNamespace

from more_itertools import unique_everseen

from gpt_translation._call_kind_helper import callKindContext as _callKindContext
from gpt_translation.config import CARGO_LIBC_REQUIREMENT


class CBaselineError(RuntimeError):
    """Raised when the mandatory C baseline cannot be established (source
    missing, compile failure, run failure, etc.). Distinct from generic
    RuntimeError so callers can catch it specifically if they want to
    degrade gracefully."""
    pass


class PerformanceMixin:
    PERFORMANCE_OPT_LEVEL = "3"
    PERFORMANCE_CARGO_PACKAGE_NAME = "performance_runner"
    PERFORMANCE_CPP_STD = "c++20"
    # Use clang-19 instead of the project's typedefextractor-bundled
    # clang-14 (under /home/gabe/typedefextractor-target/bin/) for the
    # performance binary build. clang-14 pulls in libstdc++ 14.2's
    # headers (Ubuntu 24.10 system stdlib), which inline `std::to_string`
    # using `basic_string::__resize_and_overwrite` — a C++23 library
    # symbol that clang-14's shipped libstdc++ doesn't carry, producing
    # an `undefined reference` linker error under `-std=c++20`. clang-19
    # is the system-installed compiler (apt: clang-19) and links cleanly
    # against libstdc++ 14.2. Kept distinct from the static-analysis
    # toolchain — that one still uses the typedefextractor clang for
    # `static-and-struct-def` and friends.
    PERFORMANCE_CPP_COMPILER = "clang++-19"
    CROWN_ROOT = "/home/gabe/crown"
    CROWN_BUFFER_CRATE = "buffer"
    CROWN_STATISTICS_OUTPUT_NAME = "crown_statistics.json"
    PERFORMANCE_TEMP_DIR_NAME = "temp"

    def extractElapsedMs(self, output):
        outputText = output or ""

        elapsedMsMatch = re.search(r'(?mi)^\s*elapsed_ms\s*:\s*(-?\d+(?:\.\d+)?)\s*$', outputText)
        if elapsedMsMatch:
            return float(elapsedMsMatch.group(1))

        elapsedSecondsMatch = re.search(
            r'(?mi)^\s*(elapsed_(?:time_)?seconds?)\s*:\s*(-?\d+(?:\.\d+)?)\s*$',
            outputText,
        )
        if elapsedSecondsMatch:
            return float(elapsedSecondsMatch.group(2)) * 1000.0

        # Format: "Computation time: <seconds> seconds"
        computationTimeMatch = re.search(
            r'(?mi)^\s*Computation\s+time\s*:\s*(-?\d+(?:\.\d+)?)\s*seconds?\s*$',
            outputText,
        )
        if computationTimeMatch:
            return float(computationTimeMatch.group(1)) * 1000.0

        return None

    def extractChecksum(self, output):
        """Extract a correctness signal from the binary's stdout.

        Accepts either form:
          * ``[<word> ]?[Cc]hecksum: <number>`` — the canonical pattern,
            e.g. ``Checksum: 12345``, ``Global checksum: 999``,
            ``checksum: -42``.
          * ``bytes_processed: <number>`` — used by codebases (e.g. libcsv)
            where total bytes consumed by the parser already encodes
            "did we process the same input the C baseline did" without
            needing a separate hash line. Any divergence in parser logic
            shifts this number.

        Returns the captured digit string as-is (preserves sign and exact
        digits to avoid float-equality pitfalls). None if no line matches.

        If multiple lines match (e.g. per-iteration prints + a final
        summary), the LAST match wins so accidental intermediate prints
        don't override the final canonical value.
        """
        if not output:
            return None
        pattern = re.compile(
            r'(?m)^\s*(?:(?:[A-Za-z_][A-Za-z0-9_-]*\s+)?[Cc]hecksum'
            r'|bytes_processed)\s*:\s*(-?\d+(?:\.\d+)?)\s*$'
        )
        matches = list(pattern.finditer(output))
        if matches:
            return matches[-1].group(1).strip()
        return None

    def getPerformanceBinaryPath(self, performancePath):
        fileStem = os.path.splitext(os.path.basename(performancePath))[0]
        return os.path.join(os.path.dirname(performancePath), fileStem + ".out")

    def getPerformanceCargoProjectDir(self, performancePath):
        fileStem = os.path.splitext(os.path.basename(performancePath))[0]
        performanceDir = os.path.dirname(performancePath)
        if os.path.basename(performanceDir) == self.PERFORMANCE_TEMP_DIR_NAME:
            tempDir = performanceDir
        else:
            tempDir = os.path.join(performanceDir, self.PERFORMANCE_TEMP_DIR_NAME)
        return os.path.join(tempDir, f"{fileStem}_cargo_build")

    def getPerformanceCargoBinaryName(self):
        if os.name == "nt":
            return self.PERFORMANCE_CARGO_PACKAGE_NAME + ".exe"
        return self.PERFORMANCE_CARGO_PACKAGE_NAME

    def prepareRustPerformanceCargoProject(self, performancePath):
        cargoProjectDir = self.getPerformanceCargoProjectDir(performancePath)
        cargoSourceDir = os.path.join(cargoProjectDir, "src")
        os.makedirs(cargoSourceDir, exist_ok=True)

        cargoTomlPath = os.path.join(cargoProjectDir, "Cargo.toml")
        cargoToml = (
            "[package]\n"
            f'name = "{self.PERFORMANCE_CARGO_PACKAGE_NAME}"\n'
            'version = "0.1.0"\n'
            'edition = "2021"\n\n'
            "[dependencies]\n"
            f'libc = "{CARGO_LIBC_REQUIREMENT}"\n\n'
            "[profile.release]\n"
            f"opt-level = {self.PERFORMANCE_OPT_LEVEL}\n"
        )

        with open(performancePath, "r") as performanceFile:
            performanceCode = performanceFile.read()

        with open(cargoTomlPath, "w") as cargoTomlFile:
            cargoTomlFile.write(cargoToml)

        cargoMainPath = os.path.join(cargoSourceDir, "main.rs")
        with open(cargoMainPath, "w") as cargoMainFile:
            cargoMainFile.write(performanceCode)

        return cargoProjectDir

    def cleanupPerformanceCargoProjectDir(self, cargoProjectDir):
        if not os.path.isdir(cargoProjectDir):
            return

        shutil.rmtree(cargoProjectDir)
        tempDir = os.path.dirname(cargoProjectDir)
        if os.path.basename(tempDir) == self.PERFORMANCE_TEMP_DIR_NAME and os.path.isdir(tempDir):
            try:
                if not os.listdir(tempDir):
                    os.rmdir(tempDir)
            except OSError:
                pass

    def compilePerformanceBinary(self, performancePath):
        outputBinaryPath = self.getPerformanceBinaryPath(performancePath)
        inputExtension = os.path.splitext(performancePath)[1].lower()

        if inputExtension == ".rs":
            cargoProjectDir = self.prepareRustPerformanceCargoProject(performancePath)
            cmd = [
                "cargo",
                "build",
                "--release",
                "--quiet",
            ]
        else:
            cmd = [
                self.PERFORMANCE_CPP_COMPILER,
                f"-std={self.PERFORMANCE_CPP_STD}",
                f"-O{self.PERFORMANCE_OPT_LEVEL}",
                performancePath,
                "-o",
                outputBinaryPath,
            ]

        self.logger.info("Compiling performance binary: %s", " ".join(cmd))
        runKwargs = {
            "text": True,
            "stdout": subprocess.PIPE,
            "stderr": subprocess.PIPE,
            "timeout": 120,
        }
        if inputExtension == ".rs":
            runKwargs["cwd"] = cargoProjectDir

        try:
            result = subprocess.run(cmd, **runKwargs)
            if result.returncode != 0:
                return False, outputBinaryPath, result

            if inputExtension == ".rs":
                cargoBinaryPath = os.path.join(
                    cargoProjectDir,
                    "target",
                    "release",
                    self.getPerformanceCargoBinaryName(),
                )
                shutil.copy2(cargoBinaryPath, outputBinaryPath)
        finally:
            if inputExtension == ".rs":
                self.cleanupPerformanceCargoProjectDir(cargoProjectDir)

        return True, outputBinaryPath, result

    # Map of identifiers that commonly appear in performance.cpp
    # compile errors ("unknown type name 'X'" / "undeclared identifier 'X'")
    # to the C++ header they live in. Restricted to high-confidence
    # entries — symbols that are unambiguously part of one standard
    # header and that the LLM has been observed to drop while
    # regenerating performance.cpp between stages. False positives are
    # cheap (an extra include never breaks a compile) but false
    # negatives leave the pipeline stuck on a manual-fix prompt, so
    # we err on the side of adding rather than gating.
    _MISSING_INCLUDE_RULES = (
        # <cstdint> — fixed-width integer typedefs. This is the rule
        # whose absence stalled Stage_2 (run 14-48-49) and Stage_3
        # (run 16-09-37) on the skiplist input.
        (r"\b(?:u?int(?:8|16|32|64)_t|(?:u|s)?int_least(?:8|16|32|64)_t|"
         r"(?:u|s)?int_fast(?:8|16|32|64)_t|uintptr_t|intptr_t|"
         r"uintmax_t|intmax_t)\b",
         "#include <cstdint>"),
        # <cstddef> — size_t / ptrdiff_t / nullptr_t / max_align_t /
        # offsetof.
        (r"\b(?:size_t|ptrdiff_t|nullptr_t|max_align_t|offsetof)\b",
         "#include <cstddef>"),
        # <cstdio> — FILE I/O surface used by the benchmark templates.
        (r"\b(?:FILE|fopen|fread|fwrite|fclose|fprintf|printf|sprintf|"
         r"fputs|fputc|fgetc|fgets|fseek|ftell|rewind|fflush|stderr|"
         r"stdout|stdin)\b",
         "#include <cstdio>"),
        # <cstdlib> — heap and process helpers.
        (r"\b(?:malloc|calloc|realloc|free|exit|abort|atoi|atol|atof|"
         r"strtol|strtoul|strtod|rand|srand|RAND_MAX)\b",
         "#include <cstdlib>"),
        # <cstring> — byte / C-string helpers. ``memset`` was already
        # covered (with the legacy ``<string.h>`` header); we keep
        # both the existing header for compatibility with prior
        # behaviour and add <cstring> for the rest.
        (r"\b(?:strlen|strcmp|strncmp|strcpy|strncpy|strcat|strncat|"
         r"strchr|strrchr|strstr|memcpy|memmove|memcmp|memchr)\b",
         "#include <cstring>"),
        # <cassert> — assert macro.
        (r"\bassert\b", "#include <cassert>"),
        # <cmath> — common math functions seen in benchmark code.
        # Restricted to identifiers ambiguous enough that the compiler
        # will say "undeclared identifier" rather than silently link;
        # adding <cmath> when it's already there is a no-op.
        (r"\b(?:log|log2|log10|exp|sqrt|pow|fabs|floor|ceil|round|"
         r"sin|cos|tan|fmod|isnan|isinf)\b",
         "#include <cmath>"),
    )

    def inferMissingPerformanceIncludes(self, performancePath, compilerStderr):
        """Infer headers that need to be added to a regenerated
        ``performance.cpp`` based on the compiler's stderr.

        The LLM regenerates ``performance.cpp`` from the user prompt
        each stage, so its include list is not stable across stages —
        a stage that compiled fine can be followed by a stage that
        drops ``<cstdint>`` (observed twice on the skiplist input).
        Without auto-fix, the pipeline ends up at the interactive
        manual-fix prompt and stalls.

        Returns a deduped list of ``#include`` directives to splice
        in. Each rule looks for a high-confidence identifier in the
        compiler's "unknown type name" / "undeclared identifier"
        diagnostics and emits exactly one canonical header.
        """
        inputExtension = os.path.splitext(performancePath)[1].lower()
        if inputExtension != ".cpp":
            return []

        stderrText = compilerStderr or ""
        requiredIncludes = []

        # Legacy rules — keep verbatim so existing call sites that
        # already auto-fixed via these headers stay byte-identical.
        if re.search(r"\bmemset\b", stderrText):
            requiredIncludes.append("#include <string.h>")
        if re.search(r"\bCLOCK_MONOTONIC\b", stderrText) or re.search(r"\bclock_gettime\b", stderrText):
            requiredIncludes.append("#include <time.h>")

        for pattern, header in self._MISSING_INCLUDE_RULES:
            if re.search(pattern, stderrText):
                requiredIncludes.append(header)

        return list(unique_everseen(requiredIncludes))

    def findCppFunctionDefinitionByName(self, sourceCode, functionName):
        sourceCode = sourceCode or ""
        if not functionName:
            return ""

        signaturePattern = re.compile(
            r'(?ms)^[^\S\n]*(?:[A-Za-z_][\w:<>~]*[\s*&]+)+'
            + re.escape(functionName)
            + r'\s*\([^;{}]*\)\s*\{'
        )

        for match in signaturePattern.finditer(sourceCode):
            openingBraceIndex = sourceCode.rfind("{", match.start(), match.end())
            if openingBraceIndex == -1:
                continue

            i = openingBraceIndex
            depth = 0
            inString = False
            inChar = False
            inLineComment = False
            inBlockComment = False
            escaped = False

            while i < len(sourceCode):
                ch = sourceCode[i]
                nxt = sourceCode[i + 1] if i + 1 < len(sourceCode) else ""

                if inLineComment:
                    if ch == "\n":
                        inLineComment = False
                    i += 1
                    continue

                if inBlockComment:
                    if ch == "*" and nxt == "/":
                        inBlockComment = False
                        i += 2
                        continue
                    i += 1
                    continue

                if inString:
                    if ch == '"' and not escaped:
                        inString = False
                    escaped = (ch == "\\") and not escaped
                    i += 1
                    continue

                if inChar:
                    if ch == "'" and not escaped:
                        inChar = False
                    escaped = (ch == "\\") and not escaped
                    i += 1
                    continue

                escaped = False

                if ch == "/" and nxt == "/":
                    inLineComment = True
                    i += 2
                    continue
                if ch == "/" and nxt == "*":
                    inBlockComment = True
                    i += 2
                    continue
                if ch == '"':
                    inString = True
                    i += 1
                    continue
                if ch == "'":
                    inChar = True
                    i += 1
                    continue

                if ch == "{":
                    depth += 1
                elif ch == "}":
                    depth -= 1
                    if depth == 0:
                        return sourceCode[match.start():i + 1].strip()

                i += 1

        return ""

    def getPortablePrintFileMd5Helper(self):
        return (
            "static void print_file_md5(const char *filepath)\n"
            "{\n"
            "    char command[512];\n"
            "    snprintf(command, sizeof(command), \"md5sum %s\", filepath);\n"
            "    system(command);\n"
            "}"
        )

    def stripModelCodeMarkers(self, sourceCode):
        markerPattern = re.compile(
            r'(?mi)^\s*(?:the\s+)?final\s+(?:result\s+)?code\s*(?:is\s*)?:\s*$'
        )
        fencePattern = re.compile(r'(?m)^\s*```\w*\s*$')
        updatedCode = markerPattern.sub("", sourceCode or "")
        updatedCode = fencePattern.sub("", updatedCode)
        return updatedCode

    def sanitizePerformanceGeneratedCode(self, sourceCode):
        updatedCode = self.stripModelCodeMarkers(sourceCode)
        updatedCode = self.sanitizeRustLibcStderr(updatedCode)
        printMd5Definition = self.findCppFunctionDefinitionByName(updatedCode, "print_file_md5")
        if not printMd5Definition:
            return updatedCode

        md5Markers = (
            "CommonCrypto/CommonDigest.h",
            "openssl/md5.h",
            "CC_MD5",
            "MD5_Init",
            "MD5_CTX",
            "MD5_DIGEST_LENGTH",
        )
        if not any(marker in updatedCode for marker in md5Markers):
            return updatedCode

        updatedCode = re.sub(
            r'(?m)^\s*#\s*include\s*<CommonCrypto/CommonDigest\.h>\s*\n?',
            "",
            updatedCode,
        )
        updatedCode = re.sub(
            r'(?m)^\s*#\s*include\s*<openssl/md5\.h>\s*\n?',
            "",
            updatedCode,
        )
        updatedCode = updatedCode.replace(printMd5Definition, self.getPortablePrintFileMd5Helper(), 1)
        updatedCode = self.addIncludesToSource(updatedCode, ["#include <cstdio>", "#include <cstdlib>"])

        return updatedCode

    def sanitizeRustLibcStderr(self, sourceCode):
        updatedCode = sourceCode or ""
        if "libc::stderr" not in updatedCode:
            return updatedCode

        updatedCode = updatedCode.replace("libc::stderr", "PERFORMANCE_STDERR")
        if re.search(r'(?m)^\s*static\s+mut\s+PERFORMANCE_STDERR\s*:', updatedCode):
            return updatedCode

        stderrExternBlock = (
            'extern "C" {\n'
            '    #[link_name = "stderr"]\n'
            '    static mut PERFORMANCE_STDERR: *mut libc::FILE;\n'
            '}\n'
        )
        useMatches = list(re.finditer(r'(?m)^\s*use[^\n]*\n', updatedCode))
        if not useMatches:
            return stderrExternBlock + "\n" + updatedCode

        insertPos = useMatches[-1].end()
        return updatedCode[:insertPos] + "\n" + stderrExternBlock + updatedCode[insertPos:]

    def addIncludesToSource(self, sourceCode, includeLines):
        includeLines = [line.strip() for line in includeLines if line and line.strip()]
        if not includeLines:
            return sourceCode

        existingIncludes = set(re.findall(r'(?m)^\s*#\s*include[^\n]*$', sourceCode or ""))
        missingIncludes = [line for line in includeLines if line not in existingIncludes]
        if not missingIncludes:
            return sourceCode

        return "\n".join(missingIncludes) + "\n" + (sourceCode or "")

    def autoFixPerformanceCompileError(self, performancePath, compileResult):
        with open(performancePath, "r") as performanceFile:
            originalCode = performanceFile.read()

        updatedCode = self.sanitizePerformanceGeneratedCode(originalCode)

        missingIncludes = self.inferMissingPerformanceIncludes(performancePath, compileResult.stderr)
        updatedCode = self.addIncludesToSource(updatedCode, missingIncludes)

        if updatedCode == originalCode:
            return False

        with open(performancePath, "w") as performanceFile:
            performanceFile.write(updatedCode)

        if missingIncludes:
            self.logger.warning(
                "Auto-added missing includes to %s after compile failure: %s",
                performancePath,
                ", ".join(missingIncludes),
            )
        else:
            self.logger.warning("Auto-sanitized generated performance code for %s after compile failure", performancePath)
        return True

    def logPerformanceCompileFailure(self, performancePath, compileResult):
        self.logger.error("Performance compile failed for %s", performancePath)
        if compileResult.stdout:
            self.logger.error("Compiler stdout:\n%s", compileResult.stdout)
        if compileResult.stderr:
            self.logger.error("Compiler stderr:\n%s", compileResult.stderr)

    def canPromptForManualPerformanceFix(self):
        return sys.stdin.isatty()

    def offerManualPerformanceFix(self, performancePath, compileResult):
        if not self.canPromptForManualPerformanceFix():
            return False

        self.logPerformanceCompileFailure(performancePath, compileResult)
        self.logger.warning(
            "You may edit the generated performance entry directly, then press Enter to retry once: %s",
            performancePath,
        )

        print("\nPerformance compile failed.")
        print(f"Edit the generated performance file directly and save it:\n  {performancePath}")
        try:
            input("Press Enter after saving to retry once, or Ctrl+C to abort...")
        except EOFError:
            self.logger.warning("Manual performance fix prompt reached EOF; skipping retry")
            return False
        return True

    def offerManualPerformanceRunFix(self, performancePath, runResult):
        """Prompt user to fix a runtime performance failure (non-zero exit,
        SIGSEGV, missing elapsed_ms, etc.), then recompile so the next run
        picks up the edited source.

        Returns True if the user edited the file and a fresh recompile
        succeeded (caller should reset run state and retry). Returns False
        when stdin is not a TTY (CI/background run) or EOF is hit — caller
        then falls through to ``raise RuntimeError`` as before.

        Loops indefinitely on bad edits: if the user's fix breaks compile,
        they get re-prompted to keep editing. Ctrl+C breaks out via the
        usual KeyboardInterrupt.
        """
        return self._offerManualPerformanceFix(
            performancePath,
            header="Performance run failed.",
            details=self._formatRunFailureDetails(runResult),
        )

    def offerManualPerformanceCorrectnessFix(self, performancePath, gotChecksum, expectedChecksum):
        """Prompt user to fix a correctness failure (checksum mismatch
        against the previous stage / baseline), then recompile so the next
        run picks up the edited source.

        Same interactive contract as ``offerManualPerformanceRunFix``: True
        on success → caller restarts the 5-run loop; False on non-TTY/EOF
        → caller falls through to record correctness=False as today.
        """
        return self._offerManualPerformanceFix(
            performancePath,
            header="Performance correctness check failed (checksum mismatch).",
            details=self._formatCorrectnessFailureDetails(gotChecksum, expectedChecksum),
        )

    def _formatRunFailureDetails(self, runResult):
        lines = [f"  return code: {runResult.returncode}"]
        stderrText = (runResult.stderr or "").strip()
        if stderrText:
            lines.append("  last stderr lines:")
            for line in stderrText.splitlines()[-5:]:
                lines.append(f"    {line}")
        return "\n".join(lines)

    def _formatCorrectnessFailureDetails(self, gotChecksum, expectedChecksum):
        return (
            f"  got      = {gotChecksum}\n"
            f"  expected = {expectedChecksum}\n"
            "  Binary ran fine but the canonical Checksum line did not match "
            "the previous stage / C baseline."
        )

    def _offerManualPerformanceFix(self, performancePath, header, details):
        """Shared interactive loop for both run-failure and correctness-failure
        recovery. Prompts user to edit performance.{cpp,rs} (and optionally
        merged_funcs.*), then recompiles. Loops on bad edits; returns True
        once a recompile succeeds, False on non-TTY/EOF."""
        if not self.canPromptForManualPerformanceFix():
            return False

        performanceDir = os.path.dirname(performancePath)
        isRustSource = performancePath.endswith(".rs")
        mergedName = "merged_funcs.rs" if isRustSource else "merged_funcs.cpp"
        mergedPath = os.path.join(performanceDir, mergedName)

        while True:
            print(f"\n{header}")
            if details:
                print(details)
            print("\nEdit the performance entry file and save it:")
            print(f"  {performancePath}")
            if os.path.isfile(mergedPath):
                print("To propagate the fix to subsequent stages, also edit:")
                print(f"  {mergedPath}")
            try:
                input("Press Enter after saving to recompile + retry, or Ctrl+C to abort...")
            except EOFError:
                self.logger.warning("Manual performance-fix prompt reached EOF; skipping retry")
                return False

            success, _, compileResult = self.compilePerformanceBinary(performancePath)
            if success:
                self.logger.info(
                    "Recompile after manual performance fix succeeded; restarting run loop for %s",
                    performancePath,
                )
                return True

            self.logger.error("Recompile after manual performance fix failed for %s", performancePath)
            if compileResult.stderr:
                self.logger.error("Compiler stderr:\n%s", compileResult.stderr)
            print("\nRecompile failed — see log for details. Keep editing and press Enter to retry, or Ctrl+C to abort.")

    def normalizePerformanceArguments(self, performanceArguments):
        if performanceArguments is None:
            return []
        if isinstance(performanceArguments, str):
            return shlex.split(performanceArguments)
        if isinstance(performanceArguments, (list, tuple)):
            return [str(arg) for arg in performanceArguments]
        raise ValueError(f"Unsupported performanceArguments type: {type(performanceArguments)}")

    def extractPerformanceStringLiterals(self, sourceCode):
        literals = []
        for match in re.finditer(r'"((?:\\.|[^"\\])*)"', sourceCode or ""):
            literal = match.group(1)
            try:
                literal = bytes(literal, "utf-8").decode("unicode_escape")
            except Exception:
                pass
            literals.append(literal)
        return literals

    def isRelativePerformanceFilePath(self, value):
        if not value:
            return False

        if any(character in value for character in ("\n", "\r", "\0", "\t")):
            return False
        if "%" in value or " " in value or "://" in value:
            return False
        if os.path.isabs(value):
            return False

        normalized = value.replace("\\", "/")
        if "/" not in normalized or normalized.endswith("/"):
            return False

        parent = os.path.dirname(normalized)
        filename = os.path.basename(normalized)
        return bool(parent and filename)

    def preparePerformanceRunEnvironment(self, runCwd, *sourceTexts):
        createdDirs = []
        candidateDirs = set()

        for sourceText in sourceTexts:
            for literal in self.extractPerformanceStringLiterals(sourceText):
                if not self.isRelativePerformanceFilePath(literal):
                    continue
                normalizedLiteral = literal.replace("\\", os.sep)
                parentDir = os.path.dirname(normalizedLiteral)
                candidateDirs.add(os.path.normpath(os.path.join(runCwd, parentDir)))

        for candidateDir in sorted(candidateDirs):
            os.makedirs(candidateDir, exist_ok=True)
            createdDirs.append(candidateDir)

        if createdDirs:
            self.logger.debug(
                "Prepared performance runtime directories for %s: %s",
                runCwd,
                ", ".join(createdDirs),
            )

    def loadPerformanceMetrics(self, metricsPath):
        if not os.path.isfile(metricsPath):
            return {}
        try:
            with open(metricsPath, "r") as metricsFile:
                loaded = json.load(metricsFile)
            if isinstance(loaded, dict):
                return loaded
        except Exception as e:
            self.logger.warning("Failed to load performance metrics from %s: %s", metricsPath, e)
        return {}

    def loadPerformanceInformation(self, outputPath):
        currentDir = os.path.abspath(os.path.dirname(outputPath))
        searchDir = currentDir

        while True:
            baseName = os.path.basename(searchDir)
            if baseName.startswith("individual-funcs_"):
                inputDir = os.path.dirname(searchDir)
                infoPath = os.path.join(inputDir, "performance_information.json")
                if os.path.isfile(infoPath):
                    with open(infoPath, "r") as infoFile:
                        info = json.load(infoFile)
                    prompt = info.get("prompt", "")
                    performanceArguments = info.get("input_arguments", "")
                    self.logger.info("Loaded performance information from %s", infoPath)
                    return prompt, performanceArguments
                raise FileNotFoundError(f"performance_information.json not found at {infoPath}")

            parentDir = os.path.dirname(searchDir)
            if parentDir == searchDir:
                break
            searchDir = parentDir

        raise FileNotFoundError(f"Could not locate input directory for performance information from {outputPath}")

    def writePerformanceMetrics(self, metricsPath, metrics):
        with open(metricsPath, "w") as metricsFile:
            json.dump(metrics, metricsFile, indent=2, sort_keys=True)
            metricsFile.write("\n")

    def getCrownRoot(self, crownRoot=None):
        return crownRoot or getattr(self, "crownRoot", self.CROWN_ROOT)

    def getCrownBufferSourcePath(self, crownRoot=None):
        return os.path.join(
            self.getCrownRoot(crownRoot),
            self.CROWN_BUFFER_CRATE,
            "src",
            "buffer.rs",
        )

    def getCrownStatisticsPath(self, crownRoot=None):
        return os.path.join(
            self.getCrownRoot(crownRoot),
            self.CROWN_BUFFER_CRATE,
            "analysis_results",
            "statistics.json",
        )

    def getCrownAnalysisOutputPath(self, inputPath):
        return os.path.join(os.path.dirname(inputPath), self.CROWN_STATISTICS_OUTPUT_NAME)

    def runCrownAnalysisForOutput(self, inputPath, label=None, crownRoot=None):
        if not inputPath:
            raise ValueError("inputPath must not be empty")
        if not os.path.isfile(inputPath):
            raise FileNotFoundError(f"Input file not found: {inputPath}")

        if os.path.splitext(inputPath)[1].lower() != ".rs":
            self.logger.info("Skipping Crown analysis for non-Rust output %s", inputPath)
            return None

        crownRoot = self.getCrownRoot(crownRoot)
        analyseScriptPath = os.path.join(crownRoot, "analyse.sh")
        if not os.path.isfile(analyseScriptPath):
            raise FileNotFoundError(f"Crown analyse.sh not found at {analyseScriptPath}")

        bufferSourcePath = self.getCrownBufferSourcePath(crownRoot)
        statisticsPath = self.getCrownStatisticsPath(crownRoot)
        savedStatisticsPath = self.getCrownAnalysisOutputPath(inputPath)

        os.makedirs(os.path.dirname(bufferSourcePath), exist_ok=True)
        shutil.copy2(inputPath, bufferSourcePath)
        if os.path.exists(statisticsPath):
            os.remove(statisticsPath)

        cmd = ["bash", "./analyse.sh", self.CROWN_BUFFER_CRATE]
        self.logger.info(
            "Running Crown analysis%s for %s: %s",
            f" [{label}]" if label is not None else "",
            inputPath,
            " ".join(cmd),
        )
        result = subprocess.run(
            cmd,
            cwd=crownRoot,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=300,
        )
        if result.returncode != 0:
            self.logger.error("Crown analysis failed for %s", inputPath)
            if result.stdout:
                self.logger.error("Crown stdout:\n%s", result.stdout)
            if result.stderr:
                self.logger.error("Crown stderr:\n%s", result.stderr)
            raise RuntimeError(f"Crown analysis failed for {inputPath}")

        if not os.path.isfile(statisticsPath):
            raise FileNotFoundError(f"Crown statistics.json not found at {statisticsPath}")

        with open(statisticsPath, "r") as statisticsFile:
            statistics = json.load(statisticsFile)

        with open(savedStatisticsPath, "w") as savedStatisticsFile:
            json.dump(statistics, savedStatisticsFile, indent=2, sort_keys=True)
            savedStatisticsFile.write("\n")

        self.logger.info("Saved Crown statistics for %s at %s", inputPath, savedStatisticsPath)
        return savedStatisticsPath

    C_BASELINE_KEY = "baseline_c"

    def getPerformanceMetricsContext(self, performancePath):
        stageDirName = os.path.basename(os.path.dirname(performancePath))
        stageMatch = re.fullmatch(r"_Stage\.Stage_(\d+)", stageDirName)

        if stageMatch:
            stageIndex = int(stageMatch.group(1))
            metricsRoot = os.path.dirname(os.path.dirname(performancePath))
            currentKey = f"Stage_{stageIndex}"
            metricsPath = os.path.join(metricsRoot, "performance_metrics.json")
            # When --skip-stages omits stages, performance_metrics.json
            # has gaps (e.g. Stage_5 / Stage_6 entries simply don't exist).
            # Walk backwards from stageIndex-1 to find the most recent
            # stage that ACTUALLY ran, so the perf gate compares against
            # a real baseline instead of falling through to "no prev =
            # silent pass". Discarded stages are kept in the walk: their
            # average_elapsed_ms was rewritten to the predecessor's value
            # by _markStageDiscardedInMetrics, so they propagate the
            # effective baseline correctly. Fall back to baseline_c if
            # no earlier Stage_N entry exists (Stage_1, or every prior
            # stage was skipped).
            previousKey = self.C_BASELINE_KEY
            if stageIndex > 1:
                try:
                    metrics = self.loadPerformanceMetrics(metricsPath)
                except Exception:
                    metrics = {}
                for candidateIndex in range(stageIndex - 1, 0, -1):
                    candidateKey = f"Stage_{candidateIndex}"
                    if candidateKey in metrics:
                        previousKey = candidateKey
                        break
        else:
            metricsRoot = os.path.dirname(performancePath)
            currentKey = os.path.basename(performancePath)
            previousKey = None
            metricsPath = os.path.join(metricsRoot, "performance_metrics.json")

        return metricsPath, currentKey, previousKey

    def isPerformanceWithinStageThreshold(self, currentKey, previousKey, averageElapsedMs, metrics,
                                          thresholdPct=None, thresholdMs=None):
        """Stage performance gate.

        If ``thresholdPct`` is provided (or attached as ``self.perfDegradeThresholdPct``),
        gate is ``current <= previous * (1 + thresholdPct/100)``. Otherwise falls back
        to absolute ``current <= previous + thresholdMs`` (legacy 100ms behavior).
        """
        if not previousKey or previousKey not in metrics:
            return True

        previousElapsedMs = metrics[previousKey].get("average_elapsed_ms")
        if previousElapsedMs is None:
            return True

        if thresholdPct is None:
            thresholdPct = getattr(self, "perfDegradeThresholdPct", None)

        if thresholdPct is not None:
            ceiling = previousElapsedMs * (1.0 + thresholdPct / 100.0)
            describe = f"previous %.3f ms x (1 + {thresholdPct:.1f}%%) = %.3f ms"
        else:
            if thresholdMs is None:
                thresholdMs = 100
            ceiling = previousElapsedMs + thresholdMs
            describe = f"previous %.3f ms + {thresholdMs} ms"

        if averageElapsedMs > ceiling:
            self.logger.warning(
                "Performance regression detected for %s: current %.3f ms > " + describe,
                currentKey,
                averageElapsedMs,
                previousElapsedMs,
                ceiling,
            )
            return False

        self.logger.info(
            "Performance check passed for %s: current %.3f ms <= " + describe,
            currentKey,
            averageElapsedMs,
            previousElapsedMs,
            ceiling,
        )
        return True

    def recordPerformanceMetric(self, performancePath, averageElapsedMs, runLogs, checksum=None,
                                correctnessCheckPassed=None, expectedChecksum=None):
        """Persist this stage's perf and (optionally) correctness verdicts.

        ``checksum`` is the canonical checksum across runs (or None if the binary
        did not emit one). ``correctnessCheckPassed`` is the result of comparing
        ``checksum`` to the previous stage's recorded checksum; pass None to skip
        recording the correctness field.
        """
        metricsPath, currentKey, previousKey = self.getPerformanceMetricsContext(performancePath)
        metrics = self.loadPerformanceMetrics(metricsPath)
        performanceCheckPassed = self.isPerformanceWithinStageThreshold(
            currentKey,
            previousKey,
            averageElapsedMs,
            metrics,
        )
        previousElapsedMs = None
        if previousKey and previousKey in metrics:
            previousElapsedMs = metrics[previousKey].get("average_elapsed_ms")

        # Preserve accumulating retry-history across re-runs of perf during a
        # retry loop. Without this, each runPerformanceCheck inside the retry
        # loop overwrites the previous attempt's record.
        existingRetry = None
        if currentKey in metrics:
            existingRetry = metrics[currentKey].get("perf_retry")

        record = {
            "average_elapsed_ms": averageElapsedMs,
            "performance_check_passed": performanceCheckPassed,
            "runs": runLogs,
            "source_file": performancePath,
        }
        if checksum is not None:
            record["checksum"] = checksum
        if correctnessCheckPassed is not None:
            record["correctness_check_passed"] = correctnessCheckPassed
        if expectedChecksum is not None:
            record["expected_checksum"] = expectedChecksum
        if previousElapsedMs is not None:
            record["previous_stage_baseline_ms"] = previousElapsedMs
        if existingRetry is not None:
            record["perf_retry"] = existingRetry

        metrics[currentKey] = record
        self.writePerformanceMetrics(metricsPath, metrics)
        self.logger.info("Recorded performance result %.3f ms at %s", averageElapsedMs, metricsPath)
        return performanceCheckPassed

    def loadPreviousStageChecksum(self, performancePath):
        """Return the prev stage's recorded checksum string, or None."""
        metricsPath, _, previousKey = self.getPerformanceMetricsContext(performancePath)
        if not previousKey:
            return None
        metrics = self.loadPerformanceMetrics(metricsPath)
        if previousKey not in metrics:
            return None
        return metrics[previousKey].get("checksum")

    def loadCurrentStageRecord(self, performancePath):
        """Return the freshly-written metric record for this stage, or {}."""
        metricsPath, currentKey, _ = self.getPerformanceMetricsContext(performancePath)
        metrics = self.loadPerformanceMetrics(metricsPath)
        return metrics.get(currentKey, {})

    def appendPerfRetryAttempt(self, performancePath, attemptRecord):
        """Append a retry attempt log to the current stage's metric record."""
        metricsPath, currentKey, _ = self.getPerformanceMetricsContext(performancePath)
        metrics = self.loadPerformanceMetrics(metricsPath)
        record = metrics.setdefault(currentKey, {})
        retryRoot = record.setdefault("perf_retry", {"attempts": []})
        retryRoot.setdefault("attempts", []).append(attemptRecord)
        retryRoot["attempted"] = len(retryRoot["attempts"])
        if attemptRecord.get("perf_passed"):
            retryRoot["succeeded_at_attempt"] = attemptRecord.get("attempt")
        self.writePerformanceMetrics(metricsPath, metrics)

    def runPerformanceCheck(self, inputPath, performancePrompt, performanceArguments):
        if not inputPath:
            raise ValueError("inputPath must not be empty")
        if not os.path.isfile(inputPath):
            raise FileNotFoundError(f"Input file not found: {inputPath}")

        inputExtension = os.path.splitext(inputPath)[1].lower()
        isRustSource = inputExtension == ".rs"
        languageHint = "rust" if isRustSource else "cpp"
        performanceFileName = "performance.rs" if isRustSource else "performance.cpp"
        performancePath = os.path.join(os.path.dirname(inputPath), performanceFileName)

        with open(inputPath, "r") as srcFile:
            inputCode = srcFile.read()

        with open(performancePath, "w") as performanceFile:
            performanceFile.write(inputCode)

        promptPrefix = (performancePrompt or "").strip()

        request = (
            f"Please generate {'Rust' if isRustSource else 'C++'} performance entry code according to the original C main function I provide below.\n"
            + "The generated main function must preserve the same logic, control flow, validation, side effects, output, and timing behavior as the original C main function.\n"
            + "The generated entry code must be self-contained in the performance runner environment: preserve relative file paths from the original C main, but create any missing parent directories before writing output files.\n"
            + "If the original C main function uses srand and rand, generate performance code that calls those same C libc srand and rand functions via FFI so the generated performance runner preserves the C random sequence and seeding behavior exactly. Do not introduce FFI requirements for other C library functions just for this random-number rule.\n"
            + "Do not use platform-specific or external crypto headers/libraries such as CommonCrypto, OpenSSL, or CryptoAPI; if a C++ print_file_md5 helper is missing, implement it with the md5sum command and standard headers only.\n"
            + "Reply with the generated main function, any directly required include/import/use statements, and any missing helper functions required by that main function.\n"
            + "I will provide dependency functions, structs, and type definitions below. Use them as already-existing context.\n"
            + "Do NOT repeat, restate, redefine, wrap, or translate dependency functions, structs, enums, typedefs, type aliases, or helper functions that are already fully defined in the provided dependency code.\n"
            + "Use existing scope functions directly, including when passing them as function pointers / callbacks (e.g. comparators, destructors, visitors). Do NOT generate wrapper closures or shim functions that merely re-call an already-defined dependency function; reference the dependency symbol directly, and if its signature differs from the expected callback type, bridge it with a single `std::mem::transmute` (Rust) or a C-style cast (C++) instead of redefining the logic.\n"
            + "If the generated main function calls a helper that is not fully defined in the provided dependency code, add a compatible helper implementation in your output.\n"
            + "For Rust: NEVER use `std::mem::zeroed::<T>()` or `MaybeUninit::zeroed().assume_init()` to construct a struct that contains non-nullable function pointers (plain `fn(...)` / `extern \"C\" fn(...)` fields), references, `NonNull`, or other types whose all-zero bit pattern is invalid — doing so causes an immediate runtime panic (\"attempted to zero-initialize type ...\"). Instead, allocate the object with `std::mem::MaybeUninit::<T>::uninit()`, pass `.as_mut_ptr()` into the initializer function (which writes every field through the raw pointer), and then call `.assume_init()` once initialization is complete. Only fall back to a field-by-field struct literal if no initializer function exists.\n"
            + "Your output must contain exactly one main function, plus only the minimal include/import/use statements and missing helper functions required by that main function.\n"
            + "Return only the generated main function and missing helpers. Do not return a full translation unit.\n"
            + "For the final result, please reply with, the final code is : \n"
            + "// original C function : \n"
            + (promptPrefix + "\n" if promptPrefix else "")
            + "// the dependency functions :\n"
            + f"```{languageHint}\n"
            + inputCode
            + "\n```"
        )

        with _callKindContext(self, "performance_main"):
            response = self.chunkAndSend("performance_main", request)
        extractedPerformanceCode = self.extractTargetCode(response, [languageHint]).strip()
        if not extractedPerformanceCode:
            extractedPerformanceCode = (response or "").strip()
        if not extractedPerformanceCode:
            raise ValueError(f"Failed to extract generated main function from model response: {response}")

        existingMain = self.extractMainFunctionCode(inputCode, languageHint)
        if existingMain:
            baseCode = inputCode.replace(existingMain, "", 1).rstrip()
        else:
            baseCode = inputCode.rstrip()

        separator = "\n\n" if baseCode else ""
        finalCode = baseCode + separator + extractedPerformanceCode.strip() + "\n"
        finalCode = self.cleanCode(finalCode)
        finalCode = self.sanitizePerformanceGeneratedCode(finalCode)

        with open(performancePath, "w") as performanceFile:
            performanceFile.write(finalCode)

        self.logger.info("Created performance entry file at %s", performancePath)

        manualFixOffered = False
        while True:
            success, outputBinaryPath, compileResult = self.compilePerformanceBinary(performancePath)
            if success:
                break

            if self.autoFixPerformanceCompileError(performancePath, compileResult):
                self.logger.info("Retrying compile for %s after auto-fix", performancePath)
                continue

            if not manualFixOffered and self.offerManualPerformanceFix(performancePath, compileResult):
                manualFixOffered = True
                self.logger.info("Retrying compile for %s after manual performance fix", performancePath)
                continue

            self.logPerformanceCompileFailure(performancePath, compileResult)
            raise RuntimeError(f"Performance compile failed for {performancePath}")

        runArgs = self.normalizePerformanceArguments(performanceArguments)
        self.logger.info("Using performance arguments for %s: %s", performancePath, runArgs)
        runCwd = os.path.abspath(os.path.dirname(performancePath))
        # User-supplied relative paths in ``input_arguments`` (e.g.
        # ``../pokedex.json``) are written assuming cwd is the
        # ``individual-funcs_*/`` output dir. Various pipeline modes drop
        # perf into a wrapper subdir (struct-fn-replay → ``temp/``, new-mode
        # → ``_Stage.Stage_<n>/``) which silently changes how those paths
        # resolve. Walk up to the ``individual-funcs_*`` ancestor so cwd is
        # consistent across modes; fall through to the original cwd if no
        # such ancestor exists (perf invoked outside the normal layout).
        searchDir = runCwd
        while True:
            if os.path.basename(searchDir).startswith("individual-funcs_"):
                runCwd = searchDir
                break
            parentDir = os.path.dirname(searchDir)
            if parentDir == searchDir:
                break
            searchDir = parentDir
        outputBinaryRunPath = os.path.abspath(outputBinaryPath)
        self.preparePerformanceRunEnvironment(runCwd, promptPrefix, finalCode)

        elapsedMsList = []
        runLogs = []
        runCount = 0

        # Outer retry loop: lets a correctness-check mismatch trigger an
        # interactive recompile + re-run. The inner ``while runCount < 5``
        # is the binary's own 5-sample loop. Both restart from runCount=0
        # whenever the user hand-fixes the source.
        while True:
            while runCount < 5:
                cmd = [outputBinaryRunPath] + runArgs
                self.logger.info(
                    "Running performance binary (%d/5) in %s: %s",
                    runCount + 1,
                    runCwd,
                    " ".join(cmd),
                )
                try:
                    runResult = subprocess.run(
                        cmd,
                        text=True,
                        stdout=subprocess.PIPE,
                        stderr=subprocess.PIPE,
                        timeout=120,
                        cwd=runCwd,
                    )
                except subprocess.TimeoutExpired as te:
                    # Binary did not exit within the 120s budget (infinite loop,
                    # deadlock, or massive perf regression). Synthesise a
                    # runResult-shaped object so the failure branch below can
                    # log + offer interactive recovery uniformly with the
                    # non-zero-exit and unparseable-elapsed paths.
                    self.logger.error(
                        "Performance run timed out after %ss for %s (likely infinite loop or deadlock)",
                        te.timeout, performancePath,
                    )
                    partialStdout = te.stdout if isinstance(te.stdout, str) else ""
                    partialStderr = te.stderr if isinstance(te.stderr, str) else ""
                    timeoutBanner = (
                        f"[Timed out after {te.timeout}s — likely infinite loop or deadlock]"
                    )
                    runResult = SimpleNamespace(
                        returncode=f"TIMEOUT({te.timeout}s)",
                        stdout=partialStdout,
                        stderr=(f"{timeoutBanner}\n{partialStderr}").strip(),
                    )

                combinedOutput = ((runResult.stdout or "") + "\n" + (runResult.stderr or "")).strip()
                elapsedMs = self.extractElapsedMs(combinedOutput)
                checksum = self.extractChecksum(combinedOutput)

                if runResult.returncode != 0 or elapsedMs is None:
                    self.logger.error(
                        "Performance run failed for %s with return code %s",
                        performancePath,
                        runResult.returncode,
                    )
                    if runResult.stdout:
                        self.logger.error("Performance stdout:\n%s", runResult.stdout)
                    if runResult.stderr:
                        self.logger.error("Performance stderr:\n%s", runResult.stderr)
                    if elapsedMs is None:
                        self.logger.error("Could not parse elapsed time from performance output")

                    # Interactive recovery: let the user hand-fix the generated
                    # entry (or merged_funcs source it was assembled from), then
                    # recompile and restart the 5-run loop. Non-TTY runs and
                    # EOF fall through to the original RuntimeError so unattended
                    # pipelines fail loudly instead of hanging.
                    if self.offerManualPerformanceRunFix(performancePath, runResult):
                        elapsedMsList = []
                        runLogs = []
                        runCount = 0
                        continue

                    raise RuntimeError(f"Performance run failed for {performancePath}")

                elapsedMsList.append(elapsedMs)
                runLogs.append(
                    {
                        "run_index": runCount + 1,
                        "elapsed_ms": elapsedMs,
                        "checksum": checksum,
                        "args": runArgs,
                    }
                )
                runCount += 1

            averageElapsedMs = sum(elapsedMsList) / len(elapsedMsList)
            self.logger.info("Average elapsed_ms across %d runs: %.3f", len(elapsedMsList), averageElapsedMs)

            # Cross-run checksum sanity + cross-stage correctness gate.
            runChecksums = [r.get("checksum") for r in runLogs]
            nonNullChecksums = [c for c in runChecksums if c is not None]
            canonicalChecksum = None
            if nonNullChecksums:
                uniqueChecksums = set(nonNullChecksums)
                if len(uniqueChecksums) == 1 and len(nonNullChecksums) == len(runChecksums):
                    canonicalChecksum = nonNullChecksums[0]
                else:
                    self.logger.warning(
                        "Performance runs produced inconsistent checksums for %s: %s",
                        performancePath,
                        runChecksums,
                    )

            expectedChecksum = self.loadPreviousStageChecksum(performancePath)
            correctnessCheckPassed = None
            if canonicalChecksum is not None:
                if expectedChecksum is None:
                    # No prev baseline — adopt this checksum as the new reference,
                    # don't fail correctness.
                    correctnessCheckPassed = True
                    self.logger.info(
                        "[Correctness check baseline] : %s checksum=%s (no previous stage to compare)",
                        os.path.basename(os.path.dirname(performancePath)),
                        canonicalChecksum,
                    )
                elif canonicalChecksum == expectedChecksum:
                    correctnessCheckPassed = True
                    self.logger.info(
                        "[Correctness check pass] : %s checksum=%s",
                        os.path.basename(os.path.dirname(performancePath)),
                        canonicalChecksum,
                    )
                else:
                    correctnessCheckPassed = False
                    self.logger.error(
                        "[Correctness check fail] : %s expected=%s got=%s",
                        os.path.basename(os.path.dirname(performancePath)),
                        expectedChecksum,
                        canonicalChecksum,
                    )
            else:
                self.logger.warning(
                    "[Correctness check skipped] : %s (no parsable Checksum line in run output)",
                    os.path.basename(os.path.dirname(performancePath)),
                )

            # Interactive recovery on checksum mismatch: prompt user, recompile,
            # restart the 5-run loop from scratch. Skipped if non-TTY (CI path
            # records correctness=False and lets translation_pipeline_mixin's
            # gate trigger the usual [Stage discarded] revert).
            if correctnessCheckPassed is False:
                if self.offerManualPerformanceCorrectnessFix(
                    performancePath, canonicalChecksum, expectedChecksum
                ):
                    elapsedMsList = []
                    runLogs = []
                    runCount = 0
                    continue
            break

        return self.recordPerformanceMetric(
            performancePath, averageElapsedMs, runLogs,
            checksum=canonicalChecksum,
            correctnessCheckPassed=correctnessCheckPassed,
            expectedChecksum=expectedChecksum,
        )

    @staticmethod
    def findCSourceWithMain(codebasePath):
        """Locate a top-level .c file that defines `int main(`. Returns the
        path or None. Used to establish a Stage_1 baseline."""
        import glob as _glob
        candidates = sorted(_glob.glob(os.path.join(codebasePath, "*.c")))
        for path in candidates:
            try:
                with open(path, "r") as f:
                    src = f.read()
                if re.search(r"\bint\s+main\s*\(", src):
                    return path
            except OSError:
                continue
        return None

    def runCBaselinePerformance(self, codebasePath, individualFuncPath, performanceArguments):
        """Compile and run the original C source 5 times to establish a
        Stage_1 baseline. Saves the result to performance_metrics.json under
        the ``baseline_c`` key.

        MANDATORY: this method raises CBaselineError on any hard failure
        (no source, compile failure, run failure). Callers that want the
        baseline to be optional must catch the exception (or not call this
        method at all, e.g. via ``--skip-c-baseline``).
        """
        sourcePath = self.findCSourceWithMain(codebasePath)
        if not sourcePath:
            raise CBaselineError(
                f"C baseline source not found: no .c file with `int main(` "
                f"at {codebasePath}. Add one, or pass --skip-c-baseline=true "
                f"to bypass (not recommended)."
            )

        baselineDir = os.path.join(individualFuncPath, "_baseline_c")
        os.makedirs(baselineDir, exist_ok=True)
        binPath = os.path.join(baselineDir, "performance.out")

        compileCmd = [
            "clang", "-O3", "-x", "c",
            sourcePath, "-o", binPath, "-lm",
        ]
        self.logger.info("[C baseline] compiling: %s", " ".join(compileCmd))
        try:
            compileResult = subprocess.run(
                compileCmd,
                text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                timeout=120,
            )
        except (OSError, subprocess.SubprocessError) as e:
            raise CBaselineError(
                f"C baseline: compile invocation failed: {e}"
            ) from e

        if compileResult.returncode != 0:
            raise CBaselineError(
                f"C baseline compile failed (rc={compileResult.returncode}) for "
                f"{sourcePath}:\n{compileResult.stderr[:2000]}"
            )

        # Run with the same args + cwd resolution as the staged perf check.
        runArgs = self.normalizePerformanceArguments(performanceArguments)
        runCwd = self.resolvePerformanceRunCwd(binPath, runArgs)

        elapsedMsList = []
        runLogs = []
        for i in range(1, 6):
            cmd = [os.path.abspath(binPath)] + runArgs
            self.logger.info("[C baseline] run %d/5 in %s: %s", i, runCwd, " ".join(cmd))
            try:
                runResult = subprocess.run(
                    cmd, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                    timeout=120, cwd=runCwd,
                )
            except subprocess.SubprocessError as e:
                raise CBaselineError(
                    f"C baseline run {i}/5 invocation failed: {e}"
                ) from e

            output = ((runResult.stdout or "") + "\n" + (runResult.stderr or "")).strip()
            elapsedMs = self.extractElapsedMs(output)
            checksum = self.extractChecksum(output)
            if runResult.returncode != 0 or elapsedMs is None:
                raise CBaselineError(
                    f"C baseline run {i}/5 failed: rc={runResult.returncode} "
                    f"elapsed_ms={elapsedMs}\nstdout:\n{(runResult.stdout or '')[:1000]}\n"
                    f"stderr:\n{(runResult.stderr or '')[:1000]}"
                )

            elapsedMsList.append(elapsedMs)
            runLogs.append({
                "run_index": i, "elapsed_ms": elapsedMs,
                "checksum": checksum, "args": runArgs,
            })

        averageElapsedMs = sum(elapsedMsList) / len(elapsedMsList)
        runChecksums = [r["checksum"] for r in runLogs]
        canonicalChecksum = None
        if all(c is not None for c in runChecksums):
            if len(set(runChecksums)) == 1:
                canonicalChecksum = runChecksums[0]
            else:
                self.logger.warning(
                    "[C baseline] inconsistent checksums across runs: %s", runChecksums,
                )

        # Save to metrics under "baseline_c" key.
        metricsPath = os.path.join(individualFuncPath, "performance_metrics.json")
        metrics = self.loadPerformanceMetrics(metricsPath)
        record = {
            "average_elapsed_ms": averageElapsedMs,
            "runs": runLogs,
            "source_file": sourcePath,
            "binary": binPath,
        }
        if canonicalChecksum is not None:
            record["checksum"] = canonicalChecksum
        metrics[self.C_BASELINE_KEY] = record
        self.writePerformanceMetrics(metricsPath, metrics)

        self.logger.info(
            "[C baseline] avg=%.3f ms checksum=%s saved to %s",
            averageElapsedMs, canonicalChecksum, metricsPath,
        )
        return averageElapsedMs

    def normalizePerformanceArguments(self, performanceArguments):
        """Convert input_arguments to a list of strings (it may be a string,
        list, or None in performance_information.json)."""
        if performanceArguments is None or performanceArguments == "":
            return []
        if isinstance(performanceArguments, str):
            return [performanceArguments]
        return [str(a) for a in performanceArguments]

    def resolvePerformanceRunCwd(self, binPath, runArgs):
        """Choose a working directory for the perf binary so that relative
        paths in performance_arguments resolve the same way as the staged
        perf check.

        Mirrors ``runPerformanceCheck`` cwd logic: walk up to the
        ``individual-funcs_*/`` ancestor and use that as cwd, so input args
        like ``../pokedex.json`` resolve to the codebase root.
        """
        searchDir = os.path.abspath(os.path.dirname(binPath))
        while True:
            if os.path.basename(searchDir).startswith("individual-funcs_"):
                return searchDir
            parentDir = os.path.dirname(searchDir)
            if parentDir == searchDir:
                break
            searchDir = parentDir
        return os.path.dirname(binPath)
