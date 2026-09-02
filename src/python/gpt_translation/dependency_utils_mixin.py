import re

from functionAndDeps import FunctionAndDependencies
from type_registry import TypeDependencyGraph, TypeKind


class DependencyUtilsMixin:
    def _extractEnumIdentifiers(self, enumName, enumCode):
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

    def _extractTypedefIdentifiers(self, typedefName, typedefCode):
        identifiers = {typedefName}
        code = (typedefCode or "").strip()
        aliasMatch = re.search(
            r'\btypedef\s+.+?\s+([A-Za-z_][A-Za-z0-9_]*)\s*;\s*$',
            " ".join(code.split()),
        )
        if aliasMatch:
            identifiers.add(aliasMatch.group(1))
        return {identifier for identifier in identifiers if identifier}

    def _extractStaticIdentifiers(self, staticName, staticCode):
        identifiers = {staticName}
        declaration = (staticCode or "").strip()
        for match in re.finditer(r'\b([A-Za-z_][A-Za-z0-9_]*)\b', declaration):
            candidate = match.group(1)
            if candidate == staticName:
                identifiers.add(candidate)
        return identifiers

    def _extractExternIdentifiers(self, externName, externCode):
        identifiers = {externName}
        declaration = (externCode or "").strip()
        for match in re.finditer(r'\b([A-Za-z_][A-Za-z0-9_]*)\b', declaration):
            candidate = match.group(1)
            if candidate == externName:
                identifiers.add(candidate)
        return identifiers

    def _extractNodeIdentifiers(self, typeNode, code):
        if typeNode.kind == TypeKind.STRUCT:
            return self.extractStructIdentifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.UNION:
            return self.extractUnionIdentifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.ENUM:
            return self._extractEnumIdentifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.TYPEDEF:
            return self._extractTypedefIdentifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.EXTERN:
            return self._extractExternIdentifiers(typeNode.name, code)
        if typeNode.kind == TypeKind.STATIC:
            return self._extractStaticIdentifiers(typeNode.name, code)
        return {typeNode.name}

    def buildTypeDependencyGraph(self):
        registry = FunctionAndDependencies.typeRegistry
        sortedKeys = registry.sorted_keys()
        adjacency = {key: set() for key in sortedKeys}
        codeMap = {}
        identifierMap = {}

        for key in sortedKeys:
            node = registry.get(key)
            code = self.stringifyCodeBlock(node.cCode)
            codeMap[key] = code
            identifiers = self._extractNodeIdentifiers(node, code)
            node.identifiers = set(identifiers)
            node.depends_on = set()
            identifierMap[key] = identifiers

        for sourceKey in sortedKeys:
            sourceCode = codeMap[sourceKey]
            for targetKey in sortedKeys:
                if sourceKey == targetKey:
                    continue
                targetIdentifiers = identifierMap[targetKey]
                if any(re.search(r'\b' + re.escape(identifier) + r'\b', sourceCode) for identifier in targetIdentifiers):
                    adjacency[sourceKey].add(targetKey)

        graph = TypeDependencyGraph(sortedKeys, adjacency)
        for key in sortedKeys:
            node = registry.get(key)
            node.depends_on = set(adjacency[key])
        FunctionAndDependencies.setTypeDependencyGraph(graph)
        return graph

    def getTypeDependencyGraph(self):
        if FunctionAndDependencies.typeDependencyGraph is None:
            return self.buildTypeDependencyGraph()
        return FunctionAndDependencies.typeDependencyGraph

    def getTypeTranslationBatches(self):
        return self.getTypeDependencyGraph().topo_batches()

    def getOrderedTypeClosure(self, rootKeys):
        if not rootKeys:
            return []
        return self.getTypeDependencyGraph().ordered_closure(rootKeys)

    def getOrderedTypeKeysForFunction(self, funcDepsObj):
        return self.getOrderedTypeClosure(funcDepsObj.directTypeRefs)

    def getStructDependencyGroups(self):
        groups = []
        for batch in self.getTypeTranslationBatches():
            structLikeNames = []
            for key in batch:
                if key.kind in (TypeKind.STRUCT, TypeKind.UNION, TypeKind.ENUM):
                    structLikeNames.append(key.name)
            if structLikeNames:
                groups.append(structLikeNames)
        return groups

    def getStructDependencyClosure(self, rootStructNames):
        if not rootStructNames:
            return []
        rootKeys = []
        for structName in rootStructNames:
            structNode = FunctionAndDependencies.getTypeNodeByName(TypeKind.STRUCT, structName)
            if structNode is not None:
                rootKeys.append(structNode.key)
                continue
            unionNode = FunctionAndDependencies.getTypeNodeByName(TypeKind.UNION, structName)
            if unionNode is not None:
                rootKeys.append(unionNode.key)
                continue
            enumNode = FunctionAndDependencies.getTypeNodeByName(TypeKind.ENUM, structName)
            if enumNode is not None:
                rootKeys.append(enumNode.key)
        orderedKeys = self.getOrderedTypeClosure(rootKeys)
        return [key.name for key in orderedKeys if key.kind in (TypeKind.STRUCT, TypeKind.UNION, TypeKind.ENUM)]
