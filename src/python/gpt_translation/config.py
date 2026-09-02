from enum import Enum


GPT5_MODEL = "gpt-5.4-2026-03-05"
GPT5_MODEL_CTX_WINDOW_LEN = 400000
GPT5_MODEL_MAX_COMPLETION_TOKENS = 128000

# Budget-tier OpenAI models. Same generation as GPT5_MODEL, used for dev
# iteration / getting the pipeline flowing; use GPT5_MODEL when producing
# official data. Context and max output follow the same-generation specs.
GPT5_MINI_MODEL = "gpt-5.4-mini"
GPT5_NANO_MODEL = "gpt-5-nano"

# libc version constraint for the Cargo compile check.
#
# The version must be pinned: libc 0.2.189+ has an MSRV of rustc 1.65, while
# this project pins rustc 1.64.0 (aligned with the LLVM 14 / KLEE backend, see
# INTEGRATION.md §3.4). Writing "0.2" would resolve to the newest 0.2.x and fail
# to compile outright:
#     error: package `libc v0.2.189` cannot be built because it requires
#            rustc 1.65 or newer, while the currently active rustc version is 1.64.0
#
# Pinning also lets cargo skip the registry index update: cargo 1.64 uses the
# git index, and one online resolution takes 180s+, blowing past
# compileWithCargoProject's 120s timeout.
# With a pinned version + CARGO_NET_OFFLINE=true, it drops to about 2s.
import os as _os
CARGO_LIBC_REQUIREMENT = _os.environ.get("ASSURE_CARGO_LIBC_REQ", "=0.2.149")

# Knobs the outer agent can turn (DESIGN.md §4). Injected as environment
# variables from config.yaml via run_eval.
# Defaults are kept as-is; with no env vars set, behavior is exactly as before
# the change.
COMPILATION_RETRIES = int(_os.environ.get("ASSURE_COMPILATION_RETRIES", "5"))
STRUCT_RETRIES = int(_os.environ.get("ASSURE_STRUCT_RETRIES", "5"))
MAX_THREADS = 40

# Performance regression retry defaults (CLI overridable in translationValidator.py).
# A stage's average elapsed time exceeding prev_stage * (1 + PERF_DEGRADE_THRESHOLD_PCT/100)
# triggers up to PERF_DEGRADE_RETRY_COUNT per-function rerun attempts. After all
# retries are exhausted, PERF_DEGRADE_DISCARD_ON_FAIL controls whether the stage's
# funcMap is reverted to the previous stage. PERF_DEGRADE_SKIP_RETRY=True bypasses
# the retry mechanism entirely (record degradation, take no action).
PERF_DEGRADE_THRESHOLD_PCT = 5.0
PERF_DEGRADE_RETRY_COUNT = 0
PERF_DEGRADE_DISCARD_ON_FAIL = False
PERF_DEGRADE_SKIP_RETRY = False

# Per-stage threshold overrides. Keys are Stage enum names ("Stage_1" ... "Stage_10");
# values are the threshold percentage to apply for that stage in place of the global
# PERF_DEGRADE_THRESHOLD_PCT (and any CLI override of it). Stages not listed fall
# back to the global value. Example: Stage_3 (char* -> std::string) on pure-string
# parsers like cJSON has a theoretical floor near +8% even when implemented
# optimally; widening that stage avoids spurious retries / discards.
PERF_DEGRADE_THRESHOLD_PCT_PER_STAGE: dict = {}

# https://docs.anthropic.com/en/docs/models-overview
CLAUDE_OPUS_4_1_MODEL = "claude-opus-4-6"
CLAUDE_SONNET_4_6_MODEL = "claude-sonnet-4-6"
CLAUDE_HAIKU_4_5_MODEL = "claude-haiku-4-5"
CLAUDE_CTX_WINDOW_LEN = 1000 * 1000
CLAUDE_MAX_COMPLETION_TOKENS = 128 * 1000
# Haiku 4.5 has a 200K context window and a 64K max-output cap (vs
# Opus/Sonnet's 1M/128K). Kept on dedicated constants so preanalysis
# fit-checks reflect Haiku's actual capacity instead of silently
# over-reporting and triggering a 400 "prompt too long" at request time.
CLAUDE_HAIKU_CTX_WINDOW_LEN = 200 * 1000
CLAUDE_HAIKU_MAX_COMPLETION_TOKENS = 64 * 1000

# Gemini 3.5 Flash. Output price ($9/1M) is billed including thinking
# tokens, so the translator pins thinking_budget=0.
# https://ai.google.dev/gemini-api/docs/models
GEMINI_FLASH_MODEL = "gemini-3.5-flash"
GEMINI_PRO_MODEL = "gemini-3.1-pro-preview"
GEMINI_CTX_WINDOW_LEN = 1000 * 1000
GEMINI_MAX_COMPLETION_TOKENS = 64 * 1000


class Stage(str, Enum):
    Stage_1 = """Remove all custom allocator usage, including related function calls and struct fields. Please also Eliminate unnecessary memory management logic introduced by custom allocators. If no changes are needed, leave the code unchanged .
    """

    Stage_2 = """Identify types used to represent boolean values and transpile them to bool. If no changes are needed, leave the code unchanged.
    """

    Stage_3 = """Identify types used as ARRAYS and convert them to `std::vector<T>` (or `std::vector<unsigned char>` for byte buffers — see below). Once a type becomes a vector, switch to vector idioms and delete the C plumbing in the same edit.

    USAGE: `std::vector` is a self-managing container — it owns its storage, tracks its current length via `size()`, and grows its storage automatically on append. Your code does not need to maintain any of this state in parallel.

    Common use cases:
      - Appending: use `push_back(x)`. The vector grows by one and `size()` updates in the same call. Do NOT keep a separate position cursor or length variable in parallel, even if the C source carried one as a local or as a struct field.
      - Deleting from the end: use `resize(n)` to shrink to `n` elements, or `pop_back()` to drop the last one.
      - Manual growth: not needed. Every `push_back` grows the vector on demand; any helper the C source used to grow or reallocate the buffer should be deleted. `reserve(n)` is a capacity hint only — it does NOT grow `size()`.
      - Read / write access: ONLY through member functions and range-for — `push_back`, `pop_back`, `resize`, `size`, `front`, `back`, `clear`, iterators, range-for, and `data()` at C API boundaries. Indexed access — `v[i]`, `v[i++]`, `v.at(i)` — is FORBIDDEN in Stage_3 output. The C `buf[i]` pattern translates to the matching member function (`push_back` to append, `front` / `back` / iterator for read, etc.), never to `v[i]`.
        EXCEPTION — random access on a pre-sized vector that does NOT grow: `v[i]` is fine for reads and writes when the vector has its full size set at one point (either at construction `std::vector<T> v(n)` or via a one-time `v.resize(n)`) and never grows from then on. This exception does NOT cover a vector that starts empty (or smaller) and is being built via indexed writes — the cursor signals are `v[pos++] = x` (post-increment inside the brackets) and `v[i] = x` paired with a separately-tracked position variable. Both are the C "append via cursor" pattern; use `push_back` instead.


    REMOVE C BYTE-COPY PLUMBING when the buffer becomes a vector: replace `memcpy` / `memmove` / `memset` on the buffer with `assign` / `copy` / `std::move` / `fill`; delete the paired `malloc` / `realloc` / `free` (the vector's ctor / `resize` / dtor replace them). Once the buffer is a `std::vector`, the vector self-manages capacity — its amortized growth on `push_back` makes any manual grow/resize/reserve logic the C code carried redundant. Delete every helper that existed only to size, grow, or reserve the old buffer (including any bad_alloc retry loop or `SIZE_MAX` overflow guard the C source carried — `std::vector` handles both internally and propagates `std::bad_alloc` to the caller), every struct field / setter that existed only to tune that growth, and any thin shim that just forwards to `push_back` / `insert` / `resize` / `reserve`.

    ============================================================
    BYTE BUFFER vs TEXT (the Stage_3 / Stage_4 boundary)
    ============================================================
    A `char *` / `unsigned char *` populated byte-by-byte via a write cursor (escape decoding, md5 / hash output, base64 / utf-16 decode target) is a BYTE BUFFER — convert to `std::vector<unsigned char>` in THIS stage.

    A `char *` / `const char *` / `unsigned char *` / `const unsigned char *` carrying TEXT (ASCII / UTF-8 identifier, format string, error message, NUL-terminated literal — anything `strlen` / `strcmp` / `strcpy` / `printf "%s"` reads or writes, regardless of the signed/unsigned spelling on the pointer) is Stage_4's job — LEAVE IT as a raw pointer here. Picking `std::vector<char>` / `std::vector<unsigned char>` is wrong: it drops the NUL-termination contract C string APIs depend on, and it preempts Stage_4. Same for `char[N]` / `unsigned char[N]` fixed-size text arrays — leave them for Stage_4.

    If no changes are needed, leave the code unchanged.
    """

    Stage_4 = """In ONE pass, decide ownership for every char*/char-buffer holding TEXT and convert it to the matching C++ type: `std::string` when the name owns its bytes, `std::basic_string_view<char>` (pass by value, never `const &`) when it only views bytes owned by something longer-lived. These are the SAME decision per name; make them together.

    SCOPE: TEXT char* only (ASCII / UTF-8 identifiers, format strings, messages, URL parts). A char* populated byte-by-byte from arbitrary input was already lowered by Stage_3 to `std::vector<unsigned char>` — leave it alone.

    ============================================================
    OWNER vs VIEW
    ============================================================
      OWNER → `std::string`. Responsible for the bytes' lifetime: built/copied into, freed by free()/delete in a destructor or *_free helper, or must outlive the producing call/scope. A struct field that the struct's own teardown frees is an OWNER.
      VIEW  → `std::basic_string_view<char>`. Only reads bytes some OTHER, longer-lived object owns: an interior pointer into another field's buffer, a read-only parameter the callee never stores past the call. A VIEW never frees its bytes.

    CLUSTER: when a struct's text fields all alias one buffer the struct itself frees, EXACTLY ONE field — the one the destructor frees — is the OWNER (`std::string`). EVERY other text field of the struct AND every `char*` / `const char*` text field of any nested element type it stores is a VIEW (`std::basic_string_view<char>`), including any such text field assigned from a function call (`d->X = f(...)`).  Pick the OWNER and lift every VIEW in the same edit; no third option. A field whose value is produced by mutating the OWNER's buffer in place is still a VIEW — the bytes belong to the OWNER; the field is just (offset, length) into them.

    VIEW LIFETIME:
      - A view is valid only while its `std::string` owner is alive AND unrelocated. If the parser mutates the buffer in place (inserts '\\0' separators, percent-decodes), track (offset, length) into the owner instead of relying on NUL termination.
      - NEVER return a view bound to a function-local `std::string`.

    ============================================================
    DEFENSIVE NULL GUARDS on VIEW params — Stage_4 deletes them, NOT Stage_7 / Stage_9
    ============================================================
    A top-of-function `if (p == nullptr) return ...;` on a TEXT pointer parameter you've classified as a VIEW is a defensive guard against bug input, NOT a structural null state. Convert the parameter to `std::basic_string_view<char>` AND delete the guard in the SAME edit. Do NOT keep the parameter as `const char*` / `const unsigned char*` "for Stage_7 or Stage_9 to handle":
      - Stage_7 explicitly SKIPS defensive early-return guards (they are not structural null) — it will not wrap them in `std::optional`.
      - Stage_9 lifts `T*` to `T&` (single-object reference), NOT to `string_view`. A `const unsigned char*` parameter that survives this stage ends up as `const unsigned char&` — a reference to a single byte — and the string semantics are lost.

    The string-vs-byte / OWNER-vs-VIEW decision is THIS stage's job. If you find yourself thinking "I'll keep the pointer because of the null check and let a later stage handle it", that reasoning is wrong for VIEW params: nobody downstream will switch a `T*` to `string_view`.

    ============================================================
    PROPAGATING `std::string` OWNERSHIP
    ============================================================
    When a name becomes `std::string`, change all of these in the same edit:
      - The `std::string` IS the storage — no parallel malloc'd buffer, no surviving raw alias. Build directly into it (assign / append / push_back / `+=`), not into a temp char buffer that is then copied in.
      - Allocate the enclosing struct with `new T{}` not malloc; free with `delete` not free; never memset/memcpy a struct that now contains a `std::string`.
      - Transfer with `std::move`; never route ownership through `.c_str()` / `.data()`.
      - Reset with `.clear()` / `= {}`; NEVER `= nullptr` / `= NULL` / `= 0` on a `std::string` (deleted overload in C++23, crash before).
      - Delete the redundant C string plumbing (strcpy / strcat / strdup / strlen / malloc-realloc-free of the buffer) in the same edit.

    ============================================================
    VIEW USAGE
    ============================================================
    Use index access (`v[i]`, `v.substr(off,n)`, `size_t` positions), not raw-pointer arithmetic recovered via `p - v.data()`. Propagate to callers — `f(s.c_str())` becomes `f(s)`, and pointer arithmetic at the call site becomes index access in the same edit. Use `.data()` ONLY at a C API boundary that needs it.

    If nothing in the code holds text in a char*, leave the code unchanged.
    """

    Stage_5 = """Identify types used as lists and convert them to std::list. """

    Stage_6 = """Identify types used as maps and convert them to std::unordered_map. If no changes are needed, leave the code unchanged."""

    Stage_7 = """Stage_7 has ONE job: add `std::optional<T>` wrappers per the rules below. Leave EVERYTHING else from prior stages — function bodies, control flow, helper signatures, and existing comparisons — exactly as the input has it.

    Wrap a variable (parameter, field, or local) in `std::optional<T>` when null is a STRUCTURAL state the function's logic distinguishes from a non-null state — not a defensive guard against bug input.

    WRAP when:
      - The variable is sometimes assigned a real value and sometimes assigned null along normal control flow, and consumers branch on each case.
      - Null is used as a sentinel the function's normal logic interprets (e.g. "end of list", "no parent yet", "no result").

    DO NOT wrap raw pointers (`T *` / `const T *`), `std::unique_ptr<T>`, `std::shared_ptr<T>`, or `std::basic_string_view<E>` in `std::optional` — they already carry their own empty state. Only `std::string` can legitimately be wrapped in optional, because `""` and "absent" can be semantically distinct (e.g. JSON empty string vs missing field).

    DO NOT wrap when:
      - The only null handling is a top-of-function early-return guard (`if (p == nullptr) return ...;`) followed by unconditional dereference. The caller's contract is non-null; the guard catches programming bugs. Stage_9 will lift the parameter to a reference and delete this guard.
      - The function's logic does NOT actually distinguish null from non-null on this variable — whether the C source initialises it to `nullptr` then always reassigns before use, declares a possibly-null type that no branch inspects, or null-checks a different variable elsewhere.

    SELF-CHECK: if after this stage you find `optional<T*>::value()` or `optional<unique_ptr<T>>::value()` anywhere — back out the optional, the rule above forbids it.

    If no structurally nullable variable is found, leave the code unchanged.
    """

    Stage_9 = """In this stage, REWRITE every raw pointer to a single object as an idiomatic C++ HANDLE — for each parameter, field, return type, and local that currently holds a raw `T*` / `const T*`, pick one of: `T&` (reference), `T` (value), `std::unique_ptr<T>`, `std::shared_ptr<T>`, or kept-raw under a documented exception. Non-owning string views over caller-owned memory were already lowered by Stage_4 to `std::basic_string_view<char>` — leave those. Stage_9's raw pointers are expected to refer to single objects (not arrays).

    WORKFLOW — do all four passes, in order:
      1. PARAMETERS: for every function, every raw-pointer parameter → pick a handle (reference / value / unique_ptr / shared_ptr / kept-raw-because-X). Do NOT silently leave a raw `T*` parameter just because the function "works as-is" — pick explicitly.
      2. RETURN TYPES: for every function whose return type is a raw pointer (or contains one, e.g. `T**`) → pick a handle on the SAME criteria as parameters. THIS IS THE MOST-SKIPPED STEP. A function returning `p.release()` whose caller wraps it as `consumer(std::unique_ptr<T>(returned_p))` is a sign you skipped this; the producer should return `std::unique_ptr<T>` directly. A return type and its symmetric "consumer" parameter MUST match.
      3. FIELDS: every raw-pointer struct field → pick a handle.
      4. LOCALS: every raw-pointer local in function bodies.

    Sibling functions sharing a parameter shape (e.g. a family of recursive parsers with the same signature) MUST get the same handle decision uniformly — a lift that differs only on one member of the family signals you missed parameters in some functions; re-enumerate and align.

    PICK ONE HANDLE per raw pointer:
      - `T&` (reference) when ownership is not transferred — parameters that are only dereferenced. A leftover `if (p == nullptr) return ...;` top-of-function guard is NOT a reason to keep the parameter raw; Stage_7 deliberately did not wrap it in optional, so delete the guard along with the lift to `T&`.
      - `T` (value) for independent / locally-owned data; use `std::move` to return large objects.
      - `std::unique_ptr<T>` for exclusive ownership; `std::shared_ptr<T>` only when multiple owners genuinely share the lifetime.
      - Keep `T*` (raw, non-owning) ONLY for the back-link half of a cyclic struct, or for parameters where null is a STRUCTURAL state (Stage_7 left such pointers unwrapped because `nullptr` is already the structural empty). "Back-link" means the REVERSE edge in a tree / list should stay raw and the FORWARD edges ARE owning and lift to `std::unique_ptr<T>`.

    OWNERSHIP INVARIANTS:
      1. Single owning path: every heap object reachable from exactly ONE `std::unique_ptr` at any moment. Raw pointers / references are non-owning observers. When mutating a back-link field right before reading through it (`obj->prev = new_node; obj->prev->next = ...`), cache the old value first.
      2. Propagate through signatures: when a field or return becomes `std::unique_ptr<T>`, every function that STORES into that field MUST take it as `std::unique_ptr<T>` by value, and callers MUST `std::move` in. Update callee signature, forward declaration, and all call sites in the same edit — these are required by the lift, NOT unrelated refactors.
      3. Never forge ownership from a non-owning handle: do NOT construct or `.reset()` a `std::unique_ptr` from a raw pointer / reference whose underlying object is already owned by another `std::unique_ptr` (creates double ownership → double free). If you want to, the callee's parameter type is wrong — change it to `std::unique_ptr<T>` by value so ownership flows in explicitly. Also do not `.release()` and discard the pointer to "avoid deleting" — leaks or unreadable state.
      4. API symmetry: a producer (parse / create / clone / new_*) and its paired consumer (free / delete / destroy) must agree on the handle type. If the consumer takes `std::unique_ptr<T>`, the producer MUST return `std::unique_ptr<T>`. When a consumer takes `std::unique_ptr<T>` by value, the consumer function may be redundant — the dtor runs automatically; delete it unless it carries logic beyond `delete p;`.

    ALSO: lift any by-value parameter of a non-trivially-copyable type (`std::string`, `std::vector<T>`, `std::list<T>`, large struct) that the function only reads to `const T&`.

    If no qualifying raw pointer is left, leave the code unchanged.
    """

    Stage_10 = """Transpile the code to Rust."""


class LLMModels(Enum):
    GPT_5 = 0
    GPT_5_MINI = 6
    GPT_5_NANO = 7
    CLAUDE_OPUS = 1
    CLAUDE_SONNET = 2
    CLAUDE_HAIKU = 3
    GEMINI_FLASH = 4
    GEMINI_PRO = 5


class TranslatorModes(Enum):
    BASIC_CHUNK_CHAIN = 0
    COMPILATION_FEEDBACK = 1
    CF_STRUCT_REPLAY = 2
    CF_STRUCT_FN_REPLAY = 3
    CF_SINGLE_REQUEST_MERGE = 4
    NEW_MODE = 5
    NEW_MODE_SINGLE_STAGE = 6
    # Deprecated alias for NEW_MODE — kept so the CLI string
    # "new-mode-merged-views" still resolves. Now that Stage_8 has been
    # removed and Stage_4's prompt is the merged owner+view prompt by
    # default, this mode is functionally identical to NEW_MODE.
    NEW_MODE_MERGED_VIEWS = 7
    # Resume the staged NEW_MODE pipeline from a prior checkpoint.
    # Takes --prior-stage-state pointing at a Stage_N directory and runs
    # every later non-skipped stage in order (Stage_{N+1}..Stage_10).
    # Equivalent to NEW_MODE_SINGLE_STAGE applied iteratively for the
    # remaining stages, but reuses NEW_MODE's per-stage loop so token
    # tracking, stage-check summary, and perf-retry behavior stay
    # identical to a full NEW_MODE run.
    NEW_MODE_RESUME = 8
