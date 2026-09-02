#![allow(unaligned_references)]
type __uint32_t = u32;

#[no_mangle]
fn __uint32_identity(__x: __uint32_t) -> __uint32_t {
    __x
}
