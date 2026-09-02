"""Baseline / negative-control test:
Bypass the prelude injection and confirm the same snippet fails with E0425.
This proves the fix is the load-bearing piece, not coincidence."""
import logging
import os
import subprocess
import sys
import tempfile


SNIPPET = """\
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


def main():
    with tempfile.TemporaryDirectory(prefix="rust_baseline_") as tmp:
        os.makedirs(os.path.join(tmp, "src"), exist_ok=True)
        with open(os.path.join(tmp, "Cargo.toml"), "w") as f:
            f.write(
                "[package]\nname=\"baseline\"\nversion=\"0.1.0\"\nedition=\"2021\"\n\n"
                "[dependencies]\nlibc = \"0.2\"\n"
            )
        with open(os.path.join(tmp, "src", "lib.rs"), "w") as f:
            f.write(SNIPPET)
        result = subprocess.run(
            ["cargo", "check", "--quiet"],
            cwd=tmp,
            text=True,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            timeout=120,
        )
        if result.returncode == 0:
            print("UNEXPECTED: snippet compiled WITHOUT prelude. Fix may be redundant.")
            sys.exit(1)
        if "E0425" not in result.stderr or "free" not in result.stderr:
            print("UNEXPECTED FAILURE MODE — wanted E0425 on `free`, got:\n", result.stderr)
            sys.exit(1)
        print("PASS (baseline): without prelude, snippet fails with E0425 on `free` as expected.")
        print("    -> confirms the prelude injection is the actual fix.")


if __name__ == "__main__":
    logging.basicConfig(level=logging.WARNING)
    main()
