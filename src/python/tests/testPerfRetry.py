"""Tests for the per-stage performance regression retry mechanism.

Covers:
- extractChecksum parses positive / negative / float / missing values
- Threshold percentage gate vs absolute fallback
- runPerformanceCheckForOutput correctness gate (checksum mismatch -> discard)
- runPerformanceCheckForOutput perf retry loop (success / exhausted / discard)
- compileWithFeedback prompt embeds the perfRetryContext suffix
"""
import json
import os
import sys
import tempfile
import types
import unittest
from unittest import mock

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# Stub heavy deps before importing project modules.
_openai_stub = types.ModuleType("openai")
_openai_stub.OpenAI = object
sys.modules.setdefault("openai", _openai_stub)

_tiktoken_stub = types.ModuleType("tiktoken")
_tiktoken_stub.encoding_name_for_model = lambda *a, **k: "stub"
_tiktoken_stub.get_encoding = lambda *a, **k: types.SimpleNamespace(
    encode=lambda text: (text or "").split()
)
sys.modules.setdefault("tiktoken", _tiktoken_stub)

_sympy = types.ModuleType("sympy")
_sympy_codegen = types.ModuleType("sympy.codegen")
_sympy_cnodes = types.ModuleType("sympy.codegen.cnodes")
_sympy_cnodes.struct = object()
sys.modules.setdefault("sympy", _sympy)
sys.modules.setdefault("sympy.codegen", _sympy_codegen)
sys.modules.setdefault("sympy.codegen.cnodes", _sympy_cnodes)

from gpt_translation.performance_mixin import PerformanceMixin


class _DummyLogger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _MetricsBackedProbe(PerformanceMixin):
    """A probe that has a real-but-stubbed metrics file behind it. Lets us
    exercise the perf-check / correctness paths without touching disk-heavy
    pipeline pieces."""

    def __init__(self, metricsDir, currentKey, previousKey=None,
                 prevAverageMs=None, prevChecksum=None):
        self.logger = _DummyLogger()
        self.metricsDir = metricsDir
        self.metricsPath = os.path.join(metricsDir, "performance_metrics.json")
        self.currentKey = currentKey
        self.previousKey = previousKey
        # seed prev stage entry, if any
        if previousKey is not None:
            metrics = {}
            if prevAverageMs is not None:
                metrics[previousKey] = {
                    "average_elapsed_ms": prevAverageMs,
                }
                if prevChecksum is not None:
                    metrics[previousKey]["checksum"] = prevChecksum
            self.writePerformanceMetrics(self.metricsPath, metrics)

    # Override metric-context resolution so getPerformanceMetricsContext
    # doesn't depend on path conventions.
    def getPerformanceMetricsContext(self, performancePath):
        return self.metricsPath, self.currentKey, self.previousKey

    def loadPerformanceMetrics(self, metricsPath):
        if not os.path.isfile(metricsPath):
            return {}
        with open(metricsPath) as f:
            return json.load(f)


class TestExtractChecksum(unittest.TestCase):
    def setUp(self):
        class P(PerformanceMixin):
            pass
        self.p = P()

    def test_positive_int(self):
        self.assertEqual(self.p.extractChecksum("Checksum: 12345"), "12345")

    def test_negative_int(self):
        self.assertEqual(self.p.extractChecksum("Checksum: -134999999992499"),
                         "-134999999992499")

    def test_float(self):
        self.assertEqual(self.p.extractChecksum("Checksum: 12.34"), "12.34")

    def test_zero(self):
        self.assertEqual(self.p.extractChecksum("Checksum: 0"), "0")

    def test_extracted_from_multiline_output(self):
        out = "Computation time: 1.234 seconds\nChecksum: 99\nfoo\n"
        self.assertEqual(self.p.extractChecksum(out), "99")

    def test_none_when_absent(self):
        self.assertIsNone(self.p.extractChecksum("elapsed_ms: 100"))

    def test_none_input(self):
        self.assertIsNone(self.p.extractChecksum(None))

    def test_empty_input(self):
        self.assertIsNone(self.p.extractChecksum(""))


class TestPercentageThreshold(unittest.TestCase):
    def setUp(self):
        class P(PerformanceMixin):
            pass
        self.p = P()
        self.p.logger = _DummyLogger()
        self.metrics = {"Stage_1": {"average_elapsed_ms": 1000.0}}

    def test_pct_within(self):
        self.assertTrue(self.p.isPerformanceWithinStageThreshold(
            "Stage_2", "Stage_1", 1099.0, self.metrics, thresholdPct=10.0))

    def test_pct_at_boundary(self):
        # Boundary: 1000 * 1.10 = 1100; 1100 should pass.
        self.assertTrue(self.p.isPerformanceWithinStageThreshold(
            "Stage_2", "Stage_1", 1100.0, self.metrics, thresholdPct=10.0))

    def test_pct_just_over(self):
        self.assertFalse(self.p.isPerformanceWithinStageThreshold(
            "Stage_2", "Stage_1", 1100.001, self.metrics, thresholdPct=10.0))

    def test_pct_via_attribute(self):
        self.p.perfDegradeThresholdPct = 5.0
        # 1000 * 1.05 = 1050
        self.assertFalse(self.p.isPerformanceWithinStageThreshold(
            "Stage_2", "Stage_1", 1051.0, self.metrics))

    def test_absolute_fallback(self):
        # No pct configured -> falls back to legacy +100ms.
        self.assertTrue(self.p.isPerformanceWithinStageThreshold(
            "Stage_2", "Stage_1", 1099.0, self.metrics))
        self.assertFalse(self.p.isPerformanceWithinStageThreshold(
            "Stage_2", "Stage_1", 1101.0, self.metrics))

    def test_no_previous_returns_pass(self):
        self.assertTrue(self.p.isPerformanceWithinStageThreshold(
            "Stage_1", None, 999999.0, self.metrics, thresholdPct=10.0))


class TestRecordPerformanceMetricCapturesChecksum(unittest.TestCase):
    def test_record_includes_checksum_and_correctness(self):
        with tempfile.TemporaryDirectory() as td:
            probe = _MetricsBackedProbe(td, currentKey="Stage_2",
                                        previousKey="Stage_1",
                                        prevAverageMs=1000.0,
                                        prevChecksum="99")
            probe.perfDegradeThresholdPct = 10.0
            runs = [{"run_index": i, "elapsed_ms": 1090.0, "checksum": "99",
                     "args": []} for i in range(1, 6)]
            passed = probe.recordPerformanceMetric(
                "/tmp/perf.rs", 1090.0, runs,
                checksum="99", correctnessCheckPassed=True,
                expectedChecksum="99",
            )
            self.assertTrue(passed)  # 1090 < 1000*1.10
            with open(probe.metricsPath) as f:
                data = json.load(f)
            self.assertEqual(data["Stage_2"]["checksum"], "99")
            self.assertTrue(data["Stage_2"]["correctness_check_passed"])
            self.assertEqual(data["Stage_2"]["expected_checksum"], "99")
            self.assertEqual(data["Stage_2"]["previous_stage_baseline_ms"], 1000.0)

    def test_record_preserves_existing_perf_retry_history(self):
        """Successive recordPerformanceMetric calls during a retry loop must
        preserve the perf_retry attempts already appended, otherwise only the
        last attempt is kept."""
        with tempfile.TemporaryDirectory() as td:
            probe = _MetricsBackedProbe(td, currentKey="Stage_3",
                                        previousKey="Stage_2",
                                        prevAverageMs=1000.0,
                                        prevChecksum="99")
            # Simulate: first run records initial perf...
            runs = [{"run_index": 1, "elapsed_ms": 1300.0, "checksum": "99", "args": []}]
            probe.recordPerformanceMetric("/tmp/perf.rs", 1300.0, runs,
                                          checksum="99", correctnessCheckPassed=True,
                                          expectedChecksum="99")
            # ...then attempt #1's appendPerfRetryAttempt logs an attempt...
            probe.appendPerfRetryAttempt("/tmp/perf.rs", {
                "attempt": 1, "compiled": True, "average_elapsed_ms": 1200.0,
                "checksum": "99", "perf_passed": False, "correctness_passed": True,
            })
            # ...then attempt #2 calls recordPerformanceMetric again (re-perf check)...
            runs2 = [{"run_index": 1, "elapsed_ms": 1100.0, "checksum": "99", "args": []}]
            probe.recordPerformanceMetric("/tmp/perf.rs", 1100.0, runs2,
                                          checksum="99", correctnessCheckPassed=True,
                                          expectedChecksum="99")
            # ...and attempt #2 logs.
            probe.appendPerfRetryAttempt("/tmp/perf.rs", {
                "attempt": 2, "compiled": True, "average_elapsed_ms": 1100.0,
                "checksum": "99", "perf_passed": False, "correctness_passed": True,
            })

            with open(probe.metricsPath) as f:
                data = json.load(f)
            attempts = data["Stage_3"]["perf_retry"]["attempts"]
            self.assertEqual(len(attempts), 2,
                             "Both attempts should be preserved across re-records")
            self.assertEqual([a["attempt"] for a in attempts], [1, 2])


class TestPerfRetryOrchestration(unittest.TestCase):
    """Tests on runPerformanceCheckForOutput that mock at runPerformanceCheck
    and at the retry loop level, isolating control flow.
    """

    def _newProbe(self):
        # Use the probe class from testPerformanceMixin — simpler than
        # building a brand new one. Import it lazily to avoid circular setup.
        import testPerformanceMixin as tpm
        probe = tpm.PerformancePipelineProbe()
        probe.perfDegradeThresholdPct = 10.0
        probe.perfDegradeRetryCount = 2
        probe.perfDegradeDiscardOnFail = False
        probe.perfDegradeSkipRetry = False
        return probe

    def test_correctness_failure_discards_funcmap_no_retry(self):
        probe = self._newProbe()

        class FuncDeps:
            def __init__(self, code):
                self.funcCodeLines = code
                self.typeDeclDefCodeLines = ""
                self.targetLangSignature = ""

        funcMap = {"foo": FuncDeps("CURRENT")}
        prevSnap = {"foo": {"funcCodeLines": "PREV", "typeDeclDefCodeLines": "",
                            "targetLangSignature": ""}}

        with mock.patch.object(probe, "runPerformanceCheck", return_value=True), \
             mock.patch.object(probe, "loadCurrentStageRecord",
                               return_value={"correctness_check_passed": False,
                                             "checksum": "BADCHK",
                                             "expected_checksum": "GOODCHK",
                                             "average_elapsed_ms": 500.0,
                                             "previous_stage_baseline_ms": 400.0}):
            passed = probe.runPerformanceCheckForOutput(
                "/tmp/out.rs", "Stage_3", funcMap, False,
                stage="Stage_3", prevStageFuncMap=prevSnap)

        self.assertFalse(passed)
        self.assertEqual(funcMap["foo"].funcCodeLines, "PREV",
                         "funcMap should have been reverted to prev snapshot")

    def test_perf_skip_retry_accepts_degraded(self):
        probe = self._newProbe()
        probe.perfDegradeSkipRetry = True

        with mock.patch.object(probe, "runPerformanceCheck", return_value=False), \
             mock.patch.object(probe, "loadCurrentStageRecord",
                               return_value={"correctness_check_passed": True,
                                             "average_elapsed_ms": 2000.0,
                                             "previous_stage_baseline_ms": 1000.0}):
            passed = probe.runPerformanceCheckForOutput(
                "/tmp/out.rs", "Stage_3", None, False, stage="Stage_3")
        self.assertTrue(passed)

    def test_perf_skip_retry_with_discard_reverts(self):
        probe = self._newProbe()
        probe.perfDegradeSkipRetry = True
        probe.perfDegradeDiscardOnFail = True

        class FD:
            def __init__(self, code):
                self.funcCodeLines = code
                self.typeDeclDefCodeLines = ""
                self.targetLangSignature = ""

        funcMap = {"foo": FD("SLOW")}
        prevSnap = {"foo": {"funcCodeLines": "FAST", "typeDeclDefCodeLines": "",
                            "targetLangSignature": ""}}

        with mock.patch.object(probe, "runPerformanceCheck", return_value=False), \
             mock.patch.object(probe, "loadCurrentStageRecord",
                               return_value={"correctness_check_passed": True,
                                             "average_elapsed_ms": 2000.0,
                                             "previous_stage_baseline_ms": 1000.0}):
            passed = probe.runPerformanceCheckForOutput(
                "/tmp/out.rs", "Stage_3", funcMap, False,
                stage="Stage_3", prevStageFuncMap=prevSnap)
        self.assertFalse(passed)
        self.assertEqual(funcMap["foo"].funcCodeLines, "FAST")

    def test_within_threshold_no_retry_triggered(self):
        probe = self._newProbe()
        retry_called = {"n": 0}

        def _retry(*a, **k):
            retry_called["n"] += 1
            return False

        with mock.patch.object(probe, "runPerformanceCheck", return_value=False), \
             mock.patch.object(probe, "loadCurrentStageRecord",
                               return_value={"correctness_check_passed": True,
                                             "average_elapsed_ms": 1080.0,
                                             "previous_stage_baseline_ms": 1000.0}), \
             mock.patch.object(probe, "_runStagePerfRetryLoop", side_effect=_retry):
            passed = probe.runPerformanceCheckForOutput(
                "/tmp/out.rs", "Stage_3", None, False, stage="Stage_3")
        # 1080 / 1000 - 1 = 8% < 10% -> retry NOT called, passed=True
        self.assertTrue(passed)
        self.assertEqual(retry_called["n"], 0)

    def test_over_threshold_triggers_retry(self):
        probe = self._newProbe()
        retry_calls = []

        def _retry(**kwargs):
            retry_calls.append(kwargs)
            return True  # retry succeeded

        with mock.patch.object(probe, "runPerformanceCheck", return_value=False), \
             mock.patch.object(probe, "loadCurrentStageRecord",
                               return_value={"correctness_check_passed": True,
                                             "average_elapsed_ms": 1500.0,
                                             "previous_stage_baseline_ms": 1000.0,
                                             "expected_checksum": "C"}), \
             mock.patch.object(probe, "_runStagePerfRetryLoop", side_effect=_retry):
            passed = probe.runPerformanceCheckForOutput(
                "/tmp/out.rs", "Stage_3", {}, False,
                stage="Stage_3", prevStageFuncMap={})
        self.assertTrue(passed)
        self.assertEqual(len(retry_calls), 1)
        kw = retry_calls[0]
        self.assertEqual(kw["retryCount"], 2)
        self.assertAlmostEqual(kw["thresholdPct"], 10.0)
        self.assertAlmostEqual(kw["prevMs"], 1000.0)
        self.assertAlmostEqual(kw["currentMs"], 1500.0)


class TestPerfContextSuffix(unittest.TestCase):
    """Verify the perf-retry suffix appended to compileWithFeedback prompts."""

    def setUp(self):
        import testPerformanceMixin as tpm
        self.probe = tpm.PerformancePipelineProbe()
        self.probe.dstLang = "Rust"

    def test_suffix_includes_attempt_and_degrade(self):
        # prev-stage code is intentionally NOT in the suffix — funcSrc already
        # carries it. Suffix focuses on what NOT to repeat (failing attempt).
        suffix = self.probe._buildPerfContextSuffix(
            thisAttemptFuncCode="fn slow() {}",
            degradePct=23.7,
        )
        self.assertIn("PERFORMANCE CONTEXT", suffix)
        self.assertIn("fn slow() {}", suffix)
        self.assertIn("23.7%", suffix)
        # Language-correct fence
        self.assertIn("```rust", suffix)
        # The "prefer prev verbatim" guidance was removed — discard_on_fail
        # handles fallback automatically; prompt drives toward faster idiom.
        self.assertNotIn("prefer keeping the previous stage's body verbatim", suffix)

    def test_suffix_includes_vector_idiom_hint_only_for_vector_stage(self):
        """The vector-iteration perf-retry hint. The vector stage is Stage_3,
        and the hint header reads 'STAGE_3 (std::vector) IDIOM HINT'."""
        from gpt_translation.config import Stage

        self.probe.dstLang = "C++"

        baseKwargs = dict(
            thisAttemptFuncCode="void slow() {}",
            degradePct=12.0,
        )

        # No stage -> no vector hint
        noStageSuffix = self.probe._buildPerfContextSuffix(**baseKwargs)
        self.assertNotIn("STAGE_3 (std::vector) IDIOM HINT", noStageSuffix)

        # Stage_3 (the vector stage) -> hint present
        vectorSuffix = self.probe._buildPerfContextSuffix(stage=Stage.Stage_3, **baseKwargs)
        self.assertIn("STAGE_3 (std::vector) IDIOM HINT", vectorSuffix)
        self.assertIn("range-based for", vectorSuffix)
        self.assertIn("std::accumulate", vectorSuffix)
        self.assertIn("element-access patterns", vectorSuffix)
        self.assertIn("allocation", vectorSuffix)
        # Generic header still present.
        self.assertIn("PERFORMANCE CONTEXT", vectorSuffix)

        # A non-vector stage (e.g. Stage_4 — the std::string stage)
        # should not get the vector hint.
        stage4Suffix = self.probe._buildPerfContextSuffix(stage=Stage.Stage_4, **baseKwargs)
        self.assertNotIn("STAGE_3 (std::vector) IDIOM HINT", stage4Suffix)
        # Stage_9 (raw-pointer ownership) also doesn't get the vector hint.
        stage9Suffix = self.probe._buildPerfContextSuffix(stage=Stage.Stage_9, **baseKwargs)
        self.assertNotIn("STAGE_3 (std::vector) IDIOM HINT", stage9Suffix)

    def test_compileWithFeedback_propagates_stage_to_suffix(self):
        """compileWithFeedback must pass its `stage` arg through to
        _buildPerfContextSuffix so the Stage_3 hint is emitted on Stage_3
        retries (and only there)."""
        import types as _types
        import testPerformanceMixin as tpm
        from gpt_translation.config import Stage
        from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin

        probe = tpm.PerformancePipelineProbe()
        probe.compileWithFeedback = _types.MethodType(
            TranslationPipelineMixin.compileWithFeedback, probe,
        )
        probe.dstLang = "C++"
        probe.srcLang = "C"
        probe._isStagedMode = lambda: True

        # FuncDeps stub matching the shape compileWithFeedback expects.
        deps = type("FD", (), {})()
        deps.funcSym = "target"
        deps.funcCodeLines = "void target() {}"
        deps.typeDeclDefCodeLines = ""
        deps.previouslyTranslatedFunctions = ""
        deps.previouslyTranslatedFunctionSignatures = ""
        deps.dependFunctions = []
        deps.targetLangSignature = ""
        deps.directTypeRefs = set()
        deps.typeReferenceRanges = {}
        deps.typeUsageCodeLinesMap = {}
        deps.structsWithUsageInfo = {}
        deps.unionsWithUsageInfo = {}
        deps.enumsWithUsageInfo = {}
        deps.typedefsWithUsageInfo = {}
        deps.externVariablesWithUsageInfo = {}
        deps.staticVariablesWithUsageInfo = {}

        captured = {}

        def fake_buildSuffix(thisAttemptFuncCode, degradePct, stage=None):
            captured["stage"] = stage
            return "\n[SUFFIX]\n"

        def fake_compileAndRetryLoop(funcName, prompt, structPrompt, structs,
                                     translatedFuncPrompt, translatedFuncs, funcSrc):
            captured["prompt"] = prompt
            return (True, "ok")

        probe._buildPerfContextSuffix = fake_buildSuffix
        probe.compileAndRetryLoop = fake_compileAndRetryLoop
        probe.getOrderedTypeKeysForFunction = lambda fd: []
        probe._stripDependencyForwardDeclarations = lambda src, deps: src
        probe.stringifyCodeBlock = lambda c: c

        probe.compileWithFeedback(
            "target", deps, "",
            stage=Stage.Stage_3,
            perfRetryContext={
                "this_attempt_function": "void slow() {}",
                "degrade_pct": 12.0,
            },
        )

        self.assertEqual(captured["stage"], Stage.Stage_3)
        self.assertIn("[SUFFIX]", captured["prompt"])


class TestEndToEndRetryFlow(unittest.TestCase):
    """End-to-end: stage degrades → retry succeeds via mocked compileWithFeedback."""

    def _setupProbe(self):
        import testPerformanceMixin as tpm
        probe = tpm.PerformancePipelineProbe()
        probe.perfDegradeThresholdPct = 10.0
        probe.perfDegradeRetryCount = 2
        probe.perfDegradeDiscardOnFail = False
        probe.perfDegradeSkipRetry = False
        return probe

    def test_retry_loop_succeeds_on_attempt_2(self):
        probe = self._setupProbe()

        class FD:
            def __init__(self, code):
                self.funcCodeLines = code
                self.typeDeclDefCodeLines = ""
                self.targetLangSignature = ""

        funcMap = {"foo": FD("SLOW_VERSION")}
        prevSnap = {"foo": {"funcCodeLines": "PREV_FAST",
                            "typeDeclDefCodeLines": "",
                            "targetLangSignature": ""}}

        # First call: simulate retry loop being reached.
        # The retry path itself is mocked at the top level for this test,
        # but we verify the retry loop mechanics directly.
        records = []

        def fake_runPerf(out, prompt, args):
            records.append("perf")
            # 2nd call (after retry) returns True
            return len(records) > 1

        def fake_loadRecord(path):
            if len(records) == 1:
                # Initial fail
                return {"correctness_check_passed": True,
                        "average_elapsed_ms": 1300.0,
                        "previous_stage_baseline_ms": 1000.0,
                        "expected_checksum": "C"}
            return {"correctness_check_passed": True,
                    "average_elapsed_ms": 950.0,
                    "checksum": "C"}

        # Mock the retry loop to actually run a single attempt that succeeds.
        retry_attempts = []
        def fake_retry(**kwargs):
            retry_attempts.append(kwargs)
            return True

        with mock.patch.object(probe, "runPerformanceCheck", side_effect=fake_runPerf), \
             mock.patch.object(probe, "loadCurrentStageRecord", side_effect=fake_loadRecord), \
             mock.patch.object(probe, "_runStagePerfRetryLoop", side_effect=fake_retry):
            passed = probe.runPerformanceCheckForOutput(
                "/tmp/out.rs", "Stage_5", funcMap, False,
                stage="Stage_5", prevStageFuncMap=prevSnap,
            )

        self.assertTrue(passed)
        self.assertEqual(len(retry_attempts), 1)

    def test_retry_loop_exhausted_default_keeps_funcmap(self):
        probe = self._setupProbe()
        # default discard_on_fail=False -> keep current funcMap

        class FD:
            def __init__(self, code):
                self.funcCodeLines = code
                self.typeDeclDefCodeLines = ""
                self.targetLangSignature = ""

        funcMap = {"foo": FD("SLOW")}
        prevSnap = {"foo": {"funcCodeLines": "PREV",
                            "typeDeclDefCodeLines": "",
                            "targetLangSignature": ""}}

        with mock.patch.object(probe, "runPerformanceCheck", return_value=False), \
             mock.patch.object(probe, "loadCurrentStageRecord",
                               return_value={"correctness_check_passed": True,
                                             "average_elapsed_ms": 1300.0,
                                             "previous_stage_baseline_ms": 1000.0,
                                             "expected_checksum": "C"}), \
             mock.patch.object(probe, "_runStagePerfRetryLoop", return_value=False):
            passed = probe.runPerformanceCheckForOutput(
                "/tmp/out.rs", "Stage_5", funcMap, False,
                stage="Stage_5", prevStageFuncMap=prevSnap,
            )

        # discard_on_fail=False → "Performance degrade accepted" → True returned
        self.assertTrue(passed)
        # funcMap unchanged
        self.assertEqual(funcMap["foo"].funcCodeLines, "SLOW")

    def test_retry_loop_exhausted_with_discard_reverts(self):
        probe = self._setupProbe()
        probe.perfDegradeDiscardOnFail = True

        class FD:
            def __init__(self, code):
                self.funcCodeLines = code
                self.typeDeclDefCodeLines = ""
                self.targetLangSignature = ""

        funcMap = {"foo": FD("SLOW"), "bar": FD("SLOW2")}
        prevSnap = {
            "foo": {"funcCodeLines": "PREV_FOO", "typeDeclDefCodeLines": "", "targetLangSignature": ""},
            "bar": {"funcCodeLines": "PREV_BAR", "typeDeclDefCodeLines": "", "targetLangSignature": ""},
        }

        with mock.patch.object(probe, "runPerformanceCheck", return_value=False), \
             mock.patch.object(probe, "loadCurrentStageRecord",
                               return_value={"correctness_check_passed": True,
                                             "average_elapsed_ms": 1300.0,
                                             "previous_stage_baseline_ms": 1000.0,
                                             "expected_checksum": "C"}), \
             mock.patch.object(probe, "_runStagePerfRetryLoop", return_value=False):
            passed = probe.runPerformanceCheckForOutput(
                "/tmp/out.rs", "Stage_5", funcMap, False,
                stage="Stage_5", prevStageFuncMap=prevSnap,
            )

        self.assertFalse(passed)
        self.assertEqual(funcMap["foo"].funcCodeLines, "PREV_FOO")
        self.assertEqual(funcMap["bar"].funcCodeLines, "PREV_BAR")


class TestSnapshotHelpers(unittest.TestCase):
    def setUp(self):
        import testPerformanceMixin as tpm
        self.probe = tpm.PerformancePipelineProbe()

    def test_snapshot_captures_relevant_fields(self):
        class FD:
            def __init__(self):
                self.funcCodeLines = "code"
                self.typeDeclDefCodeLines = "decl"
                self.targetLangSignature = "sig"
                self.unrelatedField = "ignored"

        funcMap = {"x": FD()}
        snap = self.probe._snapshotFuncMap(funcMap)
        self.assertEqual(snap["x"]["funcCodeLines"], "code")
        self.assertEqual(snap["x"]["typeDeclDefCodeLines"], "decl")
        self.assertEqual(snap["x"]["targetLangSignature"], "sig")
        self.assertNotIn("unrelatedField", snap["x"])

    def test_snapshot_is_independent_of_funcmap(self):
        class FD:
            def __init__(self):
                self.funcCodeLines = "v1"
                self.typeDeclDefCodeLines = ""
                self.targetLangSignature = ""

        funcMap = {"x": FD()}
        snap = self.probe._snapshotFuncMap(funcMap)
        funcMap["x"].funcCodeLines = "v2"
        self.assertEqual(snap["x"]["funcCodeLines"], "v1")  # snap unchanged

    def test_revert_restores_from_snapshot(self):
        class FD:
            def __init__(self, c):
                self.funcCodeLines = c
                self.typeDeclDefCodeLines = ""
                self.targetLangSignature = ""

        funcMap = {"x": FD("CURRENT"), "y": FD("CURRENT2")}
        snap = {
            "x": {"funcCodeLines": "OLD_X", "typeDeclDefCodeLines": "", "targetLangSignature": ""},
            "y": {"funcCodeLines": "OLD_Y", "typeDeclDefCodeLines": "", "targetLangSignature": ""},
        }
        self.probe._revertFuncMapToPrev(funcMap, snap)
        self.assertEqual(funcMap["x"].funcCodeLines, "OLD_X")
        self.assertEqual(funcMap["y"].funcCodeLines, "OLD_Y")


class TestDependencyContentSelection(unittest.TestCase):
    """Verify compileWithFeedback prefers signatures over full bodies for
    dependency context.
    """

    def _makeProbe(self):
        # Build a one-shot probe that uses the REAL compileWithFeedback.
        # Use types.MethodType to bind the unmocked method to THIS instance
        # only, without mutating the shared probe class.
        import types as _types
        import testPerformanceMixin as tpm
        from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
        probe = tpm.PerformancePipelineProbe()
        probe.compileWithFeedback = _types.MethodType(
            TranslationPipelineMixin.compileWithFeedback, probe,
        )
        probe.dstLang = "C++"
        probe.srcLang = "C"
        probe._isStagedMode = lambda: False
        return probe

    def _makeFuncDeps(self, sigs, bodies):
        deps = type("FD", (), {})()
        deps.funcSym = "target"
        deps.funcCodeLines = "void target() {}"
        deps.typeDeclDefCodeLines = ""
        deps.previouslyTranslatedFunctions = bodies
        deps.previouslyTranslatedFunctionSignatures = sigs
        deps.dependFunctions = []
        deps.targetLangSignature = ""
        deps.directTypeRefs = set()
        deps.typeReferenceRanges = {}
        deps.typeUsageCodeLinesMap = {}
        deps.structsWithUsageInfo = {}
        deps.unionsWithUsageInfo = {}
        deps.enumsWithUsageInfo = {}
        deps.typedefsWithUsageInfo = {}
        deps.externVariablesWithUsageInfo = {}
        deps.staticVariablesWithUsageInfo = {}
        return deps

    def test_uses_signatures_when_available(self):
        probe = self._makeProbe()
        deps = self._makeFuncDeps(
            sigs="void helper();\nint other(int);",
            bodies="void helper() { /* big body */ }\nint other(int x) { return x*2; }",
        )

        captured = {}

        def fake_compileAndRetryLoop(funcName, prompt, structPrompt, structs,
                                     translatedFuncPrompt, translatedFuncs, funcSrc):
            captured["translatedFuncPrompt"] = translatedFuncPrompt
            captured["translatedFuncs"] = translatedFuncs
            return (True, "ok")

        probe.compileAndRetryLoop = fake_compileAndRetryLoop
        probe.getOrderedTypeKeysForFunction = lambda fd: []
        probe._stripDependencyForwardDeclarations = lambda src, deps: src
        probe.stringifyCodeBlock = lambda c: c

        probe.compileWithFeedback("target", deps, "")

        # Should pass signatures, not bodies
        self.assertEqual(captured["translatedFuncs"], "void helper();\nint other(int);")
        self.assertIn("function signature", captured["translatedFuncPrompt"])

    def test_falls_back_to_bodies_when_signatures_empty(self):
        probe = self._makeProbe()
        deps = self._makeFuncDeps(
            sigs="",
            bodies="void helper() { /* body */ }",
        )

        captured = {}

        def fake_compileAndRetryLoop(funcName, prompt, structPrompt, structs,
                                     translatedFuncPrompt, translatedFuncs, funcSrc):
            captured["translatedFuncPrompt"] = translatedFuncPrompt
            captured["translatedFuncs"] = translatedFuncs
            return (True, "ok")

        probe.compileAndRetryLoop = fake_compileAndRetryLoop
        probe.getOrderedTypeKeysForFunction = lambda fd: []
        probe._stripDependencyForwardDeclarations = lambda src, deps: src
        probe.stringifyCodeBlock = lambda c: c

        probe.compileWithFeedback("target", deps, "")

        # Should fall back to bodies when signatures unavailable
        self.assertEqual(captured["translatedFuncs"], "void helper() { /* body */ }")
        # Prompt should mention "translation" not "function signature"
        self.assertIn("translation", captured["translatedFuncPrompt"])
        self.assertNotIn("function signature", captured["translatedFuncPrompt"])

    def test_no_dep_section_when_both_empty(self):
        probe = self._makeProbe()
        deps = self._makeFuncDeps(sigs="", bodies="")

        captured = {}

        def fake_compileAndRetryLoop(funcName, prompt, structPrompt, structs,
                                     translatedFuncPrompt, translatedFuncs, funcSrc):
            captured["translatedFuncPrompt"] = translatedFuncPrompt
            captured["translatedFuncs"] = translatedFuncs
            return (True, "ok")

        probe.compileAndRetryLoop = fake_compileAndRetryLoop
        probe.getOrderedTypeKeysForFunction = lambda fd: []
        probe._stripDependencyForwardDeclarations = lambda src, deps: src
        probe.stringifyCodeBlock = lambda c: c

        probe.compileWithFeedback("target", deps, "")

        # No dep prompt prefix when both signatures and bodies are empty
        self.assertEqual(captured["translatedFuncPrompt"], "")
        self.assertEqual(captured["translatedFuncs"], "")


class TestTypeRegistrySnapshot(unittest.TestCase):
    """`_snapshotTypeRegistry` / `_adoptTypeRegistrySnapshot` must round-trip
    rustCode/cCode across the registry. Without this, perf retry can't revert
    failing-stage struct definitions before re-translating types."""

    def setUp(self):
        import testPerformanceMixin as tpm
        from functionAndDeps import FunctionAndDependencies
        from type_registry import TypeKind, TypeNodeKey
        # Reset the class-level type registry so tests don't leak state between
        # cases. resetTypeSystem is the canonical hook used by other tests.
        FunctionAndDependencies.resetTypeSystem()
        self.fad = FunctionAndDependencies
        self.tpm = tpm
        self.TypeKind = TypeKind
        self.TypeNodeKey = TypeNodeKey

    def _addNode(self, kind, name, cCode, rustCode):
        node = self.fad.upsertTypeNode(kind=kind, name=name, c_code=cCode)
        node.rustCode = rustCode
        return node

    def test_snapshot_captures_both_rustCode_and_cCode(self):
        self._addNode(self.TypeKind.STRUCT, "cJSON",
                      "struct cJSON { struct cJSON *next; }",
                      "struct cJSON { std::unique_ptr<cJSON> next; }")
        probe = self.tpm.PerformancePipelineProbe()
        snap = probe._snapshotTypeRegistry()
        self.assertEqual(len(snap), 1)
        (key, fields), = snap.items()
        self.assertEqual(key.name, "cJSON")
        self.assertIn("unique_ptr", fields["rustCode"])
        self.assertIn("*next", fields["cCode"])

    def test_adopt_restores_prior_state(self):
        node = self._addNode(self.TypeKind.STRUCT, "cJSON",
                             "struct cJSON { struct cJSON *next; }",
                             "struct cJSON { struct cJSON *next; }")
        probe = self.tpm.PerformancePipelineProbe()
        priorSnap = probe._snapshotTypeRegistry()

        # Simulate Stage_8 mutating the struct to unique_ptr (the failing form).
        node.rustCode = "struct cJSON { std::unique_ptr<cJSON> next; }"
        node.cCode = "struct cJSON { std::unique_ptr<cJSON> next; }"

        # Revert.
        probe._adoptTypeRegistrySnapshot(priorSnap)
        self.assertIn("*next", node.rustCode)
        self.assertNotIn("unique_ptr", node.rustCode)
        self.assertIn("*next", node.cCode)

    def test_adopt_with_empty_snapshot_is_noop(self):
        node = self._addNode(self.TypeKind.STRUCT, "cJSON", "struct cJSON {}", "struct cJSON {}")
        probe = self.tpm.PerformancePipelineProbe()
        # Empty dict and None must NOT crash and must NOT clobber the node.
        probe._adoptTypeRegistrySnapshot({})
        probe._adoptTypeRegistrySnapshot(None)
        self.assertEqual(node.rustCode, "struct cJSON {}")


class TestTypeBatchPerfContextSuffix(unittest.TestCase):
    """`_buildPerfContextSuffixForTypes` shapes the type-batch perf-retry
    suffix exactly like `_buildPerfContextSuffix` shapes the function one:
    a REJECTED block per touched type, a 'try different idiom' nudge, and an
    IMPORTANT block that points at the BEGIN/END TYPE TO TRANSFORM fence."""

    def setUp(self):
        import testPerformanceMixin as tpm
        from type_registry import TypeKind, TypeNodeKey
        self.probe = tpm.PerformancePipelineProbe()
        self.probe.dstLang = "C++"
        self.TypeKind = TypeKind
        self.TypeNodeKey = TypeNodeKey

    def _node(self, name, kind=None):
        kind = kind or self.TypeKind.STRUCT
        return types.SimpleNamespace(
            key=self.TypeNodeKey(kind=kind, name=name),
            name=name,
        )

    def test_empty_when_no_perf_context(self):
        self.assertEqual(
            self.probe._buildPerfContextSuffixForTypes([self._node("cJSON")], None, None),
            "",
        )

    def test_empty_when_no_snapshot_entry_for_batch(self):
        # Snapshot has a type the batch doesn't touch — yields empty suffix
        # because the only "your previous attempt" we could surface would be
        # for an unrelated type.
        ctx = {
            "this_attempt_types": {
                self.TypeNodeKey(kind=self.TypeKind.STRUCT, name="OtherType"): {
                    "rustCode": "struct Other {};"
                },
            },
            "degrade_pct": 6.04,
        }
        out = self.probe._buildPerfContextSuffixForTypes([self._node("cJSON")], ctx, None)
        self.assertEqual(out, "")

    def test_includes_rejected_block_and_important_note(self):
        node = self._node("cJSON")
        ctx = {
            "this_attempt_types": {
                node.key: {
                    "rustCode": "struct cJSON { std::unique_ptr<cJSON> next; };"
                },
            },
            "degrade_pct": 6.04,
        }
        out = self.probe._buildPerfContextSuffixForTypes([node], ctx, None)
        self.assertIn("PERFORMANCE CONTEXT", out)
        self.assertIn("struct:cJSON", out)
        self.assertIn("std::unique_ptr<cJSON> next", out)
        self.assertIn("6.0% slower", out)
        self.assertIn("```cpp", out)
        self.assertIn("IMPORTANT", out)
        self.assertIn("BEGIN TYPE TO TRANSFORM", out)
        # IMPORTANT must come AFTER the REJECTED block.
        self.assertGreater(out.find("IMPORTANT"), out.find("std::unique_ptr<cJSON> next"))

    def test_uses_rust_fence_when_dstLang_is_rust(self):
        self.probe.dstLang = "Rust"
        node = self._node("cJSON")
        ctx = {
            "this_attempt_types": {node.key: {"rustCode": "struct cJSON { next: Box<cJSON> }"}},
            "degrade_pct": 12.0,
        }
        out = self.probe._buildPerfContextSuffixForTypes([node], ctx, None)
        self.assertIn("```rust", out)
        self.assertNotIn("```cpp", out)


class TestBuildTypeBatchPromptWithPerfContext(unittest.TestCase):
    """`_buildTypeBatchPrompt` must wrap the input cCode in BEGIN/END fence
    markers when perfRetryContext is provided, and skip fencing otherwise."""

    def setUp(self):
        import testPerformanceMixin as tpm
        from type_registry import TypeKind, TypeNodeKey, TranslationMode
        self.tpm = tpm
        self.probe = tpm.PerformancePipelineProbe()
        self.probe.dstLang = "C++"
        self.probe.srcLang = "C"
        self.probe._isStagedMode = lambda: True
        self.TypeKind = TypeKind
        self.TypeNodeKey = TypeNodeKey
        # Stable cCode the prompt builder will stringify into the request.
        self.node = types.SimpleNamespace(
            key=TypeNodeKey(kind=TypeKind.STRUCT, name="cJSON"),
            name="cJSON",
            kind=TypeKind.STRUCT,
            cCode="struct cJSON { struct cJSON *next; };",
            translation_mode=TranslationMode.PLAIN_STRUCT,
            usageList={},
        )

    def test_no_fence_when_no_perfRetryContext(self):
        from gpt_translation.config import Stage
        out = self.probe._buildTypeBatchPrompt(
            [self.node], predecessorContext="", stage=Stage.Stage_2,
        )
        self.assertNotIn("BEGIN TYPE TO TRANSFORM", out)
        # cCode still present unfenced.
        self.assertIn("struct cJSON { struct cJSON *next; };", out)

    def test_fence_when_perfRetryContext_present(self):
        from gpt_translation.config import Stage
        ctx = {
            "this_attempt_types": {
                self.node.key: {"rustCode": "struct cJSON { std::unique_ptr<cJSON> next; };"}
            },
            "degrade_pct": 5.5,
        }
        out = self.probe._buildTypeBatchPrompt(
            [self.node], predecessorContext="", stage=Stage.Stage_9,
            perfRetryContext=ctx,
        )
        self.assertIn("BEGIN TYPE TO TRANSFORM", out)
        self.assertIn("END TYPE TO TRANSFORM", out)
        self.assertIn("struct:cJSON", out)
        # cCode (the prior-stage input) sits BETWEEN the actual fence
        # delimiters (the literal "// === BEGIN/END..." comment lines, not the
        # IMPORTANT-block text that mentions them as instructions).
        actualBegin = out.find("// === BEGIN TYPE TO TRANSFORM (struct:cJSON")
        actualEnd = out.find("// === END TYPE TO TRANSFORM ===")
        ccodeIdx = out.find("struct cJSON { struct cJSON *next; };")
        self.assertNotEqual(actualBegin, -1)
        self.assertNotEqual(actualEnd, -1)
        self.assertLess(actualBegin, ccodeIdx)
        self.assertLess(ccodeIdx, actualEnd)
        # And the REJECTED rendering shows above the fence.
        self.assertLess(out.find("unique_ptr"), actualBegin)


class TestPerfRetryDrivesTypeRetranslation(unittest.TestCase):
    """`_runStagePerfRetryLoop` must, at the start of each attempt:
      1. snapshot the failing-stage type rendering,
      2. revert types to prevStageTypes,
      3. call preTranslateComplexStructs with a perfRetryContext that includes
         the failing snapshot + degrade_pct.

    These tests stub the LLM/perf machinery and only assert orchestration.
    """

    def _makeProbe(self):
        import testPerformanceMixin as tpm
        probe = tpm.PerformancePipelineProbe()
        probe.dstLang = "C++"
        probe.perfDegradeThresholdPct = 5.0
        # Stub away createSccTopoQueue → no SCCs → inner func loop is a no-op.
        probe.createSccTopoQueue = lambda funcMap: (__import__("collections").deque(), {}, {}, {}, {}, "")
        # Stub away merging + perf check so we control attempt outcomes.
        probe.updateFuncMap = lambda funcMap: None
        probe.runPerformanceCheck = lambda outputPath, prompt, args: False
        probe.appendPerfRetryAttempt = lambda outputPath, record: None
        probe.loadCurrentStageRecord = lambda outputPath: {
            "average_elapsed_ms": 1000.0,
            "checksum": "abc",
            "correctness_check_passed": True,
        }
        return probe

    def test_attempt_reverts_types_and_calls_preTranslate_with_context(self):
        probe = self._makeProbe()
        # Track calls to preTranslateComplexStructs.
        seen = []

        def fakePreTranslate(stage=None, perfRetryContext=None):
            seen.append({
                "stage": stage,
                "has_ctx": perfRetryContext is not None,
                "degrade_pct": (perfRetryContext or {}).get("degrade_pct"),
                "this_attempt_types": (perfRetryContext or {}).get("this_attempt_types"),
            })
        probe.preTranslateComplexStructs = fakePreTranslate

        # Track adopt-snapshot calls so we can assert revert happened.
        adoptedSnapshots = []
        origAdopt = probe._adoptTypeRegistrySnapshot

        def trackAdopt(snap):
            adoptedSnapshots.append(snap)
            origAdopt(snap)
        probe._adoptTypeRegistrySnapshot = trackAdopt

        # Provide a prevStageTypes sentinel we can recognize.
        sentinelPrevTypes = {"__sentinel__": {"rustCode": "PREV"}}

        from gpt_translation.config import Stage
        probe._runStagePerfRetryLoop(
            stage=Stage.Stage_5,
            label="Stage.Stage_5",
            funcMap={},
            prevStageFuncMap={},
            outputPath="/tmp/fake/_Stage.Stage_5/merged_funcs.cpp",
            performancePrompt="",
            performanceArguments=[],
            prevMs=1000.0,
            currentMs=1100.0,   # 10% degrade
            expectedChecksum="abc",
            thresholdPct=5.0,
            retryCount=2,
            prevStageTypes=sentinelPrevTypes,
        )

        # Each attempt should have called preTranslateComplexStructs with
        # perfRetryContext (this_attempt_types + degrade_pct).
        self.assertEqual(len(seen), 2)
        for call in seen:
            self.assertEqual(call["stage"], Stage.Stage_5)
            self.assertTrue(call["has_ctx"])
            self.assertAlmostEqual(call["degrade_pct"], 10.0)
            self.assertIsNotNone(call["this_attempt_types"])

        # The sentinel must have been adopted at least once per attempt (revert).
        adoptedAreSentinel = [s is sentinelPrevTypes for s in adoptedSnapshots]
        self.assertGreaterEqual(sum(adoptedAreSentinel), 2)

    def test_no_prev_types_means_no_type_retranslation(self):
        """Backwards-compat: when prevStageTypes is None, the perf retry must
        still work (just without type re-translation)."""
        probe = self._makeProbe()
        called = []
        probe.preTranslateComplexStructs = lambda **kw: called.append(kw)

        from gpt_translation.config import Stage
        probe._runStagePerfRetryLoop(
            stage=Stage.Stage_5,
            label="Stage.Stage_5",
            funcMap={},
            prevStageFuncMap={},
            outputPath="/tmp/fake/_Stage.Stage_5/merged_funcs.cpp",
            performancePrompt="",
            performanceArguments=[],
            prevMs=1000.0,
            currentMs=1100.0,
            expectedChecksum="abc",
            thresholdPct=5.0,
            retryCount=2,
            prevStageTypes=None,
        )
        # No type-retranslation calls should have happened.
        self.assertEqual(called, [])


class TestDelimiterBalanceHint(unittest.TestCase):
    """`buildDelimiterBalanceHint` should turn rustc/clang "unclosed delimiter"
    errors into a concrete missing-N-closing-brace prompt hint so the LLM can
    actually fix them, rather than repeating the same dropped-`}` error.
    """

    def setUp(self):
        import testPerformanceMixin as tpm
        self.probe = tpm.PerformancePipelineProbe()

    def test_empty_when_no_trigger_in_err(self):
        # err mentions a generic compile failure but not delimiter language
        out = self.probe.buildDelimiterBalanceHint(
            "error: cannot find function `foo` in this scope",
            "fn x() { let y = foo(); }",
        )
        self.assertEqual(out, "")

    def test_empty_when_code_is_balanced(self):
        # err triggers but braces actually match → no hint
        out = self.probe.buildDelimiterBalanceHint(
            "error: this file contains an unclosed delimiter",
            "fn x() { let y = 1; }",
        )
        self.assertEqual(out, "")

    def test_hint_when_missing_closing_brace(self):
        # The real cjson_new Stage_9 failure pattern: dropped `}` at EOF.
        out = self.probe.buildDelimiterBalanceHint(
            "error: this file contains an unclosed delimiter",
            "fn x() { if cond { let y = 1; ",  # 2 open `{`, 0 close
        )
        self.assertIn("CRITICAL", out)
        self.assertIn("MISSING 2 closing", out)
        self.assertIn("`}`", out)

    def test_hint_when_missing_opening_brace(self):
        out = self.probe.buildDelimiterBalanceHint(
            "error: expected `}`",
            "fn x() let y = 1; } }",  # 1 open `{`, 3 close
        )
        self.assertIn("MISSING 2 opening", out)
        self.assertIn("`{`", out)

    def test_hint_when_paren_imbalance(self):
        out = self.probe.buildDelimiterBalanceHint(
            "error: expected `)`",
            "fn x() { foo(bar(baz, 1); }",  # 2 open `(`, 1 close
        )
        self.assertIn("MISSING 1 closing", out)
        self.assertIn("`)`", out)

    def test_hint_lists_multiple_imbalances(self):
        out = self.probe.buildDelimiterBalanceHint(
            "error: this file contains an unclosed delimiter",
            "fn x() { foo(",  # 1 open `{` 0 close, 1 open `(` 0 close
        )
        # Both brace and paren imbalances should be called out.
        self.assertEqual(out.count("MISSING"), 2)
        self.assertIn("`}`", out)
        self.assertIn("`)`", out)

    def test_strings_and_comments_do_not_count(self):
        # Braces inside strings / comments must not be counted toward balance.
        code = (
            'fn x() {\n'
            '    let s = "foo { bar } baz";  // }} {{\n'
            '    /* multi\n       line } { comment */\n'
            "    let c = '}';\n"
            "}\n"
        )
        # That is structurally balanced (1 outer `{` ... `}` pair).
        out = self.probe.buildDelimiterBalanceHint(
            "error: this file contains an unclosed delimiter",
            code,
        )
        self.assertEqual(
            out, "",
            f"expected empty hint for balanced code with braces-in-strings; got:\n{out}",
        )

    def test_trigger_phrases_are_case_insensitive(self):
        # Sanity: trigger matching shouldn't depend on exact casing.
        out = self.probe.buildDelimiterBalanceHint(
            "error: THIS FILE CONTAINS AN UNCLOSED DELIMITER",
            "fn x() { ",
        )
        self.assertIn("MISSING", out)

    def test_clang_style_trigger(self):
        # The clang variant uses single quotes around the expected token.
        out = self.probe.buildDelimiterBalanceHint(
            "<stdin>:42:10: error: expected '}'",
            "int main() { if (1) { return 0;",
        )
        self.assertIn("MISSING", out)
        self.assertIn("`}`", out)

    def test_empty_inputs_safe(self):
        self.assertEqual(self.probe.buildDelimiterBalanceHint("", "fn x() {"), "")
        self.assertEqual(self.probe.buildDelimiterBalanceHint("error: unclosed delimiter", ""), "")
        self.assertEqual(self.probe.buildDelimiterBalanceHint(None, "fn x() {"), "")
        self.assertEqual(self.probe.buildDelimiterBalanceHint("err", None), "")


class TestDelimiterHintIntegratesIntoRetryPrompt(unittest.TestCase):
    """End-to-end: when a compile retry fires with an unclosed-delimiter error,
    the constructed retry request must carry the brace-balance hint so the LLM
    sees the actual missing-N count."""

    def test_compileAndRetryLoopforDepency_injects_delimiter_hint(self):
        import testPerformanceMixin as tpm
        from gpt_translation.config import Stage
        from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
        import types as _types

        probe = tpm.PerformancePipelineProbe()
        probe.dstLang = "Rust"
        probe.srcLang = "C"
        probe._isStagedMode = lambda: True
        probe.compileAndRetryLoopforDepency = _types.MethodType(
            TranslationPipelineMixin.compileAndRetryLoopforDepency, probe,
        )
        probe.stageCheck = lambda *args, **kwargs: True

        # 1st send: returns code with missing `}`. compile() reports unclosed
        # delimiter. retry prompt should embed the balance hint.
        sentRequests = []
        attempts = {"n": 0}

        def fakeChunkAndSend(name, request):
            sentRequests.append(request)
            attempts["n"] += 1
            # First call returns a bad result, retry call returns a good one.
            if attempts["n"] == 1:
                return "fn cJSON_ParseWithLengthOpts() { if x { let y = 1;"
            return "fn cJSON_ParseWithLengthOpts() { let y = 1; }"

        def fakeCompile(code):
            if "if x { let y = 1;" in code and not code.rstrip().endswith("}\n}"):
                # Mimic rustc on missing closing braces.
                return (False, "error: this file contains an unclosed delimiter")
            return (True, "")

        def passthrough(code, *_args, **_kw):
            return code

        probe.chunkAndSend = fakeChunkAndSend
        probe.compile = fakeCompile
        probe.cleanCode = lambda c: c
        probe._sanitizeResultAgainstDependencies = passthrough

        successFlag, result = probe.compileAndRetryLoopforDepency(
            funcName="cJSON_ParseWithLengthOpts",
            prompt="translate this",
            contextStructs="",
            translatedStructPrompt="",
            translatedStructs="",
            translatedFuncPrompt="",
            translatedFuncsSignatures="",
            translatedFuncs="",
            dependencyFunctionNames=[],
            dependencyCodes=[],
            dependencyKeys=[],
            stage=Stage.Stage_9,
            funcSrc="cJSON * cJSON_ParseWithLengthOpts(...);",
        )

        self.assertTrue(successFlag)
        # The retry request (2nd send) must include the delimiter hint with
        # the specific missing-N count surfaced.
        self.assertGreaterEqual(len(sentRequests), 2)
        retryReq = sentRequests[1]
        self.assertIn("CRITICAL", retryReq)
        self.assertIn("MISSING", retryReq)
        self.assertIn("`}`", retryReq)


class TestRevertStageToPrev(unittest.TestCase):
    """When a stage is discarded via discard_on_fail, BOTH funcMap and
    typeRegistry must be reverted in lockstep. Without symmetric revert, the
    next stage sees a mixed-state universe (prev-stage functions + failing-
    stage types) and compile-fails cascade.
    """

    def setUp(self):
        import testPerformanceMixin as tpm
        from functionAndDeps import FunctionAndDependencies
        from type_registry import TypeKind, TypeNodeKey
        FunctionAndDependencies.resetTypeSystem()
        self.tpm = tpm
        self.fad = FunctionAndDependencies
        self.TypeKind = TypeKind
        self.TypeNodeKey = TypeNodeKey

    def test_revert_only_funcs_when_no_types_passed(self):
        # Back-compat: callers that haven't plumbed prevStageTypes yet
        # should still get funcMap reverted (no type-side effects).
        probe = self.tpm.PerformancePipelineProbe()
        funcMap = {"f": types.SimpleNamespace(
            funcCodeLines="STAGE_3_BODY", typeDeclDefCodeLines="", targetLangSignature="sig",
        )}
        prevFuncs = {"f": {"funcCodeLines": "STAGE_2_BODY",
                            "typeDeclDefCodeLines": "", "targetLangSignature": "sig"}}
        probe._revertStageToPrev(funcMap, prevFuncs, prevStageTypes=None)
        self.assertEqual(funcMap["f"].funcCodeLines, "STAGE_2_BODY")

    def test_revert_both_funcs_and_types(self):
        # Set up: type registry holds the failing-stage rendering.
        node = self.fad.upsertTypeNode(
            kind=self.TypeKind.STRUCT, name="cJSON",
            c_code="struct cJSON { struct cJSON *next; }",
        )
        node.rustCode = "struct cJSON { std::unique_ptr<cJSON> next; }"  # Stage_8 failing
        node.cCode = "struct cJSON { std::unique_ptr<cJSON> next; }"

        probe = self.tpm.PerformancePipelineProbe()
        funcMap = {"f": types.SimpleNamespace(
            funcCodeLines="STAGE_4_BODY", typeDeclDefCodeLines="", targetLangSignature="sig4",
        )}
        prevFuncs = {"f": {"funcCodeLines": "STAGE_3_BODY",
                            "typeDeclDefCodeLines": "", "targetLangSignature": "sig3"}}
        prevTypes = {node.key: {
            "rustCode": "struct cJSON { struct cJSON *next; }",  # Stage_3 (raw ptr)
            "cCode":    "struct cJSON { struct cJSON *next; }",
        }}

        probe._revertStageToPrev(funcMap, prevFuncs, prevStageTypes=prevTypes)

        # Both sides must be in the prior-stage shape.
        self.assertEqual(funcMap["f"].funcCodeLines, "STAGE_3_BODY")
        self.assertIn("*next", node.rustCode)
        self.assertNotIn("unique_ptr", node.rustCode)


class TestMarkStageDiscardedInMetrics(unittest.TestCase):
    """When a stage is discarded, its persisted ``average_elapsed_ms`` is
    overwritten with the prior stage's baseline. That way the next stage's
    perf check uses the *effective* prior performance (matches what's actually
    in funcMap after revert), not the failing-attempt's inflated ms.

    Example from the user report: Stage_2=2s, Stage_3 fails @ 8s and is
    discarded → Stage_3's stored ms must become 2s so Stage_5's
    previous_stage_baseline_ms is 2s, not 8s.
    """

    def _writeMetrics(self, dir_, data):
        path = os.path.join(dir_, "performance_metrics.json")
        with open(path, "w") as f:
            json.dump(data, f)
        return path

    def test_discard_stamps_prev_baseline_into_record(self):
        import testPerformanceMixin as tpm
        probe = tpm.PerformancePipelineProbe()

        with tempfile.TemporaryDirectory() as root:
            stageDir = os.path.join(root, "_Stage.Stage_3")
            os.makedirs(stageDir)
            self._writeMetrics(root, {
                "Stage_2": {"average_elapsed_ms": 2000.0},
                "Stage_3": {"average_elapsed_ms": 8000.0,  # failing measurement
                            "checksum": "abc",
                            "correctness_check_passed": True},
            })
            outputPath = os.path.join(stageDir, "merged_funcs.cpp")

            # prevStageBaselineMs comes from caller (previous_stage_baseline_ms
            # already on the record, or the prior stage's average_elapsed_ms).
            resolved = probe._markStageDiscardedInMetrics(outputPath, prevStageBaselineMs=2000.0)
            self.assertEqual(resolved, 2000.0)

            # Re-load and assert the record is rewritten.
            with open(os.path.join(root, "performance_metrics.json")) as f:
                m = json.load(f)
            stage3 = m["Stage_3"]
            self.assertTrue(stage3["discarded"])
            self.assertEqual(stage3["average_elapsed_ms"], 2000.0)  # now reflects revert
            self.assertEqual(stage3["discarded_attempt_ms"], 8000.0)  # original preserved
            self.assertIn("effective_source", stage3)

    def test_no_prev_baseline_means_no_stamp(self):
        # Site 3 (no prev baseline) calls with prevStageBaselineMs=None — must
        # be a safe no-op (None return, no exception, no file mutation).
        import testPerformanceMixin as tpm
        probe = tpm.PerformancePipelineProbe()
        with tempfile.TemporaryDirectory() as root:
            stageDir = os.path.join(root, "_Stage.Stage_1")
            os.makedirs(stageDir)
            self._writeMetrics(root, {"Stage_1": {"average_elapsed_ms": 9000.0}})
            outputPath = os.path.join(stageDir, "merged_funcs.cpp")
            self.assertIsNone(probe._markStageDiscardedInMetrics(outputPath, None))
            with open(os.path.join(root, "performance_metrics.json")) as f:
                m = json.load(f)
            self.assertEqual(m["Stage_1"]["average_elapsed_ms"], 9000.0)
            self.assertNotIn("discarded", m["Stage_1"])

    def test_stamped_baseline_propagates_to_next_stage_lookup(self):
        # End-to-end semantic: after stamping, getPerformanceMetricsContext /
        # recordPerformanceMetric for Stage_5 should read Stage_4 as 2000 not
        # the original 8000. This is exactly what fixes the user's complaint
        # ("Stage_5 baseline should be 2s not 8s").
        import testPerformanceMixin as tpm
        probe = tpm.PerformancePipelineProbe()
        with tempfile.TemporaryDirectory() as root:
            stage4Dir = os.path.join(root, "_Stage.Stage_4")
            stage5Dir = os.path.join(root, "_Stage.Stage_5")
            os.makedirs(stage4Dir)
            os.makedirs(stage5Dir)
            self._writeMetrics(root, {
                "Stage_3": {"average_elapsed_ms": 2000.0},
                "Stage_4": {"average_elapsed_ms": 8000.0},
            })
            # Discard Stage_4
            probe._markStageDiscardedInMetrics(
                os.path.join(stage4Dir, "merged_funcs.cpp"),
                prevStageBaselineMs=2000.0,
            )
            # Lookup Stage_5's prev key in metrics
            metricsPath, currentKey, prevKey = probe.getPerformanceMetricsContext(
                os.path.join(stage5Dir, "merged_funcs.cpp"),
            )
            self.assertEqual(currentKey, "Stage_5")
            self.assertEqual(prevKey, "Stage_4")
            with open(metricsPath) as f:
                m = json.load(f)
            # The thing Stage_5's recordPerformanceMetric will read as its
            # previous_stage_baseline_ms:
            stage5PrevBaseline = m[prevKey]["average_elapsed_ms"]
            self.assertEqual(stage5PrevBaseline, 2000.0,
                             "Stage_5 baseline must be Stage_3's 2000ms after Stage_4 discard, "
                             "not Stage_4's inflated 8000ms failing measurement.")


class TestIsEmptyOrCommentOnly(unittest.TestCase):
    """``_isEmptyOrCommentOnly`` underpins the "removed type" normalization.
    A type whose rustCode is comment-only after Stage_1 (e.g.
    ``// internal_hooks removed: ...``) must be treated as empty so later
    stages don't see a placeholder and re-introduce the deleted struct.
    """

    def setUp(self):
        import testPerformanceMixin as tpm
        self.probe = tpm.PerformancePipelineProbe()

    def test_empty_string(self):
        self.assertTrue(self.probe._isEmptyOrCommentOnly(""))

    def test_whitespace_only(self):
        self.assertTrue(self.probe._isEmptyOrCommentOnly("   \n\t\n  "))

    def test_line_comment_only(self):
        self.assertTrue(self.probe._isEmptyOrCommentOnly(
            "// internal_hooks removed: custom allocator hooks are no longer used.\n"
        ))

    def test_multiline_line_comments(self):
        self.assertTrue(self.probe._isEmptyOrCommentOnly(
            "// removed by stage 1\n"
            "// (function pointers replaced by direct calls)\n"
        ))

    def test_block_comment_only(self):
        self.assertTrue(self.probe._isEmptyOrCommentOnly(
            "/* internal_hooks removed: no longer needed */\n"
        ))

    def test_mixed_comments_only(self):
        self.assertTrue(self.probe._isEmptyOrCommentOnly(
            "/* multi\n   line */\n// single line\n  \n"
        ))

    def test_real_struct_def_is_not_empty(self):
        self.assertFalse(self.probe._isEmptyOrCommentOnly(
            "struct cJSON {\n  cJSON *next;\n};"
        ))

    def test_struct_with_comments_is_not_empty(self):
        # A struct with a documenting comment is NOT comment-only.
        self.assertFalse(self.probe._isEmptyOrCommentOnly(
            "// the cJSON parse tree node\nstruct cJSON { int type; };"
        ))


class TestEmptyTypeBatchSkipping(unittest.TestCase):
    """``preTranslateComplexStructs`` must filter out types whose cCode is
    empty/comment-only BEFORE calling the LLM. The risk being fixed:
    sonnet, given an empty input section in a multi-type prompt, was
    observed hallucinating a full ``pub struct internal_hooks { ... }``
    referencing undefined symbols — cascade-killing Stage_9.
    """

    def setUp(self):
        import testPerformanceMixin as tpm
        import types as _types
        from functionAndDeps import FunctionAndDependencies
        from type_registry import TypeKind
        from gpt_translation.config import TranslatorModes
        from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
        FunctionAndDependencies.resetTypeSystem()
        self.tpm = tpm
        self.fad = FunctionAndDependencies
        self.TypeKind = TypeKind
        self.probe = tpm.PerformancePipelineProbe()
        # PerformancePipelineProbe stubs preTranslateComplexStructs to a no-op
        # for other tests. Rebind to the real implementation so we actually
        # exercise the filter we're testing.
        self.probe.preTranslateComplexStructs = _types.MethodType(
            TranslationPipelineMixin.preTranslateComplexStructs, self.probe,
        )
        # Force the staged-mode allow-list path inside preTranslateComplexStructs.
        self.probe.translatorMode = TranslatorModes.NEW_MODE

    def test_empty_cCode_node_is_filtered(self):
        # internal_hooks was removed (cCode = ""); cJSON survived (cCode is C
        # source). Only cJSON should reach the LLM batch.
        removed = self.fad.upsertTypeNode(
            kind=self.TypeKind.STRUCT, name="internal_hooks", c_code="",
        )
        survived = self.fad.upsertTypeNode(
            kind=self.TypeKind.STRUCT, name="cJSON",
            c_code="struct cJSON { struct cJSON *next; };",
        )

        seen = []

        def fakeTranslate(batchNodes, *args, **kw):
            seen.append([n.name for n in batchNodes])

        # Stub heavy graph deps so we exercise the filter path.
        self.probe._translateTypeBatchWithLlm = fakeTranslate
        self.probe._translateTypedefBatch = fakeTranslate
        self.probe._collectTranslatedTypeCodes = lambda keys: []

        # Build a trivial dep graph: one batch containing both types.
        class _StubGraph:
            def topo_batches(self_):
                return [[removed.key, survived.key]]
            def predecessors_of_batch(self_, keys):
                return []
            def ordered_closure(self_, keys):
                return []
        self.probe.getTypeDependencyGraph = lambda: _StubGraph()
        from gpt_translation.config import Stage
        self.probe._isStagedMode = lambda: True

        self.probe.preTranslateComplexStructs(Stage.Stage_2)

        # The fake translate should have been called for ONLY cJSON (the
        # batch with internal_hooks excluded). Whether it goes through
        # _translateTypeBatchWithLlm or _translateTypedefBatch depends on
        # batchKinds — for STRUCT it's _translateTypeBatchWithLlm. Either
        # way, the names must NOT include 'internal_hooks'.
        called = [name for batch in seen for name in batch]
        self.assertIn("cJSON", called)
        self.assertNotIn("internal_hooks", called,
                         "Empty-cCode type must not be passed to LLM batch")

    def test_comment_only_cCode_node_is_filtered(self):
        # Same as above but with cCode being a "removed: ..." comment
        # placeholder (the legacy Stage_1 output shape).
        removed = self.fad.upsertTypeNode(
            kind=self.TypeKind.STRUCT, name="internal_hooks",
            c_code="// internal_hooks removed: no longer needed",
        )
        survived = self.fad.upsertTypeNode(
            kind=self.TypeKind.STRUCT, name="cJSON",
            c_code="struct cJSON { struct cJSON *next; };",
        )

        seen = []
        self.probe._translateTypeBatchWithLlm = lambda batchNodes, *a, **kw: seen.append(
            [n.name for n in batchNodes]
        )
        self.probe._translateTypedefBatch = self.probe._translateTypeBatchWithLlm
        self.probe._collectTranslatedTypeCodes = lambda keys: []

        class _StubGraph:
            def topo_batches(self_):
                return [[removed.key, survived.key]]
            def predecessors_of_batch(self_, keys):
                return []
            def ordered_closure(self_, keys):
                return []
        self.probe.getTypeDependencyGraph = lambda: _StubGraph()
        from gpt_translation.config import Stage
        self.probe._isStagedMode = lambda: True

        self.probe.preTranslateComplexStructs(Stage.Stage_2)
        called = [name for batch in seen for name in batch]
        self.assertNotIn("internal_hooks", called)
        self.assertIn("cJSON", called)

    def test_perf_retry_context_filter_already_handles_empty_rustCode(self):
        """End-to-end sanity: an empty-rustCode entry in this_attempt_types
        does not show up in the perf-context REJECTED block. This is the
        downstream effect of Fix A: after normalize-to-empty, the existing
        ``if not priorCode: continue`` filter in
        _buildPerfContextSuffixForTypes does the rest, so we cannot tempt
        the model with a "previous attempt was a comment, try different"
        prompt for removed types."""
        from type_registry import TypeKind, TypeNodeKey
        node = types.SimpleNamespace(
            key=TypeNodeKey(kind=TypeKind.STRUCT, name="internal_hooks"),
            name="internal_hooks",
        )
        # this_attempt_types has the entry but rustCode is "" (normalized).
        ctx = {
            "this_attempt_types": {
                node.key: {"rustCode": "", "cCode": ""},
            },
            "degrade_pct": 6.0,
        }
        out = self.probe._buildPerfContextSuffixForTypes([node], ctx, None)
        self.assertEqual(
            out, "",
            "Empty-rustCode entry must not produce a REJECTED block — "
            "otherwise normalize-to-empty doesn't fix the bug.",
        )


class TestSlimStageCheckPrompt(unittest.TestCase):
    """The slim stage_check prompt MUST:
      * NOT contain translation directives ("Only apply edits", "If the
        source does not have a main function", "Final result code")
      * NOT duplicate the stage intent
      * CONTAIN the stage intent (from fetchStageCheckPrompt) exactly once
      * CONTAIN the funcSrc body
      * CONTAIN the dependency types when supplied
      * Ask for one-word yes/no
    """

    def setUp(self):
        import testPerformanceMixin as tpm
        import types as _types
        from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
        from gpt_translation.translator import Translator
        from gpt_translation.config import TranslatorModes
        self.probe = tpm.PerformancePipelineProbe()
        # Use the real stageCheck + fetchStageCheckPrompt (lives on Translator,
        # not the mixin chain the probe inherits, so we bind explicitly).
        self.probe.stageCheck = _types.MethodType(
            TranslationPipelineMixin.stageCheck, self.probe,
        )
        self.probe.fetchStageCheckPrompt = _types.MethodType(
            Translator.fetchStageCheckPrompt, self.probe,
        )
        self.probe.recordStageCheckResult = lambda *a, **kw: None
        self.probe.translatorMode = TranslatorModes.NEW_MODE
        self.captured = {}

        def fakeSend(funcOrStructName, request):
            self.captured["request"] = request
            return (None, "no")
        self.probe.send = fakeSend
        self.probe.lastRawResponse = None

    def test_slim_prompt_for_string_stage_contains_essentials(self):
        from gpt_translation.config import Stage
        funcSrc = (
            "static cJSON *cJSON_New_Item()\n"
            "{\n"
            "    cJSON* node = new cJSON();\n"
            "    return node;\n"
            "}"
        )
        contextStructs = "typedef struct cJSON { char *valuestring; } cJSON;"
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc=funcSrc,
            contextStructs=contextStructs,
        )
        request = self.captured["request"]
        # Essentials present:
        self.assertIn("yes or no", request)
        self.assertIn("Step intent:", request)
        self.assertIn("Code under review:", request)
        self.assertIn("Dependency types", request)
        self.assertIn("cJSON_New_Item", request)
        self.assertIn("valuestring", request)
        # Stage_4 intent specifically:
        self.assertIn("std::string", request)

    def test_slim_prompt_omits_translation_directives(self):
        from gpt_translation.config import Stage
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc="static int x() { return 0; }",
            contextStructs="",
        )
        request = self.captured["request"]
        # Translation-side directives must NOT bleed into the judgment prompt.
        bannedSubstrings = [
            "Only apply edits directly required",
            "If the source code does not have a main function",
            "do NOT add a dummy definition",
            'For the final code result, please response',
            "Translate ONLY the provided function",
        ]
        for banned in bannedSubstrings:
            self.assertNotIn(banned, request,
                             f"Slim prompt unexpectedly contains translation directive: {banned!r}")

    def test_stage_intent_appears_exactly_once(self):
        # The old prompt repeated the stage intent (judge template + bleed
        # from the translation prompt body). Slim must not.
        from gpt_translation.config import Stage
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc="static int x() { return 0; }",
        )
        request = self.captured["request"]
        # The Stage_4 intent's distinctive phrase:
        stage4Marker = "converting them to std::string"
        self.assertEqual(
            request.count(stage4Marker), 1,
            f"Stage intent should appear exactly once in slim prompt; "
            f"found {request.count(stage4Marker)} occurrences",
        )

    def test_signature_section_only_appears_when_provided(self):
        from gpt_translation.config import Stage
        # Without signatures:
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc="static int x() { return 0; }",
        )
        self.assertNotIn("Dependency function signatures", self.captured["request"])
        # With signatures:
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            funcSrc="static int x() { return 0; }",
            funcSignatures="int helper(int a);",
        )
        self.assertIn("Dependency function signatures", self.captured["request"])
        self.assertIn("int helper(int a);", self.captured["request"])

    def test_back_compat_proposedChange_kwarg_still_works(self):
        # Older test stubs / external callers may still pass the legacy
        # `proposedChange=...` kwarg. We treat it as funcSrc.
        from gpt_translation.config import Stage
        self.probe.stageCheck(
            stage=Stage.Stage_4,
            proposedChange="static int legacy() { return 1; }",
        )
        self.assertIn("legacy()", self.captured["request"])

    def test_slim_prompt_token_budget(self):
        # Quantify the saving versus the old prompt's template-only overhead.
        # The slim TEMPLATE (excluding funcSrc/structs/sigs) should be well
        # under 400 characters — vs the old template which was ~2400.
        # Use Stage_4 (the std::string stage) — Stage_1 / Stage_2 / Stage_3 /
        # Stage_8 / Stage_9 auto-approve and never call chunkAndSend, so
        # self.captured["request"] would be empty there.
        from gpt_translation.config import Stage
        self.probe.stageCheck(stage=Stage.Stage_4, funcSrc="x")
        # Strip the variable-sized fetchStageCheckPrompt output to measure
        # just the wrapper.
        template = self.captured["request"]
        stageIntent = self.probe.fetchStageCheckPrompt(Stage.Stage_4)
        wrapperLen = len(template) - len(stageIntent) - 1  # -1 for "x"
        self.assertLess(wrapperLen, 500,
                        f"Slim prompt wrapper should be < 500 chars, got {wrapperLen}")


if __name__ == "__main__":
    unittest.main()
