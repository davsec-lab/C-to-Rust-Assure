import os
import sys
import tempfile
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)
sys.modules.setdefault("tiktoken", types.ModuleType("tiktoken"))

import util


class DummyLogger:
    def warning(self, *args, **kwargs):
        pass


class TestUtil(unittest.TestCase):
    def test_extract_typedef_struct_definition_by_alias(self):
        source = """typedef
   struct {
      int x;
   }
   DState;

static int f(DState* s) { return s->x; }
"""
        with tempfile.NamedTemporaryFile("w", suffix=".c", delete=False) as tmp:
            tmp.write(source)
            tmp_path = tmp.name

        try:
            result = util.extractStructDefinition(DummyLogger(), tmp_path, "DState")
            self.assertIsNotNone(result)
            (_, _, definition) = result
            rendered = "\n".join(definition)
            self.assertIn("typedef", rendered)
            self.assertIn("struct {", rendered)
            self.assertIn("DState;", rendered)
        finally:
            os.unlink(tmp_path)

    def test_extract_simple_typedef_definition_by_alias(self):
        source = """typedef unsigned int UInt32;
typedef unsigned short UInt16;
"""
        with tempfile.NamedTemporaryFile("w", suffix=".c", delete=False) as tmp:
            tmp.write(source)
            tmp_path = tmp.name

        try:
            result = util.extractTypedefDefinition(DummyLogger(), tmp_path, "UInt16")
            self.assertIsNotNone(result)
            (_, _, definition) = result
            rendered = "\n".join(definition)
            self.assertEqual(rendered.strip(), "typedef unsigned short UInt16;")
        finally:
            os.unlink(tmp_path)


if __name__ == "__main__":
    unittest.main()
