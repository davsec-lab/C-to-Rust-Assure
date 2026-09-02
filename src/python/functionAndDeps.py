from type_registry import TranslationMode, TypeKind, TypeNode, TypeNodeKey, TypeRegistry


class StructWithUsageInfo(TypeNode):
    """
    Backward-compatible wrapper kept for old call sites.
    New code should use TypeRegistry/TypeNode directly.
    """

    def __init__(self, name, cCode):
        super().__init__(
            key=TypeNodeKey(TypeKind.STRUCT, name),
            cCode=cCode,
            translation_mode=TranslationMode.PLAIN_STRUCT,
        )


class FunctionAndDependencies:
    """
    A function and its dependencies can involve the following:
    1. A function and all the file's typedefs, struct type information
    2. A function and only its required typedefs, struct type information
    3. A function and its pre-translated Rust structs
    4. A function and its pre-translated other functions
    """

    typeRegistry = TypeRegistry()
    typeDependencyGraph = None

    # Legacy compatibility maps. The registry is the source of truth.
    # `structsWithUsageInfoMap` also covers UNION nodes so that downstream
    # code that historically iterated structs sees lifted anonymous unions.
    structsWithUsageInfoMap = {}
    unionsWithUsageInfoMap = {}
    enumsWithUsageInfoMap = {}
    typedefsWithUsageInfoMap = {}
    externVariablesWithUsageInfoMap = {}
    staticVariablesWithUsageInfoMap = {}

    @classmethod
    def resetTypeSystem(cls):
        cls.typeRegistry = TypeRegistry()
        cls.typeDependencyGraph = None
        cls.structsWithUsageInfoMap = {}
        cls.unionsWithUsageInfoMap = {}
        cls.enumsWithUsageInfoMap = {}
        cls.typedefsWithUsageInfoMap = {}
        cls.externVariablesWithUsageInfoMap = {}
        cls.staticVariablesWithUsageInfoMap = {}

    @classmethod
    def _refreshLegacyMaps(cls):
        cls.structsWithUsageInfoMap = {}
        cls.unionsWithUsageInfoMap = {}
        cls.enumsWithUsageInfoMap = {}
        cls.typedefsWithUsageInfoMap = {}
        cls.externVariablesWithUsageInfoMap = {}
        cls.staticVariablesWithUsageInfoMap = {}
        for node in cls.typeRegistry.all_nodes():
            if node.kind == TypeKind.STRUCT:
                cls.structsWithUsageInfoMap[node.name] = node
            elif node.kind == TypeKind.UNION:
                cls.unionsWithUsageInfoMap[node.name] = node
                cls.structsWithUsageInfoMap[node.name] = node
            elif node.kind == TypeKind.ENUM:
                cls.enumsWithUsageInfoMap[node.name] = node
            elif node.kind == TypeKind.TYPEDEF:
                cls.typedefsWithUsageInfoMap[node.name] = node
            elif node.kind == TypeKind.EXTERN:
                cls.externVariablesWithUsageInfoMap[node.name] = node
            elif node.kind == TypeKind.STATIC:
                cls.staticVariablesWithUsageInfoMap[node.name] = node

    @classmethod
    def upsertTypeNode(cls, kind, name, c_code=None, translation_mode=None, extracted_by=None):
        node = cls.typeRegistry.upsert(
            kind=kind,
            name=name,
            c_code=c_code,
            translation_mode=translation_mode,
            extracted_by=extracted_by,
        )
        cls.typeDependencyGraph = None
        cls._refreshLegacyMaps()
        return node

    @classmethod
    def getTypeNode(cls, key):
        return cls.typeRegistry.get(key)

    @classmethod
    def getTypeNodeByName(cls, kind, name):
        return cls.typeRegistry.get_by_name(kind, name)

    @classmethod
    def setTypeDependencyGraph(cls, graph):
        cls.typeDependencyGraph = graph

    def __init__(self, funcSym):
        self.funcSym = funcSym
        self.funcCodeLines = ""
        self.typeDeclDefCodeLines = ""
        self.typeUsageCodeLinesMap = {}
        self.directTypeRefs = set()
        self.typeReferenceRanges = {}
        self.structsWithUsageInfo = {}
        self.unionsWithUsageInfo = {}
        self.typedefsWithUsageInfo = {}
        self.enumsWithUsageInfo = {}
        self.externVariablesWithUsageInfo = {}
        self.staticVariablesWithUsageInfo = {}
        self.previouslyTranslatedFunctions = ""
        self.previouslyTranslatedFunctionSignatures = ""
        self.dependFunctions = []
        self.targetLangSignature = ""
        # Callback bindings: function-pointer typedefs this function is
        # required to be ABI/semantics-compatible with. Detected from
        # explicit `(typedef_name)func_name` casts and from passing the
        # function as an argument to a parameter declared with that
        # typedef. Tracked separately from ``directTypeRefs`` (which is a
        # superset that also includes background type references) so the
        # prompt builder can render an explicit "callback contract"
        # section — see ``compileWithFeedback``.
        self.conformingTypedefs = set()

    def setFuncCodeLines(self, funcCodeLines):
        self.funcCodeLines = funcCodeLines

    def setTypeDeclDefCodeLines(self, typeDeclDefCodeLines):
        self.typeDeclDefCodeLines = typeDeclDefCodeLines

    def setDepndFunctions(self, depenfunctions):
        self.dependFunctions = depenfunctions

    def addTypeUsage(self, typeName, typeUsageCodeLine):
        if typeName not in self.typeUsageCodeLinesMap:
            self.typeUsageCodeLinesMap[typeName] = set()
        self.typeUsageCodeLinesMap[typeName].add(typeUsageCodeLine)

    def registerTypeReference(self, typeNodeKey, startIndex, endIndex):
        self.directTypeRefs.add(typeNodeKey)
        self.typeReferenceRanges[typeNodeKey] = (startIndex, endIndex)
        if typeNodeKey.kind == TypeKind.STRUCT:
            self.structsWithUsageInfo[typeNodeKey.name] = (startIndex, endIndex)
        elif typeNodeKey.kind == TypeKind.UNION:
            self.unionsWithUsageInfo[typeNodeKey.name] = (startIndex, endIndex)
            self.structsWithUsageInfo[typeNodeKey.name] = (startIndex, endIndex)
        elif typeNodeKey.kind == TypeKind.ENUM:
            self.enumsWithUsageInfo[typeNodeKey.name] = (startIndex, endIndex)
        elif typeNodeKey.kind == TypeKind.TYPEDEF:
            self.typedefsWithUsageInfo[typeNodeKey.name] = (startIndex, endIndex)
        elif typeNodeKey.kind == TypeKind.EXTERN:
            self.externVariablesWithUsageInfo[typeNodeKey.name] = (startIndex, endIndex)
        elif typeNodeKey.kind == TypeKind.STATIC:
            self.staticVariablesWithUsageInfo[typeNodeKey.name] = (startIndex, endIndex)
