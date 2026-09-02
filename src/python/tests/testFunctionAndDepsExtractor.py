import unittest
import os
import logging
import glob
import sys
import types

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)

tiktoken_stub = types.ModuleType("tiktoken")
tiktoken_stub.encoding_name_for_model = lambda *_args, **_kwargs: "stub"
tiktoken_stub.get_encoding = lambda *_args, **_kwargs: types.SimpleNamespace(
    encode=lambda text: (text or "").split()
)
sys.modules.setdefault("tiktoken", tiktoken_stub)

sympy_mod = types.ModuleType("sympy")
codegen_mod = types.ModuleType("sympy.codegen")
cnodes_mod = types.ModuleType("sympy.codegen.cnodes")
cnodes_mod.struct = object()
sys.modules.setdefault("sympy", sympy_mod)
sys.modules.setdefault("sympy.codegen", codegen_mod)
sys.modules.setdefault("sympy.codegen.cnodes", cnodes_mod)

from functionAndDeps import FunctionAndDependencies
from functionAndDepsExtractor import FunctionAndDepsExtractor

class TestFunctionAndDepsExtractor(unittest.TestCase):
    def setUp(self):
        FunctionAndDependencies.resetTypeSystem()

    def getLogger(self, logPath):
        if os.path.exists(logPath):
            os.remove(logPath)
        # Create a logger
        logger = logging.getLogger('test_function_and_deps_extractor_logger')
        logger.setLevel(logging.INFO)
        
        # Create file handler which logs even debug messages
        fh = logging.FileHandler(logPath)
        fh.setLevel(logging.DEBUG)
        
        # Create console handler with a higher log level
        ch = logging.StreamHandler()
        ch.setLevel(logging.INFO)
    
        # Create formatter and add it to the handlers
        formatter = logging.Formatter('%(asctime)s - %(name)s - %(levelname)s - %(message)s')
        fh.setFormatter(formatter)
        ch.setFormatter(formatter)
    
        # Add the handlers to the logger
        logger.addHandler(fh)
        logger.addHandler(ch)
    
        return logger

    def testExtractGlobalTypeUsageDetails(self):
        logger = self.getLogger("./test-function-and-deps.log")
        extractor = FunctionAndDepsExtractor(logger)
        # Tests moved to src/python/tests/; inputs-simple/ lives one level
        # above us at src/python/inputs-simple/.
        srcPath = os.path.join(
            os.path.dirname(os.path.dirname(os.path.abspath(__file__))),
            "inputs-simple",
            "example",
            "individual",
        )
        allFiles = glob.iglob(os.path.join(srcPath, "**/*.i"), recursive=True)
        fileFuncMap = {}
        functionOrderList = []

        for filename in allFiles:
            logger.info("TEST: Extracting function bodies for file: %s", filename)
            funcMap = extractor.extractFuncsAndDeps(filename, functionOrderList, None)
            fileFuncMap.update(funcMap)

        extractor.extractGlobalTypeUsageDetails(srcPath, fileFuncMap)

        self.assertTrue(len(fileFuncMap) > 0)

        for funcSym in fileFuncMap:
            functionAndDeps = fileFuncMap[funcSym]
            self.assertTrue(len(functionAndDeps.funcCodeLines) > 1)
            logger.info("TEST: For function: %s", funcSym)
            for usedType in functionAndDeps.typeUsageCodeLinesMap:
                logger.info("TEST: For type: %s", usedType)
                for usage in functionAndDeps.typeUsageCodeLinesMap[usedType]:
                    logger.info("TEST: %s", usage)

if __name__ == '__main__':
    unittest.main()
