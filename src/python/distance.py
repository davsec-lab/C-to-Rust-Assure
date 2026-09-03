import networkx as nx
import os
import subprocess
import logging
import csv
import glob
import sys
import re
from pathlib import Path
import json
from functools import partial

current_dir = os.path.dirname(os.path.abspath(__file__))

field_map = {}

# 2026-08-25 removed `function_list`.
#
# It was originally a hard-coded whitelist of 22 function names, all from optipng / u8c,
# and upstream itself left a `# todo : delete this` comment (which even trails off mid-sentence).
# Its role was to add a second gate to the argument-index remapping below:
#     if function_name in field_map and function_name in function_list:
# For libcsv / cjson it is always False -- **the entire argument remapping mechanism never took effect**.
#
# Now argument_order_map.json is generated on the fly each round by createArgumentMap.py + LLM
# (see symbolicExecution.py:create_argument_map); the keys are this round's real function names,
# so "whether it is in the map" is itself the only correct criterion, and the whitelist is purely redundant and harmful.

special_handle_list = {
    "csv_parse/ret_value_1" : "0",
    "u8strlen/ret_value_2" : "0",
    "u8codepoint/ret_value_3" : "0",
    "u8strncat/ret_value_3" : "0",
    "u8strlen/ret_value_1" : "0",
    "csv_write/arg_value_0_1" : "10000"
}

def check_special_handle_list(c_key):
    if c_key in special_handle_list:
        return special_handle_list[c_key]
    return None

def replace_arg_index(expr: str, new_idx: str) -> str:
    return re.sub(r'arg_value_\d+\b', f'arg_value_{new_idx}', expr)

def first_token(v):
    s = str(v)
    return s.split(',', 1)[0] if ',' in s else s

def extract_single_index(expr: str):
    m = re.search(r'arg_value_(\d+)', expr)
    return int(m.group(1)) if m else None

class SingletonLogger:
    _instance = None

    def __new__(cls):
        if cls._instance is None:
            cls._instance = super(SingletonLogger, cls).__new__(cls)
            cls._instance._initialize_logger()
        return cls._instance

    def _initialize_logger(self):
        # Configure the logger only once
        self.logger = logging.getLogger("SingletonLogger")
        self.logger.setLevel(logging.INFO)
        
        # Create handler and formatter if they don't already exist
        if not self.logger.hasHandlers():
            handler = logging.FileHandler('compare_graph_output_log.log')  # Log to file
            formatter = logging.Formatter('%(asctime)s - %(levelname)s - %(message)s')
            handler.setFormatter(formatter)
            self.logger.addHandler(handler)

    def info(self, message, *args):
        self.logger.info(message, *args)

    def error(self, message, *args):
        self.logger.error(message, *args)

def print_graph_nodes(graph, graph_name):
    print(f"Nodes and attributes in {graph_name}:")
    for node, attributes in graph.nodes(data=True):
        print(f"Node: {node}, Attributes: {attributes}")

def sanitize(self, functionName):
    cmd = "rustfilt %s" % functionName
    result = subprocess.run(cmd, shell=True, text=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    functionNameSanitized = result.stdout.split("::")[1]
    self.logger.debug("Sanitized function %s to %s", functionName, functionNameSanitized)
    return functionNameSanitized

def matchNodes(node1,
               node2,
               function_name,
               c_is_target,
               c_directory_name,
               rust_directory_name,
               only_consider_struct):
    if only_consider_struct:
        return True
    label1 = node1.get('label')
    label2 = node2.get('label')

    if label1 == label2:
        return True
    else:
        if process_argument_name(function_name, c_is_target, c_directory_name, rust_directory_name, label1, label2):
            return True
        if label1 in ["0", "false"] and label2 in ["0", "false"]:
            return True
        if label1 in ["1", "true"] and label2 in ["1", "true"]:
            return True
        if label1 in ["ReadLSB", "Read"] and label2 in ["ReadLSB", "Read"]:
            return True
        if label1 in ["AShr", "LShr"] and label2 in ["AShr", "LShr"]:
            return True
        if function_name.startswith("csv_strerror"):
            if label1 in ["8", "16"] and label2 in ["8", "16"]:
                return True
        if function_name in field_map:
            return special_handle_map(c_is_target, function_name, label1, label2)
        return False

def process_argument_name(function_name, c_is_target, c_directory_name, rust_directory_name, label1, label2):
    def normalize(s: str) -> str:
        if s.startswith("*(") and s.endswith(")"):
            return s[2:-1]
        return s

    _PATTERN = re.compile(r"^arg_value_\d+(?:\.field_\d+)*$")
    if not (bool(_PATTERN.fullmatch(label1)) and bool(_PATTERN.fullmatch(label2))):
        return False

    prefix = function_name + "/"
    if c_directory_name.startswith(prefix) and rust_directory_name.startswith(prefix):
        c_argument_name = c_directory_name[len(prefix):]
        rust_argument_name = rust_directory_name[len(prefix):]

        normalize_c_argument = normalize(c_argument_name)
        normalize_rust_argument = normalize(rust_argument_name)
        if c_is_target:
            if label1 == normalize_c_argument and label2 == normalize_rust_argument:
                return True
        else:
            if label1 == normalize_rust_argument and label2 == normalize_c_argument:
                return True
    else:
        return False

def special_handle_map(c_is_target, function_name, label1, label2):
    target_field_map = field_map[function_name]
    # if not (label1.startswith("arg_value_") and label2.startswith("arg_value_")):
    #     return False

    # TODO : match field
    _PATTERN = re.compile(r"^arg_value_\d+$")
    if not (bool(_PATTERN.fullmatch(label1)) and bool(_PATTERN.fullmatch(label2))):
        return False

    label1_index = label1[-1]
    label2_index = label2[-1]

    if c_is_target:
        if label1_index in target_field_map:
            current_field = first_token(target_field_map[label1_index])
            if label2_index == current_field:
                return True
            else:
                return False
    else:
        if label2_index in target_field_map:
            current_field = first_token(target_field_map[label2_index])
            if label1_index == current_field:
                return True
            else:
                return False
    return False

def traverse_two_levels_rust():
    path_to_file_dict = {}
    base_dir = 'graph_output/Rust'
    for root, dirs, files in os.walk(base_dir):
        rel_path = os.path.relpath(root, base_dir)
        
        if len(rel_path.split(os.sep)) == 2:
            dot_files = [file_name for file_name in files if file_name.endswith('.dot') or file_name.endswith('.txt')]
            if dot_files:
                path_to_file_dict[rel_path] = dot_files

    return path_to_file_dict

def traverse_two_levels_c():
    path_to_file_dict = {}
    base_dir = 'graph_output/C'
    for root, dirs, files in os.walk(base_dir):
        rel_path = os.path.relpath(root, base_dir)
        
        if len(rel_path.split(os.sep)) == 2:

            dot_files = [file_name for file_name in files if file_name.endswith('.dot') or file_name.endswith('.txt')]
            if dot_files:
                path_to_file_dict[rel_path] = dot_files

    return path_to_file_dict

def compare_graph_optimize_edit_distance(G1,
                                         G2,
                                         function_name,
                                         c_is_target,
                                         c_directory_name,
                                         rust_directory_name,
                                         only_consider_struct,
                                         max_iterations = 1):
    logger = SingletonLogger()
    logger.info("Graph1: number of nodes: %f, edges: %f", len(G1), len(G1.edges()))
    logger.info("Graph2: number of nodes: %f, edges: %f", len(G2), len(G2.edges()))
    print("Graph1: number of nodes:", len(G1), ", edges:", len(G1.edges()))
    print("Graph2: number of nodes:", len(G2), ", edges:", len(G2.edges()))
    matcher = partial(matchNodes,
                      function_name=function_name,
                      c_is_target=c_is_target,
                      c_directory_name=c_directory_name,
                      rust_directory_name=rust_directory_name,
                      only_consider_struct=only_consider_struct)
    # optimize_graph_edit_distance yields successive upper bounds and the loop
    # below keeps only the first one, which is the cost of the first complete
    # edit path the search happens to find. That path follows node numbering,
    # so two byte-identical dot files score 0 while two isomorphic trees whose
    # ids differ (e.g. after canonicalize_graph rewrote one side) can score 16
    # or 30. Isomorphism is exact and cheap on trees of this size, so settle
    # the equal case before falling back to the approximation.
    if len(G1) == len(G2) and nx.is_isomorphic(G1, G2, node_match=matcher):
        print("ged = 0.0 (isomorphic)")
        return 0.0
    ged_generator = nx.optimize_graph_edit_distance(G1, G2, node_match=matcher)  #
    ged = 0
    count = 0
    for g in ged_generator:
        print("ged = %f" % g)
        ged = g

        count += 1
        if count >= max_iterations:
            break
    return ged

def _kids(G, n):
    """Successors in operand order. KqueryGrapher numbers nodes with one global
    counter and creates an operator node before visiting its operands, so for
    Select/Eq/... the operand order is the node-id order."""
    return sorted(G.successors(n), key=lambda x: int(x))


def _is_not(G, n):
    """KLEE has no Not: `!c` prints as `(Eq false c)`. Return the negated child, or None."""
    if G.nodes[n].get("label") != "Eq":
        return None
    k = _kids(G, n)
    if len(k) != 2:
        return None
    if G.nodes[k[0]].get("label") == "false":
        return k[1]
    if G.nodes[k[1]].get("label") == "false":
        return k[0]
    return None


def canonicalize_graph(G):
    """Semantics-preserving rewrites so that equivalent expressions get the same
    shape on both sides. Today's comparator only compares trees of equal node
    count and ignores operand order, so a two-node difference in how a boolean
    is spelled is enough to make an argument score 1000 without any comparison.

    Measured on libcsv csv_fini (mem2reg run, 2026-09-02): C's `if (!quoted)`
    lowers to `icmp ne` + inverted branch and KLEE prints the Select condition as
    `(Eq false (Eq 0 quoted))`; the Rust `if quoted == 0` gives `(Eq 0 quoted)`
    with the arms swapped. 31 nodes vs 29, never compared, field_3 and
    arg_value_3 both 1000.

    Rules (applied to fixpoint):
      1. Select(Not c, a, b)  ->  Select(c, b, a)
      2. Not(Not x)           ->  x
    The arm swap in rule 1 is bookkept by renumbering the two arm subtrees so
    the operand-order invariant (cond < true < false by id) still holds.
    """
    changed = True
    while changed:
        changed = False
        for n in list(G.nodes):
            if n not in G:
                continue
            lbl = G.nodes[n].get("label")
            # rule 2: Eq false (Eq false x) -> x, spliced into every parent
            if lbl == "Eq":
                inner = _is_not(G, n)
                if inner is not None and _is_not(G, inner) is not None:
                    x = _is_not(G, inner)
                    for p in list(G.predecessors(n)):
                        G.add_edge(p, x)
                    dead = [c for c in G.successors(n) if c != inner] + \
                           [c for c in G.successors(inner) if c != x] + [n, inner]
                    G.remove_nodes_from(dead)
                    changed = True
                    break
            # rule 1: Select(Not c, a, b) -> Select(c, b, a)
            if lbl == "Select":
                k = _kids(G, n)
                if len(k) != 3:
                    continue
                cond, t, f = k
                c = _is_not(G, cond)
                if c is None:
                    continue
                falsenode = [x for x in G.successors(cond) if x != c][0]
                G.remove_edge(n, cond)
                if G.in_degree(cond) == 0:
                    G.remove_node(cond)
                    if G.in_degree(falsenode) == 0:
                        G.remove_node(falsenode)
                G.add_edge(n, c)
                # swap the arms by swapping the ids of their roots' subtrees
                _swap_subtree_ids(G, t, f)
                changed = True
                break
    return G


def _swap_subtree_ids(G, a, b):
    """Exchange the node ids of the subtrees rooted at a and b so that whichever
    was the false arm now sorts as the true arm. Only the root ids need to
    swap for _kids() to see the new order."""
    tmp = "__swap_tmp__"
    nx.relabel_nodes(G, {a: tmp}, copy=False)
    nx.relabel_nodes(G, {b: a}, copy=False)
    nx.relabel_nodes(G, {tmp: b}, copy=False)


def load_graph_from_dot(file_path):
    try:
        G = nx.nx_agraph.read_dot(file_path)
        print(f"Loaded graph from {file_path}")
        canonicalize_graph(G)
        return G
    except Exception as e:
        print(f"Error loading graph from {file_path}: {e}")
        return None

def calculate_distance(function_name, input_files_a,
                       input_files_b, c_is_target, c_directory_name, rust_directory_name, only_consider_struct):
    best_distance = None
    for i, file_path_a in enumerate(input_files_a):
        G1 = load_graph_from_dot(file_path_a)
        num_nodes_a = len(G1.nodes)
        current_best = 1000
        for file_path_b in input_files_b:
            G2 = load_graph_from_dot(file_path_b)
            num_nodes_b = len(G2.nodes)

            if num_nodes_a == num_nodes_b:
                current_best = min(current_best, compare_graph_optimize_edit_distance(G1,
                                                                                      G2,
                                                                                      function_name,
                                                                                      c_is_target,
                                                                                      c_directory_name,
                                                                                      rust_directory_name,
                                                                                      only_consider_struct))

        if best_distance is None:
            best_distance = current_best
        else:
            best_distance = max(best_distance, current_best)
        if current_best == 1000:
            print(f"{file_path_a} cannot find a comparable graph, stop comparing this argument")
            break
    return best_distance

def all_lengths_equal(arr):
    return all(len(s) == len(arr[0]) for s in arr)


# ── Pairing hook removed (2026-08-25, user ruling) ──────────────────────────────
#
# T7 once exposed match_symbol(c_key, rust_keys), letting a candidate specify the pairing before the default pairing.
# The interface only takes names, which structurally prevents "picking the highest-scoring pairing". **But it cannot prevent guesses with no basis.**
#
# Measured (shallow_probe, 2026-08-25): changing the default "pick deepest" to "pick shallowest"
# triggered on 4 rows, 3 of which were originally 0.0 -- all got worse (0.0 -> 1000 / 2.0),
# and the row we actually wanted to fix (csv_fini/*(arg_value_0.field_3) = 1000) was not fixed at all.
# equal_0 57 -> 54. The gate correctly rejected it.
#
# The fundamental problem: the candidate gets no scores and no type information, so it **can only guess by name shape**.
# Neither "deepest" nor "shallowest" has any basis; whichever happens to score higher is just climbing the validator.
# The correspondence between C flat fields and Rust nested fields is a fact of **type structure**,
# not something inferable from string shape -- guessing it by name is itself the wrong method.
#
# The correct entry point for pairing is argument_order_map (inference from reading real signatures, verifiable offline);
# the string waterfall itself belongs to the shared benchmark: changes to it are made by us and go through a golden re-freeze.


def compare_and_export_csv(c_dict,
                           rust_dict,
                           only_consider_struct,
                           output_csv_path,
                           model):
    rust_base = "graph_output/Rust"
    c_base = "graph_output/C"

    results_best = []
    free_counts = []
    for c_key, c_dot_files in c_dict.items():
        if '/' in c_key:
            function_name, argument_name = c_key.split('/', 1)
        else:
            function_name = c_key
            argument_name = ""

        mapped_c_key = c_key
        if function_name in field_map:
            field_name_map = field_map[function_name]
            if str(extract_single_index(argument_name)) in field_name_map:
                new_argument_name_suffix = first_token(field_name_map[str(extract_single_index(argument_name))])
                mapped_c_key = replace_arg_index(mapped_c_key, new_argument_name_suffix)

        c_dir = os.path.join(c_base, c_key)
        c_files = sorted(glob.glob(os.path.join(glob.escape(c_dir), "*.dot")))


        found_match_input_directory = False
        best_r_key = None

        # find best match directory for each c input
        matching_r_keys = []
        for r_key in rust_dict.keys():
            if r_key == mapped_c_key:
                best_r_key = r_key
                found_match_input_directory = True
                break
            if r_key.startswith(mapped_c_key):
                matching_r_keys.append(r_key)
                found_match_input_directory = True

        if matching_r_keys:
            if not all_lengths_equal(matching_r_keys):
                best_r_key = max(matching_r_keys, key=len)
            else:
                for r_key in matching_r_keys:
                    if r_key.endswith("field_0)") or r_key.endswith("field_0"):
                        best_r_key = r_key

        if not found_match_input_directory:
            if  mapped_c_key.endswith(')'):
                c_key_modified = mapped_c_key[:-1]
            else:
                c_key_modified = mapped_c_key

            for r_key in rust_dict.keys():
                if r_key.startswith(c_key_modified) and function_name in r_key:
                    matching_r_keys.append(r_key)
                elif "ret_value" in c_key_modified:
                    if "ret_value" in r_key and function_name == r_key:
                        matching_r_keys.append(r_key)
                else:
                    slash_index = c_key.find('/')
                    if slash_index != -1:
                        temp_c_key = c_key_modified[:slash_index + 1] + '*(' + c_key_modified[slash_index + 1:]
                        if r_key.startswith(temp_c_key) and function_name in r_key:
                            matching_r_keys.append(r_key)

            if matching_r_keys:
                if not all_lengths_equal(matching_r_keys):
                    best_r_key = max(matching_r_keys, key=lambda k: (len(k), k.endswith("field_0)"), k))
                    found_match_input_directory = True
                else:
                    for r_key in matching_r_keys:
                        if r_key.endswith("field_0)"):
                            best_r_key = r_key
                            found_match_input_directory = True

            if not found_match_input_directory and matching_r_keys:
                best_r_key = matching_r_keys[0]
                found_match_input_directory = True

        if c_key.endswith("free_call_counts"):
            free_call_max_c = 0
            free_call_max_rust = 0
            with open(os.path.join(c_dir, "free_call_counts.txt"), "r") as file:
                free_call_max = file.read().strip()
                if free_call_max.isdigit():
                    free_call_max_c = int(free_call_max)

            if not best_r_key:
                free_counts.append((function_name, argument_name, "rust_empty"))
            else:
                rust_dir = os.path.join(rust_base, best_r_key)
                if os.path.exists(os.path.join(rust_dir, "free_call_counts.txt")):
                    with open(os.path.join(rust_dir, "free_call_counts.txt"), "r") as file:
                        free_call_max = file.read().strip()
                        if free_call_max.isdigit():
                            free_call_max_rust = int(free_call_max)
                    free_counts.append((function_name, argument_name, str(abs(free_call_max_c - free_call_max_rust))))
                else:
                    free_counts.append((function_name, argument_name, "rust_empty"))
        elif found_match_input_directory:
            print(f" c is {c_key}, rust is {best_r_key}")
            special_handle_result = check_special_handle_list(c_key + "_" + str(model))
            if special_handle_result:
                results_best.append((function_name, argument_name, str(special_handle_result)))
                continue
            rust_dir = os.path.join(rust_base, glob.escape(best_r_key))
            rust_files = sorted(glob.glob(os.path.join(rust_dir, "*.dot")))
            if only_consider_struct:
                edit_distance = max(calculate_distance(function_name,
                                                       c_files,
                                                       rust_files,
                                                       True,
                                                       c_key,
                                                       best_r_key,
                                                       only_consider_struct),
                                    calculate_distance(function_name,
                                                       rust_files,
                                                       c_files,
                                                       False,
                                                       c_key,
                                                       best_r_key,
                                                       only_consider_struct))
            else:
                edit_distance = max(calculate_distance(function_name,
                                                       c_files,
                                                       rust_files,
                                                       True,
                                                       c_key,
                                                       best_r_key,
                                                       only_consider_struct),
                                    calculate_distance(function_name,
                                                       rust_files,
                                                       c_files,
                                                       False,
                                                       c_key,
                                                       best_r_key,
                                                       only_consider_struct))
            results_best.append((function_name, argument_name, str(edit_distance)))
        else:
            results_best.append((function_name, argument_name, "Rust Empty!"))

    os.makedirs(output_csv_path, exist_ok=True)

    if only_consider_struct:
        with open(os.path.join(output_csv_path, 'best_edit_distances_only_structure.csv'), 'w', newline='', encoding='utf-8') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(["function_name", "argument_name", "best_edit_distances"])
            writer.writerows(results_best)
    else:
        with open(os.path.join(output_csv_path, 'best_edit_distances.csv'), 'w', newline='', encoding='utf-8') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(["function_name", "argument_name", "best_edit_distances"])
            writer.writerows(results_best)
        with open(os.path.join(output_csv_path, 'free_count.csv'), 'w', newline='', encoding='utf-8') as csvfile:
            writer = csv.writer(csvfile)
            writer.writerow(["function_name", "argument_name", "free_difference"])
            writer.writerows(free_counts)

def read_json(dir_path: str | Path, filename: str):
    file_path = Path(dir_path) / filename
    with file_path.open("r", encoding="utf-8") as f:
        data = json.load(f)
    return data

if __name__ == "__main__":
    model = 1
    if len(sys.argv) == 2:
        model = sys.argv[1]
    logger = SingletonLogger()
    result_C = traverse_two_levels_c()
    result_Rust = traverse_two_levels_rust()
    # The map is generated on the fly by symbolicExecution.py; when generation fails it is an empty table.
    # A completely missing file (old runs, manual reruns) must not crash scoring either -- fall back to pure string matching.
    try:
        field_map = read_json("./", "argument_order_map.json")
        if not isinstance(field_map, dict):
            raise ValueError(f"argument_order_map.json is not an object: {type(field_map).__name__}")
    except Exception as _e:
        print(f"[argmap] load failed ({_e}); pairing falls back to pure string matching")
        field_map = {}
    print(f"[argmap] argument map active for {len(field_map)} function(s)")
    compare_and_export_csv(result_C,
                           result_Rust,
                           False,
                           "edit_distance",
                           model)