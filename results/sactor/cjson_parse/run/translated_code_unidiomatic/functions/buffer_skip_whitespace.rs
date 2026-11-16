pub unsafe fn buffer_skip_whitespace(buffer: *mut parse_buffer) -> *mut parse_buffer {
    if buffer.is_null() || (*buffer).content.is_null() {
        return std::ptr::null_mut();
    }
    if !((*buffer).offset < (*buffer).length) {
        return buffer;
    }
    while ((*buffer).offset < (*buffer).length)
        && (*((*buffer).content.add((*buffer).offset)) <= 32)
    {
        (*buffer).offset = (*buffer).offset.wrapping_add(1);
    }
    if (*buffer).offset == (*buffer).length {
        (*buffer).offset = (*buffer).offset.wrapping_sub(1);
    }
    buffer
}
