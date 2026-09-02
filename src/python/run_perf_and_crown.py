"""Manually drive the post-translation pipeline (build + 5 perf runs + CROWN)
on a specified output directory, using the same methods the in-pipeline path
uses. Lets us pick up where translateAll left off when the operator manually
fixed performance.rs.
"""
import logging
import os
import shutil
import sys
import types

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.abspath(__file__)), "gpt_translation"))

# Stub upstream packages so we don't have to install them just for this driver.
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
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin
from gpt_translation.performance_mixin import PerformanceMixin
from gpt_translation.config import TranslatorModes


class _Logger:
    def __init__(self):
        h = logging.StreamHandler()
        h.setFormatter(logging.Formatter('%(asctime)s [%(levelname)s] %(message)s'))
        self.logger = logging.getLogger("run_perf_and_crown")
        self.logger.setLevel(logging.INFO)
        if not self.logger.handlers:
            self.logger.addHandler(h)

    def __getattr__(self, name):
        return getattr(self.logger, name)


class PerfRunner(CodeUtilsMixin, SymbolExtractionMixin, PerformanceMixin):
    def __init__(self):
        self.logger = _Logger()
        self.translatorMode = TranslatorModes.CF_STRUCT_FN_REPLAY
        self.dstLang = "Rust"
        self.srcLang = "C"
        # Perf retry: this driver runs perf on an already-finalized stage,
        # so don't retry; just record metrics.
        self.perfDegradeSkipRetry = True
        self.perfDegradeDiscardOnFail = False

    # The performance entry generation path needs an LLM client; we already
    # have a finished performance.rs in the output dir, so short-circuit.
    def chunkAndSend(self, *args, **kwargs):
        raise RuntimeError(
            "Driver should not need to call the LLM - performance.rs is already "
            "written. If we hit this, something is wrong upstream."
        )


def main():
    if len(sys.argv) < 2:
        print("usage: run_perf_and_crown.py <output_dir>")
        sys.exit(1)
    outputDir = os.path.abspath(sys.argv[1])
    if not os.path.isdir(outputDir):
        print(f"not a directory: {outputDir}")
        sys.exit(1)
    mergedPath = os.path.join(outputDir, "merged_funcs.rs")
    perfPath = os.path.join(outputDir, "performance.rs")
    if not os.path.isfile(perfPath):
        print(f"missing performance.rs in {outputDir}")
        sys.exit(1)

    runner = PerfRunner()

    # Step 1: build the binary.
    runner.logger.info("[BUILD] compiling %s", perfPath)
    success, binaryPath, compileResult = runner.compilePerformanceBinary(perfPath)
    if not success:
        runner.logger.error("compile failed:\n%s", compileResult.stderr if compileResult else "?")
        sys.exit(2)
    runner.logger.info("[BUILD] OK -> %s", binaryPath)

    # Step 2: load performance args and run 5x.
    promptPrefix, perfArgs = runner.loadPerformanceInformation(perfPath)
    runArgs = runner.normalizePerformanceArguments(perfArgs)
    runner.logger.info("[RUN] args: %s", runArgs)

    import subprocess
    runCwd = os.path.abspath(os.path.dirname(perfPath))
    searchDir = runCwd
    while True:
        if os.path.basename(searchDir).startswith("individual-funcs_"):
            runCwd = searchDir
            break
        parentDir = os.path.dirname(searchDir)
        if parentDir == searchDir:
            break
        searchDir = parentDir
    elapsedList = []
    runLogs = []
    for i in range(5):
        cmd = [os.path.abspath(binaryPath)] + runArgs
        runner.logger.info("[RUN %d/5] %s (cwd=%s)", i + 1, " ".join(cmd), runCwd)
        result = subprocess.run(cmd, text=True, stdout=subprocess.PIPE,
                                stderr=subprocess.PIPE, timeout=120, cwd=runCwd)
        combined = ((result.stdout or "") + "\n" + (result.stderr or "")).strip()
        elapsed = runner.extractElapsedMs(combined)
        if result.returncode != 0 or elapsed is None:
            runner.logger.error("[RUN %d/5] FAILED rc=%s", i + 1, result.returncode)
            runner.logger.error("stdout: %s", result.stdout)
            runner.logger.error("stderr: %s", result.stderr)
            sys.exit(3)
        elapsedList.append(elapsed)
        runLogs.append({"run_index": i + 1, "elapsed_ms": elapsed, "args": runArgs})
        runner.logger.info("[RUN %d/5] elapsed_ms=%.3f", i + 1, elapsed)

    avg = sum(elapsedList) / len(elapsedList)
    runner.logger.info("[PERF SUMMARY] runs=%d  avg=%.3fms  min=%.3fms  max=%.3fms",
                       len(elapsedList), avg, min(elapsedList), max(elapsedList))

    # Step 3: persist metrics.
    runner.recordPerformanceMetric(perfPath, avg, runLogs)
    runner.logger.info("[METRICS] saved")

    # Step 4: copy performance.rs / .out / metrics back to the merged-output
    # directory if they live in a temp; otherwise no-op.

    # Step 5: run CROWN against merged_funcs.rs.
    if not os.path.isfile(mergedPath):
        runner.logger.warning("[CROWN] no merged_funcs.rs at %s; skipping", mergedPath)
    else:
        runner.logger.info("[CROWN] running on %s", mergedPath)
        try:
            statsPath = runner.runCrownAnalysisForOutput(mergedPath, label="manual-perf-driver")
            runner.logger.info("[CROWN] statistics -> %s", statsPath)
        except Exception as exc:
            runner.logger.error("[CROWN] failed: %s", exc)
            sys.exit(4)


if __name__ == "__main__":
    main()
