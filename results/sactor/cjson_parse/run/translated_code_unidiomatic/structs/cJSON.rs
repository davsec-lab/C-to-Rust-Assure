#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct cJSON {
    pub next: *mut cJSON,
    pub prev: *mut cJSON,
    pub child: *mut cJSON,
    pub type_0: libc::c_int,
    pub valuestring: *mut libc::c_char,
    pub valueint: libc::c_int,
    pub valuedouble: libc::c_double,
    pub string: *mut libc::c_char,
}
