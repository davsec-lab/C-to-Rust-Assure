"""Unit tests for ``_flushPrevStageMergedFileToCurrent``.

Background: when a stage is discarded back to its predecessor via
``discard_on_fail``, the in-memory funcMap is reverted by
``_revertStageToPrev``, but the on-disk ``merged_funcs.{cpp,rs}`` was
left holding the failing attempt's code. Users opening the stage's
merged file would see the broken code that ``performance_metrics.json``
claimed had been rolled back (``effective_source: previous_stage``).

The flush helper closes that gap by copying the predecessor's
``merged_funcs.*`` into the discarded stage's directory. Per-attempt
archives under ``<stageDir>/attempt_<N>/`` are intentionally NOT
touched — they remain forensic snapshots of each retry attempt's
actual output.
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
from gpt_translation.config import Stage


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


def _make_run_layout(tmp, stage_num, prev_merged=None, cur_merged=None,
                     attempt_archives=None):
    """Lay out a fake individual-funcs run with sibling stage dirs.

    Returns the ``outputPath`` for the current (to-be-discarded) stage,
    matching what the pipeline hands to the helper.
    """
    runRoot = os.path.join(tmp, "individual-funcs_demo")
    os.makedirs(runRoot, exist_ok=True)

    if prev_merged is not None:
        prevDir = os.path.join(runRoot, f"_Stage.Stage_{stage_num - 1}")
        os.makedirs(prevDir, exist_ok=True)
        with open(os.path.join(prevDir, "merged_funcs.cpp"), "w") as f:
            f.write(prev_merged)

    curDir = os.path.join(runRoot, f"_Stage.Stage_{stage_num}")
    os.makedirs(curDir, exist_ok=True)
    if cur_merged is not None:
        with open(os.path.join(curDir, "merged_funcs.cpp"), "w") as f:
            f.write(cur_merged)
    # Always include a performance.cpp so outputPath corresponds to a
    # real file (mirrors the pipeline's actual path).
    perfPath = os.path.join(curDir, "performance.cpp")
    with open(perfPath, "w") as f:
        f.write("// stub")

    if attempt_archives:
        for n, contents in attempt_archives.items():
            attemptDir = os.path.join(curDir, f"attempt_{n}")
            os.makedirs(attemptDir, exist_ok=True)
            with open(os.path.join(attemptDir, "merged_funcs.cpp"), "w") as f:
                f.write(contents)
    return perfPath


# =============================================================================
# Happy path: prev-stage's merged file gets copied into the current dir
# =============================================================================
class FlushBasic(unittest.TestCase):

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_copies_prev_merged_cpp_over_current(self):
        """Stage_2 discarded → Stage_2/merged_funcs.cpp must now hold
        Stage_1's contents (the predecessor / 'effective_source')."""
        outputPath = _make_run_layout(
            self.tmp, 2,
            prev_merged="// Stage_1 GOOD CODE",
            cur_merged="// Stage_2 FAILING CODE",
        )
        self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_2)
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// Stage_1 GOOD CODE")

    def test_copies_rust_merged_when_present(self):
        outputPath = _make_run_layout(self.tmp, 9, cur_merged="// stage9 cpp")
        # Lay out Stage_8 with a .rs file (Stage_9 produces Rust).
        prevDir = os.path.join(os.path.dirname(outputPath), "..", "_Stage.Stage_8")
        prevDir = os.path.abspath(prevDir)
        os.makedirs(prevDir, exist_ok=True)
        with open(os.path.join(prevDir, "merged_funcs.rs"), "w") as f:
            f.write("// Stage_8 final cpp")
        # (Stage_9 doesn't actually trigger discard in production, but the
        # helper itself is language-agnostic — exercise the .rs path.)
        self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_9)
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.rs")) as f:
            self.assertEqual(f.read(), "// Stage_8 final cpp")

    def test_info_log_records_the_copy(self):
        outputPath = _make_run_layout(
            self.tmp, 2,
            prev_merged="x",
            cur_merged="y",
        )
        self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_2)
        self.assertTrue(
            any("flushed prev-stage merged file" in m and "Stage_1" in m
                for m in self.probe.logger.info_msgs),
            f"expected an info log naming the prev stage, got {self.probe.logger.info_msgs}",
        )


# =============================================================================
# Per-attempt archives must survive the flush
# =============================================================================
class FlushPreservesAttemptArchives(unittest.TestCase):

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_attempt_archives_remain_intact(self):
        """User asked specifically: keep failed attempts after discard.
        The flush only rewrites the stage dir's top-level merged file —
        attempt_<N>/ subdirs are out of scope."""
        outputPath = _make_run_layout(
            self.tmp, 2,
            prev_merged="// Stage_1 GOOD",
            cur_merged="// Stage_2 BAD",
            attempt_archives={
                1: "// attempt 1 BAD",
                2: "// attempt 2 ALSO BAD",
            },
        )
        self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_2)

        stageDir = os.path.dirname(outputPath)
        # top-level merged_funcs.cpp now holds Stage_1's content
        with open(os.path.join(stageDir, "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// Stage_1 GOOD")
        # attempt_1/ and attempt_2/ are untouched
        with open(os.path.join(stageDir, "attempt_1", "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// attempt 1 BAD")
        with open(os.path.join(stageDir, "attempt_2", "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// attempt 2 ALSO BAD")


# =============================================================================
# Guards: stage_1 / missing prev / malformed stage names
# =============================================================================
class FlushGuards(unittest.TestCase):

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_stage_1_has_no_predecessor_silent_noop(self):
        outputPath = _make_run_layout(
            self.tmp, 1,
            cur_merged="// Stage_1 code",
        )
        self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_1)
        # Current file untouched
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// Stage_1 code")

    def test_missing_prev_dir_logs_warning_doesnt_crash(self):
        outputPath = _make_run_layout(
            self.tmp, 2,
            prev_merged=None,   # no prev dir at all
            cur_merged="// Stage_2 code",
        )
        self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_2)
        # Current file untouched (no prev to copy from)
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// Stage_2 code")
        # Warning was logged
        self.assertTrue(
            any("no prior stage dir found" in m
                for m in self.probe.logger.warning_msgs),
        )

    def test_none_stage_silent_noop(self):
        """A bare ``stage=None`` (some test paths) must not crash."""
        outputPath = _make_run_layout(self.tmp, 2, cur_merged="x")
        try:
            self.probe._flushPrevStageMergedFileToCurrent(outputPath, None)
        except Exception as e:
            self.fail(f"helper must accept stage=None, raised {e!r}")

    def test_string_stage_name_works(self):
        """``runPerformanceCheckForOutput`` normalises stage to a string
        in tests; ensure the helper accepts that form too."""
        outputPath = _make_run_layout(
            self.tmp, 3,
            prev_merged="// Stage_2 final",
            cur_merged="// Stage_3 failing",
        )
        # Pass a bare string instead of a Stage enum value
        self.probe._flushPrevStageMergedFileToCurrent(outputPath, "Stage_3")
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// Stage_2 final")

    def test_malformed_stage_name_silent_noop(self):
        outputPath = _make_run_layout(self.tmp, 2, cur_merged="original")
        # Various garbage forms
        for bogus in ("not-a-stage", "Stage_abc", "", "Stage_"):
            self.probe._flushPrevStageMergedFileToCurrent(outputPath, bogus)
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "original")

    def test_walks_back_over_skipped_stages(self):
        """When --skip-stages omits stages, the immediate stage_num-1 dir
        does not exist. The flush must walk backwards to find the most
        recent stage that actually ran (mirrors ``getPerformanceMetricsContext``).

        Reproduces the cjson_new Stage_7 leak: Stage_5/6 were skipped,
        Stage_7 was discarded, but the flush quietly gave up because
        ``_Stage.Stage_6`` didn't exist — leaving the failed attempt on
        disk while metrics claimed the stage was reverted to Stage_4.
        """
        # Lay out Stage_4 (last that ran) and Stage_7 (discarded);
        # Stage_5 / Stage_6 dirs are intentionally absent.
        runRoot = os.path.join(self.tmp, "individual-funcs_demo")
        os.makedirs(runRoot)
        prevDir = os.path.join(runRoot, "_Stage.Stage_4")
        os.makedirs(prevDir)
        with open(os.path.join(prevDir, "merged_funcs.cpp"), "w") as f:
            f.write("// Stage_4 final")
        curDir = os.path.join(runRoot, "_Stage.Stage_7")
        os.makedirs(curDir)
        with open(os.path.join(curDir, "merged_funcs.cpp"), "w") as f:
            f.write("// Stage_7 failing optional attempt")
        outputPath = os.path.join(curDir, "performance.cpp")
        with open(outputPath, "w") as f:
            f.write("// stub")

        self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_7)

        with open(os.path.join(curDir, "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// Stage_4 final")
        self.assertTrue(
            any("flushed prev-stage merged file" in m and "Stage_4" in m
                for m in self.probe.logger.info_msgs),
            f"expected an info log naming Stage_4, got {self.probe.logger.info_msgs}",
        )

    def test_prev_merged_file_absent_is_silent_noop(self):
        """Prev dir exists but has no merged_funcs.cpp (e.g. crashed
        before write). Helper should leave current as-is, no crash."""
        outputPath = _make_run_layout(self.tmp, 2, cur_merged="// Stage_2 code")
        # Create empty prev dir
        prevDir = os.path.join(os.path.dirname(outputPath), "..", "_Stage.Stage_1")
        os.makedirs(os.path.abspath(prevDir), exist_ok=True)
        self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_2)
        with open(os.path.join(os.path.dirname(outputPath), "merged_funcs.cpp")) as f:
            self.assertEqual(f.read(), "// Stage_2 code")


# =============================================================================
# Failure safety: must not propagate
# =============================================================================
class FlushFailureSafety(unittest.TestCase):

    def setUp(self):
        self.tmp = tempfile.mkdtemp()
        self.probe = _Probe()

    def tearDown(self):
        shutil.rmtree(self.tmp, ignore_errors=True)

    def test_copy_exception_is_logged_not_raised(self):
        outputPath = _make_run_layout(
            self.tmp, 2,
            prev_merged="// prev",
            cur_merged="// cur",
        )
        original_copy2 = shutil.copy2
        shutil.copy2 = lambda *a, **k: (_ for _ in ()).throw(OSError("simulated"))
        try:
            self.probe._flushPrevStageMergedFileToCurrent(outputPath, Stage.Stage_2)
        finally:
            shutil.copy2 = original_copy2
        self.assertTrue(
            any("failed to flush prev-stage merged file" in m
                for m in self.probe.logger.warning_msgs),
            f"expected a warning log, got {self.probe.logger.warning_msgs}",
        )


if __name__ == "__main__":
    unittest.main()
