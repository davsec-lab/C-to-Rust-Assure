import os
import sys
import tempfile
import types
import unittest
from unittest import mock

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)
sys.modules.setdefault("tiktoken", types.ModuleType("tiktoken"))

sympy_mod = types.ModuleType("sympy")
codegen_mod = types.ModuleType("sympy.codegen")
cnodes_mod = types.ModuleType("sympy.codegen.cnodes")
cnodes_mod.struct = object()
sys.modules.setdefault("sympy", sympy_mod)
sys.modules.setdefault("sympy.codegen", codegen_mod)
sys.modules.setdefault("sympy.codegen.cnodes", cnodes_mod)

from gpt_translation.config import TranslatorModes
from translationValidator import parseBoolArg, processCodebase


class DummyLogger:
    handlers = []

    def debug(self, *args, **kwargs):
        pass

    def info(self, *args, **kwargs):
        pass

    def warning(self, *args, **kwargs):
        pass

    def critical(self, *args, **kwargs):
        raise AssertionError(args[0] if args else "critical log")


class DummyTranslator:
    model = "dummy"

    def __init__(self):
        self.perfDegradeThresholdPct = None
        self.perfDegradeRetryCount = None
        self.perfDegradeDiscardOnFail = None
        self.perfDegradeSkipRetry = None
        self.skipCBaseline = None

    def preanalyze(self, func_map, individual_func_path):
        pass

    def translateAll(self, func_map, individual_func_path, multi_threading):
        pass


class TestTranslationValidatorCli(unittest.TestCase):
    def test_parse_bool_arg_accepts_true_and_false_strings(self):
        self.assertTrue(parseBoolArg("true"))
        self.assertTrue(parseBoolArg("TRUE"))
        self.assertFalse(parseBoolArg("false"))
        self.assertFalse(parseBoolArg("False"))

    def test_parse_bool_arg_rejects_other_values(self):
        with self.assertRaises(Exception):
            parseBoolArg("yes")

    def test_process_codebase_passes_perf_degrade_flags_to_translator(self):
        translator = DummyTranslator()
        import json

        with tempfile.TemporaryDirectory() as temp_dir:
            with mock.patch("translationValidator.createTranslator", return_value=translator):
                with mock.patch("translationValidator.getFunctions", return_value={}):
                    with mock.patch("translationValidator.FunctionAndDepsExtractor"):
                        output_path = processCodebase(
                            temp_dir,
                            object(),
                            "",
                            False,
                            TranslatorModes.CF_STRUCT_FN_REPLAY,
                            "",
                            "",
                            "",
                            False,
                            15.0,    # perfDegradeThresholdPct
                            3,       # perfDegradeRetryCount
                            True,    # perfDegradeDiscardOnFail
                            False,   # perfDegradeSkipRetry
                            False,   # skipCBaseline
                            DummyLogger(),
                        )

            # Assert INSIDE the temp_dir context (it gets cleaned up on exit).
            self.assertEqual(translator.perfDegradeThresholdPct, 15.0)
            self.assertEqual(translator.perfDegradeRetryCount, 3)
            self.assertTrue(translator.perfDegradeDiscardOnFail)
            self.assertFalse(translator.perfDegradeSkipRetry)
            self.assertTrue(output_path.endswith("__complete"))

            # run_config.json should be written into the result directory.
            configPath = os.path.join(output_path, "run_config.json")
            self.assertTrue(os.path.isfile(configPath),
                            f"run_config.json missing at {configPath}")
            with open(configPath) as f:
                cfg = json.load(f)
            self.assertEqual(cfg["perf_degrade"]["threshold_pct"], 15.0)
            self.assertEqual(cfg["perf_degrade"]["retry_count"], 3)
            self.assertTrue(cfg["perf_degrade"]["discard_on_fail"])
            self.assertFalse(cfg["perf_degrade"]["skip_retry"])
            self.assertIn("argv", cfg)
            self.assertIn("python_version", cfg)
            self.assertIn("timestamp", cfg)
            self.assertEqual(cfg["llm"]["model"], "dummy")


if __name__ == "__main__":
    unittest.main()
