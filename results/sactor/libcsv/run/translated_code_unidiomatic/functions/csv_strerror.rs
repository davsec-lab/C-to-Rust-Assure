pub fn csv_strerror(status: i32) -> *const libc::c_char {
    const CSV_EINVALID: i32 = 4;
    unsafe {
        let base = &csv_errors as *const _ as *const *const libc::c_char;
        if status >= CSV_EINVALID || status < 0 {
            *base.add(CSV_EINVALID as usize)
        } else {
            *base.add(status as usize)
        }
    }
}
