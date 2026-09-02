import os
from openai import OpenAI
import json
import sys
from pathlib import Path

client = OpenAI(api_key=os.environ.get('OPENAI_KEY'))

# Rewritten 2026-08-25. The original prompt only said "argument position" without
# saying whether it meant the **source-level** or the **IR-level** position, and
# the model answered at the source level — while distance.py's symbol names
# `arg_value_N` count IR positions. Measured on csv_write:
#     C   csv_write(void *dest, size_t dest_size, const void *src, size_t src_size)
#     Rust source  csv_write(dest: &mut [u8], src: &[u8])              ← 2 arguments
#     Rust IR      @csv_write([0 x i8]* %dest.0, i64 %dest.1,
#                             [0 x i8]* %src.0,  i64 %src.1)           ← 4 arguments
# The old prompt yielded {"0":"0","1":"0","2":"1","3":"1"} (source-level, and
# non-injective); the correct answer is the IR-level identity mapping
# {"0":"0","1":"1","2":"2","3":"3"}.
# Once the IR level is spelled out and injectivity required, the model gives the
# correct answer.
BASE_PROMPT = (
    "You map C function argument positions to Rust function argument positions.\n\n"
    "CRITICAL: positions are counted in the **LLVM IR signature**, NOT the source "
    "signature. Rust fat pointers (&[T], &str, &mut [T], &dyn Trait) lower to TWO IR "
    "arguments (pointer + length, or data + vtable); a single Rust source argument may "
    "therefore occupy two IR positions. Count the IR parameters left to right, starting "
    "at 0, exactly as they appear in the `define` line.\n\n"
    "The mapping must be INJECTIVE: two different C positions must never map to the "
    "same Rust position. Omit a C position entirely if it has no single Rust "
    "counterpart.\n\n"
    "Return ONLY a JSON object whose keys and values are decimal position strings, "
    "e.g. {\"0\": \"1\", \"2\": \"0\"}. "
    "Do not wrap the JSON in markdown, and do not add extra text."
)


DEFAULT_MODEL = "o4-mini-2025-04-16"


# The C→Rust argument-position map is fixed shared baseline: the prompt and the
# model are the same for every candidate. The per-candidate override that used to
# live here (argmap_prompt / argmap_model, loaded through HARNESS_DIR) was
# withdrawn from the search space on 2026-08-27 (STATUS.md §5.17) and deleted
# with the rest of the injection layer (SOURCE_CANDIDATE.md §7).
ACTIVE_PROMPT = BASE_PROMPT
ACTIVE_MODEL = DEFAULT_MODEL


def _count_ir_args(ir_sig: str) -> int:
    """Count the top-level arguments in `define ... @fn(<args>)`.

    Cannot simply split(",") — `[3 x i64]` has no comma but `{ i8*, i64 }` does.
    Split by bracket depth. Returns -1 when unsure (the caller then skips the
    range check rather than over-killing).
    """
    if not ir_sig or "(" not in ir_sig:
        return -1
    inner = ir_sig[ir_sig.index("(") + 1:]
    depth, buf, parts = 0, [], []
    for ch in inner:
        if ch in "([{<":
            depth += 1
        elif ch in ")]}>":
            if depth == 0:
                break
            depth -= 1
        elif ch == "," and depth == 0:
            parts.append("".join(buf)); buf = []; continue
        buf.append(ch)
    if "".join(buf).strip():
        parts.append("".join(buf))
    return len([x for x in parts if x.strip()])


def _validate_mapping(name, mapping, c_argc, r_argc):
    """Drop entries that cannot possibly be correct, loudly rather than silently.

    Three rules: keys and values must be decimal strings, must be within their
    respective IR argument ranges, and the mapping **must be injective**.
    Non-injectivity means two different C symbols would be compared against the
    same Rust symbol — structurally impossible to be right, and the old prompt
    did in fact produce exactly that (csv_write).
    """
    if not isinstance(mapping, dict):
        print(f"[argmap] {name}: returned value is not an object, dropping the whole entry")
        return {}
    clean, seen, dropped = {}, {}, []
    for k, v in mapping.items():
        ks, vs = str(k).strip(), str(v).strip()
        # The old format occasionally gives "1,2" (meaning it maps to two IR positions). Take the first, consistent with distance.first_token.
        if "," in vs:
            vs = vs.split(",", 1)[0].strip()
        if not ks.isdigit() or not vs.isdigit():
            dropped.append(f"{ks}->{vs}(not a number)"); continue
        ki, vi = int(ks), int(vs)
        if c_argc >= 0 and ki >= c_argc:
            dropped.append(f"{ks}->{vs}(C position out of range >= {c_argc})"); continue
        if r_argc >= 0 and vi >= r_argc:
            dropped.append(f"{ks}->{vs}(Rust position out of range >= {r_argc})"); continue
        if vs in seen:
            dropped.append(f"{ks}->{vs}(collides with {seen[vs]}->{vs}, non-injective)"); continue
        seen[vs] = ks
        clean[ks] = vs
    if dropped:
        print(f"[argmap] {name}: dropped {len(dropped)} entries — {'; '.join(dropped)}")
    return clean

samples = {
    "csv_strerror": {
        "c_original_code":  "csv_strerror(int status)",
        "c_ir_file":        "i8* (i32)*",
        "rust_original_code":"csv_strerror(status: i32)",
        "rust_ir_file":     "{ [0 x i8]*, i64 } (i32)*",
    },
    "csv_get_buffer_size": {
        "c_original_code":  "csv_get_buffer_size(const struct csv_parser *p)",
        "c_ir_file":        "i64 (%struct.csv_parser.5*)*",
        "rust_original_code":"csv_get_buffer_size(p: &CsvParser)",
        "rust_ir_file":     "i64 (%CsvParser.43*)*",
    },
}

def ask_model(payload: str) -> dict:
    """Call the model once and return the parsed JSON mapping."""
    resp = client.chat.completions.create(
        model=ACTIVE_MODEL,
        # temperature=0.5,
        messages=[
            {"role": "system", "content": ACTIVE_PROMPT},
            {"role": "user",   "content": payload},
        ],
    )
    answer = resp.choices[0].message.content.strip()
    return json.loads(answer)  # will raise JSONDecodeError if not valid

def load_samples(json_path: Path) -> dict:
    if not json_path.is_file():
        sys.exit(f"[Error] JSON file not found: {json_path}")
    try:
        with json_path.open("r", encoding="utf-8") as f:
            return json.load(f)
    except json.JSONDecodeError as e:
        sys.exit(f"[Error] Invalid JSON in {json_path}: {e}")


if __name__ == '__main__':
    if len(sys.argv) < 2:
        input_path = "repo/Rust/rustify-validator/src/python/function_map.json"
    else:
        input_path = sys.argv[1]

    input_path = Path(input_path)
    output_path = Path("argument_order_map.json")
    input_json = load_samples(input_path)
    results = {}
    for fname, data in input_json.items():
        user_payload = (
            f"C original:\n{data['c_original_code']}\n\n"
            f"C IR:\n{data['c_ir_file']}\n\n"
            f"Rust original:\n{data['rust_original_code']}\n\n"
            f"Rust IR:\n{data['rust_ir_file']}"
        )
        # A single function's failure should not blow up the whole batch —
        # a missing mapping just means that function falls back to pure string
        # matching, whereas raising would leave argument_order_map.json not
        # existing at all. The original code raised.
        try:
            mapping = ask_model(user_payload)
        except json.JSONDecodeError as e:
            print(f"[argmap] {fname}: response is not valid JSON, skipping — {e}")
            continue
        except Exception as e:
            print(f"[argmap] {fname}: call failed, skipping — {type(e).__name__}: {e}")
            continue

        mapping = _validate_mapping(fname, mapping,
                                    _count_ir_args(data.get("c_ir_file", "")),
                                    _count_ir_args(data.get("rust_ir_file", "")))
        if not mapping:
            print(f"[argmap] {fname}: empty after validation, not written")
            continue
        results[fname] = mapping
        print(f"{fname}: {mapping}")

    print(f"[argmap] wrote {len(results)} / {len(input_json)} functions → {output_path}")
    with output_path.open("w", encoding="utf-8") as fp:
        json.dump(
            results,
            fp,
            indent=2,
            ensure_ascii=False
        )


