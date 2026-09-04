import re
from collections import deque

from more_itertools import unique_everseen


class SymbolExtractionMixin:
    def _find_brace_delimited_block_end(self, code, braceIndex):
        if braceIndex < 0 or braceIndex >= len(code) or code[braceIndex] != "{":
            return -1

        depth = 0
        inString = False
        inChar = False
        inLineComment = False
        inBlockComment = False
        escaped = False

        for idx in range(braceIndex, len(code)):
            ch = code[idx]
            nxt = code[idx + 1] if idx + 1 < len(code) else ""

            if inLineComment:
                if ch == "\n":
                    inLineComment = False
                continue

            if inBlockComment:
                if ch == "*" and nxt == "/":
                    inBlockComment = False
                continue

            if inString:
                if ch == '"' and not escaped:
                    inString = False
                escaped = (ch == "\\") and not escaped
                continue

            if inChar:
                if ch == "'" and not escaped:
                    inChar = False
                escaped = (ch == "\\") and not escaped
                continue

            escaped = False

            if ch == "/" and nxt == "/":
                inLineComment = True
                continue
            if ch == "/" and nxt == "*":
                inBlockComment = True
                continue
            if ch == '"':
                inString = True
                continue
            if ch == "'":
                inChar = True
                continue

            if ch == "{":
                depth += 1
            elif ch == "}":
                depth -= 1
                if depth == 0:
                    return idx + 1

        return -1

    def extractAssociatedImplBlocksByName(self, code, typeName):
        code = code or ""
        if not typeName:
            return []

        implPattern = re.compile(
            r'(?m)^\s*impl(?:\s*<[^>{}\n]+>)?(?:\s+[^{}=\n]+?\s+for)?\s+'
            + re.escape(typeName)
            + r'\b[^{;]*\{'
        )

        implBlocks = []
        seenBlocks = set()
        for match in implPattern.finditer(code):
            braceIndex = code.find("{", match.start())
            if braceIndex == -1:
                continue

            endIndex = self._find_brace_delimited_block_end(code, braceIndex)
            if endIndex == -1:
                continue

            implBlock = code[match.start():endIndex].strip()
            if implBlock and implBlock not in seenBlocks:
                seenBlocks.add(implBlock)
                implBlocks.append(implBlock)

        return implBlocks

    def extractPrimaryStructIdentifier(self, structName, structCode):
        code = (structCode or "").strip()
        typedefBodyMatch = re.search(
            r'\btypedef\s+struct(?:\s+[A-Za-z_][A-Za-z0-9_]*)?\s*\{[\s\S]*?\}\s*([A-Za-z_][A-Za-z0-9_]*)\s*;',
            code
        )
        if typedefBodyMatch:
            return typedefBodyMatch.group(1)

        headerMatch = re.search(r'\b(?:typedef\s+)?struct\s+([A-Za-z_][A-Za-z0-9_]*)', code)
        if headerMatch:
            return headerMatch.group(1)

        return structName

    def extractStructIdentifiers(self, structName, structCode):
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

        return identifiers

    def extractUnionIdentifiers(self, unionName, unionCode):
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

        return identifiers

    def extractUnionDefinitionByName(self, code, unionName):
        code = code or ""
        if not unionName:
            return ""
        candidates = [
            re.compile(r'(?m)^\s*(?:typedef\s+)?union\s+' + re.escape(unionName) + r'\s*\{'),
            re.compile(r'(?m)^\s*typedef\s+union\s*\{'),
            re.compile(r'(?m)^\s*(?:pub\s+)?union\s+' + re.escape(unionName) + r'\s*\{'),
        ]

        for pattern in candidates:
            for match in pattern.finditer(code):
                braceIndex = code.find("{", match.start())
                if braceIndex == -1:
                    continue

                endIndex = self._find_brace_delimited_block_end(code, braceIndex)
                if endIndex == -1:
                    continue

                cursor = endIndex
                while cursor < len(code) and code[cursor].isspace():
                    cursor += 1

                matchText = match.group(0).lstrip()
                isTypedefUnion = matchText.startswith("typedef union")
                if isTypedefUnion:
                    aliasMatch = re.match(r'([A-Za-z_][A-Za-z0-9_]*)', code[cursor:])
                    tagMatch = re.search(r'\bunion\s+([A-Za-z_][A-Za-z0-9_]*)\b', matchText)
                    tagName = tagMatch.group(1) if tagMatch else None
                    if aliasMatch:
                        aliasName = aliasMatch.group(1)
                        if unionName not in {aliasName, tagName}:
                            continue
                        cursor += aliasMatch.end()
                        while cursor < len(code) and code[cursor].isspace():
                            cursor += 1
                    elif matchText.startswith("typedef union {"):
                        continue

                if cursor < len(code) and code[cursor] == ";":
                    cursor += 1

                unionDefinition = code[match.start():cursor].strip()
                implBlocks = self.extractAssociatedImplBlocksByName(code, unionName)
                if implBlocks:
                    unionDefinition = unionDefinition + "\n\n" + "\n\n".join(implBlocks)
                return unionDefinition

        return ""

    def extractStructDefinitionByName(self, code, structName):
        code = code or ""
        candidates = [
            re.compile(r'(?m)^\s*(?:typedef\s+)?struct\s+' + re.escape(structName) + r'\s*\{'),
            re.compile(r'(?m)^\s*typedef\s+struct\s*\{'),
            re.compile(r'(?m)^\s*(?:pub\s+)?struct\s+' + re.escape(structName) + r'\s*\{'),
            re.compile(r'(?m)^\s*struct\s+' + re.escape(structName) + r'\s*;'),
            re.compile(r'(?m)^\s*(?:pub\s+)?struct\s+' + re.escape(structName) + r'\s*;'),
        ]

        for pattern in candidates:
            for match in pattern.finditer(code):
                if "{" not in match.group(0):
                    end = match.end()
                    while end < len(code) and code[end].isspace():
                        end += 1
                    return code[match.start():end].strip()

                braceIndex = code.find("{", match.start())
                if braceIndex == -1:
                    continue

                endIndex = self._find_brace_delimited_block_end(code, braceIndex)
                if endIndex == -1:
                    continue

                cursor = endIndex
                while cursor < len(code) and code[cursor].isspace():
                    cursor += 1

                matchText = match.group(0).lstrip()
                isTypedefStruct = matchText.startswith("typedef struct")
                if isTypedefStruct:
                    aliasMatch = re.match(r'([A-Za-z_][A-Za-z0-9_]*)', code[cursor:])
                    tagMatch = re.search(r'\bstruct\s+([A-Za-z_][A-Za-z0-9_]*)\b', matchText)
                    tagName = tagMatch.group(1) if tagMatch else None
                    if aliasMatch:
                        aliasName = aliasMatch.group(1)
                        if structName not in {aliasName, tagName}:
                            continue
                        cursor += aliasMatch.end()
                        while cursor < len(code) and code[cursor].isspace():
                            cursor += 1
                    elif matchText.startswith("typedef struct {"):
                        continue

                if cursor < len(code) and code[cursor] == ";":
                    cursor += 1

                structDefinition = code[match.start():cursor].strip()
                implBlocks = self.extractAssociatedImplBlocksByName(code, structName)
                combinedDefinition = structDefinition
                if implBlocks:
                    combinedDefinition = combinedDefinition + "\n\n" + "\n\n".join(implBlocks)
                return combinedDefinition

        return ""

    def extractTypeAliasDefinitionByName(self, code, aliasName):
        code = code or ""
        if not aliasName:
            return ""

        pattern = re.compile(r'(?m)^\s*(?:pub\s+)?type\s+' + re.escape(aliasName) + r'\s*=')
        match = pattern.search(code)
        if not match:
            return ""

        i = match.start()
        while i > 0 and code[i - 1] != "\n":
            i -= 1

        end = match.end()
        while end < len(code) and code[end] != ";":
            end += 1
        if end < len(code) and code[end] == ";":
            end += 1

        return code[i:end].strip()

    def _findTypedefStatementEnd(self, code, startCursor):
        """Return the index just past the `;` that ends a typedef statement
        beginning at ``startCursor``. Balances ``()``, ``[]``, ``{}`` and
        skips ``;`` inside string/char literals and comments. Returns -1 if
        no terminator is found.

        Used by ``extractCppTypedefDefinitionByName`` to scan past nested
        argument lists in function-pointer typedefs
        (``typedef RET (*NAME)(ARGS);``) without prematurely stopping at a
        ``;`` that is actually inside parameter declarations.
        """
        parens = 0
        brackets = 0
        braces = 0
        inString = False
        inChar = False
        escaped = False
        inLineComment = False
        inBlockComment = False

        i = startCursor
        while i < len(code):
            ch = code[i]
            nxt = code[i + 1] if i + 1 < len(code) else ""

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
                if escaped:
                    escaped = False
                elif ch == "\\":
                    escaped = True
                elif ch == '"':
                    inString = False
                i += 1
                continue
            if inChar:
                if escaped:
                    escaped = False
                elif ch == "\\":
                    escaped = True
                elif ch == "'":
                    inChar = False
                i += 1
                continue

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

            if ch == "(":
                parens += 1
            elif ch == ")":
                parens -= 1
            elif ch == "[":
                brackets += 1
            elif ch == "]":
                brackets -= 1
            elif ch == "{":
                braces += 1
            elif ch == "}":
                braces -= 1
            elif ch == ";" and parens == 0 and brackets == 0 and braces == 0:
                return i + 1
            i += 1
        return -1

    def extractCppTypedefDefinitionByName(self, code, aliasName):
        """Extract a C/C++ ``typedef ... <aliasName>;`` statement from
        ``code``. Handles the five common shapes the LLM emits:

          1. Plain alias:        ``typedef <T> <NAME>;``
          2. Pointer alias:      ``typedef <T> *<NAME>;``
          3. Array alias:        ``typedef <T> <NAME>[<N>];``
          4. Function pointer:   ``typedef <RET> (*<NAME>)(<ARGS>);``
                                 ``typedef <RET> (<CALLCONV>* <NAME>)(<ARGS>);``
          5. Alias declaration:  ``using <NAME> = <T>;`` (C++11 — models
                                 routinely rewrite function-pointer typedefs
                                 into this form when asked for idiomatic C++)

        Skips ``typedef struct/union/enum { ... } <NAME>;`` forms — those
        belong to the struct/union/enum extractors and would otherwise be
        captured by this scanner.

        Returns the full statement text (with trailing ``;``) or ``""`` if
        no typedef declares ``aliasName`` in ``code``.
        """
        code = code or ""
        if not aliasName:
            return ""

        escapedName = re.escape(aliasName)
        # Match a typedef declarator that names aliasName. The function-
        # pointer form puts NAME inside ``(*NAME)``; all other forms have
        # NAME appear as a top-level identifier directly before ``;`` /
        # ``[`` (array typedef).
        fnPointerDeclarator = re.compile(
            r'\(\s*(?:[A-Za-z_]\w*\s+)*\*\s*' + escapedName + r'\s*\)\s*\('
        )
        plainDeclarator = re.compile(
            r'\b' + escapedName + r'\s*(?:\[[^\];]*\])?\s*;'
        )

        typedefStart = re.compile(r'(?m)^[ \t]*typedef\b')
        for match in typedefStart.finditer(code):
            startIdx = match.start()
            endIdx = self._findTypedefStatementEnd(code, match.end())
            if endIdx == -1:
                continue
            stmt = code[startIdx:endIdx]
            # Skip composite typedefs (handled by struct/union/enum
            # extractors). They contain a ``{`` after the kind keyword.
            if re.match(r'^[ \t]*typedef\s+(?:struct|union|enum)\b[^;{}]*\{', stmt, re.DOTALL):
                continue
            if fnPointerDeclarator.search(stmt) or plainDeclarator.search(stmt):
                return stmt.strip()

        # C++11 alias-declaration form. The alias name sits directly after
        # ``using``, so an exact-name match suffices; ``using namespace X;``
        # and ``using X::y;`` never match because they have no ``=``.
        usingStart = re.compile(r'(?m)^[ \t]*using\s+' + escapedName + r'\s*=')
        for match in usingStart.finditer(code):
            endIdx = self._findTypedefStatementEnd(code, match.end())
            if endIdx == -1:
                continue
            return code[match.start():endIdx].strip()
        return ""

    def extractEnumDefinitionByName(self, code, enumName):
        code = code or ""
        if not enumName:
            return ""

        candidates = [
            re.compile(r'(?m)^\s*(?:typedef\s+)?enum\s+' + re.escape(enumName) + r'\s*\{'),
            re.compile(r'(?m)^\s*typedef\s+enum\s*\{'),
            re.compile(r'(?m)^\s*(?:pub\s+)?enum\s+' + re.escape(enumName) + r'\s*\{'),
            re.compile(r'(?m)^\s*(?:pub\s+)?type\s+' + re.escape(enumName) + r'\s*='),
        ]

        for pattern in candidates:
            for match in pattern.finditer(code):
                if pattern.pattern.endswith(r'\s*='):
                    return self.extractTypeAliasDefinitionByName(code, enumName)

                braceIndex = code.find("{", match.start())
                if braceIndex == -1:
                    continue

                endIndex = self._find_brace_delimited_block_end(code, braceIndex)
                if endIndex == -1:
                    continue

                cursor = endIndex
                while cursor < len(code) and code[cursor].isspace():
                    cursor += 1

                matchText = match.group(0).lstrip()
                isTypedefEnum = matchText.startswith("typedef enum")
                if isTypedefEnum:
                    aliasMatch = re.match(r'([A-Za-z_][A-Za-z0-9_]*)', code[cursor:])
                    tagMatch = re.search(r'\benum\s+([A-Za-z_][A-Za-z0-9_]*)\b', matchText)
                    tagName = tagMatch.group(1) if tagMatch else None
                    if aliasMatch:
                        aliasName = aliasMatch.group(1)
                        if enumName not in {aliasName, tagName}:
                            continue
                        cursor += aliasMatch.end()
                        while cursor < len(code) and code[cursor].isspace():
                            cursor += 1
                    elif matchText.startswith("typedef enum {"):
                        continue

                if cursor < len(code) and code[cursor] == ";":
                    cursor += 1

                return code[match.start():cursor].strip()

        return ""

    def extractRustTypeAliases(self, code):
        aliases = {}
        for match in re.finditer(r'(?m)^\s*(?:pub\s+)?type\s+([A-Za-z_][A-Za-z0-9_]*)\s*=', code or ""):
            aliasName = match.group(1)
            aliasDefinition = self.extractTypeAliasDefinitionByName(code, aliasName)
            if aliasDefinition:
                aliases[aliasName] = aliasDefinition
        return aliases

    def extractRustConstDefinitionByName(self, code, constName):
        code = code or ""
        if not constName:
            return ""

        pattern = re.compile(r'(?m)^\s*(?:pub\s+)?const\s+' + re.escape(constName) + r'\s*:')
        match = pattern.search(code)
        if not match:
            return ""

        start = match.start()
        while start > 0 and code[start - 1] != "\n":
            start -= 1

        end = match.end()
        while end < len(code) and code[end] != ";":
            end += 1
        if end < len(code) and code[end] == ";":
            end += 1

        return code[start:end].strip()

    def extractRustConsts(self, code):
        consts = {}
        for match in re.finditer(r'(?m)^\s*(?:pub\s+)?const\s+([A-Za-z_][A-Za-z0-9_]*)\s*:', code or ""):
            constName = match.group(1)
            constDefinition = self.extractRustConstDefinitionByName(code, constName)
            if constDefinition:
                consts[constName] = constDefinition
        return consts

    def extractReferencedRustTypeAliasDefinitions(self, code, rootDefinition):
        aliasDefinitions = self.extractRustTypeAliases(code)
        if not aliasDefinitions or not rootDefinition:
            return []

        orderedAliasNames = list(aliasDefinitions.keys())
        visited = set()
        visiting = set()
        orderedDefinitions = []

        def visit(aliasName):
            if aliasName in visited or aliasName in visiting or aliasName not in aliasDefinitions:
                return

            visiting.add(aliasName)
            aliasDefinition = aliasDefinitions[aliasName]
            for dependencyName in orderedAliasNames:
                if dependencyName == aliasName:
                    continue
                if re.search(r'\b' + re.escape(dependencyName) + r'\b', aliasDefinition):
                    visit(dependencyName)
            visiting.remove(aliasName)
            visited.add(aliasName)
            orderedDefinitions.append(aliasDefinition)

        for aliasName in orderedAliasNames:
            if re.search(r'\b' + re.escape(aliasName) + r'\b', rootDefinition):
                visit(aliasName)

        return orderedDefinitions

    def extractReferencedRustConstDefinitions(self, code, rootDefinition):
        constDefinitions = self.extractRustConsts(code)
        if not constDefinitions or not rootDefinition:
            return []

        orderedConstNames = list(constDefinitions.keys())
        visited = set()
        visiting = set()
        orderedDefinitions = []

        def visit(constName):
            if constName in visited or constName in visiting or constName not in constDefinitions:
                return

            visiting.add(constName)
            constDefinition = constDefinitions[constName]
            for dependencyName in orderedConstNames:
                if dependencyName == constName:
                    continue
                if re.search(r'\b' + re.escape(dependencyName) + r'\b', constDefinition):
                    visit(dependencyName)
            visiting.remove(constName)
            visited.add(constName)
            orderedDefinitions.append(constDefinition)

        for constName in orderedConstNames:
            if re.search(r'\b' + re.escape(constName) + r'\b', rootDefinition):
                visit(constName)

        return orderedDefinitions

    def appendDependentTypeAliases(self, fullCode, structDefinition):
        if not structDefinition:
            return structDefinition

        aliasMap = self.extractRustTypeAliases(fullCode)
        if not aliasMap:
            return structDefinition

        def extractIdentifiers(snippet):
            if not snippet:
                return set()
            return set(re.findall(r'\b[A-Za-z_][A-Za-z0-9_]*\b', snippet))

        includedAliases = []
        seenAliases = set()
        queue = deque()

        for identifier in extractIdentifiers(structDefinition):
            if identifier in aliasMap:
                queue.append(identifier)

        while queue:
            aliasName = queue.popleft()
            if aliasName in seenAliases:
                continue
            seenAliases.add(aliasName)

            aliasDefinition = aliasMap.get(aliasName, "")
            if not aliasDefinition:
                continue
            includedAliases.append(aliasDefinition)

            for identifier in extractIdentifiers(aliasDefinition):
                if identifier in aliasMap and identifier not in seenAliases:
                    queue.append(identifier)

        if not includedAliases:
            return structDefinition

        return structDefinition + "\n\n" + "\n\n".join(includedAliases)

    def toPascalCaseIdentifier(self, name):
        if not name:
            return name
        parts = re.split(r'[_\s]+', name.strip("_"))
        parts = [p for p in parts if p]
        if not parts:
            return name
        return "".join(p[:1].upper() + p[1:] for p in parts)

    def extractFunctionDefinitionByName(self, code, functionName):
        code = code or ""
        if not functionName:
            return ""

        def _find_signature_terminator(startIndex):
            i = startIndex
            parenDepth = 0
            bracketDepth = 0
            inString = False
            inChar = False
            inLineComment = False
            inBlockComment = False
            escaped = False

            while i < len(code):
                ch = code[i]
                nxt = code[i + 1] if i + 1 < len(code) else ""

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

                if ch == "(":
                    parenDepth += 1
                elif ch == ")":
                    parenDepth = max(0, parenDepth - 1)
                elif ch == "[":
                    bracketDepth += 1
                elif ch == "]":
                    bracketDepth = max(0, bracketDepth - 1)
                elif ch == ";" and parenDepth == 0 and bracketDepth == 0:
                    return ("declaration", i)
                elif ch == "{" and parenDepth == 0 and bracketDepth == 0:
                    return ("definition", i)

                i += 1

            return ("", -1)

        def _find_enclosing_extern_header(position):
            i = 0
            lineStart = 0
            braceStack = []
            inString = False
            inChar = False
            inLineComment = False
            inBlockComment = False
            escaped = False

            while i < position:
                ch = code[i]
                nxt = code[i + 1] if i + 1 < len(code) else ""

                if inLineComment:
                    if ch == "\n":
                        inLineComment = False
                        lineStart = i + 1
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
                if ch == "\n":
                    lineStart = i + 1
                    i += 1
                    continue

                if ch == "{":
                    linePrefix = code[lineStart:i].strip()
                    externMatch = re.search(r'(?:unsafe\s+)?extern\s+"[^"]+"\s*$', linePrefix)
                    braceStack.append(externMatch.group(0) if externMatch else None)
                elif ch == "}":
                    if braceStack:
                        braceStack.pop()

                i += 1

            if braceStack and braceStack[-1]:
                return braceStack[-1]
            return ""

        pattern = re.compile(
            r'(?m)^\s*(?:pub\s+)?(?:unsafe\s+)?(?:extern\s+"[^"]+"\s+)?fn\s+'
            + re.escape(functionName)
            + r'\b'
        )
        match = pattern.search(code)
        if not match:
            return ""

        matchKind, terminatorIndex = _find_signature_terminator(match.end())
        if terminatorIndex == -1:
            return ""
        if matchKind == "declaration":
            declarationCode = code[match.start():terminatorIndex + 1].strip()
            externHeader = _find_enclosing_extern_header(match.start())
            if externHeader:
                return externHeader + " {\n    " + declarationCode + "\n}"
            return declarationCode

        i = terminatorIndex
        depth = 0
        inString = False
        inChar = False
        inLineComment = False
        inBlockComment = False
        escaped = False

        while i < len(code):
            ch = code[i]
            nxt = code[i + 1] if i + 1 < len(code) else ""

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
                    return code[match.start():i + 1].strip()

            i += 1

        return ""

    def extractStaticDependencyFunctions(self, code, staticCode, staticName):
        identifiers = re.findall(r'\b[A-Za-z_][A-Za-z0-9_]*\b', staticCode or "")
        if not identifiers:
            return ""

        ignoreNames = {
            staticName,
            (staticName or "").upper(),
            "pub",
            "static",
            "mut",
            "const",
            "let",
            "Some",
            "None",
            "true",
            "false",
        }
        dependencyDefinitions = []
        seenNames = set()
        for identifier in identifiers:
            if identifier in ignoreNames or identifier in seenNames:
                continue
            functionCode = self.extractFunctionDefinitionByName(code, identifier)
            if not functionCode:
                continue
            dependencyDefinitions.append(functionCode)
            seenNames.add(identifier)

        if not dependencyDefinitions:
            return ""
        return "\n\n".join(dependencyDefinitions).strip()

    def extractStaticDefinitionByName(self, code, staticName):
        def _make_start_pattern(name, ignoreCase=False):
            flags = re.IGNORECASE if ignoreCase else 0
            # The gap between the storage class (``static`` / ``const``) and
            # the target ``name`` must NOT contain ``=``, ``(``, or ``{``:
            # in a real declarator only type-tokens (identifiers, ``*``,
            # ``&``, template ``<>``, array ``[]``) appear there. ``=``
            # would already be past the declarator into the initializer;
            # ``(`` / ``{`` likewise belong to the initializer or to a
            # function-call expression. Without this guard, a local like
            # ``const unsigned count = sizeof(URL_SCHEMES) / sizeof(URL_SCHEMES[0]);``
            # was being mis-identified as the definition of static
            # ``URL_SCHEMES`` and stripped from the LLM's response by
            # ``_stripProvidedDependencyDefinitions``, deleting the
            # ``count`` declaration and leaving the loop with an undeclared
            # identifier (observed on url_is_protocol, run
            # individual-funcs_claude-sonnet-4-6_2026-05-27_16-22-16).
            return re.compile(
                r'(?m)^\s*(?:(?:pub(?:\s*\([^)]*\))?\s+)?(?:unsafe\s+)?(?:static(?:\s+mut)?|const)\b|static\b)[^\n;=({]*\b'
                + re.escape(name)
                + r'\b',
                flags
            )

        candidateNames = []
        for name in [staticName, staticName.upper()]:
            if name and name not in candidateNames:
                candidateNames.append(name)

        match = None
        for name in candidateNames:
            startPattern = _make_start_pattern(name)
            match = startPattern.search(code)
            if match:
                break

        if not match:
            startPattern = _make_start_pattern(staticName, ignoreCase=True)
            match = startPattern.search(code)
        if not match:
            return ""

        start = match.start()
        i = match.end()
        parenDepth = 0
        braceDepth = 0
        bracketDepth = 0
        inString = False
        inChar = False
        inLineComment = False
        inBlockComment = False
        escaped = False

        while i < len(code):
            ch = code[i]
            nxt = code[i + 1] if i + 1 < len(code) else ""

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

            if ch == "(":
                parenDepth += 1
            elif ch == ")":
                parenDepth = max(0, parenDepth - 1)
            elif ch == "{":
                braceDepth += 1
            elif ch == "}":
                braceDepth = max(0, braceDepth - 1)
            elif ch == "[":
                bracketDepth += 1
            elif ch == "]":
                bracketDepth = max(0, bracketDepth - 1)
            elif ch == ";" and parenDepth == 0 and braceDepth == 0 and bracketDepth == 0:
                staticCode = code[start:i + 1].strip()
                dependencyCode = self.extractStaticDependencyFunctions(code, staticCode, staticName)
                if dependencyCode:
                    return dependencyCode + "\n\n" + staticCode
                return staticCode

            i += 1

        return ""

    def extractExternDefinitionByName(self, code, externName):
        code = code or ""
        if not externName:
            return ""

        def _find_enclosing_extern_header(position):
            i = 0
            lineStart = 0
            braceStack = []
            inString = False
            inChar = False
            inLineComment = False
            inBlockComment = False
            escaped = False

            while i < position:
                ch = code[i]
                nxt = code[i + 1] if i + 1 < len(code) else ""

                if inLineComment:
                    if ch == "\n":
                        inLineComment = False
                        lineStart = i + 1
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
                if ch == "\n":
                    lineStart = i + 1
                    i += 1
                    continue

                if ch == "{":
                    linePrefix = code[lineStart:i].strip()
                    externMatch = re.search(r'(?:unsafe\s+)?extern\s+"[^"]+"\s*$', linePrefix)
                    braceStack.append(externMatch.group(0) if externMatch else None)
                elif ch == "}":
                    if braceStack:
                        braceStack.pop()

                i += 1

            if braceStack and braceStack[-1]:
                return braceStack[-1]
            return ""

        def _extract_statement_from_match(match):
            start = match.start()
            i = match.end()
            parenDepth = 0
            braceDepth = 0
            bracketDepth = 0
            inString = False
            inChar = False
            inLineComment = False
            inBlockComment = False
            escaped = False

            while i < len(code):
                ch = code[i]
                nxt = code[i + 1] if i + 1 < len(code) else ""

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

                if ch == "(":
                    parenDepth += 1
                elif ch == ")":
                    parenDepth = max(0, parenDepth - 1)
                elif ch == "{":
                    braceDepth += 1
                elif ch == "}":
                    braceDepth = max(0, braceDepth - 1)
                elif ch == "[":
                    bracketDepth += 1
                elif ch == "]":
                    bracketDepth = max(0, bracketDepth - 1)
                elif ch == ";" and parenDepth == 0 and braceDepth == 0 and bracketDepth == 0:
                    declarationCode = code[start:i + 1].strip()
                    externHeader = _find_enclosing_extern_header(start)
                    if externHeader and not declarationCode.lstrip().startswith("extern"):
                        return externHeader + " {\n    " + declarationCode + "\n}"
                    return declarationCode

                i += 1

            return ""

        patterns = [
            re.compile(r'(?m)^\s*extern\b[^\n;]*\b' + re.escape(externName) + r'\b'),
            re.compile(r'(?m)^\s*(?:pub(?:\s*\([^)]*\))?\s+)?(?:unsafe\s+)?(?:static(?:\s+mut)?|const)\b[^\n;]*\b' + re.escape(externName) + r'\b'),
        ]

        for pattern in patterns:
            match = pattern.search(code)
            if not match:
                continue
            extracted = _extract_statement_from_match(match)
            if extracted:
                return extracted

        return ""

    def extractIncludeBlock(self, code):
        code = code or ""
        includeLines = re.findall(r'(?m)^\s*#\s*include[^\n]*$', code)
        rustUseLines = re.findall(r'(?m)^\s*(?:pub\s+)?use\s+[^\n;]+;\s*$', code)
        externCrateLines = re.findall(r'(?m)^\s*extern\s+crate\s+[^\n;]+;\s*$', code)
        importLines = list(unique_everseen(includeLines + rustUseLines + externCrateLines))
        if not importLines:
            return ""
        return "\n".join(importLines).strip()
