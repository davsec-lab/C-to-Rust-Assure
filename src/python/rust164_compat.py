#!/usr/bin/env python3
"""Source-level downgrade so translations written for rustc >= 1.70 compile under the backend's rustc 1.64.

The backend is pinned to rustc 1.64 (last release on LLVM 14, which KLEE and the passes read). Translations were
produced and validated under rustc 1.86, and some use constructs 1.64 rejects outright — in the shared header, so
every per-function file fails and the whole run scores "Rust Empty!" (batch-20260915: skiplist-gpt5.4, url.h-gpt5.4,
cjson_parse-sonnet_unlimit). Same spirit as file_adapter.py: make the function measurable, never touch its body.

  1. `unsafe extern "C" { ... }`  (syntax added in 1.82)  ->  `extern "C" { ... }`. Same semantics: items of an extern
     block are unsafe to call either way. Blocks that use the 1.82 `safe fn` item qualifier are NOT downgraded
     (callers would need new unsafe blocks); they are reported instead.
  2. `std::sync::OnceLock` (stable in 1.70, E0658 `once_cell` on 1.64)  ->  an in-file `OnceLock<T>` with the same
     new/get/set/get_or_init API over `core::cell::UnsafeCell<Option<T>>`. Single-threaded by construction, which is
     what symbolic execution runs; it deliberately avoids std::sync::Once, whose futex path is an undefined external
     for KLEE (only core/alloc IR is linked).

Disable with ASSURE_RUST164_COMPAT=0 or the splitter's --no-rust164-compat.
"""
import os
import re

ONCELOCK_POLYFILL = '''
/// rust164_compat.py: stand-in for std::sync::OnceLock (stable only since 1.70). Single-threaded.
pub struct OnceLock<T> { val: core::cell::UnsafeCell<Option<T>> }
unsafe impl<T> Sync for OnceLock<T> {}
unsafe impl<T> Send for OnceLock<T> {}
impl<T> OnceLock<T> {
    pub const fn new() -> Self { OnceLock { val: core::cell::UnsafeCell::new(None) } }
    pub fn get(&self) -> Option<&T> { unsafe { (*self.val.get()).as_ref() } }
    pub fn set(&self, v: T) -> Result<(), T> {
        unsafe { let s = &mut *self.val.get(); if s.is_none() { *s = Some(v); Ok(()) } else { Err(v) } }
    }
    pub fn get_or_init<F: FnOnce() -> T>(&self, f: F) -> &T {
        unsafe { let s = &mut *self.val.get(); if s.is_none() { *s = Some(f()); } s.as_ref().unwrap() }
    }
}
'''


def enabled_by_env():
    return os.environ.get("ASSURE_RUST164_COMPAT", "1").strip().lower() not in ("0", "false", "no", "off")


def downgrade(text: str):
    """Return (new_text, notes). notes is a list of human-readable strings, empty when nothing changed."""
    notes = []

    # 1. unsafe extern blocks
    def fix_extern(m):
        body_start = m.end()
        depth, i = 1, body_start
        while i < len(text) and depth:
            depth += {"{": 1, "}": -1}.get(text[i], 0)
            i += 1
        if re.search(r"^\s*(?:pub\s+)?safe\s+(?:fn|static)\b", text[body_start:i], re.M):
            notes.append("unsafe extern block with `safe` items left as is (needs caller changes)")
            return m.group(0)
        notes.append('`unsafe extern` block -> `extern`')
        return m.group(1) + m.group(2)
    text = re.sub(r'^([ \t]*)unsafe[ \t]+(extern[ \t]+"[^"]*"[ \t]*\{)', fix_extern, text, flags=re.M)

    # 2. OnceLock
    if re.search(r"\bOnceLock\b", text) and "rust164_compat.py: stand-in for std::sync::OnceLock" not in text:
        before = text
        text = re.sub(r"^[ \t]*(?:pub\s+)?use\s+std::sync::OnceLock\s*;[ \t]*\n", "", text, flags=re.M)

        def strip_from_braces(m):
            items = [x.strip() for x in m.group(2).split(",") if x.strip() and x.strip() != "OnceLock"]
            if not items:
                return ""
            return f"{m.group(1)}use std::sync::{{{', '.join(items)}}};\n"
        text = re.sub(r"^([ \t]*(?:pub\s+)?)use\s+std::sync::\{([^}]*\bOnceLock\b[^}]*)\}\s*;[ \t]*\n",
                      strip_from_braces, text, flags=re.M)
        text = re.sub(r"\bstd::sync::OnceLock\b", "OnceLock", text)
        if text != before or re.search(r"\bOnceLock\b", text):
            # place after the leading `use` / inner-attribute lines so `#![...]` stays first
            lines = text.split("\n")
            k = 0
            while k < len(lines) and (lines[k].startswith("#![") or lines[k].strip() == "" or lines[k].startswith("//")):
                k += 1
            text = "\n".join(lines[:k]) + ("\n" if k else "") + ONCELOCK_POLYFILL + "\n".join(lines[k:])
            notes.append("std::sync::OnceLock -> in-file single-threaded OnceLock")
    return text, notes
