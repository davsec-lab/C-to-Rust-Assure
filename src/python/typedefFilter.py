import os
import logging
import sys
import re
import subprocess
import shlex


# glibc-internal struct names whose bodies must NOT be re-emitted into the
# per-function .i file. `unused-typedef-extractor` keeps these because any
# function using FILE* is reachable to struct _IO_FILE through the typedef,
# but they're already defined by <cstdio>/<stdio.h> on the destination side
# and the duplicate definition triggers `redefinition of '_IO_FILE'`. Forward
# declarations (`struct _IO_FILE;`) and the `typedef struct _IO_FILE FILE;`
# are redeclaration-safe and stay.
OPAQUE_LIBC_STRUCTS = ("_IO_FILE", "_IO_marker", "_IO_codecvt", "_IO_wide_data")


# Marker tokens that only appear on declarations expanded from glibc
# system headers (via <sys/cdefs.h>'s __THROW / __REDIRECT / __nonnull
# / __attribute_malloc__ / etc. machinery). The ``__``-prefix is
# reserved by ISO C for the implementation, so user code essentially
# never produces them — presence of any marker in an ``extern`` decl
# is a high-precision signal the line came from a preprocessed system
# header and is redundant once the destination side ``#include``s the
# corresponding ``<cstdio>`` / ``<cstdlib>`` / ``<cstring>``.
#
# Removing them also unblocks the ``conflicting asm label`` error that
# fires when glibc's ``__REDIRECT_NTH(sscanf, ..., __isoc99_sscanf)``
# expanded form lands next to ``<cstdio>``'s own declaration of the
# same symbol.
LIBC_DECORATION_MARKERS = (
    "__attribute__",
    "__restrict",
    "__asm__",
    "__THROW",
    "__nonnull",
    "__nothrow",
    "__wur",
    "__malloc",
)


def stripLibcExternDeclarations(filePath):
    """Remove ``extern`` declarations whose body contains any glibc
    decoration marker. Handles multi-line declarations by tracking the
    terminating ``;`` at parenthesis depth 0, so the multi-line
    ``extern FILE *fopen (...) __attribute__((__malloc__));`` form is
    deleted as one unit.

    User-written ``extern`` declarations (without ``__``-prefix glibc
    decorations) are left untouched.
    """
    with open(filePath, "r") as srcFile:
        src = srcFile.read()

    out = []
    i = 0
    n = len(src)
    changed = False

    while i < n:
        nl = src.find("\n", i)
        lineEnd = n if nl == -1 else nl
        line = src[i:lineEnd]
        stripped = line.lstrip()

        if not re.match(r"extern\b", stripped):
            # Keep this line as-is and advance past the newline.
            out.append(src[i:lineEnd + (1 if nl != -1 else 0)])
            i = lineEnd + (1 if nl != -1 else 0)
            continue

        # Found an ``extern`` line — walk forward to the matching ``;``
        # at paren depth 0 so multi-line decls are captured whole. Bail
        # if we hit ``{`` at depth 0 first: that means this isn't a
        # plain decl (e.g. ``extern "C" { ... }`` linkage block or an
        # array initializer) and we should keep the line as-is rather
        # than risk swallowing a multi-statement block.
        depth = 0
        j = i
        declEnd = -1
        sawOpenBrace = False
        while j < n:
            ch = src[j]
            if ch == "(":
                depth += 1
            elif ch == ")":
                depth -= 1
            elif ch == "{" and depth == 0:
                sawOpenBrace = True
                break
            elif ch == ";" and depth == 0:
                declEnd = j + 1
                break
            j += 1

        if sawOpenBrace:
            # Not a stripable decl. Keep the current line and advance.
            out.append(src[i:lineEnd + (1 if nl != -1 else 0)])
            i = lineEnd + (1 if nl != -1 else 0)
            continue

        if declEnd < 0:
            # Couldn't find a terminator — bail and keep the rest verbatim.
            out.append(src[i:])
            i = n
            break

        declText = src[i:declEnd]
        end = declEnd
        if end < n and src[end] == "\n":
            end += 1

        if any(marker in declText for marker in LIBC_DECORATION_MARKERS):
            changed = True
        else:
            out.append(src[i:end])

        i = end

    if changed:
        with open(filePath, "w") as srcFile:
            srcFile.write("".join(out))


def stripOpaqueLibcStructBodies(filePath):
    with open(filePath, "r") as srcFile:
        src = srcFile.read()

    changed = False
    for structName in OPAQUE_LIBC_STRUCTS:
        headerRe = re.compile(r"\bstruct\s+" + re.escape(structName) + r"\s*\{")
        while True:
            match = headerRe.search(src)
            if match is None:
                break

            depth = 1
            i = match.end()
            n = len(src)
            while i < n and depth > 0:
                ch = src[i]
                if ch == "{":
                    depth += 1
                elif ch == "}":
                    depth -= 1
                i += 1

            if depth != 0:
                # Unbalanced braces — bail out for this struct to avoid corruption.
                break

            end = i
            while end < n and src[end] in " \t":
                end += 1
            if end < n and src[end] == ";":
                end += 1
            if end < n and src[end] == "\n":
                end += 1

            src = src[: match.start()] + src[end:]
            changed = True

    if changed:
        with open(filePath, "w") as srcFile:
            srcFile.write(src)

# from functionAndDeps import FunctionAndDependencies

def removeEmptyLines(filePath):
    with open(filePath, 'r') as file:
        lines = file.readlines()
    with open(filePath, 'w') as file:
        for line in lines:
            strippedLine = line.strip()
            if len(strippedLine) > 0: 
                file.write(line)


def normalizeFilteredSource(filePath):
    with open(filePath, 'r') as file:
        lines = file.readlines()

    normalizedLines = []
    pendingBlankLine = False

    for line in lines:
        strippedLine = line.strip()

        if strippedLine == ";":
            previousIndex = len(normalizedLines) - 1
            while previousIndex >= 0 and normalizedLines[previousIndex].strip() == "":
                previousIndex -= 1

            if previousIndex >= 0:
                previousLine = normalizedLines[previousIndex].rstrip("\n").rstrip()
                if len(previousLine) > 0 and not previousLine.endswith(";"):
                    normalizedLines[previousIndex] = previousLine + ";\n"
            continue

        if len(strippedLine) == 0:
            if len(normalizedLines) > 0:
                pendingBlankLine = True
            continue

        if pendingBlankLine:
            normalizedLines.append("\n")
            pendingBlankLine = False

        normalizedLines.append(line.rstrip("\n") + "\n")

    with open(filePath, 'w') as file:
        file.writelines(normalizedLines)

class Symbol:
    def __init__(self, sym, span):
        self.sym = sym
        self.span = span

class TypedefFilter:
    def __init__(self, logger):
        self.logger = logger

    def filterUnusedTypedefs(self, srcFile):
        srcFile = os.path.abspath(srcFile)
        rootFunction = os.path.splitext(os.path.basename(srcFile))[0]
        cmd = (
            "unused-typedef-extractor "
            + f"--root-function={shlex.quote(rootFunction)} "
            + shlex.quote(srcFile)
        ) # + " 2>/dev/null"

        self.logger.debug("Running: %s", cmd)
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        if result.returncode != 0:
            self.logger.info(
                "Failed command and bailing: %s\nReturn code: %d\nStderr: %s\n",
                cmd,
                result.returncode,
                result.stderr,
            )
        else:
            self.logger.info("successfuly run cmd, %s", cmd)

        cmd = f"sed -i 's/__extension__//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        # Remove all static and inline attributes, these attributes result in dead code removal in bitcode
        cmd = f"sed -i 's/\\binline\\b//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        cmd = f"sed -i 's/\\b__inline\\b//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        cmd = f"sed -i 's/\\b__inline__\\b//g' "+srcFile
        result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)

        # cmd = f"sed -i 's/\\bstatic\\b//g' "+srcFile
        # result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)


        """
        print(cmd)
        print(result.stderr)
        print(result.stdout)
        """
        normalizeFilteredSource(srcFile)
        removeEmptyLines(srcFile)
        stripOpaqueLibcStructBodies(srcFile)
        stripLibcExternDeclarations(srcFile)
