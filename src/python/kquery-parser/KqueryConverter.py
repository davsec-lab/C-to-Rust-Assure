from KqueryGrapher import *
import sys
import shutil

def process_sym_values(file_path):
    with open(file_path, 'r') as file:
        data = file.read()
    
    lines = data.split('\n')
    processed_lines = []
    base_address = []
    buffer = ""
    global_left = 0
    global_right = 0
    for line in lines:
        if line.startswith("SYM VALUE"):
            global_left = line.count("(")
            global_right = line.count(")")
            if global_left == global_right:
                processed_lines.append(line)
                global_left = 0
                global_right = 0
            else:
                buffer = line
        elif line.startswith("Base Address"):
            global_left = line.count("(")
            global_right = line.count(")")
            if global_left == global_right:
                base_address.append(line)
                global_left = 0
                global_right = 0
            else:
                buffer = line
        else:
            # Check if the last character is not a closing parenthesis
            if line.startswith("KLEE:"):
                continue
            # Check if the parentheses are balanced
            global_left = global_left + line.count("(")
            global_right = global_right + line.count(")")
            buffer = buffer + " " + line.strip()
            if (global_left == global_right):
                processed_lines.append(buffer)
                buffer = ""

    result = extract_values(processed_lines)
    all_address = extract_base_address(base_address)

    filtered_result = {}
    numeric_values = None
    for key, values in result.items():
        if key == "free_call_counts":
            numeric_values = [int(v) for v in values if v.isdigit()]
            values = str(numeric_values)
        else:
            filtered_result[key] = values

    if numeric_values:
        directory = os.path.join(key, "free_call_counts.txt")
        if not os.path.exists(key):
            os.makedirs(key)
        with open(directory, "w") as output_file:
            output_file.write(str(max(numeric_values)))

    return filtered_result, all_address



def extract_values(processed_lines):
    sym_dict = {}
    for line in processed_lines:
        match = re.match(r'SYM VALUE: (\S+) : :(.*)', line)
        if match:
            key = match.group(1)  
            expression = match.group(2).strip()  
            if key not in sym_dict:
                sym_dict[key] = []
            if expression not in sym_dict[key]:
                sym_dict[key].append(expression)

    return sym_dict

def extract_base_address(address):
    result = []
    for cur_address in address:
        m = re.search(r'(\d+)', cur_address)
        if m:
            result.append(int(m.group(1)))
    return result

def load_json_map(json_path):
    if os.path.isfile(json_path):
        try:
            with open(json_path, 'r', encoding='utf-8') as f:
                data = json.load(f)
            return data
        except (json.JSONDecodeError, OSError) as e:
            return None
    else:
        return None

def lookup_arg_value(s: str, json_map: dict):
    m = re.search(r'arg_value_(\d+)', s)
    if not m:
        return []
    idx = int(m.group(1))

    if idx in json_map:
        return json_map[idx]
    key_str = str(idx)
    if key_str in json_map:
        return json_map[key_str]

if __name__ == "__main__":
    if len(sys.argv) == 1:
        result, all_address = process_sym_values("text.txt")
        json_map = {"a" : "b"}
    else:
        directory_name = sys.argv[2]
        if os.path.exists(directory_name):
            # Delete all contents in the directory
            shutil.rmtree(directory_name)
        os.makedirs(directory_name)
        os.chdir(directory_name)
        result, all_address = process_sym_values(sys.argv[1])
        json_map = load_json_map(sys.argv[3])

    for key, values in result.items():
        target_json_map = lookup_arg_value(key, json_map)
        seen_graph = set()
        convert_kquery_to_graph(values,
                                "",
                                key,
                                seen_graph,
                                target_json_map,
                                all_address)
