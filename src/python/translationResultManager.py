from functionAndDeps import *

class TranslationResultManager:
    _instance = None

    def __new__(cls, funcMap=None, allStages=None):
        if cls._instance is None:
            cls._instance = super().__new__(cls)
            cls._instance._initialized = False
        return cls._instance

    def __init__(self, funcMap=None, allStages=None):
        if self._initialized and funcMap is None and allStages is None:
            return

        self.functionResponseIds = {}
        self.functionTranslateResults = {}
        self.allStages = allStages
        self.structResponseIds = {}
        self.structTranslateResults = {}

        self.currentStage = ""
        self.currentFuncName = ""
        self.currentStructName = ""

        if allStages:
            for typeKey in FunctionAndDependencies.typeRegistry.sorted_keys():
                storageKey = typeKey.storage_key()
                self.structResponseIds[storageKey] = {}
                self.structTranslateResults[storageKey] = {}
                for stage in allStages:
                    self.structResponseIds[storageKey][stage] = ""
                    self.structTranslateResults[storageKey][stage] = ""

            for funcName in funcMap:
                self.functionResponseIds[funcName] = {}
                self.functionTranslateResults[funcName] = {}
                for stage in allStages:
                    self.functionResponseIds[funcName][stage] = ""
                    self.functionTranslateResults[funcName][stage] = ""

        self._initialized = True

    def updateCurrentFuncNameAndStage(self, funcName, stage):
        self.currentStage = stage
        self.currentFuncName = funcName

    def updateCurrentStructNameAndStage(self, structName, stage):
        self.currentStage = stage
        self.currentStructName = structName


    def updateFunctionResponseId(self, responseId):
        self.functionResponseIds[self.currentFuncName][self.currentStage] = responseId

    def updateStructResponseId(self, responseId):
        if self.currentStructName not in self.structResponseIds:
            self.structResponseIds[self.currentStructName] = {}
        if self.currentStage not in self.structResponseIds[self.currentStructName]:
            self.structResponseIds[self.currentStructName][self.currentStage] = ""
        self.structResponseIds[self.currentStructName][self.currentStage] = responseId

    def updateFunctionTranslateResult(self, translateResult):
        self.functionTranslateResults[self.currentFuncName][self.currentStage] = translateResult

    def updateStructTranslateResult(self, translateResult):
        if self.currentStructName not in self.structTranslateResults:
            self.structTranslateResults[self.currentStructName] = {}
        if self.currentStage not in self.structTranslateResults[self.currentStructName]:
            self.structTranslateResults[self.currentStructName][self.currentStage] = ""
        self.structTranslateResults[self.currentStructName][self.currentStage] = translateResult
    
    def updateStructTranslateResultWithStructName(self, structName, translateResult):
        if structName not in self.structTranslateResults:
            self.structTranslateResults[structName] = {}
        if self.currentStage not in self.structTranslateResults[structName]:
            self.structTranslateResults[structName][self.currentStage] = ""
        self.structTranslateResults[structName][self.currentStage] = translateResult

    def updateTranslationStage(self, currentStage):
        self.currentStage = currentStage
