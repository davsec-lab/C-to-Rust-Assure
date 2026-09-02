import unittest
import os
import logging
import types
import sys
from unittest import mock

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

from gptTranslation import Translator, Claude_Opus_Translator, LLMModels, TranslatorModes, CLAUDE_OPUS_4_1_MODEL

# Use a retained OpenAI model in tests.
GPT_MODEL="gpt-5.2-2025-12-11"
CTX_WINDOW_LEN=400000
MAX_COMPLETION_TOKENS=128000

class TestTranslator(unittest.TestCase):
    def getLogger(self, logPath):
        if os.path.exists(logPath):
            os.remove(logPath)
        # Create a logger
        logger = logging.getLogger('test_translator_logger')
        logger.setLevel(logging.DEBUG)
        
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

    def createTranslator(self):
        logger = self.getLogger("./test-translator.log")
        translator = Translator.__new__(Translator)
        translator.logger = logger
        translator.requestTokenLimit = CTX_WINDOW_LEN
        translator.maxCompletionTokens = MAX_COMPLETION_TOKENS
        translator.dstLang = "Rust"
        translator.countTokens = lambda text: len((text or "").split())
        translator.send = lambda _name, _request: (
            types.SimpleNamespace(status="completed", incomplete_details=None),
            "fn main() {\n    println!(\"Hello world\");\n}",
        )
        return translator

    def testChunkAndSend(self):
        translator = self.createTranslator()
        testFileContents = "int main(void) { return 0; }"
        response = translator.chunkAndSend("dummy", testFileContents)
        self.assertTrue(len(response)>0 and "fn main" in response )

    def testExtractRustCode(self):
        translator = self.createTranslator()
        response = translator.extractRustCode("""
                This is the Rust code.
                ```rust
                fn main() {
                    println!("Hello world");
                }
                ```
                And then there's this function:
                ```rust
                fn add(a, b) {
                    a + b
                }
                ```
                """)
        self.assertTrue("Rust" not in response and "rust" not in response and "And" not in response)

    def testExtractYesNoDecisionFromTrailingLine(self):
        response = """Looking at the struct, `entry_buf` should become `std::vector<unsigned char>`.

That removes the need for manual size tracking.

yes"""
        self.assertEqual(Translator.extractYesNoDecision(response), "yes")

    def testExtractYesNoDecisionFromParentheticalNoChangesNeeded(self):
        # Sonnet was observed responding with this exact phrasing in
        # cjson_new_validator_2026-05-11_16-07-14.log at log lines 117542,
        # 123588, 136117. Semantically "no", but the prior parser dropped
        # it because the regex required punctuation-only trailing chars
        # and `changes needed` is letters.
        self.assertEqual(Translator.extractYesNoDecision("(no changes needed)"), "no")
        self.assertEqual(
            Translator.extractYesNoDecision(
                "(no changes needed — there are no map types in the provided definitions to convert)"
            ),
            "no",
        )

    def testExtractYesNoDecisionDoesNotMatchEmbeddedNoLongerUsed(self):
        # Counter-case: "no longer used" inside prose must NOT be extracted
        # as a "no" decision. The response actually has no yes/no intent and
        # should fall through to None.
        response = "// internal_hooks and global_hooks removed: custom allocator hooks are no longer used."
        self.assertIsNone(Translator.extractYesNoDecision(response))

    def testExtractYesNoDecisionMarkdownBoldYes(self):
        # **Yes** / > Yes / "Yes" — common markdown / quote decorations.
        self.assertEqual(Translator.extractYesNoDecision("**Yes**"), "yes")
        self.assertEqual(Translator.extractYesNoDecision("> No"), "no")
        self.assertEqual(Translator.extractYesNoDecision('"yes"'), "yes")

    def testExtractYesNoDecisionLeadingYesWithFollowupText(self):
        # "Yes, this is appropriate" / "No - the existing code is fine"
        self.assertEqual(
            Translator.extractYesNoDecision("Yes, this is appropriate"), "yes",
        )
        self.assertEqual(
            Translator.extractYesNoDecision("No - the existing code is already idiomatic"), "no",
        )

    def testExtractYesNoDecisionAfterFencedCodeBlock(self):
        # The cjson_new Stage_3 / Stage_8+ failure pattern: model emits the
        # proposed change in a ```cpp ... ``` fence and writes the decision
        # ("no") OUTSIDE the fence on its own line. The raw response is
        # what we want to feed to the parser — extractTargetCode would
        # strip everything but the code block.
        rawResponse = (
            "Final result code is:\n"
            "\n"
            "```cpp\n"
            "static unsigned char get_decimal_point(void)\n"
            "{\n"
            "    return '.';\n"
            "}\n"
            "```\n"
            "\n"
            "no"
        )
        self.assertEqual(Translator.extractYesNoDecision(rawResponse), "no")
        # Same pattern with a trailing "yes".
        rawResponse_yes = (
            "Here's the proposed change applied:\n\n"
            "```rust\n"
            "fn foo() -> i32 { 42 }\n"
            "```\n\n"
            "yes"
        )
        self.assertEqual(Translator.extractYesNoDecision(rawResponse_yes), "yes")

    """
    def testCountTokens(self):
        translator = self.createTranslator()
    """

    def testGetLLMModelClaudeOpus(self):
        self.assertEqual(Translator.getLLMModel("claude-opus"), LLMModels.CLAUDE_OPUS)
        self.assertEqual(Translator.getLLMModel("claude-opus-4-1"), LLMModels.CLAUDE_OPUS)

    def testClaudeOpusTranslatorUsesExpectedModel(self):
        logger = self.getLogger("./test-translator.log")
        import gpt_translation.translator as translator_module

        fake_anthropic = types.SimpleNamespace(
            Anthropic=lambda **_kwargs: object()
        )
        with mock.patch.object(translator_module, "anthropic", fake_anthropic):
            translator = Claude_Opus_Translator(
                logger,
                "dummy-api-key",
                "C",
                "Rust",
                "You are an expert programmer in C and Rust.",
                TranslatorModes.BASIC_CHUNK_CHAIN,
            )
        self.assertEqual(translator.model, CLAUDE_OPUS_4_1_MODEL)


if __name__ == '__main__':
    unittest.main()
