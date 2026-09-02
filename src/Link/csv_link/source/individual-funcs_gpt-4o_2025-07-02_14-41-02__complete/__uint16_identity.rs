#![allow(unaligned_references)]
type __uint16_t = u16;

#[no_mangle]
fn __uint16_identity(__x: __uint16_t) -> __uint16_t {
    __x
}
