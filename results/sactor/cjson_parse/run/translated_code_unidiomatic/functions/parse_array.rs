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
        if input_buffer.is_null() || !((*input_buffer).offset < (*input_buffer).length) {
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
            || !((*input_buffer).offset < (*input_buffer).length)
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
