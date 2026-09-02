"""Unit tests for ``_archiveAttemptDir`` — the perf-retry per-attempt
snapshot mechanism.

Background: each iteration of ``_runStagePerfRetryLoop`` calls
``updateFuncMap`` (which rewrites ``<stageDir>/merged_funcs.*``) and
then ``runPerformanceCheck`` (which writes ``performance.{cpp,rs,out}``).
Without an archive step the next iteration's ``updateFuncMap`` clobbers
everything, and the correctness-fail / loop-exhaust revert paths replace
the stage-dir files with the ``bestSnapshot`` rendering. The only
durable evidence of any failed attempt then lives in
``performance_metrics.json`` — file contents are lost.

The archive helper copies the stage-dir artifacts into
``<stageDir>/attempt_<N>/`` immediately after each attempt's perf-run.
After the loop finishes, ``stage_N/`` holds whatever final state the
loop decided to retain, and each ``stage_N/attempt_<k>/`` holds a frozen
copy of attempt k's actual output.
"""

import os
import shutil
import sys
import tempfile
import types
import unittest

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

# --- third-party stubs ---
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

from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin


class _Logger:
    def __init__(self):
        self.info_msgs = []
        self.warning_msgs = []

    def info(self, msg, *args, **kwargs):
        self.info_msgs.append(msg % args if args else msg)

    def warning(self, msg, *args, **kwargs):
        self.warning_msgs.append(msg % args if args else msg)

    def __getattr__(self, _n):
        return lambda *a, **k: None


class _Probe(CodeUtilsMixin, TranslationPipelineMixin):
    def __init__(self):
        self.logger = _Logger()


def _make_stage(tmp, **files):
    """Create a fake Stage_N/ dir with the given filename → contents map.
    Returns the path of ``performance.cpp`` inside the dir (this matches
    the ``outputPath`` value the loop hands to the archive helper)."""
    stageDir = os.path.join(tmp, "_Stage.Stage_2")
    os.makedirs(stageDir, exist_ok=True)
    for name, contents in files.items():
        path = os.path.join(stageDir, name)
        if isinstance(contents, dict):
            # nested dir
            os.makedirs(path, exist_ok=True)
            for subname, subcontents in contents.items():
                with open(os.path.join(path, subname), "w") as f:
                    f.write(subcontents)
        else:
            with open(path, "w") as f:
                f.write(contents)
    return os.path.join(stageDir, "performance.cpp")


class ArchiveBasic(unittest.TestCase):

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_archive_copies_top_level_files(self):
        outputPath = _make_stage(
            self.tmp,
            **{
                "merged_funcs.cpp": "// attempt 1 merged\n",
                "performance.cpp": "// attempt 1 perf entry\n",
                "performance.out": "BINARY",
                "stage_state.json": '{"stage":"Stage_2"}',
            }
        )
        self.probe._archiveAttemptDir(outputPath, 1)
        attemptDir = os.path.join(os.path.dirname(outputPath), "attempt_1")
        self.assertTrue(os.path.isdir(attemptDir))
        for name in ("merged_funcs.cpp", "performance.cpp", "performance.out", "stage_state.json"):
            self.assertTrue(os.path.isfile(os.path.join(attemptDir, name)),
                            f"{name} should be in attempt_1/")

    def test_archive_preserves_file_contents(self):
        outputPath = _make_stage(
            self.tmp,
            **{"merged_funcs.cpp": "ATTEMPT_ONE_BODY"}
        )
        self.probe._archiveAttemptDir(outputPath, 1)
        with open(os.path.join(os.path.dirname(outputPath), "attempt_1", "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "ATTEMPT_ONE_BODY")

    def test_archive_writes_info_log(self):
        outputPath = _make_stage(
            self.tmp, **{"merged_funcs.cpp": "x"}
        )
        self.probe._archiveAttemptDir(outputPath, 3)
        self.assertTrue(
            any("attempt 3" in m and "attempt_3" in m for m in self.probe.logger.info_msgs),
            f"expected [Perf retry archive] info log, got {self.probe.logger.info_msgs}",
        )


class ArchiveSkipsBuildCaches(unittest.TestCase):

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_skips_temp_dir(self):
        outputPath = _make_stage(
            self.tmp,
            **{
                "merged_funcs.cpp": "x",
                "temp": {"build_cache.bin": "GIGABYTES_OF_CARGO_STUFF"},
            }
        )
        self.probe._archiveAttemptDir(outputPath, 1)
        self.assertFalse(
            os.path.exists(os.path.join(os.path.dirname(outputPath), "attempt_1", "temp")),
            "temp/ should not be copied — it's a cargo build cache",
        )
        # the real artifact is there
        self.assertTrue(os.path.isfile(
            os.path.join(os.path.dirname(outputPath), "attempt_1", "merged_funcs.cpp")
        ))

    def test_skips_performance_cargo_build_dir(self):
        outputPath = _make_stage(
            self.tmp,
            **{
                "merged_funcs.cpp": "x",
                ".performance_cargo_build": {"target": "huge"},
            }
        )
        self.probe._archiveAttemptDir(outputPath, 1)
        self.assertFalse(
            os.path.exists(os.path.join(os.path.dirname(outputPath), "attempt_1", ".performance_cargo_build"))
        )

    def test_skips_prior_attempt_archive_dirs(self):
        """Critical: the archive must not recursively copy its own past
        archives. Without this guard, attempt_2 would contain attempt_1/
        which would contain attempt_0/ etc., blowing up disk usage and
        creating nested misleading directories."""
        outputPath = _make_stage(
            self.tmp,
            **{
                "merged_funcs.cpp": "current attempt body",
            }
        )
        # Pretend attempt 1 already happened and left its dir behind.
        prevAttemptDir = os.path.join(os.path.dirname(outputPath), "attempt_1")
        os.makedirs(prevAttemptDir)
        with open(os.path.join(prevAttemptDir, "merged_funcs.cpp"), "w") as f:
            f.write("old attempt 1 body")

        # Archive attempt 2.
        self.probe._archiveAttemptDir(outputPath, 2)

        attempt2 = os.path.join(os.path.dirname(outputPath), "attempt_2")
        self.assertTrue(os.path.isdir(attempt2))
        # attempt_2/ must NOT contain a copy of attempt_1/
        self.assertFalse(
            os.path.exists(os.path.join(attempt2, "attempt_1")),
            "prior archive dirs must be excluded from the new archive",
        )
        # but the current merged_funcs.cpp is there
        with open(os.path.join(attempt2, "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "current attempt body")
        # and the old attempt_1/ archive is still intact next to it
        self.assertTrue(os.path.isdir(prevAttemptDir))
        with open(os.path.join(prevAttemptDir, "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "old attempt 1 body")


class ArchiveOverwriteSemantics(unittest.TestCase):
    """If the same attempt is archived twice (e.g. a retry of the
    archive itself, or attempt-N being re-run from scratch), the second
    archive must replace the first — never merge."""

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_existing_attempt_dir_is_replaced_not_merged(self):
        outputPath = _make_stage(
            self.tmp, **{"merged_funcs.cpp": "FIRST"}
        )
        self.probe._archiveAttemptDir(outputPath, 1)

        # Mutate the source file then re-archive at the same attempt number.
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.cpp"), "w") as f:
            f.write("SECOND")
        # Add a stale file to attempt_1/ that should NOT survive replacement.
        stale = os.path.join(os.path.dirname(outputPath), "attempt_1", "stale.txt")
        with open(stale, "w") as f:
            f.write("should be wiped")
        self.probe._archiveAttemptDir(outputPath, 1)

        attempt1 = os.path.join(os.path.dirname(outputPath), "attempt_1")
        self.assertFalse(os.path.exists(stale),
                         "stale files from the previous archive must be removed")
        with open(os.path.join(attempt1, "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "SECOND")


class ArchiveFailureSafety(unittest.TestCase):
    """Archiving is best-effort: a failure must not propagate out and
    break the retry loop."""

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_missing_stage_dir_is_silent_noop(self):
        bogus_path = os.path.join(self.tmp, "does_not_exist", "performance.cpp")
        # Must not raise
        self.probe._archiveAttemptDir(bogus_path, 1)
        # And must not have created anything
        self.assertFalse(os.path.exists(os.path.join(self.tmp, "does_not_exist")))

    def test_copy_failure_is_logged_not_raised(self):
        outputPath = _make_stage(
            self.tmp, **{"merged_funcs.cpp": "x"}
        )
        # Sabotage shutil.copy2 to raise mid-archive. The helper should
        # catch the error and log a warning, NOT propagate.
        original_copy2 = shutil.copy2
        shutil.copy2 = lambda *a, **k: (_ for _ in ()).throw(OSError("simulated"))
        try:
            self.probe._archiveAttemptDir(outputPath, 1)
        finally:
            shutil.copy2 = original_copy2
        self.assertTrue(
            any("failed for attempt" in m for m in self.probe.logger.warning_msgs),
            f"expected a warning log, got warnings={self.probe.logger.warning_msgs}",
        )


class ArchiveAccumulatesAcrossAttempts(unittest.TestCase):
    """End-to-end: simulate two retry iterations, each archiving its
    output. After both, attempt_1/ and attempt_2/ should both exist with
    their respective contents, and the stage dir should hold whatever
    the latest write produced (mirrors the real loop's behavior)."""

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_two_attempts_archived_separately(self):
        # Attempt 1
        outputPath = _make_stage(
            self.tmp, **{"merged_funcs.cpp": "ATTEMPT_1"}
        )
        self.probe._archiveAttemptDir(outputPath, 1)

        # Now the loop overwrites the stage dir (simulated): attempt 2's
        # updateFuncMap writes new contents into the SAME file.
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.cpp"), "w") as f:
            f.write("ATTEMPT_2")
        self.probe._archiveAttemptDir(outputPath, 2)

        stageDir = os.path.dirname(outputPath)
        with open(os.path.join(stageDir, "attempt_1", "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "ATTEMPT_1",
                             "attempt_1/ must hold attempt 1's body, undisturbed")
        with open(os.path.join(stageDir, "attempt_2", "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "ATTEMPT_2",
                             "attempt_2/ must hold attempt 2's body")
        with open(os.path.join(stageDir, "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "ATTEMPT_2",
                             "the stage dir itself holds the latest body, unchanged by the archive")


class FailingOriginalArchivedAsAttemptZero(unittest.TestCase):
    """``_runStagePerfRetryLoop`` must snapshot the failing original to
    ``attempt_0/`` BEFORE the rerun for-loop runs. Two failure modes this
    guards against:

      1. ``retryCount=0`` — the for-loop is empty, so without an explicit
         pre-loop archive there is NO ``attempt_*`` dir on disk; the user
         sees ``[Perf retry exhausted]`` in the log but has no artifact to
         diff against a passing baseline.

      2. ``retryCount>0`` — the first thing the loop body does is rewrite
         ``<stageDir>/merged_funcs.*`` (via ``updateFuncMap``) and
         ``<stageDir>/performance.{cpp,rs,out}`` (via
         ``runPerformanceCheck``). Without the pre-loop archive, attempt 1
         clobbers the failing original and ``attempt_1/`` ends up holding
         the FIRST RERUN — there is no record of what actually failed.

    These tests stub out every side-effect the loop performs (LLM calls,
    perf measurement, funcMap manipulation) and assert only that the
    archive happens at the right time with the right contents.
    """

    def setUp(self):
        self.tmp = tempfile.mkdtemp()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def _makeProbe(self):
        """Construct a probe with everything stubbed except the archive
        machinery. Mirrors the stubs ``TestPerfRetryDrivesTypeRetranslation``
        uses, plus type-snapshot stubs so we don't drag in TypeRegistry."""
        import testPerformanceMixin as tpm
        probe = tpm.PerformancePipelineProbe()
        probe.dstLang = "C++"
        probe.perfDegradeThresholdPct = 5.0
        # No SCC walk → inner translation loop is a no-op per attempt.
        probe.createSccTopoQueue = lambda funcMap: (
            __import__("collections").deque(), {}, {}, {}, {}, ""
        )
        probe.updateFuncMap = lambda funcMap: None
        probe.appendPerfRetryAttempt = lambda outputPath, record: None
        probe.loadCurrentStageRecord = lambda outputPath: {
            "average_elapsed_ms": 1100.0,
            "checksum": "abc",
            "correctness_check_passed": True,
        }
        # Type snapshot helpers — we don't exercise type retry here, but
        # _runStagePerfRetryLoop still calls them at entry/exit.
        probe._snapshotTypeRegistry = lambda: None
        probe._adoptTypeRegistrySnapshot = lambda snap: None
        probe._snapshotFuncMap = lambda funcMap: {}
        probe._adoptFuncMapSnapshot = lambda funcMap, snap: None
        return probe

    def _runLoop(self, probe, outputPath, retryCount, rerunBodyWriter=None):
        """Invoke ``_runStagePerfRetryLoop`` with minimal sensible args.
        ``rerunBodyWriter`` is the stubbed perf check; if given, it's
        called with ``outputPath`` at each attempt (lets the test write
        new contents into the stage dir between attempts)."""
        def fakeRun(outputPath, prompt, args):
            if rerunBodyWriter is not None:
                rerunBodyWriter(outputPath)
            return False  # perf still failing
        probe.runPerformanceCheck = fakeRun

        from gpt_translation.config import Stage
        probe._runStagePerfRetryLoop(
            stage=Stage.Stage_5,
            label="Stage.Stage_5",
            funcMap={},
            prevStageFuncMap={},
            outputPath=outputPath,
            performancePrompt="",
            performanceArguments=[],
            prevMs=1000.0,
            currentMs=1100.0,
            expectedChecksum="abc",
            thresholdPct=5.0,
            retryCount=retryCount,
            prevStageTypes=None,
        )

    def test_retryCount_zero_archives_attempt_0(self):
        """With retryCount=0 the for-loop body is empty, but the failing
        original must still be preserved under ``attempt_0/`` so it can
        be inspected after the run."""
        probe = self._makeProbe()
        outputPath = _make_stage(
            self.tmp,
            **{
                "merged_funcs.cpp": "FAILING_ORIGINAL_BODY",
                "performance.cpp": "FAILING_ORIGINAL_PERF_ENTRY",
                "performance.out": "FAILING_BINARY",
            }
        )
        self._runLoop(probe, outputPath, retryCount=0)

        attempt0 = os.path.join(os.path.dirname(outputPath), "attempt_0")
        self.assertTrue(os.path.isdir(attempt0),
                        "attempt_0/ must exist even when retryCount=0")
        for name in ("merged_funcs.cpp", "performance.cpp", "performance.out"):
            self.assertTrue(os.path.isfile(os.path.join(attempt0, name)),
                            f"{name} must be archived under attempt_0/")
        with open(os.path.join(attempt0, "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "FAILING_ORIGINAL_BODY")

    def test_retryCount_two_archives_original_independently_of_reruns(self):
        """With retryCount>0, attempt_0/ holds the failing original and
        attempt_1/..N/ hold the reruns. Critically, attempt_0/ must NOT
        be overwritten when later attempts rewrite the stage dir — its
        whole point is to freeze the pre-retry state."""
        probe = self._makeProbe()
        outputPath = _make_stage(
            self.tmp,
            **{"merged_funcs.cpp": "FAILING_ORIGINAL_BODY"}
        )
        # Simulate what each rerun's runPerformanceCheck does to stageDir.
        counter = {"n": 0}
        def rewriteOnEachRerun(stageOutputPath):
            counter["n"] += 1
            with open(os.path.join(os.path.dirname(stageOutputPath),
                                   "merged_funcs.cpp"), "w") as f:
                f.write(f"RERUN_{counter['n']}_BODY")

        self._runLoop(probe, outputPath, retryCount=2,
                      rerunBodyWriter=rewriteOnEachRerun)

        stageDir = os.path.dirname(outputPath)
        attempt0 = os.path.join(stageDir, "attempt_0", "merged_funcs.cpp")
        self.assertTrue(os.path.isfile(attempt0))
        with open(attempt0) as f:
            self.assertEqual(
                f.read(), "FAILING_ORIGINAL_BODY",
                "attempt_0/ must hold the failing original verbatim, "
                "not whatever the later reruns wrote into the stage dir",
            )
        # And the rerun archives also exist with their own contents (sanity).
        for n in (1, 2):
            path = os.path.join(stageDir, f"attempt_{n}", "merged_funcs.cpp")
            self.assertTrue(os.path.isfile(path),
                            f"attempt_{n}/ must also be archived")
            with open(path) as f:
                self.assertEqual(f.read(), f"RERUN_{n}_BODY")

    def test_retryCount_zero_does_not_create_attempt_1(self):
        """Regression guard: archiving attempt_0 must not accidentally
        also create attempt_1 — the loop body never ran, so no rerun
        archive should exist."""
        probe = self._makeProbe()
        outputPath = _make_stage(
            self.tmp, **{"merged_funcs.cpp": "x"}
        )
        self._runLoop(probe, outputPath, retryCount=0)

        stageDir = os.path.dirname(outputPath)
        self.assertTrue(os.path.isdir(os.path.join(stageDir, "attempt_0")))
        self.assertFalse(
            os.path.exists(os.path.join(stageDir, "attempt_1")),
            "no rerun happened, so attempt_1/ must not exist",
        )


if __name__ == "__main__":
    unittest.main()
