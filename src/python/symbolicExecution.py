import os
import json
import shutil
import signal
import subprocess
import time
from llvmBitcodeEmitter import*
import logging
from fetchTargetFunction import*
from concurrent.futures import ThreadPoolExecutor, as_completed

MAX_JOBS = 8
START_TIME = time.time()

# KLEE time limits. Defaults match RustAssure's original hardcoded values
# (C 7200s / Rust 10800s) — do not touch them when producing official data.
# For dev iteration they can be lowered via environment variables, e.g.:
#     ASSURE_KLEE_MAX_TIME_C=600 ASSURE_KLEE_MAX_TIME_RUST=600
# Complex functions (e.g. csv_parse / csv_write2) hit state-space explosion and
# inevitably run to the limit, and stages are serial barriers, so two slow
# functions block the whole C stage.
KLEE_MAX_TIME_C = int(os.environ.get("ASSURE_KLEE_MAX_TIME_C", "7200"))
KLEE_MAX_TIME_RUST = int(os.environ.get("ASSURE_KLEE_MAX_TIME_RUST", "10800"))
# Leave headroom in the outer subprocess timeout, keeping the original ratios (+600s / +200s)
KLEE_TIMEOUT_C = KLEE_MAX_TIME_C + 600
KLEE_TIMEOUT_RUST = KLEE_MAX_TIME_RUST + 200
# Extra flags appended to every klee invocation (both sides).
# Default since 2026-09-08: --single-object-resolution. A store through
# `base + symbolic offset` then resolves to the object the base came from
# instead of forking one state per feasible object; those forks produced
# aliased-write trees on both sides that never matched. Needs the rustify-klee
# build at fae6e1b7 or later, where the mapping survives pointer arithmetic.
# Set ASSURE_KLEE_EXTRA_FLAGS="" to get the previous command line back.
KLEE_EXTRA_FLAGS = os.environ.get("ASSURE_KLEE_EXTRA_FLAGS", "--single-object-resolution").strip()
# Path of the Symbolizer pass plugin (relative to the perform_general_execution_* dir).
# Overridable so an alternative build (e.g. the unpatched pass) can be A/B tested
# without swapping files under src/Symbolizer/build/.
SYMBOLIZER_SO = os.environ.get("ASSURE_SYMBOLIZER_SO", "../build/Pass/SymbolizerPass.so")

# convertGraph.py renders every .dot into a .png with graphviz. Nothing in the scoring
# path reads those images -- distance.py parses the .dot files -- and on the cjson corpus
# the render alone costs ~23 minutes per run. Skipped by default since 2026-09-20;
# set ASSURE_RENDER_PNG=1 to get the images back.
RENDER_PNG = os.environ.get("ASSURE_RENDER_PNG", "0") == "1"

# ASSURE_REUSE_C=<previous perform_general_execution_* dir>: skip the whole C stage and
# copy its artifacts from that run instead. Only sound when the change under test cannot
# affect the C side (e.g. the 2026-09-20 pass fixes resolve Rust type names from
# struct_map.json and treat Rust's NonNull::dangling() like NULL; C's struct_map_c.json
# never matches and its pointers are alloca'd objects above page 0). The C artifacts are
# copied verbatim, so the C column of edit_distance is bit-for-bit the previous run's.
REUSE_C = os.environ.get("ASSURE_REUSE_C", "").strip()

logger = logging.getLogger("my_logger")
logger.setLevel(logging.DEBUG)

error_handler = logging.FileHandler("symbol_execution_error.log")
error_handler.setLevel(logging.ERROR)

info_handler = logging.FileHandler("app.log")
info_handler.setLevel(logging.INFO)

formatter = logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")
error_handler.setFormatter(formatter)
info_handler.setFormatter(formatter)

logger.addHandler(error_handler)
logger.addHandler(info_handler)

def str_to_bool(s: str) -> bool:
    s = s.strip().lower()
    if s == "true":
        return True
    if s == "false":
        return False

def run_command_and_log(cmd, log_file, cwd=None, timeout=3600):
    """
    Run a shell command and write both stdout and stderr to a log file.

    On timeout the **whole process group** must be killed (DESIGN.md §14 T14):
    under shell=True, subprocess.run(timeout=...) only kills the `sh -c`
    wrapper, and KLEE itself becomes a PPID=1 orphan still running at full
    load — the first cjson run measured 9 orphans burning 3.5 hours of CPU.
    start_new_session makes sh the process-group leader, so killpg uproots
    everything after the timeout.
    """
    print(f"[INFO] Running command: {cmd}")

    with open(log_file, "w") as log:
        process = subprocess.Popen(
            cmd,
            shell=True,
            cwd=cwd,
            stdout=log,
            stderr=log,
            text=True,
            start_new_session=True,
        )
        try:
            process.wait(timeout=timeout)
        except subprocess.TimeoutExpired:
            print(f"[ERROR] Command timed out after {timeout} seconds: {cmd}")
            logger.info(f"[ERROR] Command timed out after {timeout} seconds: {cmd}")
            try:
                os.killpg(os.getpgid(process.pid), signal.SIGKILL)
            except (ProcessLookupError, PermissionError):
                pass
            process.wait()
            return

    if process.returncode != 0:
        msg = f"Command failed: {cmd}\n"
        print(f"[ERROR] command fail: {cmd}")
        logger.info(f"[ERROR] command fail: {cmd}")
        raise subprocess.CalledProcessError(process.returncode, cmd, output=msg)

    print(f"[INFO] command success: {cmd}")

def run_command(cmd, cwd=None):

    print(f"[INFO] Running command: {cmd}")
    safe_cmd = re.sub(r"[^\w.-]", "_", cmd)
    # 2026-09-06: the log name is the whole command line; a long absolute path
    # (e.g. an ASSURE_SYMBOLIZER_SO override) pushed it past NAME_MAX and
    # open() raised ENAMETOOLONG, silently killing every symbolisation step.
    # Keep short names verbatim (existing logs stay findable), hash the rest.
    if len(safe_cmd) > 200:
        import hashlib
        safe_cmd = safe_cmd[:160] + "__" + hashlib.md5(safe_cmd.encode()).hexdigest()[:12]
    log_file = f"all_logs/{safe_cmd}.log"

    with open(log_file, "w") as log:
        process = subprocess.run(cmd, shell=True, cwd=cwd, stdout=log, stderr=log, text=True)

    if process.returncode != 0:
        msg = (
            f"Command failed: {cmd}\n"
        )
        print(f"[ERROR] command fail: {cmd}")
        logger.info(f"[ERROR] command fail: {cmd}")
        raise subprocess.CalledProcessError(process.returncode, cmd, output=msg)
    print(f"[INFO] command success: {cmd}")
    

def prepare_directory(dir_path, keep_c=False):
    """
    Replicates the logic of clearing or creating directories
    and removing process_log.log if present.
    """
    if os.path.exists(dir_path):
        if keep_c and os.path.isdir(os.path.join(dir_path, "C")):
            shutil.rmtree(os.path.join(dir_path, "Rust"), ignore_errors=True)
        else:
            shutil.rmtree(dir_path)
    os.makedirs(os.path.join(dir_path, "C"), exist_ok=True)
    os.makedirs(os.path.join(dir_path, "Rust"), exist_ok=True)

    if os.path.exists("process_log.log"):
        os.remove("process_log.log")
    
    if os.path.exists("all_logs"):
        shutil.rmtree("all_logs")
    os.makedirs("all_logs")

def manage_dot_files(dir_path):
    """
    Removes .dot files in each subdirectory if there are more
    than 20 .dot files. Only keep the 20 newest after sorting.
    """
    max_files = 20
    for root, _, files in os.walk(dir_path):
        dot_files = [os.path.join(root, f) for f in files if f.endswith(".dot")]
        if len(dot_files) > max_files:
            dot_files.sort()
            delete_count = len(dot_files) - max_files
            for file_to_delete in dot_files[:delete_count]:
                print(f"[INFO] Deleting: {file_to_delete}")
                os.remove(file_to_delete)

def parse_klee_output(input_file_path, output_file_path):
    with open(input_file_path, "r", encoding="utf-8") as f:
        lines = f.readlines()

    capturing = False
    output_lines = []

    for line in lines:
        if "SYM VALUE:" in line:
            capturing = True

        if capturing:
            output_lines.append(line)
            if not line.strip():
                capturing = False

    with open(output_file_path, "w", encoding="utf-8") as out:
        out.writelines(output_lines)


def process_c_file(bc_file):
    """
    Process one C .bc file:
      1) Run opt with SymbolizerPass
      2) Run klee
      3) Run KqueryConverter
    """
    base_name = os.path.basename(bc_file).replace(".i.bc", "")
    input_path = os.path.basename(bc_file).replace(".bc", "")

    src = open(f"testcase/C/{input_path}", 'rb').read()
    target_function_name = find_target_c_function(src, base_name)

    # 1) opt pass

    # link core
    link_core = (
        f"llvm-link {bc_file} ../scripts/libc_merged.ll "
        f"-S -o klee_ir_files/C/{base_name}.ll"
    )
    run_command(link_core)

    cmd_opt = (
        f"opt -load-pass-plugin {SYMBOLIZER_SO} "
        f"-O0 klee_ir_files/C/{base_name}.ll -S -o klee_ir_files/C/{base_name}_klee.ll"
    )

    run_command(cmd_opt)

    cmd_opt2 = (
        f"opt -S -internalize -internalize-public-api-list=main -globaldce "
        f"klee_ir_files/C/{base_name}_klee.ll -o klee_ir_files/C/{base_name}_klee.ll"
    )
    run_command(cmd_opt2)


    # 2) klee. We capture the entire output.
    cmd_klee = (
        f"klee --libc=klee --write-no-tests=true --max-time={KLEE_MAX_TIME_C} --max-tests=5000000 "
        f"--target-function-name={target_function_name} {KLEE_EXTRA_FLAGS} klee_ir_files/C/{base_name}_klee.ll"
    )

    try:
        run_command_and_log(cmd_klee, f"klee_symbol_log/C/{base_name}_klee_log.txt", timeout=KLEE_TIMEOUT_C)
    except Exception as e:
        logger.info(f"[ERROR] klee fail: {base_name}")

    # # Extract SYM VALUE block
    # parse_klee_output(f"klee_symbol_log/C/{base_name}_original_log.txt", f"klee_symbol_log/C/{base_name}_klee_log.txt")


    # fetch offset.json
    offset_file = f"{base_name}_offset.json"
    src_path = os.path.join(os.getcwd(), offset_file)
    dst_dir = os.path.join("klee_symbol_log", "C")

    if os.path.exists(src_path):
        dst_path = os.path.join(dst_dir, offset_file)
        shutil.move(src_path, dst_path)

    # 3) Run KqueryConverter (into graph_output/C)
    graph_output_dir = "graph_output/C"
    converter_cmd = (
        f"python3 ../../../../python/kquery-parser/KqueryConverter.py "
        f"../../../klee_symbol_log/C/{base_name}_klee_log.txt {base_name} ../../../klee_symbol_log/C/{base_name}_offset.json"
    )
    run_command(converter_cmd, cwd=graph_output_dir)

def process_rust_file(bc_file):
    """
    Process one Rust .bc file:
      1) Run opt with SymbolizerPass
      2) Run second opt pass (internalize, globaldce)
      3) Run klee
      4) Run KqueryConverter
    """
    base_name = os.path.basename(bc_file).replace(".rs.bc", "")
    input_path = os.path.basename(bc_file).replace(".bc", "")

    src = open(f"testcase/Rust/{input_path}", 'rb').read()
    target_function_name = find_target_rust_function(src, base_name)

    # demangle
    demangle_opt = (
        f"opt -load-pass-plugin ../build/DemanglePass/DemanglePass.so "
        f"-O0 {bc_file} -S -o klee_ir_files/Rust/{base_name}.ll"
    )
    run_command(demangle_opt)

    # link core
    link_core = (
        f"llvm-link klee_ir_files/Rust/{base_name}.ll ../scripts/core_demangle.ll "
        f"-S -o klee_ir_files/Rust/{base_name}.ll"
    )
    run_command(link_core)

    # link alloc
    link_alloc = (
        f"llvm-link klee_ir_files/Rust/{base_name}.ll ../scripts/alloc_demangle.ll "
        f"-S -o klee_ir_files/Rust/{base_name}.ll"
    )

    run_command(link_alloc)

    # symbolize
    cmd_opt1 = (
        f"opt -load {SYMBOLIZER_SO} -load-pass-plugin {SYMBOLIZER_SO} "
        f"-O0 -isRust=true klee_ir_files/Rust/{base_name}.ll -S -o klee_ir_files/Rust/{base_name}_klee.ll"
    )
    run_command(cmd_opt1)

    # remove unuse function
    # 2) opt pass (internalize + globaldce)
    cmd_opt2 = (
        f"opt -S -internalize -internalize-public-api-list=main -globaldce "
        f"klee_ir_files/Rust/{base_name}_klee.ll -o klee_ir_files/Rust/{base_name}_klee.ll"
    )
    run_command(cmd_opt2)

    # 3) klee
    cmd_klee = (
        f"klee --libc=klee --write-no-tests=true --max-time={KLEE_MAX_TIME_RUST} --max-tests=500000 "
        f"--target-function-name={target_function_name} {KLEE_EXTRA_FLAGS} klee_ir_files/Rust/{base_name}_klee.ll"
    )

    try:
        run_command_and_log(cmd_klee, f"klee_symbol_log/Rust/{base_name}_klee_log.txt", timeout=KLEE_TIMEOUT_RUST)
    except Exception as e:
        logger.info(f"[ERROR] klee fail: {base_name}")

    # Extract SYM VALUE block
    # parse_klee_output(f"klee_symbol_log/Rust/{base_name}_original_log.txt", f"klee_symbol_log/Rust/{base_name}_klee_log.txt")

    # fetch offset.json
    offset_file = f"{base_name}_offset.json"
    src_path = os.path.join(os.getcwd(), offset_file)
    dst_dir = os.path.join("klee_symbol_log", "Rust")

    if os.path.exists(src_path):
        dst_path = os.path.join(dst_dir, offset_file)
        shutil.move(src_path, dst_path)


    # 4) Run KqueryConverter
    graph_output_dir = "graph_output/Rust"
    converter_cmd = (
        f"python3 ../../../../python/kquery-parser/KqueryConverter.py "
        f"../../../klee_symbol_log/Rust/{base_name}_klee_log.txt {base_name} ../../../klee_symbol_log/Rust/{base_name}_offset.json"
    )
    run_command(converter_cmd, cwd=graph_output_dir)

    print(f"[INFO] Rust file processed successfully: {bc_file}")

def create_argument_map(create_map_by_llm, model):
    """Produce ./argument_order_map.json — the C argument position → Rust argument position mapping.

    As of 2026-08-25 there are **only two sources**; the preset tables
    (scripts/map/<model>/) have been deleted:

      1. ASSURE_ARGMAP_FIXTURE points at a frozen map  → copied verbatim.
         For golden regression only. Golden inputs are fixed, so the map must
         be fixed too; otherwise each run's LLM may give a different mapping
         and the gate would flash red at random.
      2. Otherwise generate on the spot: createArgumentMap.py (signature
         extraction) → generateCToRustArgumentMap.py (LLM pairing)

    **On failure always leave an empty map; never fall back to another
    codebase's mapping.** The old code copied scripts/map/2/ here, which is
    full of optipng function names — never a hit for libcsv/cjson, meaning
    this mechanism had never actually taken effect (field_map lookups always
    missed). An empty map is at least honest: pairing falls back to pure
    string matching, and the log says so plainly.
    """
    out = "./argument_order_map.json"

    fixture = os.environ.get("ASSURE_ARGMAP_FIXTURE")
    if fixture:
        if os.path.isfile(fixture):
            shutil.copy2(fixture, out)
            logger.info("[argmap] using frozen fixture: %s", fixture)
            print(f"[argmap] using frozen fixture: {fixture}")
            return
        logger.error("[argmap] ASSURE_ARGMAP_FIXTURE points to a missing file: %s", fixture)
        print(f"[argmap] FAIL fixture missing: {fixture}")

    if not create_map_by_llm:
        # Explicitly disabled (for debugging). Leave an empty map; copy no preset mapping.
        with open(out, "w") as f:
            json.dump({}, f)
        logger.info("[argmap] create_map_by_llm=false, writing empty map")
        print("[argmap] create_map_by_llm=false, empty map written (pairing uses pure string matching)")
        return

    # 1.2) Extract source and IR signatures on both C/Rust sides → function_map.json
    ok = True
    try:
        run_command("python3 ../../python/createArgumentMap.py ./testcase")
    except Exception as e:
        ok = False
        logger.error("createArgumentMap error: %s", e, exc_info=True)
        print(f"[argmap] FAIL createArgumentMap: {e}")

    # 1.3) Ask the LLM per function for the C→Rust argument-position mapping → argument_order_map.json
    if ok:
        try:
            run_command("python3 ../../python/generateCToRustArgumentMap.py ./function_map.json")
        except Exception as e:
            ok = False
            logger.error("generate c2rust argument map error: %s", e, exc_info=True)
            print(f"[argmap] FAIL generateCToRustArgumentMap: {e}")

    if not (ok and os.path.isfile(out)):
        with open(out, "w") as f:
            json.dump({}, f)
        logger.error("[argmap] generation failed; writing empty map (no fallback to canned maps)")
        print("[argmap] WARN generation failed -> empty map; pairing falls back to pure string matching")
        return

    try:
        with open(out) as f:
            n = len(json.load(f))
        logger.info("[argmap] generated for %d function(s)", n)
        print(f"[argmap] generated for {n} function(s)")
    except Exception as e:
        logger.error("[argmap] output is not valid JSON: %s", e)
        with open(out, "w") as f:
            json.dump({}, f)
        print("[argmap] WARN output is not valid JSON -> empty map")

def main():

    model = sys.argv[1]
    create_map_by_llm = sys.argv[2].lower() == "true"

    # Clean up old logs if present
    if os.path.exists("compare_graph_output_log.log"):
        os.remove("compare_graph_output_log.log")

    if os.path.exists("input.json"):
        os.remove("input.json")
    
    # Prepare directories
    prepare_directory("klee_ir_files", keep_c=bool(REUSE_C))
    prepare_directory("klee_symbol_log", keep_c=bool(REUSE_C))
    prepare_directory("klee_symbol_error_log")
    prepare_directory("graph_output", keep_c=bool(REUSE_C))


    # 1) Emitting LLVM bitcode for C
    if REUSE_C:
        src = os.path.abspath(REUSE_C)
        print(f"[reuse-c] copying C artifacts from {src}")
        for rel in ("testcase/C", "klee_symbol_log/C", "klee_ir_files/C", "graph_output/C"):
            d = os.path.join(src, rel)
            if os.path.isdir(d):
                if os.path.isdir(rel):
                    shutil.rmtree(rel)
                shutil.copytree(d, rel)
        for f in ("struct_map_c.json", "fn_type_map_c.json", "c_klee_terminate_results.csv"):
            if os.path.isfile(os.path.join(src, f)):
                shutil.copy2(os.path.join(src, f), f)
        print(f"[reuse-c] C .bc={len(glob.glob('testcase/C/*.bc'))} graphs={len(os.listdir('graph_output/C')) if os.path.isdir('graph_output/C') else 0}")
    else:
        try:
            run_command("python3 ../../python/llvmBitcodeEmitter.py testcase/C")
        except Exception as e:
            logger.error("compile C error: %s", e, exc_info=True)

    # 1.1) Emitting LLVM bitcode for Rust
    try:
        run_command("python3 ../../python/llvmBitcodeEmitter.py testcase/Rust")
    except Exception as e:
        logger.error("compile rust error: %s", e, exc_info=True)

    create_argument_map(create_map_by_llm, model)

    # 1.5) create C map
    if not REUSE_C:
        try:
            run_command("python3 ../../python/process_c_file.py testcase/C")
        except Exception as e:
            logger.error("process rust error: %s", e, exc_info=True)

    # 2) Process each C .bc file in parallel
    c_bc_files = [] if REUSE_C else glob.glob("testcase/C/*.bc")
    with ThreadPoolExecutor(max_workers=MAX_JOBS) as executor:
        future_to_file = {executor.submit(process_c_file, f): f for f in c_bc_files}

        for future in as_completed(future_to_file):
            f = future_to_file[future]
            try:
                future.result()
            except Exception as e:
                logger.error(f"C symbolic {f} failed", exc_info=True)

    # Deduplicate + convertGraph for C
    if not REUSE_C:
        try:
            run_command("python3 ../scripts/deduplicate.py C")
        except Exception as e:
            logger.error("deduplicate C outputs error: %s", e, exc_info=True)

        if RENDER_PNG:
            try:
                run_command("python3 ../scripts/convertGraph.py C")
            except Exception as e:
                logger.error("convertGraph C outputs error: %s", e, exc_info=True)

    # 3.5) create Rust map
    try:
        run_command("python3 ../../python/process_rust_file.py testcase/Rust")
    except Exception as e:
        logger.error("process rust error: %s", e, exc_info=True)

    # 4) Process each Rust .bc file in parallel
    r_bc_files = glob.glob("testcase/Rust/*.bc")
    with ThreadPoolExecutor(max_workers=MAX_JOBS) as executor:
        future_to_file = {executor.submit(process_rust_file, f): f for f in r_bc_files}

        for future in as_completed(future_to_file):
            f = future_to_file[future]
            try:
                future.result()
            except Exception as e:
                logger.error(f"Rust symbolic {f} failed", exc_info=True)

    # Deduplicate + convertGraph for Rust
    try:
        run_command("python3 ../scripts/deduplicate.py Rust")
    except Exception as e:
        logger.error("deduplicate rust error: %s", e, exc_info=True)

    if RENDER_PNG:
        try:
            run_command("python3 ../scripts/convertGraph.py Rust")
        except Exception as e:
            logger.error("convertGraph rust error: %s", e, exc_info=True)


    # Run distance.py
    try:
        run_command(f"python3 ../../python/distance.py {model}")
    except Exception as e:
        logger.error("distance error: %s", e, exc_info=True)

    # Calculate total elapsed time
    end_time = time.time()
    elapsed_time = end_time - START_TIME
    elapsed_minutes = int(elapsed_time // 60)

    # Write results
    with open("execution_time.txt", "w", encoding="utf-8") as f:
        f.write(f"{elapsed_minutes}m\n")

    print(f"[INFO] Script execution time: {elapsed_time:.2f} seconds")
    print(f"[INFO] Script execution time: {elapsed_minutes}m")

if __name__ == "__main__":
    main()
