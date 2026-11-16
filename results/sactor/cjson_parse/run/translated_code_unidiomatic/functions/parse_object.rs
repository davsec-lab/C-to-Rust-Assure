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
                || !(((*input_buffer).offset) < (*input_buffer).length)
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
            if input_buffer.is_null() || !((*input_buffer).offset < (*input_buffer).length) {
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
                    || !((*input_buffer).offset.wrapping_add(1) < (*input_buffer).length)
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
                    || !((*input_buffer).offset < (*input_buffer).length)
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
                || !((*input_buffer).offset < (*input_buffer).length)
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
