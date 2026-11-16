pub unsafe fn cJSON_Parse(value: *const libc::c_char) -> *mut cJSON {
    return cJSON_ParseWithOpts(value, std::ptr::null_mut(), 0 as libc::c_int);
}
