#![allow(unaligned_references)]
type __uint64_t = u64;

#[no_mangle]
fn __uint64_identity(__x: __uint64_t) -> __uint64_t {
    __x
}
