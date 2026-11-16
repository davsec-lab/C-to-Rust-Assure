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
