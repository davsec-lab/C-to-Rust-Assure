pub unsafe fn skip_utf8_bom(buffer: *mut parse_buffer) -> *mut parse_buffer {
    if buffer.is_null() || (*buffer).content.is_null() || (*buffer).offset != 0 {
        return std::ptr::null_mut();
    }
    if ((*buffer).offset.wrapping_add(4) < (*buffer).length)
        && (libc::strncmp(
            (*buffer).content.add((*buffer).offset as usize) as *const libc::c_char,
            b"\xEF\xBB\xBF\0".as_ptr() as *const libc::c_char,
            3,
        ) == 0)
    {
        (*buffer).offset = (*buffer).offset.wrapping_add(3);
    }
    buffer
}
