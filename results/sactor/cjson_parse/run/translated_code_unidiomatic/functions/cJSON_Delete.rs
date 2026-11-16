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
