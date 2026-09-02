// symbolized rust function manually...
#![allow(unaligned_references)]
use std::alloc::alloc;
use std::alloc::Layout;
use std::ffi::CString;


extern "C" {
    fn klee_make_symbolic(addr: *mut u8, nbytes: usize, name: *const i8);
    fn klee_print_expr(msg: *const i8, value: i64);
}
#[no_mangle]
fn r(a: &mut i32, b: &mut i32) {
    *a = *a + *b;
}
#[no_mangle]
fn main() {
    let mut x: i32 = 123;
    let mut y: i32 = 123;
    let arg_0 = b"arg_0\0";
    let arg_1 = b"arg_1\0";
    unsafe {
        klee_make_symbolic(
            &mut x as *mut i32 as *mut u8,
            std::mem::size_of::<i32>(),
            arg_0.as_ptr() as *const i8
        );
        klee_make_symbolic(
            &mut y as *mut i32 as *mut u8,
            std::mem::size_of::<i32>(),
            arg_1.as_ptr() as *const i8
        );
        let name_0 = b"arg_0 = \0";
        let name_1 = b"arg_1 = \0";
        r(&mut x, &mut y);
        klee_print_expr(name_0.as_ptr() as *const i8, x as i64);
        klee_print_expr(name_1.as_ptr() as *const i8, y as i64);
    }
}
