use libc::size_t;
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct internal_hooks {
    pub allocate: Option<unsafe extern "C" fn(size_t) -> *mut libc::c_void>,
    pub deallocate: Option<unsafe extern "C" fn(*mut libc::c_void) -> ()>,
    pub reallocate: Option<unsafe extern "C" fn(*mut libc::c_void, size_t) -> *mut libc::c_void>,
}
