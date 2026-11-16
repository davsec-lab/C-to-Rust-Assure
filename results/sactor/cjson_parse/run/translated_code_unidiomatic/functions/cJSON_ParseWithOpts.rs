pub unsafe fn cJSON_ParseWithOpts(
    value: *const libc::c_char,
    return_parse_end: *mut *const libc::c_char,
    require_null_terminated: libc::c_int,
) -> *mut cJSON {
    let mut buffer_length: libc::size_t = 0;
    if value.is_null() {
        return std::ptr::null_mut();
    }
    buffer_length = libc::strlen(value).wrapping_add(1);
    cJSON_ParseWithLengthOpts(
        value,
        buffer_length,
        return_parse_end,
        require_null_terminated,
    )
}
