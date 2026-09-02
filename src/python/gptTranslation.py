from gpt_translation.config import (
    CLAUDE_CTX_WINDOW_LEN,
    CLAUDE_HAIKU_4_5_MODEL,
    CLAUDE_HAIKU_CTX_WINDOW_LEN,
    CLAUDE_HAIKU_MAX_COMPLETION_TOKENS,
    CLAUDE_MAX_COMPLETION_TOKENS,
    CLAUDE_OPUS_4_1_MODEL,
    CLAUDE_SONNET_4_6_MODEL,
    COMPILATION_RETRIES,
    GEMINI_CTX_WINDOW_LEN,
    GEMINI_FLASH_MODEL,
    GEMINI_MAX_COMPLETION_TOKENS,
    GEMINI_PRO_MODEL,
    GPT5_MINI_MODEL,
    GPT5_MODEL,
    GPT5_MODEL_CTX_WINDOW_LEN,
    GPT5_MODEL_MAX_COMPLETION_TOKENS,
    GPT5_NANO_MODEL,
    LLMModels,
    MAX_THREADS,
    STRUCT_RETRIES,
    Stage,
    TranslatorModes,
)
from gpt_translation.translator import (
    Claude_Haiku_Translator,
    Claude_Opus_Translator,
    Claude_Sonnet_Translator,
    Gemini_Flash_Translator,
    Gemini_Pro_Translator,
    Gpt5MiniTranslator,
    Gpt5NanoTranslator,
    Gpt5Translator,
    Translator,
)

__all__ = [
    "CLAUDE_CTX_WINDOW_LEN",
    "CLAUDE_HAIKU_4_5_MODEL",
    "CLAUDE_HAIKU_CTX_WINDOW_LEN",
    "CLAUDE_HAIKU_MAX_COMPLETION_TOKENS",
    "CLAUDE_MAX_COMPLETION_TOKENS",
    "CLAUDE_OPUS_4_1_MODEL",
    "CLAUDE_SONNET_4_6_MODEL",
    "COMPILATION_RETRIES",
    "GEMINI_CTX_WINDOW_LEN",
    "GEMINI_FLASH_MODEL",
    "GEMINI_MAX_COMPLETION_TOKENS",
    "GEMINI_PRO_MODEL",
    "GPT5_MODEL",
    "GPT5_MODEL_CTX_WINDOW_LEN",
    "GPT5_MODEL_MAX_COMPLETION_TOKENS",
    "Gemini_Flash_Translator",
    "Gemini_Pro_Translator",
    "Gpt5MiniTranslator",
    "Gpt5NanoTranslator",
    "Gpt5Translator",
    "GPT5_MINI_MODEL",
    "GPT5_NANO_MODEL",
    "Claude_Haiku_Translator",
    "Claude_Opus_Translator",
    "Claude_Sonnet_Translator",
    "LLMModels",
    "MAX_THREADS",
    "STRUCT_RETRIES",
    "Stage",
    "Translator",
    "TranslatorModes",
]


def main():
    print("111")


if __name__ == "__main__":
    main()
