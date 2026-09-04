from enum import Enum


GPT5_MODEL = "gpt-5.4-2026-03-05"
GPT5_MODEL_CTX_WINDOW_LEN = 400000
GPT5_MODEL_MAX_COMPLETION_TOKENS = 128000

# Budget-tier OpenAI models. Same generation as GPT5_MODEL, used for dev
# iteration / getting the pipeline flowing; use GPT5_MODEL when producing
# official data. Context and max output follow the same-generation specs.
GPT5_MINI_MODEL = "gpt-5.4-mini"
GPT5_NANO_MODEL = "gpt-5-nano"

# libc version constraint for the Cargo compile check.
#
# The version must be pinned: libc 0.2.189+ has an MSRV of rustc 1.65, while
# this project pins rustc 1.64.0 (aligned with the LLVM 14 / KLEE backend, see
# INTEGRATION.md §3.4). Writing "0.2" would resolve to the newest 0.2.x and fail
# to compile outright:
#     error: package `libc v0.2.189` cannot be built because it requires
#            rustc 1.65 or newer, while the currently active rustc version is 1.64.0
#
# Pinning also lets cargo skip the registry index update: cargo 1.64 uses the
# git index, and one online resolution takes 180s+, blowing past
# compileWithCargoProject's 120s timeout.
# With a pinned version + CARGO_NET_OFFLINE=true, it drops to about 2s.
import os as _os
CARGO_LIBC_REQUIREMENT = _os.environ.get("ASSURE_CARGO_LIBC_REQ", "=0.2.149")

# Knobs the outer agent can turn (DESIGN.md §4). Injected as environment
# variables from config.yaml via run_eval.
# Defaults are kept as-is; with no env vars set, behavior is exactly as before
# the change.
COMPILATION_RETRIES = int(_os.environ.get("ASSURE_COMPILATION_RETRIES", "5"))
STRUCT_RETRIES = int(_os.environ.get("ASSURE_STRUCT_RETRIES", "5"))
MAX_THREADS = 40

# Performance regression retry defaults (CLI overridable in translationValidator.py).
# A stage's average elapsed time exceeding prev_stage * (1 + PERF_DEGRADE_THRESHOLD_PCT/100)
# triggers up to PERF_DEGRADE_RETRY_COUNT per-function rerun attempts. After all
# retries are exhausted, PERF_DEGRADE_DISCARD_ON_FAIL controls whether the stage's
# funcMap is reverted to the previous stage. PERF_DEGRADE_SKIP_RETRY=True bypasses
# the retry mechanism entirely (record degradation, take no action).
PERF_DEGRADE_THRESHOLD_PCT = 5.0
PERF_DEGRADE_RETRY_COUNT = 0
PERF_DEGRADE_DISCARD_ON_FAIL = False
PERF_DEGRADE_SKIP_RETRY = False


# https://docs.anthropic.com/en/docs/models-overview
CLAUDE_OPUS_4_1_MODEL = "claude-opus-4-6"
CLAUDE_SONNET_4_6_MODEL = "claude-sonnet-4-6"
CLAUDE_HAIKU_4_5_MODEL = "claude-haiku-4-5"
CLAUDE_CTX_WINDOW_LEN = 1000 * 1000
CLAUDE_MAX_COMPLETION_TOKENS = 128 * 1000
# Haiku 4.5 has a 200K context window and a 64K max-output cap (vs
# Opus/Sonnet's 1M/128K). Kept on dedicated constants so preanalysis
# fit-checks reflect Haiku's actual capacity instead of silently
# over-reporting and triggering a 400 "prompt too long" at request time.
CLAUDE_HAIKU_CTX_WINDOW_LEN = 200 * 1000
CLAUDE_HAIKU_MAX_COMPLETION_TOKENS = 64 * 1000

# Gemini 3.5 Flash. Output price ($9/1M) is billed including thinking
# tokens, so the translator pins thinking_budget=0.
# https://ai.google.dev/gemini-api/docs/models
GEMINI_FLASH_MODEL = "gemini-3.5-flash"
GEMINI_PRO_MODEL = "gemini-3.1-pro-preview"
GEMINI_CTX_WINDOW_LEN = 1000 * 1000
GEMINI_MAX_COMPLETION_TOKENS = 64 * 1000




class LLMModels(Enum):
    GPT_5 = 0
    GPT_5_MINI = 6
    GPT_5_NANO = 7
    CLAUDE_OPUS = 1
    CLAUDE_SONNET = 2
    CLAUDE_HAIKU = 3
    GEMINI_FLASH = 4
    GEMINI_PRO = 5


class TranslatorModes(Enum):
    BASIC_CHUNK_CHAIN = 0
    COMPILATION_FEEDBACK = 1
    CF_STRUCT_REPLAY = 2
    CF_STRUCT_FN_REPLAY = 3
    CF_SINGLE_REQUEST_MERGE = 4
