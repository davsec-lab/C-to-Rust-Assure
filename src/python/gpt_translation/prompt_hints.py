"""On-demand prompt-hint strings, appended to Stage prompts only when
their gating condition holds.

Lifted out of ``config.py`` so the latter stays focused on numerical
knobs, model identifiers, and the Stage prompt definitions themselves.
Each gate (``_gotoBypassHintIfNeeded``, ``_stage10GlobalOwnershipHintIfNeeded``,
``_stage10LifetimeSelfCheckHintIfNeeded``, ``_stage10FileIoHintIfNeeded``,
plus the unconditional Stage_10 mechanical-mapping injection) lives in
``translation_pipeline_mixin.py``; this module only defines the strings.
"""


# On-demand hint appended to a Stage_3 prompt only when the upstream
# byte-buffer classifier has actually tagged a usage line in the batch
# being translated. Kept out of the main Stage_3 body so codebases
# with zero tagged fields don't pay the token cost for a rule that
# doesn't apply. See ``_buildTypeBatchPrompt`` for the injection point.
STAGE_3_TAGGED_USAGE_HINT = """
TAGGED USAGE LINES — if any usage line for a `char *` field carries the trailing tag `[BYTE BUFFER: cursor build verified - must become std::vector<unsigned char>]`, treat it as ground truth: convert the field to `std::vector<unsigned char>` unconditionally. The tag was set from the producer's `*ptr++` cursor write — that's the authoritative signal. Do NOT override based on the field's name or on other usage lines that look text-shaped (null checks, NUL-terminated cursor walks, free calls — these are consistent with byte buffers too).
"""


# Rust-specific output rules. Appended by ``STAGE_10_MECHANICAL_MAPPING_HINT``
# at every Stage_10 prompt site. Moved out of the cross-stage system
# prompt (Phase 1 of system-prompt reduction) because these rules only
# apply when generating Rust — sending them on every C++ stage call was
# wasted tokens. Covers: cursor / pointer hygiene (Rust analog of the
# .data() ban), the Rust analogs of the C++ non-POD / move / propagation
# tripwires, and Rust-specific gotchas (UTF-8 byte handling,
# NUL-terminator boundary, lifetime parameter binding, std::fs::File
# stdio buffering).
RUST_OUTPUT_RULES = """

============================================================
RUST IDIOM RULES (Rust output only)
============================================================

The META PRINCIPLE applies: when you adopt `String`, `Vec`, `Box<T>`,
`Rc<T>`, etc., the idiom switches with the type. Do NOT keep C-style
cursors / raw `as_ptr()` walks / `vec![T::default(); n]` purely for
allocation. Use `Vec::with_capacity(n)` + `push`, `String::push`,
`v.len()`, and direct iteration.

CROSS-STAGE TRIPWIRES (Rust translations):
- Construct with `String::new()` + `push_str` / `push`, or
  `Vec::with_capacity` + `push`. Do NOT use `unsafe` raw allocation
  to fill a `String`/`Vec` C-style.
- Do NOT keep `*mut u8` cursors over container storage; use indexed
  or iterator access.
- Do NOT store `s.as_ptr()` / `v.as_ptr()` past the container's
  lifetime.
- Transfer ownership with plain move (Rust default); use `mem::take`
  / `mem::replace` if you need the old value while installing a new
  one. Never `ptr::copy` between non-Copy fields.
- When changing a field from `*mut c_char` to `String`, remove every
  `libc::free` / `CString::from_raw` on that field — the drop glue
  handles it.

RUST-SPECIFIC RULES:

1. BYTE BUFFERS vs UTF-8 STRINGS. When the C buffer holds arbitrary
   bytes (not guaranteed valid UTF-8), use `Vec<u8>`, NOT `String`.
   Writing `s.push(byte as char)` reinterprets the byte as a Unicode
   codepoint U+00xx and re-encodes it as 2 UTF-8 bytes for any byte
   >= 0x80, silently corrupting non-ASCII content (and inflating
   byte-sum checksums). Build with `Vec<u8>`, push raw bytes, and
   convert at the end via `String::from_utf8_lossy(&buf).into_owned()`
   — only if a `String` is truly required.

2. NUL TERMINATOR AT THE BOUNDARY. Do NOT preserve C's
   "length = strlen + 1" / "length includes the NUL" convention when
   porting to slice-based access. A `&[u8]` slice's `.len()` already
   excludes any null terminator. NEVER pass `length = bytes.len() + 1`
   alongside `content = &bytes[..]` (without the +1 byte present):
   bounds-checked slice access at the tail will panic. Rust owning
   buffers (`String`, `Vec<u8>`, `Box<[u8]>`) track length explicitly
   — drop the `'\\0'` terminator at the porting boundary. Keep a
   trailing NUL only at FFI boundaries via `CString::new(...)`.
"""


# On-demand hint appended to Stage_10 prompts ONLY when the codebase
# has any file-scope `static` declaration (detected via TypeKind.STATIC
# entries in the type registry). Most codebases don't carry mutable
# globals; injecting this ~25-line block on every Stage_10 call
# (3 sites × ~25 calls = 75 / run) wastes tokens and — more
# importantly — over-generalises the "owning field is CORRECT"
# example to non-global structs (the cjson_parse `parse_buffer.content
# -> Vec<u8>` over-promotion was driven by this section being always-on).
STAGE_10_GLOBAL_OWNERSHIP_HINT = """
============================================================
MUTABLE GLOBALS & GLOBAL-INSTANTIATED STRUCT OWNERSHIP
============================================================

MUTABLE GLOBALS. A file-scope C/C++ variable that is written by any
function (i.e. not `const` / not `constexpr`) translates to
`static mut NAME: T = ...;` and every read or write is wrapped in
`unsafe { ... }`. Plain `static NAME: T = ...;` is IMMUTABLE in Rust
(`E0594: cannot assign ... immutable static item`). Only emit a plain
`static` if the global is never written after its initializer.
`Vec::new()` / `String::new()` are `const fn` (Rust 1.39+) and valid
in static initializers, so this does not force a `OnceCell` rewrite.

OWNERSHIP CONSTRAINT — APPLIES ONLY when a struct is INSTANTIATED
inside a `static` / `static mut` declaration. Such a global requires
`T: 'static`, so the struct's fields may NOT contain a borrowed
reference (`&'a [u8]`, `&'a str`, `&'a T`, `Cow<'a, _>`, or any
`Struct<'a>` whose lifetime is not `'static`). The FIELD's type must
own its data; the function assigning into it copies on assignment.

  C field type             →  Rust field type     write site
  `const char *` (bytes)   →  `Vec<u8>`           `slice.to_vec()`
  `const char *` (UTF-8)   →  `String`            `s.to_string()`
  `const T *`              →  `T` (by value) / `Box<T>`

This applies ONLY to globals. Structs that exist only as locals or
are passed by `&mut` / `&` reference keep their borrowed fields and
lifetime parameters as-is — do NOT promote them to `Vec` / `String`.
"""


# On-demand hint injected at Stage_10 prompts ONLY when at least one
# struct in the type registry holds a C++ borrowed-view field
# (`std::string_view`, `std::basic_string_view<...>`, `std::span<...>`)
# that will translate to `&str` / `&[T]` in Rust and thus force a
# lifetime parameter on the struct. Without any such struct, the model
# never writes `<'a>` and can't hit the single-lifetime trap — sending
# this rule is pure overhead. The compressed form below is the syntactic
# self-check pattern; the long version with worked examples lived in
# RUST_OUTPUT_RULES previously and proved both verbose and unreliable.
STAGE_10_LIFETIME_SELF_CHECK_HINT = """
LIFETIME SELF-CHECK before emitting any function signature: if your
signature has `<'a>` AND the same `'a` appears on both an outer
`&` / `&mut` AND a struct parameter (directly or under `Option` /
`Result` / `Box` / etc.), it is BROKEN. Mechanical fix: rename the
inner `'a` to `'b` and add it to the generics list, OR elide all
lifetimes. Single-`'a` form fails with E0503 / E0499 / E0506.
"""


# On-demand hint appended to a Stage_10 function-translation prompt only
# when the C++ source actually contains stdio File I/O (`FILE *` / `FILE &`
# parameters or `fopen` / `fread` / `fwrite` / `fclose` / `fseek` calls).
# Without this rule the model tends to take the path of least resistance —
# translate `FILE *` 1:1 to `*mut libc::FILE` and call `libc::fopen` etc. —
# which leaves the Rust output peppered with `unsafe` blocks and raw
# pointers (CROWN reports `num_unsafe_ptrs` 4-7 instead of 0). Forcing
# `std::fs::File` + `BufReader` / `BufWriter` eliminates those.
STAGE_10_FILE_IO_HINT = """
File I/O: open with `std::fs::File::open` / `::create`, then wrap in
`std::io::BufReader::new(...)` / `std::io::BufWriter::new(...)` —
NEVER pass a raw `File` to `read_exact` / `write_all`. NOT
`libc::fopen` / `fread` / `fwrite` / `fclose`. The translated
functions should not hold `*mut libc::FILE` parameters; lift to
`&mut impl Read` / `&mut impl Write` (or `&mut (impl Read + Seek)` when
`fseek` is needed), or pass `&mut BufReader<File>` / `&mut BufWriter<File>`
directly. `libc::*` calls are allowed ONLY for facilities std doesn't
expose (e.g. `clock_gettime`, `rand`, `srand`).

BULK ROW I/O — when the C++ source has
`fread(VEC.data(), sizeof(T), N, f)` or
`fwrite(VEC.data(), sizeof(T), N, f)`, the Rust equivalent is ONE
statement on the `Vec`'s storage cast:

  CORRECT (read):
      let buf = unsafe {
          std::slice::from_raw_parts_mut(
              VEC.as_mut_ptr() as *mut u8,
              N * std::mem::size_of::<T>(),
          )
      };
      reader.read_exact(buf)?;

  CORRECT (write): same shape with
      std::slice::from_raw_parts(VEC.as_ptr() as *const u8, ...)
      writer.write_all(buf)?;

  FORBIDDEN (exact pattern from the last failed run):
      for i in 0..N {
          let mut buf = [0u8; std::mem::size_of::<T>()];
          reader.read_exact(&mut buf)?;
          VEC[i] = T { /* decode buf */ };
      }

For any POD `T` (scalar / nested-POD fields, no `Drop`), `Vec<T>`'s
storage matches the C byte layout under Rust's default layout for
scalar-field structs — the `unsafe { slice::from_raw_parts_mut(...) }`
cast is REQUIRED, with or without `#[repr(C)]` on `T`'s definition.
The cast is INTENDED and does NOT violate any "no raw pointer" rule.
The per-element `read_exact` loop is the WORST failure mode (N× more
`read_exact` calls); do NOT fall back to it.
"""


# On-demand hint appended to a C++-output function-translation prompt
# only when the source actually contains `goto`. Most codebases don't
# use goto in function bodies; injecting this 50-line block every call
# wastes ~2.5K characters when it doesn't apply. Rust (Stage_10) has
# no goto, so the hint is never relevant there.
GOTO_BYPASS_INIT_HINT = """
============================================================
C → C++ CONTROL FLOW — a `goto` MAY NOT BYPASS AN
INITIALIZATION (C++ output only; Rust has no goto).
============================================================

C lets a `goto` jump over a local's initializer (the variable is just
left indeterminate). C++ makes it ILL-FORMED to jump from a point where
an automatic variable is not in scope to a point where it IS in scope
when that variable has an initializer — clang reports
"cannot jump from this goto statement to its label /
jump bypasses variable initialization". The rule is purely syntactic: it
fires even for a trivial scalar (char*, int, bool) that the error path
never reads.

This breaks the standard C "single-exit cleanup" idiom, where many
`goto error;` statements skip over initialized declarations to reach one
cleanup label:

    char* end = scan(...);          // initialized decl
    if (!end) goto error;           // BYPASSES end's init; end is still
    bool  flag = check(...);        // live at `error:` -> ill-formed in C++
    ...
    return obj;
  error:
    cleanup(obj);
    return NULL;

REQUIRED FIX (trivial scalar locals — char*, int, bool, pointers): split
the declaration from the initialization, IN PLACE. Turn `T x = expr;`
into `T x;` (no initializer -> legal to bypass) plus a later `x = expr;`.
Drop any top-level `const`. Behavior is unchanged.

    char* end;                      // vacuous init: a goto may bypass it
    bool  flag;
    ...
    end = scan(...);
    if (!end) goto error;
    flag = check(...);

For a NON-trivial local (std::string, std::vector, …) the split does not
help (its default ctor is not vacuous): instead give the variable a scope
that ENDS before the label by wrapping its live range in `{ }`, so it is
not in scope at `error:`.

Apply the fix to EVERY variable the compiler flags. Do NOT "fix" it by
deleting the gotos, by inlining the cleanup into each error site, or by
changing what runs on the error path — keep the control flow and the
single cleanup block exactly as in the C source. Partially bracing only
some declarations does NOT work: if one initialized variable is still in
scope at the label, the error remains.
"""


# Stage_10 soft hint: prefer Rust standard-library types when the
# C++ input uses the corresponding C++ standard-library type.
#
# Previously a method on TranslationPipelineMixin
# (``_stage10MechanicalMappingHint(scope)``). The method ignored its
# ``scope`` argument and didn't touch ``self`` — same hint on both the
# type-declaration site and the function-body site — so it's lifted to
# a plain constant here.
#
# Intentionally NOT a full mechanical mapping table. An earlier revision
# tried to enumerate every C++ → Rust expression mapping and ended up
# teaching the byte-as-char anti-pattern via the
# ``s.push_back(c) -> s.push(c as char)`` row, corrupting non-ASCII
# bytes by re-encoding them as 2-byte UTF-8. The current hint only
# nudges the LLM to keep std-lib correspondence and leaves
# expression-level mapping to its own judgment.
STAGE_10_MECHANICAL_MAPPING_HINT = (
    "\n"
    "TYPE CORRESPONDENCE HINT — when the C++ input uses a C++ standard-\n"
    "library type at a field / parameter / local / return type, prefer\n"
    "the Rust standard-library counterpart over a raw pointer or a\n"
    "manual buffer:\n"
    "\n"
    "  std::string             -> String\n"
    "  std::vector<T>          -> Vec<T>\n"
    "  std::list<T>            -> std::collections::LinkedList<T>\n"
    "  std::unordered_map<K,V> -> std::collections::HashMap<K, V>\n"
    "  std::optional<T>        -> Option<T>\n"
    "  std::unique_ptr<T>      -> Option<Box<T>>\n"
    "  std::shared_ptr<T>      -> std::rc::Rc<T>   (or Arc<T> if used\n"
    "                             across threads)\n"
    "  std::string_view                       -> &str\n"
    "  std::basic_string_view<char>           -> &str\n"
    "  std::basic_string_view<unsigned char>  -> &[u8]\n"
    "  std::basic_string_view<E>              -> &[E]\n"
    "  std::span<const T>                     -> &[T]\n"
    "  std::span<T>                           -> &mut [T]\n"
    "\n"
    "Raw pointers in the C++ source stay raw in Rust (`*mut T` /\n"
    "`*mut c_char`); do NOT promote a raw pointer to `Box` / `String`\n"
    "just to look idiomatic.\n"
    "\n"
    + RUST_OUTPUT_RULES
)
