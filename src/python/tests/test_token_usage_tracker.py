"""Tests for tokenUsageTracker:
1. Anthropic-style usage extraction
2. OpenAI Responses-API-style usage extraction
3. OpenAI ChatCompletions-style usage extraction
4. Aggregation by stage / kind / model
5. JSONL + summary file output
6. Cost estimate from pricing table
7. Thread safety
8. Integration with send() recording
"""
import json
import logging
import os
import sys
import tempfile
import threading
import types

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "gpt_translation"))

# Stub optional deps.
openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)
tiktoken_stub = types.ModuleType("tiktoken")
tiktoken_stub.encoding_name_for_model = lambda *_a, **_k: "stub"
tiktoken_stub.get_encoding = lambda *_a, **_k: types.SimpleNamespace(
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

from tokenUsageTracker import TokenUsageTracker, _extractUsage, _estimateCostUsd, _lookupPricing


def _anthropicCompletion(in_=100, out=50, cache_read=0, cache_write=0):
    """Mimic anthropic.types.Message shape."""
    usage = types.SimpleNamespace(
        input_tokens=in_, output_tokens=out,
        cache_read_input_tokens=cache_read,
        cache_creation_input_tokens=cache_write,
    )
    return types.SimpleNamespace(usage=usage)


def _openaiResponsesCompletion(in_=200, out=80, cached=0):
    """Mimic openai responses.create response: usage has input_tokens_details."""
    details = types.SimpleNamespace(cached_tokens=cached)
    usage = types.SimpleNamespace(
        input_tokens=in_, output_tokens=out,
        total_tokens=in_ + out,
        input_tokens_details=details,
    )
    return types.SimpleNamespace(usage=usage)


def _openaiChatCompletion(prompt=300, completion=120, cached=0):
    """Mimic openai chat.completions.create response: prompt_tokens / completion_tokens / prompt_tokens_details."""
    details = types.SimpleNamespace(cached_tokens=cached)
    usage = types.SimpleNamespace(
        prompt_tokens=prompt, completion_tokens=completion,
        total_tokens=prompt + completion,
        prompt_tokens_details=details,
    )
    return types.SimpleNamespace(usage=usage)


def test_anthropic_extraction():
    c = _anthropicCompletion(in_=100, out=50, cache_read=20, cache_write=5)
    u = _extractUsage(c)
    assert u == {"input_tokens": 100, "output_tokens": 50,
                 "cache_read_input_tokens": 20, "cache_creation_input_tokens": 5}, u
    print("PASS: anthropic shape extracted correctly")


def test_openai_responses_extraction():
    c = _openaiResponsesCompletion(in_=200, out=80, cached=30)
    u = _extractUsage(c)
    assert u == {"input_tokens": 200, "output_tokens": 80,
                 "cache_read_input_tokens": 30, "cache_creation_input_tokens": 0}, u
    print("PASS: openai responses-api shape extracted correctly")


def test_openai_chat_extraction():
    c = _openaiChatCompletion(prompt=300, completion=120, cached=40)
    u = _extractUsage(c)
    assert u == {"input_tokens": 300, "output_tokens": 120,
                 "cache_read_input_tokens": 40, "cache_creation_input_tokens": 0}, u
    print("PASS: openai chat-completions shape extracted correctly")


def test_extract_returns_none_on_no_usage():
    assert _extractUsage(types.SimpleNamespace()) is None
    assert _extractUsage(None) is None
    print("PASS: missing-usage returns None instead of raising")


def test_pricing_lookup_and_cost():
    pricing = _lookupPricing("claude-opus-4-1")
    assert pricing is not None
    cost = _estimateCostUsd(
        {"input_tokens": 1_000_000, "output_tokens": 1_000_000,
         "cache_read_input_tokens": 0, "cache_creation_input_tokens": 0},
        pricing,
    )
    # claude-opus-4-1 = $15/$75 per 1M
    assert abs(cost - 90.0) < 0.001, f"expected $90, got ${cost}"
    print(f"PASS: cost estimate correct ($90/M = ${cost:.2f})")


def test_pricing_prefix_match():
    """Versioned model names like claude-opus-4-1-20250805 should match
    the claude-opus-4-1 pricing prefix."""
    pricing = _lookupPricing("claude-opus-4-1-20250805")
    assert pricing is not None
    assert pricing["input"] == 15.0
    print("PASS: versioned model name matches pricing prefix")


def test_record_and_summarize():
    tracker = TokenUsageTracker(logger=logging.getLogger("test_token"))
    tracker.record("nsvg__pushAttr", "function", "Stage_1",
                   "claude-opus-4-1", _anthropicCompletion(in_=1000, out=500))
    tracker.record("nsvg__addShape", "function", "Stage_1",
                   "claude-opus-4-1", _anthropicCompletion(in_=2000, out=300))
    tracker.record("type_batch_1", "type_batch", "Stage_1",
                   "claude-opus-4-1", _anthropicCompletion(in_=500, out=100))
    tracker.record("nsvg__pushAttr", "function_retry", "Stage_2",
                   "claude-opus-4-1", _anthropicCompletion(in_=1500, out=200, cache_read=900))

    summary = tracker.summarize()
    t = summary["totals"]
    assert t["calls"] == 4
    assert t["input_tokens"] == 1000 + 2000 + 500 + 1500
    assert t["output_tokens"] == 500 + 300 + 100 + 200
    assert t["cache_read_input_tokens"] == 900
    assert summary["by_kind"]["function"]["calls"] == 2
    assert summary["by_kind"]["function_retry"]["calls"] == 1
    assert summary["by_kind"]["type_batch"]["calls"] == 1
    assert summary["by_stage"]["Stage_1"]["calls"] == 3
    assert summary["by_stage"]["Stage_2"]["calls"] == 1
    assert t["estimated_cost_usd"] > 0
    print(f"PASS: aggregation correct, totals={t['calls']} calls, "
          f"in={t['input_tokens']}, out={t['output_tokens']}, "
          f"cost=${t['estimated_cost_usd']:.4f}")


def test_dump_writes_jsonl_and_summary():
    tracker = TokenUsageTracker(logger=logging.getLogger("test_token"))
    tracker.record("a", "function", "Stage_1", "claude-opus-4-1",
                   _anthropicCompletion(in_=10, out=5))
    tracker.record("b", "type_batch", "Stage_1", "claude-opus-4-1",
                   _anthropicCompletion(in_=20, out=8))

    with tempfile.TemporaryDirectory() as tmp:
        paths = tracker.dump(tmp)
        assert os.path.isfile(paths["jsonl"])
        assert os.path.isfile(paths["summary"])

        with open(paths["jsonl"]) as f:
            lines = [json.loads(line) for line in f if line.strip()]
        assert len(lines) == 2
        assert lines[0]["name"] == "a" and lines[0]["input_tokens"] == 10
        assert lines[1]["kind"] == "type_batch"

        with open(paths["summary"]) as f:
            summary = json.load(f)
        assert summary["totals"]["calls"] == 2
        assert summary["totals"]["input_tokens"] == 30
    print("PASS: dump writes both jsonl and summary files")


def test_thread_safety():
    """Hammer record() from multiple threads; final count must match."""
    tracker = TokenUsageTracker()
    NUM_THREADS = 8
    PER_THREAD = 50

    def worker(thread_id):
        for i in range(PER_THREAD):
            tracker.record(f"f_{thread_id}_{i}", "function", "Stage_1",
                           "claude-opus-4-1", _anthropicCompletion(in_=10, out=5))

    threads = [threading.Thread(target=worker, args=(t,)) for t in range(NUM_THREADS)]
    for t in threads:
        t.start()
    for t in threads:
        t.join()

    snap = tracker.snapshot()
    assert len(snap) == NUM_THREADS * PER_THREAD, (
        f"expected {NUM_THREADS * PER_THREAD} records, got {len(snap)}"
    )
    print(f"PASS: thread-safe ({len(snap)} records from {NUM_THREADS} threads)")


def test_send_integration_records():
    """Use a fake LLMUtilsMixin host and verify send() records via the tracker."""
    from llm_utils_mixin import LLMUtilsMixin

    class _FakeHost(LLMUtilsMixin):
        def __init__(self):
            self.logger = logging.getLogger("test_send_integration")
            self.tokenTracker = TokenUsageTracker(self.logger)
            self.currentCallKind = "function"
            self.stage = "Stage_1"
            self.model = "claude-opus-4-1"
            self.dstLang = "Rust"
            self._completionCounter = 0

        def getResponse(self, request):
            self._completionCounter += 1
            return (_anthropicCompletion(in_=42, out=11), "ok-response")

        def isResponseTruncated(self, completion, name):
            return False

        def extractTargetCode(self, *a, **k):
            return ""

    h = _FakeHost()
    h.send("nsvg__pushAttr", "translate this")
    snap = h.tokenTracker.snapshot()
    assert len(snap) == 1
    assert snap[0]["name"] == "nsvg__pushAttr"
    assert snap[0]["kind"] == "function"
    assert snap[0]["stage"] == "Stage_1"
    assert snap[0]["input_tokens"] == 42
    assert snap[0]["output_tokens"] == 11
    print("PASS: send() emits a token-usage record automatically")


def test_setCallKind_overrides_label():
    """When setCallKind is in scope, recorded `kind` should reflect it."""
    from llm_utils_mixin import LLMUtilsMixin

    class _FakeHost(LLMUtilsMixin):
        def __init__(self):
            self.logger = logging.getLogger("test_setCallKind")
            self.tokenTracker = TokenUsageTracker(self.logger)
            self.currentCallKind = "function"
            self.stage = ""
            self.model = "claude-opus-4-1"
            self.dstLang = "Rust"

        def getResponse(self, request):
            return (_anthropicCompletion(in_=10, out=5), "")

        def isResponseTruncated(self, c, n):
            return False

        def extractTargetCode(self, *a, **k):
            return ""

    h = _FakeHost()
    with h.setCallKind("type_batch"):
        h.send("NSVGparser+NSVGattrib", "translate")
    # After the with-block exits, we revert to function
    h.send("nsvg__pushAttr", "translate")

    snap = h.tokenTracker.snapshot()
    assert len(snap) == 2
    assert snap[0]["kind"] == "type_batch", snap[0]
    assert snap[1]["kind"] == "function", snap[1]
    print("PASS: setCallKind labels nested calls correctly and resets on exit")


def test_setCallKind_resets_on_exception():
    """setCallKind must restore the previous label even if the body raises."""
    from llm_utils_mixin import LLMUtilsMixin

    class _Host(LLMUtilsMixin):
        def __init__(self):
            self.currentCallKind = "function"
            self.tokenTracker = None
            self.logger = logging.getLogger("t")

    h = _Host()
    try:
        with h.setCallKind("retry"):
            assert h.currentCallKind == "retry"
            raise RuntimeError("boom")
    except RuntimeError:
        pass
    assert h.currentCallKind == "function", (
        f"label should reset on exception, got {h.currentCallKind}"
    )
    print("PASS: setCallKind correctly resets label on exception")


if __name__ == "__main__":
    logging.basicConfig(level=logging.WARNING)
    test_anthropic_extraction()
    test_openai_responses_extraction()
    test_openai_chat_extraction()
    test_extract_returns_none_on_no_usage()
    test_pricing_lookup_and_cost()
    test_pricing_prefix_match()
    test_record_and_summarize()
    test_dump_writes_jsonl_and_summary()
    test_thread_safety()
    test_send_integration_records()
    test_setCallKind_overrides_label()
    test_setCallKind_resets_on_exception()
    print("\nAll tests passed.")
