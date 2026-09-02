"""Token usage tracker for translation runs.

Captures the `usage` field returned by Anthropic / OpenAI SDKs for every LLM
call made during a translation run, writes per-call records to a JSONL file,
and emits an aggregated summary at the end of the run.

Usage:
    tracker = TokenUsageTracker(logger)
    # Inside the LLM call site, after the SDK returns `completion`:
    tracker.record(
        name="nsvg__pushAttr",
        kind="function",
        stage="Stage_1",
        model=self.model,
        completion=completion,
    )
    # After the run finishes:
    tracker.dump(outputDir)

The tracker is thread-safe.
"""
import datetime
import json
import os
import threading
from collections import defaultdict


# Per-1M-token USD prices (input / output / cache_read).
# Update as providers change pricing. Models not listed default to (0, 0, 0)
# so cost estimates are conservatively zero rather than wildly wrong.
_DEFAULT_PRICING = {
    "claude-opus-4-1":     {"input": 15.0, "output": 75.0, "cache_read":  1.50, "cache_write": 18.75},
    "claude-opus-4-5":     {"input":  5.0, "output": 25.0, "cache_read":  0.50, "cache_write":  6.25},
    "claude-opus-4-6":     {"input":  5.0, "output": 25.0, "cache_read":  0.50, "cache_write":  6.25},
    "claude-opus-4-7":     {"input":  5.0, "output": 25.0, "cache_read":  0.50, "cache_write":  6.25},
    "claude-opus-4-8":     {"input":  5.0, "output": 25.0, "cache_read":  0.50, "cache_write":  6.25},
    "claude-sonnet-4-5":   {"input":  3.0, "output": 15.0, "cache_read":  0.30, "cache_write":  3.75},
    "claude-sonnet-4-6":   {"input":  3.0, "output": 15.0, "cache_read":  0.30, "cache_write":  3.75},
    "claude-haiku-4-5":    {"input":  1.0, "output":  5.0, "cache_read":  0.10, "cache_write":  1.25},
    "gpt-5.4":             {"input":  2.50, "output": 15.0, "cache_read":  0.25,  "cache_write": 0.0},
    "gpt-5":               {"input":  1.25, "output": 10.0, "cache_read":  0.125, "cache_write": 0.0},
    # Gemini 3.5 Flash: output rate covers any thinking tokens too,
    # so cost projections stay honest only when the translator pins
    # thinking_budget=0 (see Gemini_Flash_Translator.getResponse).
    "gemini-3.5-flash":    {"input":  1.50, "output":  9.00, "cache_read":  0.15, "cache_write": 0.0},
    # Gemini 3.1 Pro: numbers below carry forward the Gemini 3 Pro
    # rate card (input $2.00 / output $12.00 per 1M, cache read ~10%
    # of input). VERIFY against https://ai.google.dev/pricing before
    # using cost estimates for billing decisions — the 3.1 variant
    # may have its own rate sheet. Same thinking-token caveat as
    # Flash: output rate covers thinking tokens, and the translator
    # currently runs with thinking_budget=-1 (dynamic), so projected
    # cost is a lower bound when the model decides to think.
    "gemini-3.1-pro":      {"input":  2.00, "output": 12.00, "cache_read":  0.20, "cache_write": 0.0},
}


def _lookupPricing(model):
    if not model:
        return None
    # Exact match first.
    if model in _DEFAULT_PRICING:
        return _DEFAULT_PRICING[model]
    # Prefix match (e.g. claude-opus-4-1-20250805 matches claude-opus-4-1).
    for prefix, price in _DEFAULT_PRICING.items():
        if model.startswith(prefix):
            return price
    return None


def _extractUsage(completion):
    """Extract token counts from a provider response.

    Handles four shapes:
      - Anthropic Messages: completion.usage.{input_tokens, output_tokens,
        cache_read_input_tokens, cache_creation_input_tokens}
      - OpenAI Responses API: completion.usage.{input_tokens, output_tokens,
        total_tokens, input_tokens_details.cached_tokens}
      - OpenAI Chat Completions: completion.usage.{prompt_tokens,
        completion_tokens, total_tokens, prompt_tokens_details.cached_tokens}
      - Gemini (google-genai): completion.usage_metadata.{prompt_token_count,
        candidates_token_count, cached_content_token_count}

    Returns a dict with keys:
      input_tokens, output_tokens, cache_read_input_tokens,
      cache_creation_input_tokens
    All values are ints (zero when the provider doesn't report that field).
    Returns None if no usage could be extracted.
    """
    # Gemini parks the counts on `.usage_metadata`; the others use `.usage`.
    usage = getattr(completion, "usage", None) or getattr(completion, "usage_metadata", None)
    if usage is None:
        return None

    def _readInt(obj, *names):
        for name in names:
            value = getattr(obj, name, None)
            if value is None and isinstance(obj, dict):
                value = obj.get(name)
            if value is not None:
                try:
                    return int(value)
                except (TypeError, ValueError):
                    continue
        return 0

    inputTokens = _readInt(usage, "input_tokens", "prompt_tokens", "prompt_token_count")
    outputTokens = _readInt(usage, "output_tokens", "completion_tokens", "candidates_token_count")
    cacheRead = _readInt(usage, "cache_read_input_tokens", "cached_content_token_count")
    cacheCreate = _readInt(usage, "cache_creation_input_tokens")

    # OpenAI Responses API stores cached count on a sub-object.
    if cacheRead == 0:
        details = getattr(usage, "input_tokens_details", None) or getattr(
            usage, "prompt_tokens_details", None
        )
        if details is not None:
            cacheRead = _readInt(details, "cached_tokens")

    if inputTokens == 0 and outputTokens == 0 and cacheRead == 0 and cacheCreate == 0:
        return None

    return {
        "input_tokens": inputTokens,
        "output_tokens": outputTokens,
        "cache_read_input_tokens": cacheRead,
        "cache_creation_input_tokens": cacheCreate,
    }


def _estimateCostUsd(usage, pricing):
    """Estimate cost in USD given a usage dict and a pricing dict
    (per 1M tokens). Returns 0.0 if pricing is None."""
    if not pricing:
        return 0.0
    perToken = lambda count, ratePerMillion: (count / 1_000_000.0) * ratePerMillion
    return (
        perToken(usage["input_tokens"], pricing.get("input", 0.0))
        + perToken(usage["output_tokens"], pricing.get("output", 0.0))
        + perToken(usage["cache_read_input_tokens"], pricing.get("cache_read", 0.0))
        + perToken(usage["cache_creation_input_tokens"], pricing.get("cache_write", 0.0))
    )


class TokenUsageTracker:
    def __init__(self, logger=None, pricing=None):
        self.logger = logger
        self._records = []
        self._lock = threading.Lock()
        self._pricing = dict(_DEFAULT_PRICING)
        if pricing:
            self._pricing.update(pricing)

    def record(self, name, kind, stage, model, completion):
        """Record one LLM call. Safe to call from threads. If usage cannot be
        extracted (e.g. mock object in tests), the call is silently skipped
        but logged at debug level."""
        usage = _extractUsage(completion)
        if usage is None:
            if self.logger is not None:
                self.logger.debug(
                    "Skipping token-usage record for %s (kind=%s, stage=%s): "
                    "no usage on completion",
                    name, kind, stage,
                )
            return None

        # Per-call cost so the JSONL is grep-friendly without rerunning
        # _estimateCostUsd downstream. Resolved against this tracker's pricing
        # table (which may be overridden via constructor for tests).
        pricing = _lookupPricing(model)
        if not pricing and isinstance(self._pricing, dict):
            pricing = self._pricing.get(model)
        callCost = _estimateCostUsd(usage, pricing) if pricing else 0.0

        entry = {
            "ts": datetime.datetime.now(datetime.timezone.utc).isoformat(),
            "name": name or "",
            "kind": kind or "",
            "stage": stage or "",
            "model": model or "",
            **usage,
            "estimated_cost_usd": callCost,
        }
        with self._lock:
            self._records.append(entry)
        return entry

    def snapshot(self):
        """Return a shallow copy of the records list."""
        with self._lock:
            return list(self._records)

    def summarize(self):
        """Aggregate records into a hierarchical summary."""
        records = self.snapshot()
        totals = {
            "calls": 0, "input_tokens": 0, "output_tokens": 0,
            "cache_read_input_tokens": 0, "cache_creation_input_tokens": 0,
            "estimated_cost_usd": 0.0,
        }
        byStage = defaultdict(lambda: {
            "calls": 0, "input_tokens": 0, "output_tokens": 0,
            "cache_read_input_tokens": 0, "cache_creation_input_tokens": 0,
            "estimated_cost_usd": 0.0,
        })
        byKind = defaultdict(lambda: dict(byStage.default_factory()))
        byModel = defaultdict(lambda: dict(byStage.default_factory()))

        for entry in records:
            usage = {k: entry[k] for k in (
                "input_tokens", "output_tokens",
                "cache_read_input_tokens", "cache_creation_input_tokens",
            )}
            cost = _estimateCostUsd(usage, _lookupPricing(entry["model"]))

            for bucket in (totals, byStage[entry["stage"] or "(none)"],
                           byKind[entry["kind"] or "(none)"],
                           byModel[entry["model"] or "(unknown)"]):
                bucket["calls"] += 1
                bucket["input_tokens"] += usage["input_tokens"]
                bucket["output_tokens"] += usage["output_tokens"]
                bucket["cache_read_input_tokens"] += usage["cache_read_input_tokens"]
                bucket["cache_creation_input_tokens"] += usage["cache_creation_input_tokens"]
                bucket["estimated_cost_usd"] += cost

        # Retries breakdown. The pipeline tags retry-flavored calls with
        # specific kinds via _callKindContext (see translation_pipeline_mixin):
        #   - function_retry         -> compile-error retry
        #   - struct_retry           -> "missing struct" retry (legacy path)
        #   - perf_retry_attempt_N   -> performance-regression retry, N=attempt
        # We surface these explicitly so a user can answer "how many compile/
        # perf retries did this run cost" without re-grepping the kind table.
        retries = {
            "compile_retry_calls": 0,
            "struct_retry_calls": 0,
            "perf_retry_calls_total": 0,
            "perf_retry_calls_by_attempt": {},
            "compile_retry_cost_usd": 0.0,
            "struct_retry_cost_usd": 0.0,
            "perf_retry_cost_usd": 0.0,
        }
        for entry in records:
            kind = entry.get("kind", "") or ""
            usage = {k: entry[k] for k in (
                "input_tokens", "output_tokens",
                "cache_read_input_tokens", "cache_creation_input_tokens",
            )}
            cost = _estimateCostUsd(usage, _lookupPricing(entry["model"]))
            if kind == "function_retry":
                retries["compile_retry_calls"] += 1
                retries["compile_retry_cost_usd"] += cost
            elif kind == "struct_retry":
                retries["struct_retry_calls"] += 1
                retries["struct_retry_cost_usd"] += cost
            elif kind.startswith("perf_retry_attempt_"):
                retries["perf_retry_calls_total"] += 1
                retries["perf_retry_cost_usd"] += cost
                attemptStr = kind[len("perf_retry_attempt_"):]
                bucket = retries["perf_retry_calls_by_attempt"].setdefault(
                    attemptStr, {"calls": 0, "cost_usd": 0.0},
                )
                bucket["calls"] += 1
                bucket["cost_usd"] += cost

        return {
            # Top-level price + call count so a quick `jq '.total_price_usd'`
            # or `head` of the summary tells you the dollar number without
            # navigating into nested buckets.
            "total_price_usd": totals["estimated_cost_usd"],
            "total_calls": totals["calls"],
            "totals": totals,
            "by_stage": dict(byStage),
            "by_kind": dict(byKind),
            "by_model": dict(byModel),
            "retries": retries,
            "record_count": len(records),
        }

    def dump(self, outputDir, jsonlName="token_usage.jsonl",
             summaryName="token_usage_summary.json",
             tableName="token_usage_summary.txt"):
        """Write per-call records as JSONL, an aggregated JSON summary, and a
        human-readable text table that includes per-stage / per-model cost."""
        if not outputDir:
            return None
        os.makedirs(outputDir, exist_ok=True)
        records = self.snapshot()

        jsonlPath = os.path.join(outputDir, jsonlName)
        with open(jsonlPath, "w") as f:
            for entry in records:
                f.write(json.dumps(entry, sort_keys=True) + "\n")

        summary = self.summarize()
        summaryPath = os.path.join(outputDir, summaryName)
        with open(summaryPath, "w") as f:
            json.dump(summary, f, indent=2, sort_keys=True)

        tableText = self._renderSummaryTable(summary)
        tablePath = os.path.join(outputDir, tableName)
        with open(tablePath, "w") as f:
            f.write(tableText)

        if self.logger is not None:
            for line in tableText.splitlines():
                self.logger.info("[token-usage] %s", line)

        return {"jsonl": jsonlPath, "summary": summaryPath, "table": tablePath}

    def _renderSummaryTable(self, summary):
        """Render the summary as a fixed-width text table grouped by stage and
        by model. Each row shows token counts and dollar cost so the price is
        visible alongside the tokens."""
        headers = ("calls", "input", "output", "cache_r", "cache_w", "cost_usd")

        def _row(label, bucket):
            return (
                label,
                str(bucket["calls"]),
                str(bucket["input_tokens"]),
                str(bucket["output_tokens"]),
                str(bucket["cache_read_input_tokens"]),
                str(bucket["cache_creation_input_tokens"]),
                f"${bucket['estimated_cost_usd']:.4f}",
            )

        sections = []
        byStage = summary.get("by_stage", {})
        if byStage:
            stageRows = [_row(stage, byStage[stage]) for stage in sorted(byStage)]
            sections.append(("by stage", stageRows))

        byModel = summary.get("by_model", {})
        if byModel:
            modelRows = [_row(model, byModel[model]) for model in sorted(byModel)]
            sections.append(("by model", modelRows))

        totalRow = _row("TOTAL", summary["totals"])
        sections.append(("total", [totalRow]))

        # Compute global column widths so all sections align.
        labelWidth = max(
            len("section"),
            *(len(row[0]) for _, rows in sections for row in rows),
        )
        colWidths = [labelWidth] + [len(h) for h in headers]
        for _, rows in sections:
            for row in rows:
                for i, cell in enumerate(row):
                    if len(cell) > colWidths[i]:
                        colWidths[i] = len(cell)

        def _fmt(cells):
            parts = [cells[0].ljust(colWidths[0])]
            for i, cell in enumerate(cells[1:], start=1):
                parts.append(cell.rjust(colWidths[i]))
            return "  ".join(parts)

        headerRow = ("section",) + headers
        separator = "  ".join("-" * w for w in colWidths)

        lines = []
        for sectionLabel, rows in sections:
            lines.append(f"--- {sectionLabel} ---")
            lines.append(_fmt(headerRow))
            lines.append(separator)
            for row in rows:
                lines.append(_fmt(row))
            lines.append("")

        # Retries footer. Shown after the main table so the "how many retries
        # did this cost me" answer is the last thing the user sees.
        retries = summary.get("retries") or {}
        if retries:
            lines.append("--- retries ---")
            lines.append(
                f"compile retries : {retries.get('compile_retry_calls', 0):>3d} calls  "
                f"${retries.get('compile_retry_cost_usd', 0.0):.4f}"
            )
            lines.append(
                f"struct retries  : {retries.get('struct_retry_calls', 0):>3d} calls  "
                f"${retries.get('struct_retry_cost_usd', 0.0):.4f}"
            )
            perfTotal = retries.get("perf_retry_calls_total", 0)
            perfCost = retries.get("perf_retry_cost_usd", 0.0)
            lines.append(
                f"perf retries    : {perfTotal:>3d} calls  ${perfCost:.4f}"
            )
            byAttempt = retries.get("perf_retry_calls_by_attempt") or {}
            for attempt in sorted(byAttempt.keys()):
                b = byAttempt[attempt]
                lines.append(
                    f"  attempt {attempt:>2}    : {b.get('calls', 0):>3d} calls  "
                    f"${b.get('cost_usd', 0.0):.4f}"
                )
            lines.append("")

        return "\n".join(lines).rstrip() + "\n"
