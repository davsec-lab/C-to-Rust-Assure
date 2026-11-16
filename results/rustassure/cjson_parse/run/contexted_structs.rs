
type __syscall_slong_t = i64;
type __time_t = i64;
type cJSON_bool = i32;
pub type size_t = std::os::raw::c_ulong;
use std::cell::RefCell;
use std::rc::{Rc, Weak};

pub type CJsonLink = Option<Rc<RefCell<cJSON>>>;

pub type CJsonWeakLink = Option<Weak<RefCell<cJSON>>>;

pub struct cJSON {
    /// Next sibling in the list (owning).
    pub next: CJsonLink,
    /// Previous sibling in the list (non-owning; the head's `prev` points to the tail).
    pub prev: CJsonWeakLink,
    /// First child for arrays/objects (owning).
    pub child: CJsonLink,
    /// Type flags (including the `is_reference` / `string_is_const` bits).
    pub r#type: i32,
    /// String value, stored as an owned byte buffer (None == NULL).
    pub valuestring: Option<Vec<u8>>,
    /// Integer value (deprecated in cJSON, kept for compatibility).
    pub valueint: i32,
    /// Floating-point value.
    pub valuedouble: f64,
    /// Key name when this item is a member of an object, as an owned byte buffer (None == NULL).
    pub string: Option<Vec<u8>>,
}
#[derive(Debug, Clone, Copy, Default)]
pub struct error<'a> {
    pub json: Option<&'a [u8]>,
    pub position: usize,
}
use std::ffi::c_void;

pub struct internal_hooks {
    pub allocate: fn(size: size_t) -> *mut c_void,
    pub deallocate: fn(pointer: *mut c_void),
    pub reallocate: fn(pointer: *mut c_void, size: size_t) -> *mut c_void,
}
pub struct parse_buffer<'a> {
    pub content: &'a [u8],
    pub length: size_t,
    pub offset: size_t,
    pub depth: size_t,
    pub hooks: internal_hooks,
}
use std::sync::Mutex;

static GLOBAL_ERROR: Mutex<error<'static>> = Mutex::new(error {
    json: None,
    position: 0,
});
use libc::{free, malloc};
use std::ffi::c_void;

fn global_hooks_malloc(size: size_t) -> *mut c_void {
    unsafe { malloc(size as usize) }
}

fn global_hooks_free(pointer: *mut c_void) {
    unsafe { free(pointer) }
}

fn global_hooks_realloc_null(_pointer: *mut c_void, _size: size_t) -> *mut c_void {
    std::ptr::null_mut()
}

static mut global_hooks: internal_hooks = internal_hooks {
    allocate: global_hooks_malloc,
    deallocate: global_hooks_free,
    reallocate: global_hooks_realloc_null,
};