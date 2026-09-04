import os
import subprocess
import sys
import tempfile
import types
import unittest
from collections import deque
from unittest import mock

sys.path.insert(0, os.path.dirname(os.path.dirname(os.path.abspath(__file__))))
sys.path.insert(0, os.path.join(os.path.dirname(os.path.dirname(os.path.abspath(__file__))), "gpt_translation"))

openai_stub = types.ModuleType("openai")
openai_stub.OpenAI = object
sys.modules.setdefault("openai", openai_stub)
sys.modules.setdefault("tiktoken", types.ModuleType("tiktoken"))

from gpt_translation.performance_mixin import PerformanceMixin
from gpt_translation.code_utils_mixin import CodeUtilsMixin
from gpt_translation.symbol_extraction_mixin import SymbolExtractionMixin
from gpt_translation.translation_pipeline_mixin import TranslationPipelineMixin
from gpt_translation.config import TranslatorModes


class DummyLogger:
    def debug(self, *args, **kwargs):
        pass

    def info(self, *args, **kwargs):
        pass

    def warning(self, *args, **kwargs):
        pass

    def warn(self, *args, **kwargs):
        pass

    def error(self, *args, **kwargs):
        pass

    def critical(self, *args, **kwargs):
        pass


class PerformanceProbe(CodeUtilsMixin, SymbolExtractionMixin, PerformanceMixin):
    def __init__(self):
        self.logger = DummyLogger()
        self.response = ""
        self.requests = []

    def chunkAndSend(self, *_args, **_kwargs):
        if len(_args) >= 2:
            self.requests.append(_args[1])
        return self.response


class PerformancePipelineProbe(CodeUtilsMixin, SymbolExtractionMixin, PerformanceMixin, TranslationPipelineMixin):
    def __init__(self):
        self.logger = DummyLogger()
        self.translatorMode = TranslatorModes.CF_STRUCT_FN_REPLAY
        self.dstLang = "Rust"
        self.loaded_paths = []
        self.performance_checks = []
        self.updated_func_maps = []
        self.crown_analyses = []

    def loadPerformanceInformation(self, outputPath):
        self.loaded_paths.append(outputPath)
        return "int main(void) { return 0; }", ["10"]

    def runPerformanceCheck(self, outputPath, performancePrompt, performanceArguments):
        self.performance_checks.append((outputPath, performancePrompt, performanceArguments))
        return True

    def updateFuncMap(self, funcMap):
        self.updated_func_maps.append(funcMap)

    def runCrownAnalysisForOutput(self, outputPath, label=None, crownRoot=None):
        self.crown_analyses.append((outputPath, label))
        return os.path.join(os.path.dirname(outputPath), self.CROWN_STATISTICS_OUTPUT_NAME)

    def preTranslateComplexStructs(self, stage=None):
        pass

    def createTopoQueue(self, funcMap):
        return deque(["helper"]), {"helper": 0}, {"helper": []}, ""

    def createSccTopoQueue(self, funcMap):
        # SCC version: each func is its own singleton SCC.
        sccs = [("helper",)]
        return (deque([0]), {0: 0}, {0: set()}, sccs, {"helper": 0}, "")

    def compileWithFeedback(self, funcName, funcDepsObj, contextStructs, includeDependency=False, stage=None):
        return True, "pub fn helper() -> i32 {\n    7\n}\n"


class TestPerformanceMixin(unittest.TestCase):
    def test_prepare_rust_performance_cargo_project_writes_release_o3_manifest(self):
        probe = PerformanceProbe()

        with tempfile.TemporaryDirectory() as temp_dir:
            performance_path = os.path.join(temp_dir, "performance.rs")
            with open(performance_path, "w") as performance_file:
                performance_file.write("fn main() { println!(\"elapsed_ms: 1\"); }\n")

            cargo_project_dir = probe.prepareRustPerformanceCargoProject(performance_path)
            cargo_toml_path = os.path.join(cargo_project_dir, "Cargo.toml")
            cargo_main_path = os.path.join(cargo_project_dir, "src", "main.rs")

            self.assertEqual(cargo_project_dir, os.path.join(temp_dir, "temp", "performance_cargo_build"))
            self.assertTrue(os.path.isfile(cargo_toml_path))
            self.assertTrue(os.path.isfile(cargo_main_path))

            with open(cargo_toml_path, "r") as cargo_toml_file:
                cargo_toml = cargo_toml_file.read()
            with open(cargo_main_path, "r") as cargo_main_file:
                cargo_main = cargo_main_file.read()

            self.assertIn('[package]\nname = "performance_runner"\n', cargo_toml)
            self.assertIn("[profile.release]\nopt-level = 3\n", cargo_toml)
            self.assertEqual(cargo_main, 'fn main() { println!("elapsed_ms: 1"); }\n')

    def test_compile_performance_binary_for_rust_uses_cargo_release(self):
        probe = PerformanceProbe()

        with tempfile.TemporaryDirectory() as temp_dir:
            performance_path = os.path.join(temp_dir, "performance.rs")
            with open(performance_path, "w") as performance_file:
                performance_file.write("fn main() { println!(\"elapsed_ms: 1\"); }\n")

            def fake_subprocess_run(cmd, **kwargs):
                self.assertEqual(cmd, ["cargo", "build", "--release", "--quiet"])
                cargo_project_dir = kwargs.get("cwd")
                self.assertEqual(cargo_project_dir, probe.getPerformanceCargoProjectDir(performance_path))
                binary_dir = os.path.join(cargo_project_dir, "target", "release")
                os.makedirs(binary_dir, exist_ok=True)
                with open(os.path.join(binary_dir, probe.getPerformanceCargoBinaryName()), "w") as built_binary:
                    built_binary.write("stub")
                return subprocess_result

            subprocess_result = subprocess.CompletedProcess(
                args=["cargo", "build", "--release", "--quiet"],
                returncode=0,
                stdout="",
                stderr="",
            )

            with mock.patch("gpt_translation.performance_mixin.subprocess.run", side_effect=fake_subprocess_run):
                success, output_binary_path, result = probe.compilePerformanceBinary(performance_path)

            self.assertTrue(success)
            self.assertEqual(result.returncode, 0)
            self.assertEqual(output_binary_path, probe.getPerformanceBinaryPath(performance_path))
            self.assertTrue(os.path.isfile(output_binary_path))
            self.assertFalse(os.path.isdir(probe.getPerformanceCargoProjectDir(performance_path)))
            self.assertFalse(os.path.isdir(os.path.join(temp_dir, "temp")))

    def test_compile_performance_binary_for_cpp_uses_cxx17(self):
        # NOTE: the test name still says ``cxx17`` for historical
        # continuity; the asserted std actually tracks
        # ``PerformanceMixin.PERFORMANCE_CPP_STD`` (currently c++20).
        # The compiler is ``PerformanceMixin.PERFORMANCE_CPP_COMPILER``
        # (``clang++-19`` since the move off clang-14 — see
        # PerformanceMixin's docstring for why clang-14 + libstdc++ 14.2
        # produces an undefined ``__resize_and_overwrite`` reference).
        probe = PerformanceProbe()
        expected_compiler = probe.PERFORMANCE_CPP_COMPILER
        expected_std = f"-std={probe.PERFORMANCE_CPP_STD}"
        expected_opt = f"-O{probe.PERFORMANCE_OPT_LEVEL}"

        with tempfile.TemporaryDirectory() as temp_dir:
            performance_path = os.path.join(temp_dir, "performance.cpp")
            with open(performance_path, "w") as performance_file:
                performance_file.write(
                    "#include <optional>\n"
                    "#include <string>\n"
                    "int main() { std::optional<std::string> s; return s.has_value() ? 1 : 0; }\n"
                )

            expected_cmd = [
                expected_compiler,
                expected_std,
                expected_opt,
                performance_path,
                "-o",
                probe.getPerformanceBinaryPath(performance_path),
            ]
            subprocess_result = subprocess.CompletedProcess(
                args=expected_cmd,
                returncode=0,
                stdout="",
                stderr="",
            )

            def fake_subprocess_run(cmd, **_kwargs):
                self.assertEqual(cmd, expected_cmd)
                return subprocess_result

            with mock.patch("gpt_translation.performance_mixin.subprocess.run", side_effect=fake_subprocess_run):
                success, output_binary_path, result = probe.compilePerformanceBinary(performance_path)

            self.assertTrue(success)
            self.assertEqual(result.returncode, 0)
            self.assertEqual(output_binary_path, probe.getPerformanceBinaryPath(performance_path))

    def test_load_performance_information_supports_struct_fn_temp_directory(self):
        probe = PerformanceProbe()

        with tempfile.TemporaryDirectory() as temp_dir:
            output_dir = os.path.join(temp_dir, "individual-funcs_probe")
            temp_root = os.path.join(output_dir, "temp")
            os.makedirs(temp_root)
            with open(os.path.join(temp_dir, "performance_information.json"), "w") as info_file:
                info_file.write('{"prompt": "int main(void) { return 0; }", "input_arguments": ["5"]}\n')

            prompt, arguments = probe.loadPerformanceInformation(os.path.join(temp_root, "merged_funcs.rs"))

            self.assertEqual(prompt, "int main(void) { return 0; }")
            self.assertEqual(arguments, ["5"])

    def test_run_performance_check_prompt_allows_missing_helpers(self):
        probe = PerformanceProbe()
        probe.response = """the final code is :
```cpp
#include <cstdio>
#include <ctime>

static int get_now(struct timespec *ts)
{
    return clock_gettime(CLOCK_MONOTONIC, ts);
}

int main(void)
{
    struct timespec ts;
    int rc = get_now(&ts);
    printf("elapsed_time_seconds: 0.001\\n");
    return rc;
}
```"""

        with tempfile.TemporaryDirectory() as temp_dir:
            input_path = os.path.join(temp_dir, "merged_funcs.cpp")
            with open(input_path, "w") as src_file:
                src_file.write("int translated_dependency(void) { return 0; }\n")

            compile_result = subprocess.CompletedProcess(
                args=["clang++", "-std=c++20", "-O3"],
                returncode=0,
                stdout="",
                stderr="",
            )

            with mock.patch.object(
                probe,
                "compilePerformanceBinary",
                return_value=(True, os.path.join(temp_dir, "performance.out"), compile_result),
            ):
                with mock.patch.object(probe, "recordPerformanceMetric", return_value=True):
                    with mock.patch(
                        "gpt_translation.performance_mixin.subprocess.run",
                        return_value=subprocess.CompletedProcess(
                            args=[os.path.join(temp_dir, "performance.out")],
                            returncode=0,
                            stdout="elapsed_time_seconds: 0.001\n",
                            stderr="",
                        ),
                    ):
                        passed = probe.runPerformanceCheck(
                            input_path,
                            "int main(void) { return get_now(NULL); }",
                            [],
                        )

            self.assertTrue(passed)
            self.assertEqual(len(probe.requests), 1)
            request = probe.requests[0]
            self.assertIn("preserve the same logic", request)
            self.assertIn("create any missing parent directories", request)
            self.assertIn("Do not use platform-specific or external crypto headers", request)
            self.assertIn("md5sum command", request)
            self.assertIn("calls those same C libc srand and rand functions via FFI", request)
            self.assertIn("preserves the C random sequence and seeding behavior exactly", request)
            self.assertIn("Do not introduce FFI requirements for other C library functions", request)
            self.assertNotIn("srandom", request)
            self.assertNotIn("drand48", request)
            self.assertIn("missing helper functions", request)
            self.assertIn("If the generated main function calls a helper", request)
            self.assertNotIn("Do NOT output any code other than that single main function", request)
            self.assertNotIn("helper code, or other provided code", request)

    def test_run_performance_check_deduplicates_rust_use_statements(self):
        probe = PerformanceProbe()
        probe.response = """the final code is :
```rust
use std::env;
use std::ptr;
use std::os::raw::{c_int, c_uchar, c_void};

fn main() {
    let args: Vec<String> = env::args().collect();
    let _argc: c_int = args.len() as c_int;
    let _byte: c_uchar = 0;
    let _scratch = ptr::null_mut::<c_void>();
    println!("elapsed_ms: {}", (_argc + _byte as i32) as i64);
}
```"""

        with tempfile.TemporaryDirectory() as temp_dir:
            input_path = os.path.join(temp_dir, "merged_funcs.rs")
            with open(input_path, "w") as src_file:
                src_file.write(
                    "use std::ptr;\n"
                    "use std::os::raw::{c_int, c_uchar, c_void};\n\n"
                    "pub fn csv_init() -> c_int {\n"
                    "    0\n"
                    "}\n"
                )

            compile_result = subprocess.CompletedProcess(
                args=["cargo", "build", "--release", "--quiet"],
                returncode=0,
                stdout="",
                stderr="",
            )

            def fake_compile(performance_path):
                with open(performance_path, "r") as performance_file:
                    written_code = performance_file.read()

                self.assertIn("use std::{env, ptr};", written_code)
                self.assertEqual(written_code.count("use std::{env, ptr};"), 1)
                self.assertEqual(written_code.count("use "), 2)
                self.assertEqual(
                    written_code.count("use std::os::raw::{c_int, c_uchar, c_void};"),
                    1,
                )
                self.assertIn("fn main()", written_code)
                return True, os.path.join(temp_dir, "performance.out"), compile_result

            with mock.patch.object(probe, "compilePerformanceBinary", side_effect=fake_compile):
                with mock.patch.object(probe, "recordPerformanceMetric", return_value=True):
                    with mock.patch(
                        "gpt_translation.performance_mixin.subprocess.run",
                        return_value=subprocess.CompletedProcess(
                            args=[os.path.join(temp_dir, "performance.out")],
                            returncode=0,
                            stdout="elapsed_ms: 1\n",
                            stderr="",
                        ),
                    ):
                        passed = probe.runPerformanceCheck(
                            input_path,
                            "int main(void) { return 0; }",
                            [],
                        )

            self.assertTrue(passed)

    def test_run_performance_check_allows_one_manual_fix_retry(self):
        probe = PerformanceProbe()
        probe.response = """the final code is :
```rust
fn main() {
    println!("elapsed_ms: 1");
}
```"""

        with tempfile.TemporaryDirectory() as temp_dir:
            input_path = os.path.join(temp_dir, "merged_funcs.rs")
            performance_path = os.path.join(temp_dir, "performance.rs")
            output_binary_path = os.path.join(temp_dir, "performance.out")
            with open(input_path, "w") as src_file:
                src_file.write("pub fn translated_dependency() -> i32 { 0 }\n")

            failed_compile = subprocess.CompletedProcess(
                args=["cargo", "build", "--release", "--quiet"],
                returncode=1,
                stdout="",
                stderr="manual fix needed",
            )
            successful_compile = subprocess.CompletedProcess(
                args=["cargo", "build", "--release", "--quiet"],
                returncode=0,
                stdout="",
                stderr="",
            )
            compile_attempts = []

            def fake_compile(path):
                self.assertEqual(path, performance_path)
                compile_attempts.append(path)
                if len(compile_attempts) == 1:
                    return False, output_binary_path, failed_compile

                with open(path, "r") as performance_file:
                    written_code = performance_file.read()
                self.assertIn("// manual fix marker", written_code)
                return True, output_binary_path, successful_compile

            def fake_input(_prompt):
                with open(performance_path, "a") as performance_file:
                    performance_file.write("// manual fix marker\n")
                return ""

            with mock.patch.object(probe, "compilePerformanceBinary", side_effect=fake_compile):
                with mock.patch.object(probe, "canPromptForManualPerformanceFix", return_value=True):
                    with mock.patch("builtins.input", side_effect=fake_input):
                        with mock.patch("builtins.print"):
                            with mock.patch.object(probe, "recordPerformanceMetric", return_value=True):
                                with mock.patch(
                                    "gpt_translation.performance_mixin.subprocess.run",
                                    return_value=subprocess.CompletedProcess(
                                        args=[output_binary_path],
                                        returncode=0,
                                        stdout="elapsed_ms: 1\n",
                                        stderr="",
                                    ),
                                ):
                                    passed = probe.runPerformanceCheck(
                                        input_path,
                                        "int main(void) { return 0; }",
                                        [],
                                    )

            self.assertTrue(passed)
            self.assertEqual(len(compile_attempts), 2)

    def test_run_performance_check_prepares_relative_output_directories(self):
        probe = PerformanceProbe()
        probe.response = """the final code is :
```cpp
#include <cstdio>

int main(void)
{
    const char *output_path = "../file/test.bmp";
    FILE *output = fopen(output_path, "wb");
    if (output == nullptr)
    {
        return 1;
    }
    fclose(output);
    printf("elapsed_ms: 1\\n");
    return 0;
}
```"""

        with tempfile.TemporaryDirectory() as temp_dir:
            stage_dir = os.path.join(temp_dir, "_legacy_dir")
            os.makedirs(stage_dir)
            input_path = os.path.join(stage_dir, "merged_funcs.cpp")
            output_binary_path = os.path.join(stage_dir, "performance.out")
            with open(input_path, "w") as src_file:
                src_file.write("int translated_dependency(void) { return 0; }\n")

            compile_result = subprocess.CompletedProcess(
                args=["clang++", "-std=c++20", "-O3"],
                returncode=0,
                stdout="",
                stderr="",
            )

            def fake_run(cmd, **kwargs):
                self.assertEqual(kwargs.get("cwd"), stage_dir)
                self.assertEqual(cmd[0], os.path.abspath(output_binary_path))
                self.assertTrue(os.path.isdir(os.path.join(temp_dir, "file")))
                return subprocess.CompletedProcess(
                    args=cmd,
                    returncode=0,
                    stdout="elapsed_ms: 1\n",
                    stderr="",
                )

            with mock.patch.object(
                probe,
                "compilePerformanceBinary",
                return_value=(True, output_binary_path, compile_result),
            ):
                with mock.patch.object(probe, "recordPerformanceMetric", return_value=True):
                    with mock.patch("gpt_translation.performance_mixin.subprocess.run", side_effect=fake_run):
                        passed = probe.runPerformanceCheck(
                            input_path,
                            'int main(void) { const char *output_path = "../file/test.bmp"; return 0; }',
                            [],
                        )

            self.assertTrue(passed)

    def test_sanitize_performance_generated_code_rewrites_platform_md5_helper(self):
        probe = PerformanceProbe()

        source_code = """#include <cstdio>
#include <cstdlib>
#include <CommonCrypto/CommonDigest.h>
#include <openssl/md5.h>

static void print_file_md5(const char *path)
{
    FILE *f = fopen(path, "rb");
    if (!f)
    {
        return;
    }
#ifdef __APPLE__
    CC_MD5_CTX ctx;
    CC_MD5_Init(&ctx);
    unsigned char digest[CC_MD5_DIGEST_LENGTH];
    CC_MD5_Final(digest, &ctx);
#else
    MD5_CTX ctx;
    MD5_Init(&ctx);
    unsigned char digest[MD5_DIGEST_LENGTH];
    MD5_Final(digest, &ctx);
#endif
    fclose(f);
}

int main(void)
{
    print_file_md5("../file/test.bmp");
    printf("elapsed_ms: 1\\n");
    return 0;
}
"""

        updated_code = probe.sanitizePerformanceGeneratedCode(source_code)

        self.assertNotIn("CommonCrypto/CommonDigest.h", updated_code)
        self.assertNotIn("openssl/md5.h", updated_code)
        self.assertNotIn("CC_MD5", updated_code)
        self.assertNotIn("MD5_Init", updated_code)
        self.assertIn("static void print_file_md5(const char *filepath)", updated_code)
        self.assertIn("md5sum %s", updated_code)
        self.assertIn("int main(void)", updated_code)

    def test_sanitize_performance_generated_code_removes_model_markers(self):
        probe = PerformanceProbe()
        source_code = """#include <cstdio>
Final result code is :

int main(void)
{
    printf("elapsed_ms: 1\\n");
    return 0;
}
```
"""

        updated_code = probe.sanitizePerformanceGeneratedCode(source_code)

        self.assertNotIn("Final result code", updated_code)
        self.assertNotIn("```", updated_code)
        self.assertIn("int main(void)", updated_code)

    def test_sanitize_performance_generated_code_rewrites_rust_libc_stderr(self):
        probe = PerformanceProbe()
        source_code = """use libc::{c_char, c_int};

fn main() {
    unsafe {
        let msg = b"oops\\n\\0";
        libc::fprintf(libc::stderr, msg.as_ptr() as *const c_char);
    }
}
"""

        updated_code = probe.sanitizePerformanceGeneratedCode(source_code)

        self.assertNotIn("libc::stderr", updated_code)
        self.assertIn('#[link_name = "stderr"]', updated_code)
        self.assertIn("static mut PERFORMANCE_STDERR: *mut libc::FILE;", updated_code)
        self.assertIn("libc::fprintf(PERFORMANCE_STDERR, msg.as_ptr() as *const c_char);", updated_code)

    def test_run_performance_check_removes_split_cpp_main_return_type(self):
        probe = PerformanceProbe()
        probe.response = """the final code is :
```cpp
#include <cstdio>
#include <ctime>

int get_now(struct timespec *ts);

int
main(int argc, char *argv[])
{
    (void)argc;
    (void)argv;
    return get_now(nullptr);
}
```"""

        with tempfile.TemporaryDirectory() as temp_dir:
            input_path = os.path.join(temp_dir, "merged_funcs.cpp")
            with open(input_path, "w") as src_file:
                src_file.write(
                    "#include <ctime>\n\n"
                    "void helper(void)\n"
                    "{\n"
                    "}\n\n"
                    "int\n"
                    "main(int argc, char *argv[])\n"
                    "{\n"
                    "    return argc + (argv != nullptr ? 0 : 1);\n"
                    "}\n"
                )

            compile_result = subprocess.CompletedProcess(
                args=[
                    "clang++",
                    "-std=c++20",
                    "-O3",
                    input_path,
                    "-o",
                    probe.getPerformanceBinaryPath(input_path),
                ],
                returncode=0,
                stdout="",
                stderr="",
            )

            def fake_compile(performance_path):
                with open(performance_path, "r") as performance_file:
                    written_code = performance_file.read()

                int_only_lines = [line for line in written_code.splitlines() if line.strip() == "int"]
                self.assertEqual(len(int_only_lines), 1)
                self.assertIn("int get_now(struct timespec *ts);", written_code)
                self.assertIn("void helper(void)", written_code)
                return True, os.path.join(temp_dir, "performance.out"), compile_result

            with mock.patch.object(probe, "compilePerformanceBinary", side_effect=fake_compile):
                with mock.patch.object(probe, "recordPerformanceMetric", return_value=True):
                    with mock.patch(
                        "gpt_translation.performance_mixin.subprocess.run",
                        return_value=subprocess.CompletedProcess(
                            args=[os.path.join(temp_dir, "performance.out")],
                            returncode=0,
                            stdout="elapsed_time_seconds: 0.001\n",
                            stderr="",
                        ),
                    ):
                        passed = probe.runPerformanceCheck(
                            input_path,
                            "int\nmain(int argc, char *argv[]) { return 0; }",
                            [],
                        )

            self.assertTrue(passed)

    def test_run_performance_check_for_output_records_and_updates_when_requested(self):
        probe = PerformancePipelineProbe()
        func_map = {"helper": object()}

        passed = probe.runPerformanceCheckForOutput(
            "/tmp/out/merged_funcs.rs",
            "an earlier pass",
            func_map,
            True,
        )

        self.assertTrue(passed)
        self.assertEqual(probe.loaded_paths, ["/tmp/out/merged_funcs.rs"])
        self.assertEqual(
            probe.performance_checks,
            [("/tmp/out/merged_funcs.rs", "int main(void) { return 0; }", ["10"])],
        )
        self.assertEqual(probe.updated_func_maps, [func_map])
        self.assertEqual(probe.crown_analyses, [])

    def test_run_performance_check_for_output_skips_retry_when_flag_set(self):
        """With perfDegradeSkipRetry=True, perf failure is accepted without retry."""
        probe = PerformancePipelineProbe()
        probe.perfDegradeSkipRetry = True
        probe.perfDegradeDiscardOnFail = False

        def fake_run_performance_check(output_path, performance_prompt, performance_arguments):
            probe.performance_checks.append((output_path, performance_prompt, performance_arguments))
            return False

        with mock.patch.object(probe, "runPerformanceCheck", side_effect=fake_run_performance_check):
            with mock.patch.object(probe, "loadCurrentStageRecord", return_value={}):
                passed = probe.runPerformanceCheckForOutput(
                    "/tmp/out/merged_funcs.rs",
                    "an earlier pass",
                    None,
                    False,
                )

        self.assertTrue(passed)
        self.assertEqual(
            probe.performance_checks,
            [("/tmp/out/merged_funcs.rs", "int main(void) { return 0; }", ["10"])],
        )

    def test_run_merged_output_checks_records_performance_and_crown_statistics(self):
        probe = PerformancePipelineProbe()

        with tempfile.TemporaryDirectory() as temp_dir:
            output_dir = os.path.join(temp_dir, "individual-funcs_probe")
            os.makedirs(output_dir)
            output_path = os.path.join(output_dir, "merged_funcs.rs")
            with open(output_path, "w") as output_file:
                output_file.write("pub fn helper() -> i32 { 7 }\n")
            with open(os.path.join(temp_dir, "performance_information.json"), "w") as info_file:
                info_file.write('{"prompt": "", "input_arguments": "../../input_10s.csv"}\n')

            def fake_run_performance_check(relocated_path, performance_prompt, performance_arguments):
                probe.performance_checks.append((relocated_path, performance_prompt, performance_arguments))
                performance_dir = os.path.dirname(relocated_path)
                for file_name in ("performance.rs", "performance.out", "performance_metrics.json"):
                    with open(os.path.join(performance_dir, file_name), "w") as performance_file:
                        performance_file.write(file_name + "\n")
                return True

            with mock.patch.object(probe, "runPerformanceCheck", side_effect=fake_run_performance_check):
                passed = probe.runMergedOutputChecksForOutput(
                    output_path,
                    "struct-fn-replay",
                )

            relocated_output_path = os.path.join(
                output_dir,
                "temp",
                "merged_funcs.rs",
            )

            self.assertTrue(passed)
            self.assertFalse(os.path.isdir(os.path.join(temp_dir, "Rust")))
            self.assertFalse(os.path.isdir(os.path.join(output_dir, "temp")))
            self.assertEqual(
                os.path.abspath(os.path.join(os.path.dirname(relocated_output_path), "../../input_10s.csv")),
                os.path.abspath(os.path.join(temp_dir, "input_10s.csv")),
            )
            for file_name in ("performance.rs", "performance.out", "performance_metrics.json"):
                with open(os.path.join(output_dir, file_name), "r") as synced_file:
                    self.assertEqual(synced_file.read(), file_name + "\n")
            self.assertEqual(
                probe.performance_checks,
                [(relocated_output_path, "int main(void) { return 0; }", ["10"])],
            )
            self.assertEqual(probe.crown_analyses, [(output_path, "struct-fn-replay")])

    def test_run_merged_output_checks_can_skip_performance_and_still_run_crown(self):
        probe = PerformancePipelineProbe()
        probe.skipPerformanceCheck = True

        with tempfile.TemporaryDirectory() as temp_dir:
            output_path = os.path.join(temp_dir, "merged_funcs.rs")
            with open(output_path, "w") as output_file:
                output_file.write("pub fn helper() -> i32 { 7 }\n")

            passed = probe.runMergedOutputChecksForOutput(
                output_path,
                "struct-fn-replay",
            )

            self.assertTrue(passed)
            self.assertEqual(probe.loaded_paths, [])
            self.assertEqual(probe.performance_checks, [])
            self.assertFalse(os.path.isdir(os.path.join(temp_dir, "Rust")))
            self.assertFalse(os.path.isdir(os.path.join(temp_dir, "temp")))
            self.assertEqual(probe.crown_analyses, [(output_path, "struct-fn-replay")])

    def test_run_crown_analysis_for_output_copies_rust_code_and_saves_statistics(self):
        probe = PerformanceProbe()

        with tempfile.TemporaryDirectory() as temp_dir:
            crown_root = os.path.join(temp_dir, "crown")
            buffer_src_dir = os.path.join(crown_root, "buffer", "src")
            os.makedirs(buffer_src_dir, exist_ok=True)

            analyse_script = os.path.join(crown_root, "analyse.sh")
            with open(analyse_script, "w") as script_file:
                script_file.write(
                    "#!/usr/bin/env bash\n"
                    "set -euf\n"
                    "mkdir -p \"$1/analysis_results\"\n"
                    "cat > \"$1/analysis_results/statistics.json\" <<'JSON'\n"
                    "{\"num_unsafe_ptrs\": 2, \"num_unsafe_usages\": 5}\n"
                    "JSON\n"
                )

            output_dir = os.path.join(temp_dir, "translation")
            os.makedirs(output_dir, exist_ok=True)
            merged_output = os.path.join(output_dir, "merged_funcs.rs")
            merged_code = "pub fn translated() -> i32 {\n    42\n}\n"
            with open(merged_output, "w") as merged_file:
                merged_file.write(merged_code)

            saved_statistics_path = probe.runCrownAnalysisForOutput(
                merged_output,
                "struct-fn-replay",
                crown_root,
            )

            with open(os.path.join(buffer_src_dir, "buffer.rs"), "r") as buffer_file:
                self.assertEqual(buffer_file.read(), merged_code)
            with open(saved_statistics_path, "r") as saved_statistics_file:
                saved_statistics = saved_statistics_file.read()

            self.assertEqual(saved_statistics_path, os.path.join(output_dir, "crown_statistics.json"))
            self.assertIn('"num_unsafe_ptrs": 2', saved_statistics)
            self.assertIn('"num_unsafe_usages": 5', saved_statistics)

    def test_struct_fn_replay_translate_all_runs_performance_check_on_merged_output(self):
        probe = PerformancePipelineProbe()
        func_map = {
            "helper": types.SimpleNamespace(
                dependFunctions=[],
                previouslyTranslatedFunctions="",
                previouslyTranslatedFunctionSignatures="",
                targetLangSignature="",
            )
        }

        with tempfile.TemporaryDirectory() as temp_dir:
            individual_func_path = os.path.join(temp_dir, "individual-funcs_probe")
            os.makedirs(individual_func_path)

            with mock.patch(
                "gpt_translation.translation_pipeline_mixin.find_target_rust_function",
                return_value="helper",
            ):
                with mock.patch(
                    "gpt_translation.translation_pipeline_mixin.fetch_rust_function_signature_with_byte",
                    return_value=("helper", "pub fn helper() -> i32"),
                ):
                    probe.translateAll(func_map, individual_func_path, False)

            output_path = os.path.join(individual_func_path, "merged_funcs.rs")
            relocated_output_path = os.path.join(
                individual_func_path,
                "temp",
                "merged_funcs.rs",
            )
            with open(output_path, "r") as output_file:
                merged_code = output_file.read()

            self.assertIn("pub fn helper() -> i32", merged_code)
            self.assertFalse(os.path.isdir(os.path.join(individual_func_path, "temp")))
            self.assertFalse(os.path.isdir(os.path.join(temp_dir, "Rust")))
            self.assertEqual(probe.loaded_paths, [relocated_output_path])
            self.assertEqual(
                probe.performance_checks,
                [(relocated_output_path, "int main(void) { return 0; }", ["10"])],
            )
            self.assertEqual(probe.crown_analyses, [(output_path, "struct-fn-replay")])
            self.assertEqual(probe.updated_func_maps, [])


class TestPerformanceCppCompilerSelection(unittest.TestCase):
    """The project's bundled clang-14 (under
    ``/home/gabe/typedefextractor-target/bin/``) pulls in libstdc++
    14.2 headers that inline ``std::to_string`` via
    ``__resize_and_overwrite`` — a C++23 library symbol clang-14's
    libstdc++ doesn't carry — producing an ``undefined reference``
    linker error every time the LLM emits ``std::to_string`` in a
    an earlier pass+ regenerated performance.cpp. Switching to system
    ``clang++-19`` resolves that link cleanly. These tests pin the
    selection so a future refactor that resets the constant back to
    plain ``clang++`` regresses loudly."""

    def test_default_compiler_is_clang_19(self):
        # If you genuinely need a different compiler for the perf
        # build, update PerformanceMixin.PERFORMANCE_CPP_COMPILER and
        # this constant — they MUST stay in sync, or the bundled
        # clang-14 will be picked up and an earlier pass+ will hit the
        # ``__resize_and_overwrite`` undefined reference again.
        from gpt_translation.performance_mixin import PerformanceMixin
        self.assertEqual(PerformanceMixin.PERFORMANCE_CPP_COMPILER,
                         "clang++-19")

    def test_compile_command_uses_class_constant(self):
        # Argv[0] of the compile command must come from
        # PERFORMANCE_CPP_COMPILER (not a hard-coded literal in the
        # method body). Tests downstream in this file already cover
        # full command shape; this is a narrow guard for the
        # indirection itself.
        probe = PerformanceProbe()
        with tempfile.TemporaryDirectory() as temp_dir:
            performance_path = os.path.join(temp_dir, "performance.cpp")
            with open(performance_path, "w") as performance_file:
                performance_file.write("int main() { return 0; }\n")

            observed_cmd = []

            def fake_run(cmd, **_kwargs):
                observed_cmd.extend(cmd)
                return subprocess.CompletedProcess(
                    args=cmd, returncode=0, stdout="", stderr="",
                )

            with mock.patch("gpt_translation.performance_mixin.subprocess.run", side_effect=fake_run):
                probe.compilePerformanceBinary(performance_path)

            self.assertEqual(observed_cmd[0], probe.PERFORMANCE_CPP_COMPILER)


class TestInferMissingPerformanceIncludes(unittest.TestCase):
    """``inferMissingPerformanceIncludes`` reads compile stderr and
    returns ``#include`` directives the auto-fix step should splice
    into ``performance.cpp``.

    Background: the LLM regenerates ``performance.cpp`` every stage
    and its include list is unstable — observed loss of
    ``<cstdint>`` between an earlier pass and an earlier pass on the skiplist input.
    Without auto-fix, the pipeline stalls at the interactive manual
    prompt. The rules below cover the high-confidence standard-library
    identifiers the LLM most frequently drops; each test pins one
    rule so a future regex tweak that accidentally narrows a rule's
    catchment surface fails loudly.
    """

    def setUp(self):
        self.probe = PerformanceProbe()
        # Caller code keys off the .cpp suffix to decide whether to
        # even try inference. The path doesn't need to exist on disk.
        self.path = "/tmp/does_not_matter/performance.cpp"

    def _infer(self, stderrText):
        return self.probe.inferMissingPerformanceIncludes(self.path, stderrText)

    def test_rust_path_returns_empty(self):
        # Rust performance files don't go through this code path.
        result = self.probe.inferMissingPerformanceIncludes(
            "/tmp/performance.rs",
            "error: unknown type name 'uint64_t'",
        )
        self.assertEqual(result, [])

    def test_uint64_t_maps_to_cstdint(self):
        # The regression that motivated the rule expansion. The
        # clang diagnostic shape is "unknown type name 'uint64_t'"
        # (an earlier pass run 16-09-37) — same flavour the existing rules
        # already match, so we anchor on the bare identifier.
        out = self._infer("error: unknown type name 'uint64_t'")
        self.assertIn("#include <cstdint>", out)

    def test_int32_t_and_intptr_t_also_map_to_cstdint(self):
        out = self._infer(
            "error: unknown type name 'int32_t'\n"
            "error: use of undeclared identifier 'intptr_t'"
        )
        self.assertEqual(out.count("#include <cstdint>"), 1,
                         "duplicate cstdint includes shouldn't accumulate")

    def test_size_t_maps_to_cstddef(self):
        out = self._infer("error: unknown type name 'size_t'")
        self.assertIn("#include <cstddef>", out)

    def test_FILE_maps_to_cstdio(self):
        # FILE is the canonical "compile fails because cstdio missing"
        # symbol. Picking the type name (not e.g. fopen) keeps the
        # test stable against future libc++ inlining changes.
        out = self._infer("error: unknown type name 'FILE'")
        self.assertIn("#include <cstdio>", out)

    def test_malloc_maps_to_cstdlib(self):
        out = self._infer("error: use of undeclared identifier 'malloc'")
        self.assertIn("#include <cstdlib>", out)

    def test_strlen_maps_to_cstring(self):
        out = self._infer("error: use of undeclared identifier 'strlen'")
        self.assertIn("#include <cstring>", out)

    def test_assert_maps_to_cassert(self):
        out = self._infer("error: use of undeclared identifier 'assert'")
        self.assertIn("#include <cassert>", out)

    def test_log_maps_to_cmath(self):
        out = self._infer("error: use of undeclared identifier 'log'")
        self.assertIn("#include <cmath>", out)

    def test_memset_legacy_rule_still_fires(self):
        # Legacy behaviour: ``memset`` -> ``<string.h>`` (the older
        # spelling). Keep it for byte-identical behaviour with any
        # captured prompt fixtures that already rely on this.
        out = self._infer("error: use of undeclared identifier 'memset'")
        self.assertIn("#include <string.h>", out)

    def test_clock_gettime_legacy_rule_still_fires(self):
        out = self._infer(
            "error: use of undeclared identifier 'CLOCK_MONOTONIC'"
        )
        self.assertIn("#include <time.h>", out)

    def test_unrelated_stderr_yields_no_includes(self):
        # A stderr unrelated to standard-library identifiers must
        # NOT fire any rule. False positives are cheap but visible;
        # this guards against a future regex that accidentally matches
        # the empty string or word fragments inside other tokens.
        out = self._infer(
            "error: expected ';' after struct member\n"
            "error: redefinition of 'foo'\n"
        )
        self.assertEqual(out, [])

    def test_skiplist_stage3_failure_stderr_repairs_cleanly(self):
        # The exact stderr text the validator logged for the
        # 16-09-37 an earlier pass failure. The auto-fix must emit
        # ``<cstdint>`` so the retry loop can succeed without
        # falling through to the interactive prompt.
        actual_stderr = (
            "./inputs-complex/skiplist/individual-funcs_claude-sonnet-4-6_2026-05-26_16-09-37/_legacy_dir/performance.cpp:371:5: "
            "error: unknown type name 'uint64_t'\n"
            "    uint64_t header[4];\n"
            "    ^\n"
            "./inputs-complex/skiplist/individual-funcs_claude-sonnet-4-6_2026-05-26_16-09-37/_legacy_dir/performance.cpp:372:30: "
            "error: use of undeclared identifier 'uint64_t'\n"
            "    if (fread(header, sizeof(uint64_t), 4, fp) != 4) {\n"
        )
        out = self._infer(actual_stderr)
        self.assertIn("#include <cstdint>", out)


if __name__ == "__main__":
    unittest.main()
