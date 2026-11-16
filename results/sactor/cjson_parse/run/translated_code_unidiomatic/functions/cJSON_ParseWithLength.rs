pub unsafe fn cJSON_ParseWithLength(
    value: *const libc::c_char,
    buffer_length: libc::size_t,
) -> *mut cJSON {
    cJSON_ParseWithLengthOpts(value, buffer_length, std::ptr::null_mut(), 0 as libc::c_int)
}
