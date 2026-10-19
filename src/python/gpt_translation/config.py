from enum import Enum


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

# Agent translation (gpt_translation/agent_mixin.py), the only translation
# mode, --llm-mode=opencode:<provider/model>: every type batch and every
# function is translated by an OpenCode session that greps the C sources for
# how the unit is used.
OPENCODE_BIN = _os.environ.get("ASSURE_OPENCODE_BIN", "opencode")
# Model round-trips per OpenCode invocation, tool calls included.
AGENT_MAX_STEPS = int(_os.environ.get("ASSURE_AGENT_MAX_STEPS", "40"))
# Wall-clock cap on one OpenCode invocation, seconds.
AGENT_TIMEOUT = int(_os.environ.get("ASSURE_AGENT_TIMEOUT", "1200"))
# Wall-clock cap on one unit (a type batch, a function) across all of its
# attempts; no new attempt starts once it is used up.
AGENT_UNIT_TIMEOUT = int(_os.environ.get("ASSURE_AGENT_UNIT_TIMEOUT", "2400"))
# OpenRouter host(s) to pin, in order of preference, comma-separated
# (e.g. "siliconflow" or "siliconflow,deepinfra"); no host outside the list is
# used. Empty leaves routing to OpenRouter.
OPENROUTER_PROVIDER = _os.environ.get("ASSURE_OPENROUTER_PROVIDER", "").strip()
# OpenCode model variant, i.e. provider-specific reasoning effort (e.g. "low").
OPENCODE_VARIANT = _os.environ.get("ASSURE_OPENCODE_VARIANT", "").strip()
# Output-token cap to declare for the agent's model, for a host that allows
# less than OpenCode's catalogue says; 0 keeps the catalogue values. The
# context limit is only declared together with it.
OPENCODE_OUTPUT_LIMIT = int(_os.environ.get("ASSURE_OPENCODE_OUTPUT_LIMIT", "0") or 0)
OPENCODE_CONTEXT_LIMIT = int(_os.environ.get("ASSURE_OPENCODE_CONTEXT_LIMIT", "1000000") or 1000000)
# Context window / max output assumed for the agent's model; only the
# preanalysis fit report reads them.
OPENCODE_CTX_WINDOW_LEN = 1000 * 1000
OPENCODE_MAX_COMPLETION_TOKENS = 64 * 1000

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

PERF_DEGRADE_THRESHOLD_PCT_PER_STAGE: dict = {}


class LLMModels(Enum):
    OPENCODE = 8


class TranslatorModes(Enum):
    BASIC_CHUNK_CHAIN = 0
    COMPILATION_FEEDBACK = 1
    CF_STRUCT_REPLAY = 2
    CF_STRUCT_FN_REPLAY = 3
    CF_SINGLE_REQUEST_MERGE = 4
