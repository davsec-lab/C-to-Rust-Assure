use libc::size_t;
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
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct internal_hooks {
    pub allocate: Option<unsafe extern "C" fn(size_t) -> *mut libc::c_void>,
    pub deallocate: Option<unsafe extern "C" fn(*mut libc::c_void) -> ()>,
    pub reallocate: Option<unsafe extern "C" fn(*mut libc::c_void, size_t) -> *mut libc::c_void>,
}
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct parse_buffer {
    pub content: *const libc::c_uchar,
    pub length: size_t,
    pub offset: size_t,
    pub depth: size_t,
    pub hooks: internal_hooks,
}
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct error {
    pub json: *const libc::c_uchar,
    pub position: size_t,
}
static mut global_error: error = error {
    json: std::ptr::null(),
    position: 0,
};
static mut global_hooks: internal_hooks = internal_hooks {
    allocate: Some(libc::malloc),
    deallocate: Some(libc::free),
    reallocate: None,
};
extern "C" {
    static mut stderr: *mut libc::FILE;
}
pub unsafe fn cJSON_GetErrorPtr() -> *const libc::c_char {
    let json = global_error.json;
    let position = global_error.position;
    json.add(position) as *const libc::c_char
}
pub unsafe fn cJSON_Delete(mut item: *mut cJSON) {
    let mut next: *mut cJSON = std::ptr::null_mut();
    while !item.is_null() {
        next = (*item).next;
        if (*item).type_0 & 256 == 0 && !(*item).child.is_null() {
            cJSON_Delete((*item).child);
        }
        if (*item).type_0 & 256 == 0 && !(*item).valuestring.is_null() {
            if let Some(dealloc) = global_hooks.deallocate {
                dealloc((*item).valuestring as *mut libc::c_void);
            }
            (*item).valuestring = std::ptr::null_mut();
        }
        if (*item).type_0 & 512 == 0 && !(*item).string.is_null() {
            if let Some(dealloc) = global_hooks.deallocate {
                dealloc((*item).string as *mut libc::c_void);
            }
            (*item).string = std::ptr::null_mut();
        }
        if let Some(dealloc) = global_hooks.deallocate {
            dealloc(item as *mut libc::c_void);
        }
        item = next;
    }
}
pub unsafe fn cJSON_New_Item(hooks: *const internal_hooks) -> *mut cJSON {
    let node: *mut cJSON =
        ((*hooks).allocate.unwrap())(::core::mem::size_of::<cJSON>() as _) as *mut cJSON;
    if !node.is_null() {
        libc::memset(
            node as *mut libc::c_void,
            0,
            ::core::mem::size_of::<cJSON>(),
        );
    }
    node
}
pub fn get_decimal_point() -> u8 {
    #[cfg(feature = "enable_locales")]
    {
        unsafe {
            let lconv = libc::localeconv();
            return (*(*lconv).decimal_point) as u8;
        }
    }
    #[cfg(not(feature = "enable_locales"))]
    {
        b'.'
    }
}
pub unsafe fn parse_number(item: *mut cJSON, input_buffer: *mut parse_buffer) -> libc::c_int {
    
    let mut after_end: *mut libc::c_char = std::ptr::null_mut();
    let decimal_point: u8 = get_decimal_point();
    let mut i: usize;
    let mut number_string_length: usize = 0;
    let mut has_decimal_point: libc::c_int = 0;
    if input_buffer.is_null() || (*input_buffer).content.is_null() {
        return 0;
    }
    i = 0;
    while !input_buffer.is_null() && ((*input_buffer).offset + i) < (*input_buffer).length {
        let c = *(*input_buffer).content.add((*input_buffer).offset).add(i);
        match c {
            b'0'..=b'9' | b'+' | b'-' | b'e' | b'E' => {
                number_string_length += 1;
            }
            b'.' => {
                number_string_length += 1;
                has_decimal_point = 1;
            }
            _ => break,
        }
        i += 1;
    }
    let number_c_string =
        ((*input_buffer).hooks.allocate.unwrap())(number_string_length + 1) as *mut u8;
    if number_c_string.is_null() {
        return 0;
    }
    std::ptr::copy_nonoverlapping(
        (*input_buffer).content.add((*input_buffer).offset),
        number_c_string,
        number_string_length,
    );
    *number_c_string.add(number_string_length) = 0;
    if has_decimal_point != 0 {
        i = 0;
        while i < number_string_length {
            if *number_c_string.add(i) == b'.' {
                *number_c_string.add(i) = decimal_point;
            }
            i += 1;
        }
    }
    let number: f64 = libc::strtod(number_c_string as *const libc::c_char, &mut after_end);
    if number_c_string as *mut libc::c_char == after_end {
        ((*input_buffer).hooks.deallocate.unwrap())(number_c_string as *mut libc::c_void);
        return 0;
    }
    (*item).valuedouble = number;
    if number >= libc::INT_MAX as f64 {
        (*item).valueint = libc::INT_MAX;
    } else if number <= libc::INT_MIN as f64 {
        (*item).valueint = libc::INT_MIN;
    } else {
        (*item).valueint = number as libc::c_int;
    }
    (*item).type_0 = 1 << 3;
    (*input_buffer).offset += (after_end as usize) - (number_c_string as usize);
    ((*input_buffer).hooks.deallocate.unwrap())(number_c_string as *mut libc::c_void);
    1
}
pub unsafe fn parse_hex4(input: *const u8) -> u32 {
    let mut h: u32 = 0;
    let mut i: usize = 0;
    while i < 4 {
        let c = *input.add(i);
        if c.is_ascii_digit() {
            h = h.wrapping_add((c as u32).wrapping_sub('0' as u32));
        } else if (b'A'..=b'F').contains(&c) {
            h = h.wrapping_add((10u32).wrapping_add(c as u32).wrapping_sub('A' as u32));
        } else if (b'a'..=b'f').contains(&c) {
            h = h.wrapping_add((10u32).wrapping_add(c as u32).wrapping_sub('a' as u32));
        } else {
            return 0;
        }
        if i < 3 {
            h <<= 4;
        }
        i += 1;
    }
    h
}
pub fn utf16_literal_to_utf8(
    input_pointer: *const u8,
    input_end: *const u8,
    output_pointer: *mut *mut u8,
) -> u8 {
    unsafe {
        let mut codepoint: u64;
        
        let first_sequence = input_pointer;
        let utf8_length: u8;
        let mut utf8_position: u8;
        let sequence_length: u8;
        let mut first_byte_mark: u8 = 0;
        if (input_end as isize - first_sequence as isize) < 6 {
            return 0;
        }
        let first_code: u32 = parse_hex4(first_sequence.offset(2));
        if (0xDC00..=0xDFFF).contains(&first_code) {
            return 0;
        }
        if (0xD800..=0xDBFF).contains(&first_code) {
            let second_sequence = first_sequence.offset(6);
            sequence_length = 12;
            if (input_end as isize - second_sequence as isize) < 6 {
                return 0;
            }
            if *second_sequence != b'\\' || *second_sequence.offset(1) != b'u' {
                return 0;
            }
            let second_code = parse_hex4(second_sequence.offset(2));
            if !(0xDC00..=0xDFFF).contains(&second_code) {
                return 0;
            }
            codepoint =
                0x10000u64 + ((((first_code & 0x3FF) << 10) | (second_code & 0x3FF)) as u64);
        } else {
            sequence_length = 6;
            codepoint = first_code as u64;
        }
        if codepoint < 0x80 {
            utf8_length = 1;
        } else if codepoint < 0x800 {
            utf8_length = 2;
            first_byte_mark = 0xC0;
        } else if codepoint < 0x10000 {
            utf8_length = 3;
            first_byte_mark = 0xE0;
        } else if codepoint <= 0x10FFFF {
            utf8_length = 4;
            first_byte_mark = 0xF0;
        } else {
            return 0;
        }
        utf8_position = utf8_length - 1;
        while utf8_position > 0 {
            *(*output_pointer).offset(utf8_position as isize) = ((codepoint | 0x80) & 0xBF) as u8;
            codepoint >>= 6;
            utf8_position -= 1;
        }
        if utf8_length > 1 {
            *(*output_pointer) = ((codepoint | first_byte_mark as u64) & 0xFF) as u8;
        } else {
            *(*output_pointer) = (codepoint & 0x7F) as u8;
        }
        *output_pointer = (*output_pointer).offset(utf8_length as isize);
        sequence_length
    }
}
pub unsafe fn parse_string(item: *mut cJSON, input_buffer: *mut parse_buffer) -> libc::c_int {
    let mut input_pointer: *const u8 = (*input_buffer).content.add((*input_buffer).offset).add(1);
    let mut input_end: *const u8 = (*input_buffer).content.add((*input_buffer).offset).add(1);
    let mut output_pointer: *mut u8 = std::ptr::null_mut();
    let mut output: *mut u8 = std::ptr::null_mut();
    'fail: {
        if *(*input_buffer).content.add((*input_buffer).offset) != b'"' {
            break 'fail;
        }
        {
            let mut skipped_bytes: usize = 0;
            while ((input_end.offset_from((*input_buffer).content)) as usize)
                < (*input_buffer).length
                && *input_end != b'"'
            {
                if *input_end == b'\\' {
                    if (input_end.add(1).offset_from((*input_buffer).content)) as usize
                        >= (*input_buffer).length
                    {
                        break 'fail;
                    }
                    skipped_bytes += 1;
                    input_end = input_end.add(1);
                }
                input_end = input_end.add(1);
            }
            if (input_end.offset_from((*input_buffer).content)) as usize >= (*input_buffer).length
                || *input_end != b'"'
            {
                break 'fail;
            }
            let start = (*input_buffer).content.add((*input_buffer).offset);
            let allocation_length: usize = (input_end.offset_from(start)) as usize - skipped_bytes;
            output = match (*input_buffer).hooks.allocate {
                Some(f) => f(allocation_length + 1) as *mut u8,
                None => std::ptr::null_mut(),
            };
            if output.is_null() {
                break 'fail;
            }
        }
        output_pointer = output;
        while input_pointer < input_end {
            if *input_pointer != b'\\' {
                *output_pointer = *input_pointer;
                output_pointer = output_pointer.add(1);
                input_pointer = input_pointer.add(1);
            } else {
                let mut sequence_length: u8 = 2;
                if (input_end.offset_from(input_pointer)) < 1 {
                    break 'fail;
                }
                match *input_pointer.add(1) {
                    b'b' => {
                        *output_pointer = 0x08;
                        output_pointer = output_pointer.add(1);
                    }
                    b'f' => {
                        *output_pointer = 0x0C;
                        output_pointer = output_pointer.add(1);
                    }
                    b'n' => {
                        *output_pointer = b'\n';
                        output_pointer = output_pointer.add(1);
                    }
                    b'r' => {
                        *output_pointer = b'\r';
                        output_pointer = output_pointer.add(1);
                    }
                    b't' => {
                        *output_pointer = b'\t';
                        output_pointer = output_pointer.add(1);
                    }
                    b'"' | b'\\' | b'/' => {
                        *output_pointer = *input_pointer.add(1);
                        output_pointer = output_pointer.add(1);
                    }
                    b'u' => {
                        sequence_length = utf16_literal_to_utf8(
                            input_pointer,
                            input_end,
                            &mut output_pointer as *mut *mut u8,
                        );
                        if sequence_length == 0 {
                            break 'fail;
                        }
                    }
                    _ => {
                        break 'fail;
                    }
                }
                input_pointer = input_pointer.add(sequence_length as usize);
            }
        }
        *output_pointer = 0;
        (*item).type_0 = 1 << 4;
        (*item).valuestring = output as *mut libc::c_char;
        (*input_buffer).offset = (input_end.offset_from((*input_buffer).content)) as usize;
        (*input_buffer).offset += 1;
        return 1;
    }
    if !output.is_null() {
        if let Some(d) = (*input_buffer).hooks.deallocate {
            d(output as *mut libc::c_void);
        }
    }
    if !input_pointer.is_null() {
        (*input_buffer).offset = (input_pointer.offset_from((*input_buffer).content)) as usize;
    }
    0
}
pub unsafe fn buffer_skip_whitespace(buffer: *mut parse_buffer) -> *mut parse_buffer {
    if buffer.is_null() || (*buffer).content.is_null() {
        return std::ptr::null_mut();
    }
    if (*buffer).offset >= (*buffer).length {
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
pub unsafe fn skip_utf8_bom(buffer: *mut parse_buffer) -> *mut parse_buffer {
    if buffer.is_null() || (*buffer).content.is_null() || (*buffer).offset != 0 {
        return std::ptr::null_mut();
    }
    if ((*buffer).offset.wrapping_add(4) < (*buffer).length)
        && (libc::strncmp(
            (*buffer).content.add((*buffer).offset) as *const libc::c_char,
            b"\xEF\xBB\xBF\0".as_ptr() as *const libc::c_char,
            3,
        ) == 0)
    {
        (*buffer).offset = (*buffer).offset.wrapping_add(3);
    }
    buffer
}
pub unsafe fn cJSON_ParseWithLengthOpts(
    value: *const libc::c_char,
    buffer_length: libc::size_t,
    return_parse_end: *mut *const libc::c_char,
    require_null_terminated: libc::c_int,
) -> *mut cJSON {
    let mut buffer: parse_buffer = parse_buffer {
        content: std::ptr::null(),
        length: 0,
        offset: 0,
        depth: 0,
        hooks: internal_hooks {
            allocate: None,
            deallocate: None,
            reallocate: None,
        },
    };
    let mut item: *mut cJSON = std::ptr::null_mut();
    global_error.json = std::ptr::null();
    global_error.position = 0;
    'fail: {
        if value.is_null() || buffer_length == 0 {
            break 'fail;
        }
        buffer.content = value as *const libc::c_uchar;
        buffer.length = buffer_length;
        buffer.offset = 0;
        buffer.hooks = global_hooks;
        item = cJSON_New_Item(&global_hooks as *const internal_hooks);
        if item.is_null() {
            break 'fail;
        }
        let bp: *mut parse_buffer = &mut buffer;
        if parse_value(item, buffer_skip_whitespace(skip_utf8_bom(bp))) == 0 {
            break 'fail;
        }
        if require_null_terminated != 0 {
            buffer_skip_whitespace(&mut buffer as *mut parse_buffer);
            if buffer.offset >= buffer.length || *buffer.content.add(buffer.offset) != 0 {
                break 'fail;
            }
        }
        if !return_parse_end.is_null() {
            *return_parse_end = buffer.content.add(buffer.offset) as *const libc::c_char;
        }
        return item;
    }
    if !item.is_null() {
        cJSON_Delete(item);
    }
    if !value.is_null() {
        let mut local_error: error = error {
            json: value as *const libc::c_uchar,
            position: 0,
        };
        if buffer.offset < buffer.length {
            local_error.position = buffer.offset;
        } else if buffer.length > 0 {
            local_error.position = buffer.length - 1;
        }
        if !return_parse_end.is_null() {
            *return_parse_end =
                (local_error.json as *const libc::c_char).add(local_error.position);
        }
        global_error = local_error;
    }
    std::ptr::null_mut()
}
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
pub unsafe fn cJSON_Parse(value: *const libc::c_char) -> *mut cJSON {
    cJSON_ParseWithOpts(value, std::ptr::null_mut(), 0 as libc::c_int)
}
pub unsafe fn cJSON_ParseWithLength(
    value: *const libc::c_char,
    buffer_length: libc::size_t,
) -> *mut cJSON {
    cJSON_ParseWithLengthOpts(value, buffer_length, std::ptr::null_mut(), 0 as libc::c_int)
}
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
    if ((*input_buffer).offset < (*input_buffer).length)
        && (*(*input_buffer).content.add((*input_buffer).offset) == b'"')
    {
        return parse_string(item, input_buffer);
    }
    if ((*input_buffer).offset < (*input_buffer).length)
        && ((*(*input_buffer).content.add((*input_buffer).offset) == b'-')
            || ((*(*input_buffer).content.add((*input_buffer).offset) >= b'0')
                && (*(*input_buffer).content.add((*input_buffer).offset) <= b'9')))
    {
        return parse_number(item, input_buffer);
    }
    if ((*input_buffer).offset < (*input_buffer).length)
        && (*(*input_buffer).content.add((*input_buffer).offset) == b'[')
    {
        return parse_array(item, input_buffer);
    }
    if ((*input_buffer).offset < (*input_buffer).length)
        && (*(*input_buffer).content.add((*input_buffer).offset) == b'{')
    {
        return parse_object(item, input_buffer);
    }
    0
}
pub unsafe fn parse_array(item: *mut cJSON, input_buffer: *mut parse_buffer) -> libc::c_int {
    let mut head: *mut cJSON = std::ptr::null_mut();
    let mut current_item: *mut cJSON = std::ptr::null_mut();
    if (*input_buffer).depth >= 1000 {
        return 0;
    }
    (*input_buffer).depth = (*input_buffer).depth.wrapping_add(1);
    let ok: bool = 'blk: {
        if *(*input_buffer).content.add((*input_buffer).offset) != b'[' {
            break 'blk false;
        }
        (*input_buffer).offset = (*input_buffer).offset.wrapping_add(1);
        buffer_skip_whitespace(input_buffer);
        if !input_buffer.is_null()
            && (*input_buffer).offset < (*input_buffer).length
            && *(*input_buffer).content.add((*input_buffer).offset) == b']'
        {
            break 'blk true;
        }
        if input_buffer.is_null() || ((*input_buffer).offset >= (*input_buffer).length) {
            (*input_buffer).offset = (*input_buffer).offset.wrapping_sub(1);
            break 'blk false;
        }
        (*input_buffer).offset = (*input_buffer).offset.wrapping_sub(1);
        loop {
            let new_item = cJSON_New_Item(&(*input_buffer).hooks as *const internal_hooks);
            if new_item.is_null() {
                break 'blk false;
            }
            if head.is_null() {
                head = new_item;
                current_item = new_item;
            } else {
                (*current_item).next = new_item;
                (*new_item).prev = current_item;
                current_item = new_item;
            }
            (*input_buffer).offset = (*input_buffer).offset.wrapping_add(1);
            buffer_skip_whitespace(input_buffer);
            if parse_value(current_item, input_buffer) == 0 {
                break 'blk false;
            }
            buffer_skip_whitespace(input_buffer);
            if !(!input_buffer.is_null()
                && (*input_buffer).offset < (*input_buffer).length
                && *(*input_buffer).content.add((*input_buffer).offset) == b',')
            {
                break;
            }
        }
        if input_buffer.is_null()
            || ((*input_buffer).offset >= (*input_buffer).length)
            || *(*input_buffer).content.add((*input_buffer).offset) != b']'
        {
            break 'blk false;
        }
        true
    };
    if ok {
        (*input_buffer).depth = (*input_buffer).depth.wrapping_sub(1);
        if !head.is_null() {
            (*head).prev = current_item;
        }
        (*item).type_0 = 1 << 5;
        (*item).child = head;
        (*input_buffer).offset = (*input_buffer).offset.wrapping_add(1);
        1
    } else {
        if !head.is_null() {
            cJSON_Delete(head);
        }
        0
    }
}
pub unsafe fn parse_object(item: *mut cJSON, input_buffer: *mut parse_buffer) -> libc::c_int {
    let mut head: *mut cJSON = std::ptr::null_mut();
    let mut current_item: *mut cJSON = std::ptr::null_mut();
    if (*input_buffer).depth >= 1000 {
        return 0;
    }
    (*input_buffer).depth = (*input_buffer).depth.wrapping_add(1);
    'fail: {
        'success: {
            if input_buffer.is_null()
                || (((*input_buffer).offset) >= (*input_buffer).length)
                || *((*input_buffer).content.add((*input_buffer).offset)) != b'{'
            {
                break 'fail;
            }
            (*input_buffer).offset = (*input_buffer).offset.wrapping_add(1);
            buffer_skip_whitespace(input_buffer);
            if !input_buffer.is_null()
                && ((*input_buffer).offset < (*input_buffer).length)
                && *((*input_buffer).content.add((*input_buffer).offset)) == b'}'
            {
                break 'success;
            }
            if input_buffer.is_null() || ((*input_buffer).offset >= (*input_buffer).length) {
                (*input_buffer).offset = (*input_buffer).offset.wrapping_sub(1);
                break 'fail;
            }
            (*input_buffer).offset = (*input_buffer).offset.wrapping_sub(1);
            loop {
                let new_item = cJSON_New_Item(&(*input_buffer).hooks);
                if new_item.is_null() {
                    break 'fail;
                }
                if head.is_null() {
                    head = new_item;
                    current_item = new_item;
                } else {
                    (*current_item).next = new_item;
                    (*new_item).prev = current_item;
                    current_item = new_item;
                }
                if input_buffer.is_null()
                    || ((*input_buffer).offset.wrapping_add(1) >= (*input_buffer).length)
                {
                    break 'fail;
                }
                (*input_buffer).offset = (*input_buffer).offset.wrapping_add(1);
                buffer_skip_whitespace(input_buffer);
                if parse_string(current_item, input_buffer) == 0 {
                    break 'fail;
                }
                buffer_skip_whitespace(input_buffer);
                (*current_item).string = (*current_item).valuestring;
                (*current_item).valuestring = std::ptr::null_mut();
                if input_buffer.is_null()
                    || ((*input_buffer).offset >= (*input_buffer).length)
                    || *((*input_buffer).content.add((*input_buffer).offset)) != b':'
                {
                    break 'fail;
                }
                (*input_buffer).offset = (*input_buffer).offset.wrapping_add(1);
                buffer_skip_whitespace(input_buffer);
                if parse_value(current_item, input_buffer) == 0 {
                    break 'fail;
                }
                buffer_skip_whitespace(input_buffer);
                if !(!input_buffer.is_null()
                    && ((*input_buffer).offset < (*input_buffer).length)
                    && *((*input_buffer).content.add((*input_buffer).offset)) == b',')
                {
                    break;
                }
            }
            if input_buffer.is_null()
                || ((*input_buffer).offset >= (*input_buffer).length)
                || *((*input_buffer).content.add((*input_buffer).offset)) != b'}'
            {
                break 'fail;
            }
        }
        (*input_buffer).depth = (*input_buffer).depth.wrapping_sub(1);
        if !head.is_null() {
            (*head).prev = current_item;
        }
        (*item).type_0 = 1 << 6;
        (*item).child = head;
        (*input_buffer).offset = (*input_buffer).offset.wrapping_add(1);
        return 1;
    }
    if !head.is_null() {
        cJSON_Delete(head);
    }
    0
}
pub unsafe fn tree_checksum(item: *const cJSON) -> libc::c_double {
    let mut item = item;
    let mut acc: libc::c_double = 0.0;
    while !item.is_null() {
        acc += (*item).valuedouble;
        if !(*item).valuestring.is_null() {
            let mut p = (*item).valuestring as *const libc::c_char;
            while *p != 0 {
                acc += (*p as u8) as libc::c_double;
                p = p.add(1);
            }
        }
        if !(*item).string.is_null() {
            let mut p = (*item).string as *const libc::c_char;
            while *p != 0 {
                acc += (*p as u8) as libc::c_double;
                p = p.add(1);
            }
        }
        if !(*item).child.is_null() {
            acc += tree_checksum((*item).child as *const cJSON);
        }
        item = (*item).next as *const cJSON;
    }
    acc
}
pub unsafe fn diff_timespec(time1: *const libc::timespec, time0: *const libc::timespec) -> f64 {
    let sec = (*time1).tv_sec.wrapping_sub((*time0).tv_sec);
    let nsec = (*time1).tv_nsec.wrapping_sub((*time0).tv_nsec);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn main() {
    unsafe {
        let args: Vec<String> = std::env::args().collect();
        if args.len() < 2 {
            let name = if !args.is_empty() {
                args[0].clone()
            } else {
                String::new()
            };
            eprintln!("Usage: {} <file.json>", name);
            std::process::exit(1);
        }
        let path = args[1].clone();
        let cpath = std::ffi::CString::new(path.clone()).unwrap();
        let f = libc::fopen(cpath.as_ptr(), b"rb\0".as_ptr() as *const libc::c_char);
        if f.is_null() {
            eprintln!("Error: cannot open '{}'", path);
            std::process::exit(1);
        }
        libc::fseek(f, 0, libc::SEEK_END);
        let length: libc::c_long = libc::ftell(f);
        libc::fseek(f, 0, libc::SEEK_SET);
        if length < 0 {
            eprintln!("Error: cannot determine file size");
            libc::fclose(f);
            std::process::exit(1);
        }
        let content = libc::malloc((length as usize) + 1) as *mut libc::c_char;
        if content.is_null() {
            eprintln!("Error: out of memory");
            libc::fclose(f);
            std::process::exit(1);
        }
        if libc::fread(content as *mut libc::c_void, 1, length as usize, f) != length as usize {
            eprintln!("Error: failed to read file");
            libc::free(content as *mut libc::c_void);
            libc::fclose(f);
            std::process::exit(1);
        }
        libc::fclose(f);
        *content.add(length as usize) = 0;
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        let mut checksum: f64 = 0.0;
        let iterations: libc::c_long = 5000;
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        let mut i: libc::c_long = 0;
        while i < iterations {
            let root = cJSON_ParseWithLength(content as *const libc::c_char, (length as usize) + 1);
            if root.is_null() {
                let err = cJSON_GetErrorPtr();
                let msg = if !err.is_null() {
                    std::ffi::CStr::from_ptr(err).to_string_lossy().into_owned()
                } else {
                    "(unknown)".to_string()
                };
                eprintln!("Parse error near: {}", msg);
                libc::free(content as *mut libc::c_void);
                std::process::exit(1);
            }
            checksum += tree_checksum(root as *const cJSON);
            cJSON_Delete(root);
            i += 1;
        }
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        let time_elapsed = diff_timespec(&end_time, &start_time);
        libc::free(content as *mut libc::c_void);
        println!(
            "Time taken to parse json {}: {:.6} seconds",
            path, time_elapsed
        );
        println!("Checksum: {:.0}", checksum);
    }
}
