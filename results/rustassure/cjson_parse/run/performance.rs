use std::cell::RefCell;
use std::rc::{Rc, Weak};
use std::ffi::c_void;
use std::sync::Mutex;
use libc::{free, malloc};
use std::time::Instant;
use std::io::Read;

type __syscall_slong_t = i64;
type __time_t = i64;
type cJSON_bool = i32;
pub type size_t = std::os::raw::c_ulong;


pub type CJsonLink = Option<Rc<RefCell<cJSON>>>;

pub type CJsonWeakLink = Option<Weak<RefCell<cJSON>>>;

pub struct cJSON {
    /// Next sibling in the list (owning).
    pub next: CJsonLink,
    /// Previous sibling in the list (non-owning; the head's `prev` points to the tail).
    pub prev: CJsonWeakLink,
    /// First child for arrays/objects (owning).
    pub child: CJsonLink,
    /// Type flags (including the `is_reference` / `string_is_const` bits).
    pub r#type: i32,
    /// String value, stored as an owned byte buffer (None == NULL).
    pub valuestring: Option<Vec<u8>>,
    /// Integer value (deprecated in cJSON, kept for compatibility).
    pub valueint: i32,
    /// Floating-point value.
    pub valuedouble: f64,
    /// Key name when this item is a member of an object, as an owned byte buffer (None == NULL).
    pub string: Option<Vec<u8>>,
}
#[derive(Debug, Clone, Copy, Default)]
pub struct error<'a> {
    pub json: Option<&'a [u8]>,
    pub position: usize,
}

pub struct internal_hooks {
    pub allocate: fn(size: size_t) -> *mut c_void,
    pub deallocate: fn(pointer: *mut c_void),
    pub reallocate: fn(pointer: *mut c_void, size: size_t) -> *mut c_void,
}
pub struct parse_buffer<'a> {
    pub content: &'a [u8],
    pub length: size_t,
    pub offset: size_t,
    pub depth: size_t,
    pub hooks: internal_hooks,
}

static GLOBAL_ERROR: Mutex<error<'static>> = Mutex::new(error {
    json: None,
    position: 0,
});


fn global_hooks_malloc(size: size_t) -> *mut c_void {
    unsafe { malloc(size as usize) }
}

fn global_hooks_free(pointer: *mut c_void) {
    unsafe { free(pointer) }
}

fn global_hooks_realloc_null(_pointer: *mut c_void, _size: size_t) -> *mut c_void {
    std::ptr::null_mut()
}

static mut global_hooks: internal_hooks = internal_hooks {
    allocate: global_hooks_malloc,
    deallocate: global_hooks_free,
    reallocate: global_hooks_realloc_null,
};

fn get_decimal_point() -> u8 {
    b'.'
}
fn buffer_skip_whitespace<'a, 'b>(buffer: Option<&'b mut parse_buffer<'a>>) -> Option<&'b mut parse_buffer<'a>> {
    let buffer = match buffer {
        None => return None,
        Some(b) => b,
    };
    if buffer.content.is_empty() {
        return None;
    }
    if !(buffer.offset < buffer.length) {
        return Some(buffer);
    }
    while buffer.offset < buffer.length
        && buffer
            .content
            .get(buffer.offset as usize)
            .map_or(false, |&c| c <= 32)
    {
        buffer.offset += 1;
    }
    if buffer.offset == buffer.length {
        buffer.offset = buffer.offset.wrapping_sub(1);
    }
    Some(buffer)
}
pub fn cJSON_Delete(item: CJsonLink) {
    let mut item = item;
    while let Some(rc) = item {
        // next = item->next
        let next = rc.borrow_mut().next.take();

        let ty = rc.borrow().r#type;

        if (ty & 256) == 0 {
            let child = rc.borrow_mut().child.take();
            if child.is_some() {
                cJSON_Delete(child);
            }
        }

        if (ty & 256) == 0 {
            let mut b = rc.borrow_mut();
            if b.valuestring.is_some() {
                b.valuestring = None;
            }
        }

        if (ty & 512) == 0 {
            let mut b = rc.borrow_mut();
            if b.string.is_some() {
                b.string = None;
            }
        }

        // global_hooks.deallocate(item): dropped when the last Rc goes away
        drop(rc);

        item = next;
    }
}


fn cJSON_New_Item(_hooks: &internal_hooks) -> CJsonLink {
    // The node is allocated by Rust's allocator rather than `hooks.allocate`,
    // because the Rc<RefCell<cJSON>> representation cannot be built from a raw
    // pointer in safe Rust. Every field is zero-initialised, which matches the
    // C `memset(node, 0, sizeof(cJSON))`.
    let node = cJSON {
        next: None,
        prev: None,
        child: None,
        r#type: 0,
        valuestring: None,
        valueint: 0,
        valuedouble: 0.0,
        string: None,
    };
    Some(Rc::new(RefCell::new(node)))
}
fn parse_hex4(input: &[u8]) -> u32 {
    let mut h: u32 = 0;
    for i in 0..4usize {
        let c = input[i];
        if c >= b'0' && c <= b'9' {
            h = h.wrapping_add((c - b'0') as u32);
        } else if c >= b'A' && c <= b'F' {
            h = h.wrapping_add(10 + (c - b'A') as u32);
        } else if c >= b'a' && c <= b'f' {
            h = h.wrapping_add(10 + (c - b'a') as u32);
        } else {
            return 0;
        }
        if i < 3 {
            h = h << 4;
        }
    }
    h
}
pub fn cJSON_GetErrorPtr() -> Option<&'static [u8]> {
    let guard = GLOBAL_ERROR.lock().unwrap();
    match guard.json {
        Some(json) => {
            let pos = guard.position.min(json.len());
            Some(&json[pos..])
        }
        None => None,
    }
}
fn skip_utf8_bom<'a, 'b>(buffer: Option<&'b mut parse_buffer<'a>>) -> Option<&'b mut parse_buffer<'a>> {
    let buffer = buffer?;
    if buffer.offset != 0 {
        return None;
    }
    if (buffer.offset + 4) < buffer.length {
        let off = buffer.offset as usize;
        if buffer.content.len() >= off + 3
            && &buffer.content[off..off + 3] == &[0xEFu8, 0xBB, 0xBF][..]
        {
            buffer.offset += 3;
        }
    }
    Some(buffer)
}
fn tree_checksum(item: &CJsonLink) -> f64 {
    let mut acc: f64 = 0.0;
    let mut current: CJsonLink = item.clone();
    while let Some(node_rc) = current {
        let node = node_rc.borrow();
        acc += node.valuedouble;
        if let Some(vs) = &node.valuestring {
            acc += vs
                .iter()
                .take_while(|&&b| b != 0)
                .map(|&b| b as f64)
                .sum::<f64>();
        }
        if let Some(s) = &node.string {
            acc += s
                .iter()
                .take_while(|&&b| b != 0)
                .map(|&b| b as f64)
                .sum::<f64>();
        }
        if node.child.is_some() {
            acc += tree_checksum(&node.child);
        }
        let next = node.next.clone();
        drop(node);
        current = next;
    }
    acc
}
#[derive(Clone, Copy, Default, Debug)]
pub struct Timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &Timespec, time0: &Timespec) -> f64 {
    (time1.tv_sec - time0.tv_sec) as f64
        + (time1.tv_nsec - time0.tv_nsec) as f64 / 1000000000.0
}
fn parse_number(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    let decimal_point: u8 = get_decimal_point();
    let mut number_string_length: usize = 0;
    let mut has_decimal_point = false;

    let offset = input_buffer.offset as usize;
    let length = input_buffer.length as usize;

    let mut i: usize = 0;
    while offset + i < length && offset + i < input_buffer.content.len() {
        match input_buffer.content[offset + i] {
            b'0'..=b'9' | b'+' | b'-' | b'e' | b'E' => {
                number_string_length += 1;
            }
            b'.' => {
                number_string_length += 1;
                has_decimal_point = true;
            }
            _ => break,
        }
        i += 1;
    }

    let mut number_c_string: Vec<u8> =
        input_buffer.content[offset..offset + number_string_length].to_vec();

    if has_decimal_point {
        for c in number_c_string.iter_mut() {
            if *c == b'.' {
                *c = decimal_point;
            }
        }
    }

    // Emulate strtod: find the longest valid numeric prefix.
    let s = &number_c_string;
    let n = s.len();
    let mut p: usize = 0;
    if p < n && (s[p] == b'+' || s[p] == b'-') {
        p += 1;
    }
    let mut digits = 0usize;
    while p < n && s[p].is_ascii_digit() {
        p += 1;
        digits += 1;
    }
    if p < n && s[p] == decimal_point {
        p += 1;
        while p < n && s[p].is_ascii_digit() {
            p += 1;
            digits += 1;
        }
    }
    if digits == 0 {
        // no conversion performed
        return 0;
    }
    if p < n && (s[p] == b'e' || s[p] == b'E') {
        let mut q = p + 1;
        if q < n && (s[q] == b'+' || s[q] == b'-') {
            q += 1;
        }
        if q < n && s[q].is_ascii_digit() {
            while q < n && s[q].is_ascii_digit() {
                q += 1;
            }
            p = q;
        }
    }
    let after_end = p;

    let num_str: String = s[..after_end]
        .iter()
        .map(|&c| if c == decimal_point { '.' } else { c as char })
        .collect();
    let number: f64 = num_str.parse::<f64>().unwrap_or(0.0);

    item.valuedouble = number;

    if number >= 2147483647.0 {
        item.valueint = i32::MAX;
    } else if number <= (i32::MIN as f64) {
        item.valueint = i32::MIN;
    } else {
        item.valueint = number as i32;
    }

    item.r#type = 1 << 3;

    input_buffer.offset += after_end as size_t;

    1
}
fn utf16_literal_to_utf8(input: &[u8], output: &mut &mut [u8]) -> u8 {
    let mut codepoint: u64;
    let first_code: u32;
    let sequence_length: u8;
    let mut first_byte_mark: u8 = 0;
    let utf8_length: u8;

    if input.len() < 6 {
        return 0;
    }

    first_code = parse_hex4(&input[2..]);

    if (first_code >= 0xDC00) && (first_code <= 0xDFFF) {
        return 0;
    }

    if (first_code >= 0xD800) && (first_code <= 0xDBFF) {
        let second_sequence = &input[6..];
        sequence_length = 12;

        if second_sequence.len() < 6 {
            return 0;
        }

        if second_sequence[0] != b'\\' || second_sequence[1] != b'u' {
            return 0;
        }

        let second_code = parse_hex4(&second_sequence[2..]);

        if second_code < 0xDC00 || second_code > 0xDFFF {
            return 0;
        }

        codepoint = 0x10000u64
            + ((((first_code & 0x3FF) << 10) | (second_code & 0x3FF)) as u64);
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

    let mut utf8_position = utf8_length - 1;
    while utf8_position > 0 {
        output[utf8_position as usize] = ((codepoint | 0x80) & 0xBF) as u8;
        codepoint >>= 6;
        utf8_position -= 1;
    }

    if utf8_length > 1 {
        output[0] = ((codepoint | first_byte_mark as u64) & 0xFF) as u8;
    } else {
        output[0] = (codepoint & 0x7F) as u8;
    }

    let taken = std::mem::take(output);
    *output = &mut taken[utf8_length as usize..];

    sequence_length
}
pub fn parse_string(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    let content: &[u8] = input_buffer.content;
    let length = input_buffer.length as usize;
    let offset = input_buffer.offset as usize;

    let mut input_pointer: usize = offset + 1;
    let mut input_end: usize = offset + 1;

    // Labeled blocks are unstable, so use a labeled loop that always exits
    // via `return` on success or `break 'fail` on failure.
    'fail: loop {
        if content.get(offset) != Some(&b'"') {
            break 'fail;
        }

        let mut skipped_bytes: usize = 0;
        while input_end < length && content[input_end] != b'"' {
            if content[input_end] == b'\\' {
                if input_end + 1 >= length {
                    break 'fail;
                }
                skipped_bytes += 1;
                input_end += 1;
            }
            input_end += 1;
        }
        if input_end >= length || content[input_end] != b'"' {
            break 'fail;
        }

        let allocation_length = (input_end - offset) - skipped_bytes;
        let mut output: Vec<u8> = vec![0u8; allocation_length + 1];
        let mut out_pos: usize = 0;

        while input_pointer < input_end {
            if content[input_pointer] != b'\\' {
                output[out_pos] = content[input_pointer];
                out_pos += 1;
                input_pointer += 1;
            } else {
                let mut sequence_length: usize = 2;
                if (input_end - input_pointer) < 1 {
                    break 'fail;
                }
                match content[input_pointer + 1] {
                    b'b' => {
                        output[out_pos] = 0x08;
                        out_pos += 1;
                    }
                    b'f' => {
                        output[out_pos] = 0x0C;
                        out_pos += 1;
                    }
                    b'n' => {
                        output[out_pos] = b'\n';
                        out_pos += 1;
                    }
                    b'r' => {
                        output[out_pos] = b'\r';
                        out_pos += 1;
                    }
                    b't' => {
                        output[out_pos] = b'\t';
                        out_pos += 1;
                    }
                    b'"' | b'\\' | b'/' => {
                        output[out_pos] = content[input_pointer + 1];
                        out_pos += 1;
                    }
                    b'u' => {
                        let consumed;
                        {
                            let mut out_slice: &mut [u8] = &mut output[out_pos..];
                            let before = out_slice.len();
                            sequence_length = utf16_literal_to_utf8(
                                &content[input_pointer..input_end],
                                &mut out_slice,
                            ) as usize;
                            let after = out_slice.len();
                            consumed = before - after;
                        }
                        if sequence_length == 0 {
                            break 'fail;
                        }
                        out_pos += consumed;
                    }
                    _ => {
                        break 'fail;
                    }
                }
                input_pointer += sequence_length;
            }
        }

        output[out_pos] = 0;
        output.truncate(out_pos + 1);
        item.r#type = 1 << 4;
        item.valuestring = Some(output);
        input_buffer.offset = (input_end as size_t) + 1;
        return 1;
    }

    // fail:
    input_buffer.offset = input_pointer as size_t;
    0
}
fn parse_array(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    fn peek(b: &parse_buffer) -> Option<u8> {
        if b.offset < b.length {
            b.content.get(b.offset as usize).copied()
        } else {
            None
        }
    }

    let mut head: CJsonLink = None;
    let mut current_item: CJsonLink = None;

    if input_buffer.depth >= 1000 {
        return 0;
    }
    input_buffer.depth += 1;

    let ok: bool = 'parse: loop {
        if input_buffer.content.get(input_buffer.offset as usize) != Some(&b'[') {
            break 'parse false;
        }
        input_buffer.offset += 1;
        buffer_skip_whitespace(Some(&mut *input_buffer));

        if peek(input_buffer) == Some(b']') {
            break 'parse true;
        }
        if peek(input_buffer).is_none() {
            input_buffer.offset -= 1;
            break 'parse false;
        }
        input_buffer.offset -= 1;

        loop {
            let new_item = match cJSON_New_Item(&input_buffer.hooks) {
                Some(n) => n,
                None => break 'parse false,
            };

            if head.is_none() {
                head = Some(new_item.clone());
                current_item = Some(new_item.clone());
            } else {
                let cur = current_item.take().unwrap();
                cur.borrow_mut().next = Some(new_item.clone());
                new_item.borrow_mut().prev = Some(Rc::downgrade(&cur));
                current_item = Some(new_item.clone());
            }

            input_buffer.offset += 1;
            buffer_skip_whitespace(Some(&mut *input_buffer));
            let r = parse_value(&mut new_item.borrow_mut(), input_buffer);
            if r == 0 {
                break 'parse false;
            }
            buffer_skip_whitespace(Some(&mut *input_buffer));

            if peek(input_buffer) != Some(b',') {
                break;
            }
        }

        if peek(input_buffer) != Some(b']') {
            break 'parse false;
        }
        break 'parse true;
    };

    if !ok {
        current_item = None;
        let _ = current_item;
        if head.is_some() {
            cJSON_Delete(head.take());
        }
        return 0;
    }

    input_buffer.depth -= 1;
    if let Some(h) = head.as_ref() {
        h.borrow_mut().prev = current_item.as_ref().map(Rc::downgrade);
    }
    item.r#type = 1 << 5;
    item.child = head;
    input_buffer.offset += 1;
    1
}

fn parse_object(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    fn peek(b: &parse_buffer) -> Option<u8> {
        if b.offset < b.length {
            b.content.get(b.offset as usize).copied()
        } else {
            None
        }
    }

    let mut head: CJsonLink = None;
    let mut current_item: CJsonLink = None;

    if input_buffer.depth >= 1000 {
        return 0;
    }
    input_buffer.depth += 1;

    let ok: bool = 'parse: loop {
        if peek(input_buffer) != Some(b'{') {
            break 'parse false;
        }
        input_buffer.offset += 1;
        buffer_skip_whitespace(Some(&mut *input_buffer));

        if peek(input_buffer) == Some(b'}') {
            break 'parse true;
        }
        if peek(input_buffer).is_none() {
            input_buffer.offset -= 1;
            break 'parse false;
        }
        input_buffer.offset -= 1;

        loop {
            let new_item = match cJSON_New_Item(&input_buffer.hooks) {
                Some(n) => n,
                None => break 'parse false,
            };

            if head.is_none() {
                head = Some(new_item.clone());
                current_item = Some(new_item.clone());
            } else {
                let cur = current_item.take().unwrap();
                cur.borrow_mut().next = Some(new_item.clone());
                new_item.borrow_mut().prev = Some(Rc::downgrade(&cur));
                current_item = Some(new_item.clone());
            }

            if !(input_buffer.offset + 1 < input_buffer.length) {
                break 'parse false;
            }
            input_buffer.offset += 1;
            buffer_skip_whitespace(Some(&mut *input_buffer));

            let r = parse_string(&mut new_item.borrow_mut(), input_buffer);
            if r == 0 {
                break 'parse false;
            }
            buffer_skip_whitespace(Some(&mut *input_buffer));

            {
                let mut ci = new_item.borrow_mut();
                ci.string = ci.valuestring.take();
            }

            if peek(input_buffer) != Some(b':') {
                break 'parse false;
            }
            input_buffer.offset += 1;
            buffer_skip_whitespace(Some(&mut *input_buffer));

            let r = parse_value(&mut new_item.borrow_mut(), input_buffer);
            if r == 0 {
                break 'parse false;
            }
            buffer_skip_whitespace(Some(&mut *input_buffer));

            if peek(input_buffer) != Some(b',') {
                break;
            }
        }

        if peek(input_buffer) != Some(b'}') {
            break 'parse false;
        }
        break 'parse true;
    };

    if !ok {
        current_item = None;
        let _ = current_item;
        if head.is_some() {
            cJSON_Delete(head.take());
        }
        return 0;
    }

    input_buffer.depth -= 1;
    if let Some(h) = head.as_ref() {
        h.borrow_mut().prev = current_item.as_ref().map(Rc::downgrade);
    }
    item.r#type = 1 << 6;
    item.child = head;
    input_buffer.offset += 1;
    1
}

fn parse_value(item: &mut cJSON, input_buffer: &mut parse_buffer) -> cJSON_bool {
    if input_buffer.content.is_empty() {
        return 0;
    }

    let off = input_buffer.offset as usize;

    if input_buffer.offset + 4 <= input_buffer.length
        && input_buffer.content.get(off..off + 4) == Some(&b"null"[..])
    {
        item.r#type = 1 << 2;
        input_buffer.offset += 4;
        return 1;
    }
    if input_buffer.offset + 5 <= input_buffer.length
        && input_buffer.content.get(off..off + 5) == Some(&b"false"[..])
    {
        item.r#type = 1 << 0;
        input_buffer.offset += 5;
        return 1;
    }
    if input_buffer.offset + 4 <= input_buffer.length
        && input_buffer.content.get(off..off + 4) == Some(&b"true"[..])
    {
        item.r#type = 1 << 1;
        item.valueint = 1;
        input_buffer.offset += 4;
        return 1;
    }

    let c: Option<u8> = if input_buffer.offset < input_buffer.length {
        input_buffer.content.get(off).copied()
    } else {
        None
    };

    match c {
        Some(b'"') => parse_string(item, input_buffer),
        Some(ch) if ch == b'-' || ch.is_ascii_digit() => parse_number(item, input_buffer),
        Some(b'[') => parse_array(item, input_buffer),
        Some(b'{') => parse_object(item, input_buffer),
        _ => 0,
    }
}
pub fn cJSON_ParseWithLengthOpts(
    value: Option<&'static [u8]>,
    buffer_length: size_t,
    return_parse_end: Option<&mut &'static [u8]>,
    require_null_terminated: cJSON_bool,
) -> CJsonLink {
    let mut buffer = parse_buffer {
        content: &[],
        length: 0,
        offset: 0,
        depth: 0,
        hooks: internal_hooks {
            allocate: global_hooks_malloc,
            deallocate: global_hooks_free,
            reallocate: global_hooks_realloc_null,
        },
    };
    let mut item: CJsonLink = None;
    let mut return_parse_end = return_parse_end;

    {
        let mut ge = GLOBAL_ERROR.lock().unwrap();
        ge.json = None;
        ge.position = 0;
    }

    // Labeled blocks are unstable; use a labeled loop that always exits via
    // `break 'fail` or `return`.
    'fail: loop {
        let v: &'static [u8] = match value {
            Some(v) if buffer_length != 0 => v,
            _ => break 'fail,
        };

        buffer.content = v;
        buffer.length = buffer_length;
        buffer.offset = 0;
        buffer.hooks = unsafe {
            internal_hooks {
                allocate: global_hooks.allocate,
                deallocate: global_hooks.deallocate,
                reallocate: global_hooks.reallocate,
            }
        };

        item = cJSON_New_Item(&buffer.hooks);
        let item_rc = match item.as_ref() {
            Some(rc) => rc.clone(),
            None => break 'fail,
        };

        let parsed = {
            let buf_opt = buffer_skip_whitespace(skip_utf8_bom(Some(&mut buffer)));
            match buf_opt {
                Some(b) => {
                    let mut item_ref = item_rc.borrow_mut();
                    parse_value(&mut item_ref, b) != 0
                }
                None => false,
            }
        };
        if !parsed {
            break 'fail;
        }

        if require_null_terminated != 0 {
            buffer_skip_whitespace(Some(&mut buffer));
            if buffer.offset >= buffer.length
                || buffer.content.get(buffer.offset as usize).copied() != Some(0)
            {
                break 'fail;
            }
        }

        if let Some(r) = return_parse_end.as_mut() {
            **r = buffer.content.get(buffer.offset as usize..).unwrap_or(&[]);
        }
        return item;
    }

    // fail:
    if item.is_some() {
        cJSON_Delete(item.take());
    }

    if let Some(v) = value {
        let mut local_error: error<'static> = error {
            json: Some(v),
            position: 0,
        };
        if buffer.offset < buffer.length {
            local_error.position = buffer.offset as usize;
        } else if buffer.length > 0 {
            local_error.position = (buffer.length - 1) as usize;
        }

        if let Some(r) = return_parse_end.as_mut() {
            **r = v.get(local_error.position..).unwrap_or(&[]);
        }

        *GLOBAL_ERROR.lock().unwrap() = local_error;
    }

    None
}
pub fn cJSON_ParseWithLength(value: Option<&'static [u8]>, buffer_length: size_t) -> CJsonLink {
    cJSON_ParseWithLengthOpts(value, buffer_length, None, 0)
}
pub fn cJSON_ParseWithOpts(
    value: Option<&'static [u8]>,
    return_parse_end: Option<&mut &'static [u8]>,
    require_null_terminated: cJSON_bool,
) -> CJsonLink {
    let v = match value {
        None => return None,
        Some(v) => v,
    };
    let len = v.iter().position(|&b| b == 0).unwrap_or(v.len());
    let buffer_length: size_t = (len + 1) as size_t;
    cJSON_ParseWithLengthOpts(
        Some(v),
        buffer_length,
        return_parse_end,
        require_null_terminated,
    )
}
pub fn cJSON_Parse(value: Option<&'static [u8]>) -> CJsonLink {
    cJSON_ParseWithOpts(value, None, 0)
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    let mut checksum: f64 = 0.0;
    let iterations: i64 = 5000;

    if args.len() < 2 {
        eprintln!("Usage: {} <file.json>", args.get(0).map(|s| s.as_str()).unwrap_or(""));
        std::process::exit(1);
    }

    let mut data: Vec<u8> = match std::fs::File::open(&args[1]) {
        Ok(mut f) => {

            let mut buf = Vec::new();
            if f.read_to_end(&mut buf).is_err() {
                eprintln!("Error: failed to read file");
                std::process::exit(1);
            }
            buf
        }
        Err(_) => {
            eprintln!("Error: cannot open '{}'", args[1]);
            std::process::exit(1);
        }
    };

    let length = data.len();
    data.push(0);
    // Leak once so the buffer has a 'static lifetime as required by the parser API.
    let content: &'static [u8] = Box::leak(data.into_boxed_slice());

    let start_time = Instant::now();

    // MAIN COMPUTATION BEGIN
    let mut i: i64 = 0;
    while i < iterations {
        let root = cJSON_ParseWithLength(Some(content), (length + 1) as size_t);
        if root.is_none() {
            let err = cJSON_GetErrorPtr();
            let msg = match err {
                Some(e) => {
                    let end = e.iter().position(|&b| b == 0).unwrap_or(e.len());
                    String::from_utf8_lossy(&e[..end]).into_owned()
                }
                None => "(unknown)".to_string(),
            };
            eprintln!("Parse error near: {}", msg);
            std::process::exit(1);
        }
        checksum += tree_checksum(&root);
        cJSON_Delete(root);
        i += 1;
    }
    // MAIN COMPUTATION END

    let time_elapsed = start_time.elapsed().as_secs_f64();

    println!("Time taken to parse json {}: {:.6} seconds", args[1], time_elapsed);
    println!("Checksum: {:.0}", checksum);
}