import logging
import sys
import os

sys.path.insert(0, os.path.dirname(os.path.abspath(__file__)))

from gpt_translation.code_utils_mixin import (
    CodeUtilsMixin,
    _prepend_rust_libc_prelude,
    _RUST_LIBC_PRELUDE,
)


class _Harness(CodeUtilsMixin):
    def __init__(self):
        self.logger = logging.getLogger("test_libc_prelude")


def test_prelude_fixes_bare_libc_free():
    """Pre-fix this snippet hits E0425 (cannot find function `free`).
    With the prelude prepended, it must compile."""
    snippet = """\
#[repr(C)]
pub struct NSVGgradientStop {
    pub _placeholder: u8,
}

#[repr(C)]
pub struct NSVGgradientData {
    pub stops: *mut NSVGgradientStop,
    pub next: *mut NSVGgradientData,
}

pub unsafe fn nsvg__delete_gradient_data(mut grad: *mut NSVGgradientData) {
    let mut next: *mut NSVGgradientData;
    while !grad.is_null() {
        next = (*grad).next;
        free((*grad).stops as *mut std::ffi::c_void);
        free(grad as *mut std::ffi::c_void);
        grad = next;
    }
}
"""
    h = _Harness()
    ok, err = h.compileWithCargoProject(snippet)
    assert ok, f"expected snippet to compile after prelude injection, got error:\n{err}"
    print("PASS: bare libc free() compiles after prelude injection")


def test_prelude_silences_naming_warnings():
    """Snippet contains non-snake-case fns/types that would emit warnings.
    `cargo check` exits 0 either way; we just confirm it still passes and
    that the prelude was actually written into the source file."""
    snippet = """\
#[repr(C)]
pub struct NSVGgradientStop {
    pub color: u32,
}

pub unsafe fn nsvg__alloc_one() -> *mut NSVGgradientStop {
    malloc(std::mem::size_of::<NSVGgradientStop>()) as *mut NSVGgradientStop
}
"""
    h = _Harness()
    ok, err = h.compileWithCargoProject(snippet)
    assert ok, f"expected naming-noisy snippet to compile, got:\n{err}"
    print("PASS: naming-noisy snippet compiles (warnings suppressed by allow)")


def test_prelude_idempotent():
    """Calling the function twice yields the same output (no growth)."""
    snippet = (
        "#![allow(non_camel_case_types, dead_code)]\n"
        "use libc::free;\n"
        "pub unsafe fn f(p: *mut std::ffi::c_void) { free(p); }\n"
    )
    once = _prepend_rust_libc_prelude(snippet)
    twice = _prepend_rust_libc_prelude(once)
    assert once == twice, "prelude injection must be idempotent"
    print("PASS: prelude injection is idempotent")


def test_prelude_merges_with_existing_use_libc():
    """Regression: a snippet that imports a non-prelude libc symbol
    (e.g. ``strtod``) must not produce two ``use libc::{...}`` lines.

    Pre-fix: prepending the full prelude on top of the LLM's
    ``use libc::{memcpy, strtod};`` produced two lines that both named
    ``memcpy``, triggering ``E0252: defined multiple times`` and trapping
    the retry loop in a ping-pong (parse_number in cjson_new)."""
    snippet = (
        "use libc::{memcpy, strtod};\n"
        "unsafe fn f() { memcpy(std::ptr::null_mut(), std::ptr::null(), 0); strtod(std::ptr::null(), std::ptr::null_mut()); }\n"
    )
    out = _prepend_rust_libc_prelude(snippet)
    libcUseCount = sum(1 for line in out.splitlines() if line.lstrip().startswith("use libc::"))
    assert libcUseCount == 1, f"expected exactly one `use libc::` line, got {libcUseCount}:\n{out}"
    assert "strtod" in out, "the LLM-imported symbol `strtod` must survive the merge"
    assert "memcpy" in out, "the prelude symbol `memcpy` must survive the merge"
    assert "malloc" in out, "other prelude symbols must be added too"
    print("PASS: prelude merges with existing `use libc::{...}` line")


def test_prelude_prepended_when_absent():
    snippet = "pub fn nothing() {}\n"
    out = _prepend_rust_libc_prelude(snippet)
    assert out.startswith(_RUST_LIBC_PRELUDE), "prelude must be prepended"
    assert snippet in out, "original snippet must be preserved"
    print("PASS: prelude prepended when absent")


def test_compile_failure_still_reported():
    """Real syntax errors must still surface through (False, stderr)."""
    snippet = "pub fn broken( { }\n"
    h = _Harness()
    ok, err = h.compileWithCargoProject(snippet)
    assert not ok, "syntax error should be reported as failure"
    assert "error" in err.lower(), f"expected an error in stderr, got:\n{err}"
    print("PASS: real syntax errors still reported")


if __name__ == "__main__":
    logging.basicConfig(level=logging.WARNING)
    test_prelude_idempotent()
    test_prelude_merges_with_existing_use_libc()
    test_prelude_prepended_when_absent()
    test_prelude_fixes_bare_libc_free()
    test_prelude_silences_naming_warnings()
    test_compile_failure_still_reported()
    print("\nAll tests passed.")
