"""Tell the model how to spell the C library functions its C source calls.

The per-function ``.i`` the model is shown is not self-contained C.
``typedefFilter.stripLibcExternDeclarations`` deletes every declaration that
came from a glibc header, on the reasoning — correct for the C++ stages —
that "they're already defined by <cstdio>/<cstdlib> on the destination side".
Rust has no ``#include``, so for a Rust target the declaration is simply gone
and the model is left to guess.

What the guessing looks like, from the fidelity_contract round's validator log
on ``csv_init`` (whose ``.i`` contains ``p->realloc_func = realloc;`` and
``p->free_func = free;`` with neither symbol declared anywhere in the file):

    reasoning: "I'm considering whether to use `std::alloc` or if C's `realloc`
                and `free` are available in the Rust standard library..."
    attempt 0: use std::alloc::{realloc, Layout};  -> E0252, realloc imported twice
    attempt 1: Some(libc::realloc), Some(free)     -> is_space/is_term E0308
    attempt 2: Some(libc::realloc), Some(free)     -> unchanged
    attempt 3: Some(libc::realloc), Some(free)
    reasoning: "I'm making an assumption that `free` is in scope."

Three retries spent, the assumption wrong outside the frontend's own compile
check, and the unit merged anyway. csv_fwrite2 (undeclared ``fputc``) took two
retries. Six of libcsv's 23 functions reference a stripped libc symbol.

So: name the symbols, give their exact Rust signature, and say which spelling
to use. The signatures come from a fixed table rather than from parsing the
stripped declarations, because the table is checkable and the glibc expansions
(``__REDIRECT_NTH``, ``__attribute_malloc__``, ``__nonnull``) are not.
"""

import re


# name -> (rust signature shown to the model, one-line meaning)
LIBC_SIGNATURES = {
    "malloc":   ("libc::malloc(size: size_t) -> *mut c_void", "allocate"),
    "calloc":   ("libc::calloc(n: size_t, size: size_t) -> *mut c_void", "allocate zeroed"),
    "realloc":  ("libc::realloc(p: *mut c_void, size: size_t) -> *mut c_void", "reallocate"),
    "free":     ("libc::free(p: *mut c_void)", "free"),
    "memcpy":   ("libc::memcpy(dst: *mut c_void, src: *const c_void, n: size_t) -> *mut c_void", "copy"),
    "memmove":  ("libc::memmove(dst: *mut c_void, src: *const c_void, n: size_t) -> *mut c_void", "copy, may overlap"),
    "memset":   ("libc::memset(s: *mut c_void, c: c_int, n: size_t) -> *mut c_void", "fill"),
    "memcmp":   ("libc::memcmp(a: *const c_void, b: *const c_void, n: size_t) -> c_int", "compare"),
    "strlen":   ("libc::strlen(s: *const c_char) -> size_t", "length"),
    "strcmp":   ("libc::strcmp(a: *const c_char, b: *const c_char) -> c_int", "compare"),
    "strncmp":  ("libc::strncmp(a: *const c_char, b: *const c_char, n: size_t) -> c_int", "compare"),
    "strcpy":   ("libc::strcpy(dst: *mut c_char, src: *const c_char) -> *mut c_char", "copy"),
    "strncpy":  ("libc::strncpy(dst: *mut c_char, src: *const c_char, n: size_t) -> *mut c_char", "copy"),
    "strchr":   ("libc::strchr(s: *const c_char, c: c_int) -> *mut c_char", "find byte"),
    "strdup":   ("libc::strdup(s: *const c_char) -> *mut c_char", "duplicate"),
    "strtod":   ("libc::strtod(s: *const c_char, end: *mut *mut c_char) -> f64", "parse double"),
    "fopen":    ("libc::fopen(path: *const c_char, mode: *const c_char) -> *mut libc::FILE", "open"),
    "fclose":   ("libc::fclose(f: *mut libc::FILE) -> c_int", "close"),
    "fread":    ("libc::fread(p: *mut c_void, size: size_t, n: size_t, f: *mut libc::FILE) -> size_t", "read"),
    "fwrite":   ("libc::fwrite(p: *const c_void, size: size_t, n: size_t, f: *mut libc::FILE) -> size_t", "write"),
    "fseek":    ("libc::fseek(f: *mut libc::FILE, off: c_long, whence: c_int) -> c_int", "seek"),
    "ftell":    ("libc::ftell(f: *mut libc::FILE) -> c_long", "tell"),
    "fputc":    ("libc::fputc(c: c_int, f: *mut libc::FILE) -> c_int", "write one byte, EOF (-1) on error"),
    "fputs":    ("libc::fputs(s: *const c_char, f: *mut libc::FILE) -> c_int", "write string"),
    "fgetc":    ("libc::fgetc(f: *mut libc::FILE) -> c_int", "read one byte"),
    "putc":     ("libc::putc(c: c_int, f: *mut libc::FILE) -> c_int", "write one byte"),
    "getc":     ("libc::getc(f: *mut libc::FILE) -> c_int", "read one byte"),
    "abort":    ("libc::abort() -> !", "abort"),
    "exit":     ("libc::exit(status: c_int) -> !", "exit"),
    "qsort":    ("libc::qsort(base: *mut c_void, n: size_t, size: size_t, "
                 "cmp: Option<unsafe extern \"C\" fn(*const c_void, *const c_void) -> c_int>)", "sort"),
}


_ASSERT_MARKER = "__assert_fail"


def _strip(src):
    src = re.sub(r"/\*.*?\*/", " ", src, flags=re.S)
    src = re.sub(r"//[^\n]*", " ", src)
    src = re.sub(r'"(?:\\.|[^"\\])*"', '""', src)
    return src


def referencedLibcSymbols(cSource):
    """Table symbols the C source mentions, in table order."""
    if not cSource:
        return []
    text = _strip(cSource)
    return [name for name in LIBC_SIGNATURES if re.search(r"\b" + name + r"\b", text)]


def libcBindingContract(cSource):
    """The prompt block, or "" when the C source needs no C library symbol."""
    if not cSource:
        return ""
    names = referencedLibcSymbols(cSource)
    text = _strip(cSource)
    hasAssert = _ASSERT_MARKER in text
    if not names and not hasAssert:
        return ""

    parts = ["\nC LIBRARY SYMBOLS\n"]
    if names:
        parts.append(
            "The C above calls these C library functions. Their declarations were "
            "stripped out of the preprocessed source, so they look undeclared — they "
            "are not, and you must not invent a signature for them. The `libc` crate "
            "is available; these are the exact items and signatures:\n"
        )
        for name in names:
            signature, meaning = LIBC_SIGNATURES[name]
            parts.append("    %s   // %s\n" % (signature, meaning))
        parts.append(
            "Write `use libc::{%s};` at the top of your output and then call them by "
            "their bare names, exactly as the C does. Do NOT use `std::alloc`, do NOT "
            "declare your own `extern \"C\" { .. }` block for them, and do NOT replace "
            "them with a Rust equivalent (`Box`, `Vec`, `String`, `write!`) — the C "
            "calls the C library and so must the translation. When the C stores one of "
            "them into a function-pointer field, store the same function: "
            "`p.free_func = Some(free);`, not `None`.\n" % ", ".join(names)
        )
    if hasAssert:
        parts.append(
            "The line containing `__assert_fail` is glibc's `assert(cond)` after "
            "preprocessing: `((void) sizeof ((cond) ? 1 : 0), ({ if (cond) ; else "
            "__assert_fail(\"cond\", \"file.c\", <line>, __PRETTY_FUNCTION__); }))`. "
            "Translate the whole expansion as a single `assert!(cond);` — do not "
            "declare `__assert_fail`, do not reproduce the file name or the line "
            "number, and do not drop the check.\n"
        )
    return "".join(parts)
