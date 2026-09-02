"""Tests for the C baseline mechanism — Stage_1's perf check now compares
against an "baseline_c" entry produced by compiling and running the original
C source 5 times before NEW_MODE starts.
"""
import json
import os
import sys
import tempfile
import textwrap
import types
import unittest
from unittest import mock

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# Stub heavy deps.
_openai_stub = types.ModuleType("openai")
_openai_stub.OpenAI = object
sys.modules.setdefault("openai", _openai_stub)
_tiktoken_stub = types.ModuleType("tiktoken")
_tiktoken_stub.encoding_name_for_model = lambda *a, **k: "stub"
_tiktoken_stub.get_encoding = lambda *a, **k: types.SimpleNamespace(
    encode=lambda text: (text or "").split())
sys.modules.setdefault("tiktoken", _tiktoken_stub)
_sympy = types.ModuleType("sympy")
_sympy_codegen = types.ModuleType("sympy.codegen")
_sympy_cnodes = types.ModuleType("sympy.codegen.cnodes")
_sympy_cnodes.struct = object()
sys.modules.setdefault("sympy", _sympy)
sys.modules.setdefault("sympy.codegen", _sympy_codegen)
sys.modules.setdefault("sympy.codegen.cnodes", _sympy_cnodes)

from gpt_translation.performance_mixin import PerformanceMixin, CBaselineError


class _Logger:
    def __getattr__(self, _n):
        return lambda *a, **k: None


class _Probe(PerformanceMixin):
    def __init__(self):
        self.logger = _Logger()


class TestFindCSourceWithMain(unittest.TestCase):
    def test_finds_c_with_main(self):
        with tempfile.TemporaryDirectory() as td:
            cFile = os.path.join(td, "foo.c")
            with open(cFile, "w") as f:
                f.write("int main(int argc, char *argv[]) { return 0; }")
            other = os.path.join(td, "lib.c")
            with open(other, "w") as f:
                f.write("void helper() {}")
            self.assertEqual(_Probe.findCSourceWithMain(td), cFile)

    def test_returns_none_when_no_main(self):
        with tempfile.TemporaryDirectory() as td:
            with open(os.path.join(td, "lib.c"), "w") as f:
                f.write("void helper() {}\n")
            self.assertIsNone(_Probe.findCSourceWithMain(td))

    def test_returns_none_for_empty_dir(self):
        with tempfile.TemporaryDirectory() as td:
            self.assertIsNone(_Probe.findCSourceWithMain(td))


class TestStage1UsesCBaseline(unittest.TestCase):
    """getPerformanceMetricsContext should resolve Stage_1's prev to baseline_c."""

    def test_stage_1_previous_key_is_baseline_c(self):
        probe = _Probe()
        metricsPath, currentKey, previousKey = probe.getPerformanceMetricsContext(
            "/tmp/run/_Stage.Stage_1/performance.cpp"
        )
        self.assertEqual(currentKey, "Stage_1")
        self.assertEqual(previousKey, "baseline_c")

    def test_stage_2_previous_key_is_stage_1(self):
        probe = _Probe()
        _, currentKey, previousKey = probe.getPerformanceMetricsContext(
            "/tmp/run/_Stage.Stage_2/performance.cpp"
        )
        self.assertEqual(currentKey, "Stage_2")
        self.assertEqual(previousKey, "Stage_1")

    def test_stage_1_threshold_uses_baseline_c_when_present(self):
        probe = _Probe()
        probe.perfDegradeThresholdPct = 10.0
        metrics = {"baseline_c": {"average_elapsed_ms": 400.0}}
        # Stage_1 at 410 ms vs baseline 400 ms = +2.5%, under 10% threshold.
        self.assertTrue(probe.isPerformanceWithinStageThreshold(
            "Stage_1", "baseline_c", 410.0, metrics))
        # Stage_1 at 500 ms vs baseline 400 ms = +25%, over 10% threshold.
        self.assertFalse(probe.isPerformanceWithinStageThreshold(
            "Stage_1", "baseline_c", 500.0, metrics))

    def test_stage_1_passes_when_baseline_c_missing(self):
        """Graceful degradation when no baseline exists (e.g. compile failed)."""
        probe = _Probe()
        probe.perfDegradeThresholdPct = 10.0
        metrics = {}  # no baseline_c entry
        self.assertTrue(probe.isPerformanceWithinStageThreshold(
            "Stage_1", "baseline_c", 99999.0, metrics))


class TestRunCBaselinePerformance(unittest.TestCase):
    """End-to-end: compile + run a tiny C program, save baseline_c metrics."""

    # Use a deterministic checksum and a small but nonzero elapsed_ms.
    # `volatile` defeats clang -O3 dead-code elimination of the sum loop,
    # so the timing always reports a positive value.
    C_SOURCE = textwrap.dedent("""
        #include <stdio.h>
        #include <time.h>
        int main(int argc, char *argv[]) {
            struct timespec t0, t1;
            clock_gettime(CLOCK_MONOTONIC, &t0);
            volatile long long sum = 0;
            for (long long i = 0; i < 50000000LL; i++) sum += i;
            clock_gettime(CLOCK_MONOTONIC, &t1);
            long long ms = (t1.tv_sec - t0.tv_sec) * 1000LL +
                           (t1.tv_nsec - t0.tv_nsec) / 1000000LL;
            if (ms < 1) ms = 1;  // floor to make tests stable
            printf("Checksum: %lld\\n", (long long)sum);
            printf("elapsed_ms: %lld\\n", ms);
            return 0;
        }
    """)

    def setUp(self):
        # Skip if clang is unavailable.
        import shutil as _shutil
        if not _shutil.which("clang"):
            self.skipTest("clang not available")

    def test_runs_c_baseline_and_records_metrics(self):
        with tempfile.TemporaryDirectory() as codebasePath:
            with open(os.path.join(codebasePath, "tiny.c"), "w") as f:
                f.write(self.C_SOURCE)

            # individualFuncPath would normally be inside codebase under
            # individual-funcs_*/. Our resolvePerformanceRunCwd only matters
            # when input_arguments use relative paths; with [] it's irrelevant.
            individualFuncPath = os.path.join(codebasePath, "individual-funcs_test")
            os.makedirs(individualFuncPath)

            probe = _Probe()
            avg = probe.runCBaselinePerformance(
                codebasePath, individualFuncPath, performanceArguments=[],
            )
            self.assertIsNotNone(avg)
            self.assertGreater(avg, 0)

            metricsPath = os.path.join(individualFuncPath, "performance_metrics.json")
            self.assertTrue(os.path.isfile(metricsPath))
            with open(metricsPath) as f:
                metrics = json.load(f)
            self.assertIn("baseline_c", metrics)
            base = metrics["baseline_c"]
            self.assertEqual(len(base["runs"]), 5)
            expected_sum = (50000000 - 1) * 50000000 // 2  # n*(n-1)/2
            for r in base["runs"]:
                self.assertIsNotNone(r["elapsed_ms"])
                self.assertEqual(r["checksum"], str(expected_sum))
            self.assertEqual(base["checksum"], str(expected_sum))
            self.assertAlmostEqual(
                base["average_elapsed_ms"],
                sum(r["elapsed_ms"] for r in base["runs"]) / 5.0,
            )

    def test_raises_when_no_main_present(self):
        """C baseline is mandatory — missing source must abort, not skip."""
        with tempfile.TemporaryDirectory() as codebasePath:
            with open(os.path.join(codebasePath, "lib.c"), "w") as f:
                f.write("void helper(void) {}\n")
            individualFuncPath = os.path.join(codebasePath, "individual-funcs_test")
            os.makedirs(individualFuncPath)

            probe = _Probe()
            with self.assertRaises(CBaselineError) as ctx:
                probe.runCBaselinePerformance(
                    codebasePath, individualFuncPath, performanceArguments=[],
                )
            self.assertIn("source not found", str(ctx.exception))
            metricsPath = os.path.join(individualFuncPath, "performance_metrics.json")
            self.assertFalse(os.path.isfile(metricsPath))

    def test_raises_when_compile_fails(self):
        """Broken C source must produce CBaselineError, not silent skip."""
        with tempfile.TemporaryDirectory() as codebasePath:
            with open(os.path.join(codebasePath, "broken.c"), "w") as f:
                # Has main but won't compile (undefined symbol).
                f.write("int main(int argc, char *argv[]) { return undefined_symbol; }\n")
            individualFuncPath = os.path.join(codebasePath, "individual-funcs_test")
            os.makedirs(individualFuncPath)

            probe = _Probe()
            with self.assertRaises(CBaselineError) as ctx:
                probe.runCBaselinePerformance(
                    codebasePath, individualFuncPath, performanceArguments=[],
                )
            self.assertIn("compile failed", str(ctx.exception))


if __name__ == "__main__":
    unittest.main()
