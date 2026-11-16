pub unsafe fn cJSON_GetErrorPtr() -> *const libc::c_char {
    let json = global_error.json;
    let position = global_error.position as usize;
    json.add(position) as *const libc::c_char
}
