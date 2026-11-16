pub unsafe fn parse_value(item: *mut cJSON, input_buffer: *mut parse_buffer) -> libc::c_int {
    if input_buffer.is_null() || (*input_buffer).content.is_null() {
        return 0;
    }
    if ((*input_buffer).offset + 4 <= (*input_buffer).length)
        && libc::strncmp(
            (*input_buffer).content.add((*input_buffer).offset) as *const libc::c_char,
            b"null\0".as_ptr() as *const libc::c_char,
            4,
        ) == 0
    {
        (*item).type_0 = 1 << 2;
        (*input_buffer).offset += 4;
        return 1;
    }
    if ((*input_buffer).offset + 5 <= (*input_buffer).length)
        && libc::strncmp(
            (*input_buffer).content.add((*input_buffer).offset) as *const libc::c_char,
            b"false\0".as_ptr() as *const libc::c_char,
            5,
        ) == 0
    {
        (*item).type_0 = 1 << 0;
        (*input_buffer).offset += 5;
        return 1;
    }
    if ((*input_buffer).offset + 4 <= (*input_buffer).length)
        && libc::strncmp(
            (*input_buffer).content.add((*input_buffer).offset) as *const libc::c_char,
            b"true\0".as_ptr() as *const libc::c_char,
            4,
        ) == 0
    {
        (*item).type_0 = 1 << 1;
        (*item).valueint = 1;
        (*input_buffer).offset += 4;
        return 1;
    }
    if ((*input_buffer).offset + 0 < (*input_buffer).length)
        && (*(*input_buffer).content.add((*input_buffer).offset) == b'"')
    {
        return parse_string(item, input_buffer);
    }
    if ((*input_buffer).offset + 0 < (*input_buffer).length)
        && ((*(*input_buffer).content.add((*input_buffer).offset) == b'-')
            || ((*(*input_buffer).content.add((*input_buffer).offset) >= b'0')
                && (*(*input_buffer).content.add((*input_buffer).offset) <= b'9')))
    {
        return parse_number(item, input_buffer);
    }
    if ((*input_buffer).offset + 0 < (*input_buffer).length)
        && (*(*input_buffer).content.add((*input_buffer).offset) == b'[')
    {
        return parse_array(item, input_buffer);
    }
    if ((*input_buffer).offset + 0 < (*input_buffer).length)
        && (*(*input_buffer).content.add((*input_buffer).offset) == b'{')
    {
        return parse_object(item, input_buffer);
    }
    0
}
