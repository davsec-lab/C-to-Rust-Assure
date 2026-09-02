import os
import traceback
from collections import deque

import re

from functionAndDeps import FunctionAndDependencies


class TranslationUtilsMixin:
    def checkStructDefination(self, code, translatedStruct, funcName) -> bool:
        # Look for a `struct X { ... }` definition in the dependency block.
        # If the dependencies only contain typedef aliases, enums, or extern
        # type declarations, there is no struct body to verify and we should
        # NOT trigger struct-include retries.
        pat = re.compile(r"struct\s+\w+\s*(?:<[^>]*>)?\s*\{[^}]*\}", re.DOTALL)
        match = pat.search(translatedStruct)
        self.logger.info("struct info %s :", match)
        if match is None:
            # No struct definition in the deps (e.g. only `pub type T = ...`,
            # `pub enum E {...}`, or `extern "C" { type T; }`). Nothing to check.
            self.logger.debug(
                "function : %s has no struct-shaped dependency to verify; skipping struct check",
                funcName,
            )
            return True
        struct_def = match.group(0)
        if not (struct_def in code):
            print(f"function : {funcName} does not include target struct !")
            return False
        else:
            print(f"function : {funcName} include target struct !")
            return True

    def buildSelfContainedTranslation(self, funcDepsObj, translatedResult):
        """Prepend the translated dependency type definitions to a per-function
        translation so the written ``.rs`` compiles on its own.

        Why this is needed
        ------------------
        The per-function modes (basic / feedback / cf-struct-replay) write one
        ``<fn>.rs`` per function, and the RustAssure backend compiles each with a
        bare ``rustc --crate-type=lib`` — no cargo project, no sibling modules.
        So each file must carry its own type definitions.

        But the LLM is told "Translate ONLY the provided function", and in
        practice answers dependency types with ``use crate::{csv_parser, size_t};``
        instead of inlining them — the per-function prompt looks like it belongs
        to a larger crate. The post-hoc ``checkStructDefination`` retry does not
        converge on this: on libcsv/gpt-5.4-mini, 17 of 25 functions burned all
        COMPILATION_RETRIES and still produced ``E0412: cannot find type
        csv_parser``, leaving only 5/25 compilable.

        So we assemble the file the same way the compile harness assembles its
        check source (``contextStructs + translation``), which is also the shape
        RustAssure's own outputs had:
          1. take this function's dependency types, in topological order,
          2. drop ``use crate::<dep>;`` imports now satisfied by those types,
          3. concatenate and let ``cleanCode`` dedupe the ``use`` lines
             (same E0252/E0255 guard the merged path relies on).

        Returns ``translatedResult`` unchanged when the function has no
        translated type dependencies.

        ORACLE switch (DESIGN.md §11.5 / §14 T2)
        ----------------------------------------
        With ``ASSURE_ORACLE_DISABLE_SELFCONTAIN=1`` this function returns its
        input unchanged, i.e. the pre-fix behavior
        (15/25 → 5/25 on libcsv/gpt-5.4-mini).

        **For the pipeline-sensitivity oracle only.** It is not in
        ``CONFIG_ALLOWED_KEYS``, so candidates cannot reach it via ``config()``;
        the oracle script injects it separately via ``docker run -e``.

        Why it is needed: P3.5 must answer "can the metric distinguish a real
        quality difference". That requires a perturbation with a **known
        answer**. The first attempt reproduced it by cutting struct replay from
        the prompt side — measured ineffective (0.68 → 0.72) — because that
        +40pp isn't in the prompt at all; it lives in this function's
        post-write processing. Perturb the wrong place and the test is wasted.
        """
        if os.environ.get("ASSURE_ORACLE_DISABLE_SELFCONTAIN") == "1":
            self.logger.warning(
                "[ORACLE] buildSelfContainedTranslation disabled — "
                "this is a pipeline-sensitivity experiment, not a normal run path")
            return translatedResult

        try:
            orderedTypeKeys = self.getOrderedTypeKeysForFunction(funcDepsObj) or []
        except Exception:
            self.logger.debug("could not resolve type keys; writing translation as-is", exc_info=True)
            return translatedResult

        dependencyCodes = []
        dependencyKeys = []
        seenRustCodes = set()
        for typeKey in orderedTypeKeys:
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None or not typeNode.rustCode:
                continue
            if typeNode.rustCode in seenRustCodes:
                continue
            seenRustCodes.add(typeNode.rustCode)
            dependencyCodes.append(typeNode.rustCode)
            dependencyKeys.append(typeKey)

        if not dependencyCodes:
            return translatedResult

        # Use the full dependency sanitizer, not just the ``use crate::`` strip:
        # the prompt also tells the model to "include the original translation in
        # your response", so the body often already inlines the very types we are
        # about to prepend. Concatenating both yields
        # ``E0428: the name `size_t` is defined multiple times``.
        # ``_sanitizeResultAgainstDependencies`` chains cleanCode +
        # _stripProvidedDependencyDefinitions + _stripProvidedDependencyFunctions +
        # _stripCrateUsesOfProvidedDependencies + forward-decl strip, which is the
        # same pipeline the type-batch path uses for this exact collision.
        body = self._sanitizeResultAgainstDependencies(
            translatedResult,
            dependencyCodes,
            dependencyKeys,
            getattr(funcDepsObj, "dependFunctions", None),
        )
        combined = "\n".join(dependencyCodes) + "\n" + body
        return self.cleanCode(combined)

    def translateAndCreateRustFiles(self, funcs, key, individualFuncPath):
        try:
            funcDepsObj = funcs[key]
            translatedResult = self.translate(key, funcDepsObj)
            self.logger.debug("Translating function: " + key)
            self.logger.debug(translatedResult)
            fileContent = self.buildSelfContainedTranslation(funcDepsObj, translatedResult)
            rs_path = os.path.join(individualFuncPath, f"{key}.rs")
            with open(rs_path, "w") as rs_file:
                rs_file.write(fileContent)
            self.logger.info("Translation for function %s generated", key)
        except Exception as e:
            traceback_str = traceback.format_exc()
            self.logger.debug(f"Exception: {e}\nTraceback:\n{traceback_str}")
            self.logger.warn("Function %s failed to translate", key)

    def createIncomingEdges(self, funcMap):
        incomingEdges = {}
        dependencyMaps = {}

        for functionName in funcMap:
            incomingEdges[functionName] = 0
            dependencyMaps[functionName] = []

        for functionName in funcMap:
            functionDependencyInformation = funcMap[functionName]
            for currentFunction in functionDependencyInformation.dependFunctions:
                incomingEdges[functionName] += 1
                dependencyMaps[currentFunction].append(functionName)
        return incomingEdges, dependencyMaps

    def createTopoQueue(self, funcMap):
        contextedStructs = ""
        seenContextCodes = set()
        graph = self.getTypeDependencyGraph()
        for typeKey in graph.flattened_topo_order():
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None or not typeNode.rustCode:
                continue
            if typeNode.rustCode not in seenContextCodes:
                contextedStructs = contextedStructs + "\n" + typeNode.rustCode
                seenContextCodes.add(typeNode.rustCode)

        incomingEdges, dependencyFunctions = self.createIncomingEdges(funcMap)

        topoQueue = deque()
        for funcSym in incomingEdges:
            if incomingEdges[funcSym] == 0:
                topoQueue.append(funcSym)

        return topoQueue, incomingEdges, dependencyFunctions, contextedStructs

    def findStronglyConnectedComponents(self, funcMap):
        """Tarjan's algorithm. Returns list of tuples (each tuple = sorted function names
        in one SCC). The list is in **reverse topological order** of the condensation
        graph: an SCC of pure callees appears earlier than an SCC of its callers.
        Each function in funcMap appears in exactly one returned SCC.

        Iterative implementation to avoid Python recursion limit on long call chains.
        """
        nodes = list(funcMap.keys())
        nodeSet = set(nodes)
        adj = {node: [] for node in nodes}
        for node in nodes:
            for dep in funcMap[node].dependFunctions:
                if dep in nodeSet:
                    adj[node].append(dep)

        indexCounter = [0]
        stack = []
        onStack = set()
        indexMap = {}
        lowlinks = {}
        sccs = []

        for startNode in nodes:
            if startNode in indexMap:
                continue
            workStack = [(startNode, iter(adj[startNode]))]
            indexMap[startNode] = indexCounter[0]
            lowlinks[startNode] = indexCounter[0]
            indexCounter[0] += 1
            stack.append(startNode)
            onStack.add(startNode)

            while workStack:
                currentNode, neighbors = workStack[-1]
                advanced = False
                for nextNode in neighbors:
                    if nextNode not in indexMap:
                        indexMap[nextNode] = indexCounter[0]
                        lowlinks[nextNode] = indexCounter[0]
                        indexCounter[0] += 1
                        stack.append(nextNode)
                        onStack.add(nextNode)
                        workStack.append((nextNode, iter(adj[nextNode])))
                        advanced = True
                        break
                    elif nextNode in onStack:
                        lowlinks[currentNode] = min(lowlinks[currentNode], indexMap[nextNode])
                if advanced:
                    continue
                # All neighbors visited; finalize this node.
                workStack.pop()
                if lowlinks[currentNode] == indexMap[currentNode]:
                    component = []
                    while True:
                        w = stack.pop()
                        onStack.discard(w)
                        component.append(w)
                        if w == currentNode:
                            break
                    sccs.append(tuple(sorted(component)))
                if workStack:
                    parent, _ = workStack[-1]
                    lowlinks[parent] = min(lowlinks[parent], lowlinks[currentNode])

        return sccs

    def createSccTopoQueue(self, funcMap):
        """Build SCC condensation + Kahn topo queue over it.

        Returns (sccQueue, sccIncomingEdges, sccConsumers, sccs, funcToScc, contextedStructs):
          - sccQueue: deque[int] of SCC indices ready to process
          - sccIncomingEdges: dict[int, int] remaining unmet deps per SCC
          - sccConsumers: dict[int, set[int]] SCC -> consumer SCCs (decrement on completion)
          - sccs: list[tuple[str, ...]] SCC index -> function names in that SCC
          - funcToScc: dict[str, int] function name -> SCC index
          - contextedStructs: same struct-context blob produced by createTopoQueue
        """
        contextedStructs = ""
        seenContextCodes = set()
        graph = self.getTypeDependencyGraph()
        for typeKey in graph.flattened_topo_order():
            typeNode = FunctionAndDependencies.getTypeNode(typeKey)
            if typeNode is None or not typeNode.rustCode:
                continue
            if typeNode.rustCode not in seenContextCodes:
                contextedStructs = contextedStructs + "\n" + typeNode.rustCode
                seenContextCodes.add(typeNode.rustCode)

        sccs = self.findStronglyConnectedComponents(funcMap)
        funcToScc = {}
        for sccId, scc in enumerate(sccs):
            for func in scc:
                funcToScc[func] = sccId

        sccConsumers = {sccId: set() for sccId in range(len(sccs))}
        sccIncomingEdges = {sccId: 0 for sccId in range(len(sccs))}

        for funcName in funcMap:
            if funcName not in funcToScc:
                continue
            mySccId = funcToScc[funcName]
            for dep in funcMap[funcName].dependFunctions:
                if dep not in funcToScc:
                    continue
                depSccId = funcToScc[dep]
                if depSccId == mySccId:
                    continue
                if mySccId in sccConsumers[depSccId]:
                    continue
                sccConsumers[depSccId].add(mySccId)
                sccIncomingEdges[mySccId] += 1

        sccQueue = deque()
        for sccId in range(len(sccs)):
            if sccIncomingEdges[sccId] == 0:
                sccQueue.append(sccId)

        return sccQueue, sccIncomingEdges, sccConsumers, sccs, funcToScc, contextedStructs
