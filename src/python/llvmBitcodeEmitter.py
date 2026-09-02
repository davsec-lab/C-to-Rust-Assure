import os
import logging
import sys
import re
import glob
from openai import OpenAI
import subprocess
import traceback
import tiktoken
import shutil

import backend_libc
import argparse
import platform
import os

from datetime import datetime

from loggerFactory import getLogger

# Rust edition; must stay consistent with the frontend compileWithCargoProject's Cargo.toml.
RUST_EDITION = os.environ.get("ASSURE_RUST_EDITION", "2021")

# ── Overflow checks off, to match the C side (2026-09-01) ────────────────
# rustc defaults to overflow-checked arithmetic, so every `a - b` and `a + 1`
# lowers to llvm.usub/uadd.with.overflow. KLEE models those intrinsics by
# zero-extending both operands to 128 bits and operating there, which puts two
# extra ZExt nodes and a widened operator into the Rust symbolic tree while the
# C side has a plain `sub i64`.
#
# distance.py only compares two graphs when their node counts are EQUAL, so
# every argument whose expression contains arithmetic differed in size and was
# never compared at all — recorded as the sentinel 1000, indistinguishable from
# a badly wrong translation. Measured on libcsv: 100 with.overflow calls across
# 9 functions on the Rust side, 0 on the C side; `entry_pos + 1` alone became
# 6 nodes against C's 5.
#
# The clang side has no such instrumentation, so turning this off is what makes
# the two sides comparable. It does change Rust's runtime semantics (a debug
# build would panic on overflow where this wraps) — that is deliberate: the
# bitcode here exists to be compared against C, not to be run.
RUST_OVERFLOW_CHECKS = "-C overflow-checks=off"

# mem2reg on BOTH sides before the Symbolizer sees the bitcode.
#
# clang at -O0 spills every parameter and local into a stack slot and reloads it
# before each use; rustc keeps parameters in SSA. A store to a symbolic address
# (p->buf[p->pos] = 0) can therefore resolve into the C function's *own* stack
# slot holding `p`; the reloaded `p` is then a corrupted symbolic pointer and
# every field written through it ends as an update-list read that no Rust tree
# can match. Measured on libcsv 2026-09-01: csv_fini/*(field_4) and
# csv_parse field_0/1/4 all score 1000 on exactly that path (testcase/stackalias
# is the 3-line reproduction; its mem2reg/ variant scores 0.0).
#
# clang marks -O0 functions `optnone`, which turns mem2reg into a no-op, so the
# attribute is suppressed at compile time. rustc emits no optnone. Promoting
# only non-escaping allocas does not change program semantics on any legal
# input. Opt-in: ASSURE_MEM2REG=1 (measured on libcsv csv_parse+csv_fini 2026-09-02:
# fixes the two stack-slot 1000s but exposes a `!x` polarity shape difference and
# Rust-only callee-body trees, net 13/18 -> 9/18; see runs/mem2reg-parse-fini).
MEM2REG = os.environ.get("ASSURE_MEM2REG", "0") == "1"

def _mem2reg(bcPath, logger):
    r = subprocess.run("opt -passes=mem2reg " + bcPath + " -o " + bcPath, shell=True, text=True,
                       stdout=subprocess.DEVNULL, stderr=subprocess.PIPE)
    if r.returncode != 0:
        logger.warn("mem2reg failed for %s (bitcode left as compiled): %s", bcPath, (r.stderr or "")[-300:])
    return r.returncode == 0

def remove_no_mangle_main(filename):
    with open(filename, 'r') as file:
        lines = file.readlines()

    updated_lines = []
    pattern = re.compile(r'^\s*#\s*\[\s*no_mangle\s*\]\s*fn\s+main\s*\(.*\)\s*\{')

    skip_next = False
    for line in lines:
        if pattern.match(line):
            skip_next = True
            continue

        if skip_next:
            if re.match(r'^\s*\{', line):
                skip_next = False
            continue

        updated_lines.append(line)

    with open(filename, 'w') as file:
        file.writelines(updated_lines)

def remove_specific_line(filename):
    try:
        with open(filename, 'r', encoding='utf-8') as file:
            lines = file.readlines()
        
        new_lines = [line for line in lines if line.strip() != '1];']
        
        with open(filename, 'w', encoding='utf-8') as file:
            file.writelines(new_lines)
    except Exception as e:
        print(f"{e}")

def special_handle(filename):
    base_name = os.path.basename(filename)

    functions_map = {
        "zrand.i": r"""void zrand_fd() {};
void zrand_libc_rand();
void zrand_libc_random();
void zrand_libc_rand48();
""",
        "process_files.i": r"""void app_printf(const char *fmt, ...);
void app_print_cntrl(int cntrl_code);
void app_progress(unsigned long current_step, unsigned long total_steps);
void panic(const char *msg);
""",
        "opng_rangeset2bitset.i": r"""char * opng_strltrim(const char *str);
""",
        "err_option_arg.i": r"""char * opng_strltrim(const char *str);
""",
        "opng_str2ulong.i": r"""char * opng_strltrim(const char *str);
""",
        "opng_write_file.i": r"""struct dummyStruct{
    int field_0;
};
void opng_error(struct dummyStruct * png_ptr, const char * msg);
void opng_warning(struct dummyStruct * png_ptr, const char * msg);
void opng_write_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
void opng_read_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
""",
        "opng_copy_file.i": r"""struct dummyStruct{
    int field_0;
};
void opng_error(struct dummyStruct * png_ptr, const char * msg);
void opng_warning(struct dummyStruct * png_ptr, const char * msg);
void opng_write_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
void opng_read_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
""",
        "opng_read_file.i": r"""struct dummyStruct{
    int field_0;
};
void opng_error(struct dummyStruct * png_ptr, const char * msg);
void opng_warning(struct dummyStruct * png_ptr, const char * msg);
void opng_write_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
void opng_read_data(struct dummyStruct * png_ptr, unsigned char * data, long unsigned int length);
""",
        "parse_args.i": r"""char * opng_strpbrk_digit(const char *str);
"""
    }

    if base_name in functions_map:
        functions_code = functions_map[base_name]

        with open(filename, 'r', encoding='utf-8') as f:
            original_content = f.readlines()

        if not original_content or not original_content[0].strip().startswith(functions_code.split("\n")[0].strip()):
            with open(filename, 'w', encoding='utf-8') as f:
                f.write(functions_code + "\n" + "".join(original_content))

def remove_static_and_inline_from_file(filename):

    with open(filename, 'r', encoding='utf-8', errors='ignore') as f:
        content = f.read()

    pattern = re.compile(r'\b(static|inline)\b')
    new_content = pattern.sub('', content)

    with open(filename, 'w', encoding='utf-8', errors='ignore') as f:
        f.write(new_content)

def remove_main_function(filepath: str) -> None:

    with open(filepath, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    output_lines = []

    in_main_function = False
    brace_count = 0

    pattern_main = re.compile(r'\bfn\s+main\s*\(')

    i = 0
    while i < len(lines):
        line = lines[i]

        if not in_main_function:
            if pattern_main.search(line):

                brace_pos = line.find('{')
                if brace_pos == -1:
                    in_main_function = True
                    brace_count = 0
                else:
                    in_main_function = True
                    brace_count = 1
            else:
                output_lines.append(line)
        else:
            for ch in line:
                if ch == '{':
                    brace_count += 1
                elif ch == '}':
                    brace_count -= 1
            if brace_count <= 0:
                in_main_function = False
                brace_count = 0
        i += 1

    with open(filepath, 'w', encoding='utf-8') as f:
        f.writelines(output_lines)

def remove_no_mangle_lines(filepath: str) -> None:

    with open(filepath, 'r', encoding='utf-8') as f:
        lines = f.readlines()

    filtered_lines = []
    for line in lines:
        if line.strip() == '#[no_mangle]':
            continue
        filtered_lines.append(line)

    with open(filepath, 'w', encoding='utf-8') as f:
        f.writelines(filtered_lines)

def _retryWithLibc(filename, logger):
    """After bare rustc fails, add the `libc` crate + strip name-colliding imports, then compile once more.

    Returns the successful CompletedProcess; returns None if unavailable or still failing (caller keeps the original result).
    The rewritten source is written to rustc_errors/<stem>.libcfix.rs for later inspection, and **does not overwrite the original .rs** --
    the original file is still needed later by process_rust_file.py and safety_report.py.
    **It must not be placed under testcase/Rust/**: that directory is scanned by a `*.rs` glob, and one extra file would be
    treated as a new function (moreover emitLLVMBitcodes uses iglob, so a file added mid-traversal would be picked up directly).
    """
    rlib, deps = backend_libc.ensureLibcRlib(logger)
    if not rlib:
        return None
    try:
        with open(filename, errors="ignore") as f:
            fixed = backend_libc.stripCollidingLibcImports(f.read())
        stem = os.path.basename(filename)[:-3]
        os.makedirs("rustc_errors", exist_ok=True)
        probe = os.path.join("rustc_errors", stem + ".libcfix.rs")
        with open(probe, "w") as f:
            f.write(fixed)
        # --crate-name must be given explicitly: rustc defaults to using the file name as the crate name, and the probe
        # file is named <stem>.libcfix.rs, which contains a dot -> `invalid character '.' in crate name`.
        # Passing <stem> also guarantees the crate name is exactly identical to what the original path would compile to.
        cmd = ("rustc -A dead_code " + RUST_OVERFLOW_CHECKS
               + " --emit=llvm-bc --crate-type=lib --edition=" + RUST_EDITION
               + " --crate-name " + stem
               + " --extern libc=" + rlib + " -L dependency=" + deps
               + " -o " + filename + ".bc " + probe)
        logger.debug("Retrying with libc: %s", cmd)
        r = subprocess.run(cmd, shell=True, text=True,
                           stdout=subprocess.DEVNULL, stderr=subprocess.PIPE)
        if r.returncode == 0:
            logger.info("Compilation succeeded WITH backend libc for %s", filename)
            return r
        # The rescue also failed: keep the rewritten source and this attempt's stderr, otherwise there is no way to tell
        # whether "adding libc did not help" or "the rewrite itself went wrong".
        with open(os.path.join("rustc_errors", stem + ".libcretry.txt"), "w") as f:
            f.write(r.stderr or "")
        return None
    except OSError as e:
        logger.warn("libc retry raised for %s: %s", filename, e)
        return None


def emitLLVMBitcodes(individualFuncPath, logger):
    rustSrcPattern = os.path.join(individualFuncPath, "*.rs")
    cSrcPattern = os.path.join(individualFuncPath, "*.i")
    totalCFiles = 0
    successCFiles = 0
    totalRustFiles = 0
    successRustFiles = 0
    for filename in glob.iglob(rustSrcPattern, recursive=True):
        insert_line = "#![allow(unaligned_references)]\n"
        with open(filename, "r") as file:
            content = file.readlines()

        if not any(insert_line.strip() in line for line in content):
            content.insert(0, insert_line)

            with open(filename, "w") as file:
                file.writelines(content)

        # First, annotate the Rust function with "#[no_mangle]" to prevent it getting removed

        if platform.system() == "Darwin":
            inplace_arg = "-i ''"  # macOS (BSD sed) use -i ''
        else:
            inplace_arg = "-i"     # Linux (GNU sed) use -i

        sed_cmd = (
            f"sed {inplace_arg} "
            f"-e '/^[[:space:]]*unsafe fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub extern \"C\" fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*extern \"C\" fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub unsafe fn /i \\\n#[no_mangle]' "
            f"-e '/^[[:space:]]*pub unsafe extern \"C\" fn /i \\\n#[no_mangle]' "
            f"{filename}"
        )
        subprocess.run(sed_cmd, shell=True, text=True)

        sed_cmd_struct = f"sed {inplace_arg} '/^struct /i \\\n#[repr(C, packed)]' {filename}"
        sed_cmd_pub_struct = f"sed {inplace_arg} '/^pub struct /i \\\n#[repr(C, packed)]' {filename}"
        subprocess.run(sed_cmd_struct, shell=True, text=True)
        subprocess.run(sed_cmd_pub_struct, shell=True, text=True)

        # Compile it and generate the bitcode file
        logger.debug("Compiling Rust file %s ", filename)
        # Check if the file has a fn main() 
        # If not, try to compile as a library (or it complains that there's no main)
        # rustc doesn't seem to have a -c option
        isBinary = False
        # with open(filename) as f:
        #     for line in f:
        #         if "fn main(" in line:
        #             isBinary = True
        #             break
        # if isBinary:
        #     emitBitcodeCmd = "rustc -A dead_code --emit=llvm-bc -o " + filename + ".bc " + filename
        # else:
        # --edition: bare rustc defaults to edition 2015, while the frontend compilation check
        # (compileWithCargoProject) uses edition 2021. The mismatch lets code that passed frontend
        # validation fail to compile in the backend -- the most typical case is `use core::ffi::c_void;`:
        # under 2015, core is not in the extern prelude, reporting
        #   error[E0433]: failed to resolve: maybe a missing crate `core`?
        # libcsv/gpt-5.4-mini measured: edition 2015 gives 3/25, 2018/2021 give 18/25.
        # For the 2024 gpt-4o golden input, all three editions give 27/29, i.e. this change
        # does not affect comparability with the existing baseline.
        emitBitcodeCmd = ("rustc -A dead_code " + RUST_OVERFLOW_CHECKS
                          + " --emit=llvm-bc --crate-type=lib --edition=" + RUST_EDITION
                          + " -o " + filename + ".bc " + filename)
        logger.debug("Running command %s", emitBitcodeCmd)
        # stderr is no longer discarded: for a function that fails to compile, all of its arguments become "Rust Empty!" and
        # score 0 per the §5 iron rule -- this is the failure class with the largest share in the main metric, yet the cause was never recorded.
        # Written to <BE>/rustc_errors/. Attribution was removed (2026-08-25);
        # these files are now one of the raw pieces of evidence the proposer greps directly.
        result = subprocess.run(emitBitcodeCmd, shell=True, text=True,
                                stdout=subprocess.DEVNULL, stderr=subprocess.PIPE)

        # ── Only on failure, retry once with libc added (DESIGN.md §5.2, backend_libc.py) ────────
        # Order matters: **compile as-is first**, so for functions that compile today the command and artifacts stay
        # byte-for-byte identical and the golden baseline does not move. Only already-failing ones take the rescue path -- strictly monotonic.
        if result.returncode != 0:
            fallback = _retryWithLibc(filename, logger)
            if fallback is not None:
                result = fallback

        if result.returncode != 0 and result.stderr:
            errDir = "rustc_errors"
            os.makedirs(errDir, exist_ok=True)
            stem = os.path.basename(filename)[:-3] if filename.endswith(".rs") else os.path.basename(filename)
            with open(os.path.join(errDir, stem + ".txt"), "w") as ef:
                ef.write(result.stderr)
        if result.returncode == 0 and MEM2REG:
            _mem2reg(filename + ".bc", logger)
        # Disassemble it (let's generate both to avoid any errors in bc -> ll conversion)

        disassemble_cmd = "llvm-dis " + filename + ".bc"
        subprocess.run(disassemble_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        totalRustFiles = totalRustFiles + 1
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            successRustFiles = successRustFiles + 1
            logger.info ("Compilation succeeded for %s", filename)
    for filename in glob.iglob(cSrcPattern, recursive=True):
        
        logger.debug("Compiling C file %s ", filename)

        remove_static_and_inline_from_file(filename)
        remove_specific_line(filename)
        special_handle(filename)
        emitBitcodeCmd = ("clang -c -femit-all-decls -emit-llvm"
                          + (" -Xclang -disable-O0-optnone" if MEM2REG else "")
                          + " -o " + filename + ".bc " + filename)
        logger.debug("Running command %s", emitBitcodeCmd)

        result = subprocess.run(emitBitcodeCmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)
        if result.returncode == 0 and MEM2REG:
            _mem2reg(filename + ".bc", logger)

        disassemble_cmd = "llvm-dis " + filename + ".bc"
        subprocess.run(disassemble_cmd, shell=True, text=True, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

        totalCFiles = totalCFiles + 1
        if (result.returncode != 0):
            logger.warn ("Compilation failed for %s", filename)
        else:
            successCFiles = successCFiles + 1
            logger.info ("Compilation succeeded for %s", filename)

    logger.info("Out of %d total Rust files %d compiled", totalRustFiles, successRustFiles)
    logger.info("Out of %d total C files %d compiled", totalCFiles, successCFiles)

if __name__ == "__main__":
    logger = getLogger("test_llvm_bitcode_emitter_logger.log")
    parser = argparse.ArgumentParser(description="Emit LLVM Bitcodes with logging.")
    parser.add_argument("input_path", type=str, help="Path to the input directory or file.")

    args = parser.parse_args()
    input_path = args.input_path

    emitLLVMBitcodes(input_path, logger)
