use libc::size_t;
use std::sync::Mutex;
#[derive(Clone, Debug, Default)]
pub struct cJSON {
    pub next: Option<Box<cJSON>>,
    pub child: Option<Box<cJSON>>,
    pub type_0: i32,
    pub valuestring: Option<String>,
    pub valueint: i32,
    pub valuedouble: f64,
    pub string: Option<String>,
}
#[derive(Copy, Clone, Debug)]
pub struct internal_hooks {
    pub allocate: Option<unsafe extern "C" fn(size_t) -> *mut libc::c_void>,
    pub deallocate: Option<unsafe extern "C" fn(*mut libc::c_void) -> ()>,
    pub reallocate: Option<unsafe extern "C" fn(*mut libc::c_void, size_t) -> *mut libc::c_void>,
}
#[derive(Clone, Copy, Debug)]
pub struct parse_buffer<'a> {
    pub content: &'a [u8],
    pub offset: usize,
    pub depth: usize,
    pub hooks: internal_hooks,
}
#[derive(Clone, Debug)]
pub struct error {
    pub json: Vec<u8>,
    pub position: usize,
}
static global_error: std::sync::Mutex<error> = std::sync::Mutex::new(error {
    json: Vec::new(),
    position: 0,
});
static global_hooks: Mutex<internal_hooks> = Mutex::new(internal_hooks {
    allocate: Some(libc::malloc),
    deallocate: Some(libc::free),
    reallocate: None,
});
pub fn cJSON_GetErrorPtr() -> Vec<u8> {
    let guard = global_error.lock().unwrap();
    let position = guard.position.min(guard.json.len());
    guard.json[position..].to_vec()
}
pub fn cJSON_Delete(item: Option<Box<cJSON>>) {
    let mut current = item;
    while let Some(mut node) = current {
        current = node.next.take();
        drop(node);
    }
}
pub fn cJSON_New_Item() -> Option<Box<cJSON>> {
    Some(Box::new(cJSON::default()))
}
pub fn get_decimal_point() -> u8 {
    b'.'
}
pub fn parse_number(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    let start = input_buffer.offset;
    let rest: &[u8] = input_buffer.content.get(start..).unwrap_or(&[]);
    let number_string_length = rest
        .iter()
        .take_while(|&&c| matches!(c, b'0'..=b'9' | b'+' | b'-' | b'e' | b'E' | b'.'))
        .count();
    let s = &rest[..number_string_length];
    let mut idx = 0usize;
    if idx < s.len() && (s[idx] == b'+' || s[idx] == b'-') {
        idx += 1;
    }
    let mut mantissa_digits = 0usize;
    while idx < s.len() && s[idx].is_ascii_digit() {
        idx += 1;
        mantissa_digits += 1;
    }
    if idx < s.len() && s[idx] == b'.' {
        let mut j = idx + 1;
        let mut frac_digits = 0usize;
        while j < s.len() && s[j].is_ascii_digit() {
            j += 1;
            frac_digits += 1;
        }
        if mantissa_digits > 0 || frac_digits > 0 {
            idx = j;
            mantissa_digits += frac_digits;
        }
    }
    if mantissa_digits == 0 {
        return 0;
    }
    if idx < s.len() && (s[idx] == b'e' || s[idx] == b'E') {
        let mut j = idx + 1;
        if j < s.len() && (s[j] == b'+' || s[j] == b'-') {
            j += 1;
        }
        let exp_start = j;
        while j < s.len() && s[j].is_ascii_digit() {
            j += 1;
        }
        if j > exp_start {
            idx = j;
        }
    }
    let number: f64 = match std::str::from_utf8(&s[..idx])
        .ok()
        .and_then(|t| t.parse::<f64>().ok())
    {
        Some(n) => n,
        None => return 0,
    };
    item.valuedouble = number;
    if number >= i32::MAX as f64 {
        item.valueint = i32::MAX;
    } else if number <= i32::MIN as f64 {
        item.valueint = i32::MIN;
    } else {
        item.valueint = number as i32;
    }
    item.type_0 = 1 << 3;
    input_buffer.offset += idx;
    1
}
pub fn parse_hex4(input: &[u8]) -> u32 {
    let digits = match input.get(..4) {
        Some(d) => d,
        None => return 0,
    };
    let mut h: u32 = 0;
    for &c in digits {
        match (c as char).to_digit(16) {
            Some(d) => h = (h << 4) | d,
            None => return 0,
        }
    }
    h
}
pub fn utf16_literal_to_utf8(input: &[u8], output: &mut &mut [u8]) -> u8 {
    let mut first_byte_mark: u8 = 0;
    if input.len() < 6 {
        return 0;
    }
    let first_code = parse_hex4(&input[2..6]);
    if (0xDC00..=0xDFFF).contains(&first_code) {
        return 0;
    }
    let sequence_length: u8;
    let mut codepoint: u64;
    if (0xD800..=0xDBFF).contains(&first_code) {
        let second = &input[6..];
        sequence_length = 12;
        if second.len() < 6 {
            return 0;
        }
        if second[0] != b'\\' || second[1] != b'u' {
            return 0;
        }
        let second_code = parse_hex4(&second[2..6]);
        if !(0xDC00..=0xDFFF).contains(&second_code) {
            return 0;
        }
        codepoint = 0x10000u64 + ((((first_code & 0x3FF) << 10) | (second_code & 0x3FF)) as u64);
    } else {
        sequence_length = 6;
        codepoint = first_code as u64;
    }
    let utf8_length: u8;
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
    if output.len() < utf8_length as usize {
        return 0;
    }
    let buf = std::mem::take(output);
    let (head, tail) = buf.split_at_mut(utf8_length as usize);
    let mut utf8_position = utf8_length as usize - 1;
    while utf8_position > 0 {
        head[utf8_position] = ((codepoint | 0x80) & 0xBF) as u8;
        codepoint >>= 6;
        utf8_position -= 1;
    }
    if utf8_length > 1 {
        head[0] = ((codepoint | first_byte_mark as u64) & 0xFF) as u8;
    } else {
        head[0] = (codepoint & 0x7F) as u8;
    }
    *output = tail;
    sequence_length
}
pub fn parse_string(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    fn put(out: &mut &mut [u8], b: u8) {
        let tmp = std::mem::take(out);
        tmp[0] = b;
        *out = &mut tmp[1..];
    }
    let content: &[u8] = input_buffer.content;
    let length = content.len();
    let start = input_buffer.offset;
    let mut input_pointer: usize = start + 1;
    let mut input_end: usize = start + 1;
    'fail: {
        if content.get(start).copied() != Some(b'"') {
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
        let allocation_length: usize = (input_end - start).saturating_sub(skipped_bytes);
        let total = allocation_length + 1;
        let mut output: Vec<u8> = vec![0u8; total];
        let written;
        {
            let mut out: &mut [u8] = &mut output[..];
            while input_pointer < input_end {
                if content[input_pointer] != b'\\' {
                    put(&mut out, content[input_pointer]);
                    input_pointer += 1;
                } else {
                    let mut sequence_length: u8 = 2;
                    if input_end - input_pointer < 1 {
                        break 'fail;
                    }
                    match content[input_pointer + 1] {
                        b'b' => put(&mut out, 0x08),
                        b'f' => put(&mut out, 0x0C),
                        b'n' => put(&mut out, b'\n'),
                        b'r' => put(&mut out, b'\r'),
                        b't' => put(&mut out, b'\t'),
                        b'"' | b'\\' | b'/' => put(&mut out, content[input_pointer + 1]),
                        b'u' => {
                            sequence_length =
                                utf16_literal_to_utf8(&content[input_pointer..input_end], &mut out);
                            if sequence_length == 0 {
                                break 'fail;
                            }
                        }
                        _ => {
                            break 'fail;
                        }
                    }
                    input_pointer += sequence_length as usize;
                }
            }
            written = total - out.len();
        }
        output.truncate(written);
        item.type_0 = 1 << 4;
        item.valuestring = Some(match String::from_utf8(output) {
            Ok(s) => s,
            Err(e) => String::from_utf8_lossy(e.as_bytes()).into_owned(),
        });
        input_buffer.offset = input_end + 1;
        return 1;
    }
    input_buffer.offset = input_pointer;
    0
}
pub fn buffer_skip_whitespace<'a, 'b>(
    buffer: Option<&'b mut parse_buffer<'a>>,
) -> Option<&'b mut parse_buffer<'a>> {
    let buf = buffer?;
    let length = buf.content.len();
    if buf.offset >= length {
        return Some(buf);
    }
    while buf.offset < length && buf.content[buf.offset] <= 32 {
        buf.offset += 1;
    }
    if buf.offset == length {
        buf.offset -= 1;
    }
    Some(buf)
}
pub fn skip_utf8_bom<'a, 'b>(
    buffer: Option<&'b mut parse_buffer<'a>>,
) -> Option<&'b mut parse_buffer<'a>> {
    let buffer = buffer?;
    if buffer.offset != 0 {
        return None;
    }
    if buffer.offset + 4 < buffer.content.len()
        && buffer.content[buffer.offset..].starts_with(&[0xEF, 0xBB, 0xBF])
    {
        buffer.offset += 3;
    }
    Some(buffer)
}
pub fn cJSON_ParseWithLengthOpts(
    value: Option<&[u8]>,
    return_parse_end: Option<&mut usize>,
    require_null_terminated: bool,
) -> Option<Box<cJSON>> {
    let mut buffer: parse_buffer = parse_buffer {
        content: &[],
        offset: 0,
        depth: 0,
        hooks: internal_hooks {
            allocate: None,
            deallocate: None,
            reallocate: None,
        },
    };
    let mut item: Option<Box<cJSON>> = None;
    {
        let mut ge = global_error.lock().unwrap();
        ge.json = Vec::new();
        ge.position = 0;
    }
    'fail: {
        let v = match value {
            Some(v) if !v.is_empty() => v,
            _ => break 'fail,
        };
        buffer.content = v;
        buffer.offset = 0;
        buffer.hooks = *global_hooks.lock().unwrap();
        item = cJSON_New_Item();
        let it = match item.as_mut() {
            Some(it) => it,
            None => break 'fail,
        };
        let bp = buffer_skip_whitespace(skip_utf8_bom(Some(&mut buffer)));
        match bp {
            Some(b) => {
                if parse_value(it, b) == 0 {
                    break 'fail;
                }
            }
            None => break 'fail,
        }
        if require_null_terminated {
            buffer_skip_whitespace(Some(&mut buffer));
            if buffer.offset >= buffer.content.len() || buffer.content[buffer.offset] != 0 {
                break 'fail;
            }
        }
        if let Some(r) = return_parse_end {
            *r = buffer.offset;
        }
        return item;
    }
    cJSON_Delete(item.take());
    if let Some(v) = value {
        let length = buffer.content.len();
        let mut position = 0usize;
        if buffer.offset < length {
            position = buffer.offset;
        } else if length > 0 {
            position = length - 1;
        }
        if let Some(r) = return_parse_end {
            *r = position;
        }
        let local_error = error {
            json: v.to_vec(),
            position,
        };
        *global_error.lock().unwrap() = local_error;
    }
    None
}
pub fn cJSON_ParseWithOpts(
    value: Option<&[u8]>,
    return_parse_end: Option<&mut usize>,
    require_null_terminated: bool,
) -> Option<Box<cJSON>> {
    let value = value?;
    let len = match value.iter().position(|&b| b == 0) {
        Some(pos) => pos + 1,
        None => value.len(),
    };
    cJSON_ParseWithLengthOpts(
        Some(&value[..len]),
        return_parse_end,
        require_null_terminated,
    )
}
pub fn cJSON_Parse(value: Option<&[u8]>) -> Option<Box<cJSON>> {
    cJSON_ParseWithOpts(value, None, false)
}
pub fn cJSON_ParseWithLength(value: Option<&[u8]>) -> Option<Box<cJSON>> {
    cJSON_ParseWithLengthOpts(value, None, false)
}
fn parse_value(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    let content = input_buffer.content;
    let rest = content.get(input_buffer.offset..).unwrap_or(&[]);
    if rest.starts_with(b"null") {
        item.type_0 = 1 << 2;
        input_buffer.offset += 4;
        return 1;
    }
    if rest.starts_with(b"false") {
        item.type_0 = 1 << 0;
        input_buffer.offset += 5;
        return 1;
    }
    if rest.starts_with(b"true") {
        item.type_0 = 1 << 1;
        item.valueint = 1;
        input_buffer.offset += 4;
        return 1;
    }
    match rest.first().copied() {
        Some(b'"') => parse_string(item, input_buffer),
        Some(b'-') | Some(b'0'..=b'9') => parse_number(item, input_buffer),
        Some(b'[') => parse_array(item, input_buffer),
        Some(b'{') => parse_object(item, input_buffer),
        _ => 0,
    }
}
fn parse_array(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    if input_buffer.depth >= 1000 {
        return 0;
    }
    input_buffer.depth = input_buffer.depth.wrapping_add(1);
    let content = input_buffer.content;
    let mut items: Vec<Box<cJSON>> = Vec::new();
    let ok: bool = 'blk: {
        if content.get(input_buffer.offset).copied() != Some(b'[') {
            break 'blk false;
        }
        input_buffer.offset = input_buffer.offset.wrapping_add(1);
        let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
        if content.get(input_buffer.offset).copied() == Some(b']') {
            break 'blk true;
        }
        if content.get(input_buffer.offset).is_none() {
            input_buffer.offset = input_buffer.offset.wrapping_sub(1);
            break 'blk false;
        }
        input_buffer.offset = input_buffer.offset.wrapping_sub(1);
        loop {
            let mut new_item = match cJSON_New_Item() {
                Some(n) => n,
                None => break 'blk false,
            };
            input_buffer.offset = input_buffer.offset.wrapping_add(1);
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            if parse_value(&mut new_item, input_buffer) == 0 {
                break 'blk false;
            }
            items.push(new_item);
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            if content.get(input_buffer.offset).copied() != Some(b',') {
                break;
            }
        }
        if content.get(input_buffer.offset).copied() != Some(b']') {
            break 'blk false;
        }
        true
    };
    if ok {
        input_buffer.depth = input_buffer.depth.wrapping_sub(1);
        let mut head: Option<Box<cJSON>> = None;
        for mut it in items.into_iter().rev() {
            it.next = head;
            head = Some(it);
        }
        item.type_0 = 1 << 5;
        item.child = head;
        input_buffer.offset = input_buffer.offset.wrapping_add(1);
        1
    } else {
        drop(items);
        0
    }
}
fn parse_object(item: &mut cJSON, input_buffer: &mut parse_buffer) -> i32 {
    if input_buffer.depth >= 1000 {
        return 0;
    }
    input_buffer.depth = input_buffer.depth.wrapping_add(1);
    let content = input_buffer.content;
    let mut items: Vec<Box<cJSON>> = Vec::new();
    let ok: bool = 'blk: {
        if content.get(input_buffer.offset).copied() != Some(b'{') {
            break 'blk false;
        }
        input_buffer.offset = input_buffer.offset.wrapping_add(1);
        let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
        if content.get(input_buffer.offset).copied() == Some(b'}') {
            break 'blk true;
        }
        if content.get(input_buffer.offset).is_none() {
            input_buffer.offset = input_buffer.offset.wrapping_sub(1);
            break 'blk false;
        }
        input_buffer.offset = input_buffer.offset.wrapping_sub(1);
        loop {
            let mut new_item = match cJSON_New_Item() {
                Some(n) => n,
                None => break 'blk false,
            };
            if input_buffer.offset.wrapping_add(1) >= content.len() {
                break 'blk false;
            }
            input_buffer.offset = input_buffer.offset.wrapping_add(1);
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            if parse_string(&mut new_item, input_buffer) == 0 {
                break 'blk false;
            }
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            new_item.string = new_item.valuestring.take();
            if content.get(input_buffer.offset).copied() != Some(b':') {
                break 'blk false;
            }
            input_buffer.offset = input_buffer.offset.wrapping_add(1);
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            if parse_value(&mut new_item, input_buffer) == 0 {
                break 'blk false;
            }
            items.push(new_item);
            let _ = buffer_skip_whitespace(Some(&mut *input_buffer));
            if content.get(input_buffer.offset).copied() != Some(b',') {
                break;
            }
        }
        if content.get(input_buffer.offset).copied() != Some(b'}') {
            break 'blk false;
        }
        true
    };
    if ok {
        input_buffer.depth = input_buffer.depth.wrapping_sub(1);
        let mut head: Option<Box<cJSON>> = None;
        for mut it in items.into_iter().rev() {
            it.next = head;
            head = Some(it);
        }
        item.type_0 = 1 << 6;
        item.child = head;
        input_buffer.offset = input_buffer.offset.wrapping_add(1);
        1
    } else {
        drop(items);
        0
    }
}
pub fn tree_checksum(item: Option<&cJSON>) -> f64 {
    let mut acc: f64 = 0.0;
    let mut cur = item;
    while let Some(node) = cur {
        acc += node.valuedouble;
        if let Some(s) = node.valuestring.as_ref() {
            acc += s
                .as_bytes()
                .iter()
                .take_while(|&&b| b != 0)
                .map(|&b| b as f64)
                .sum::<f64>();
        }
        if let Some(s) = node.string.as_ref() {
            acc += s
                .as_bytes()
                .iter()
                .take_while(|&&b| b != 0)
                .map(|&b| b as f64)
                .sum::<f64>();
        }
        if node.child.is_some() {
            acc += tree_checksum(node.child.as_deref());
        }
        cur = node.next.as_deref();
    }
    acc
}
pub fn diff_timespec(time1: (i64, i64), time0: (i64, i64)) -> f64 {
    let sec = time1.0.wrapping_sub(time0.0);
    let nsec = time1.1.wrapping_sub(time0.1);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        let name = args.first().cloned().unwrap_or_default();
        eprintln!("Usage: {} <file.json>", name);
        std::process::exit(1);
    }
    let path = args[1].clone();
    let mut content: Vec<u8> = match std::fs::read(&path) {
        Ok(c) => c,
        Err(_) => {
            eprintln!("Error: cannot open '{}'", path);
            std::process::exit(1);
        }
    };
    content.push(0);
    let mut checksum: f64 = 0.0;
    let iterations: i64 = 5000;
    let base = std::time::Instant::now();
    let to_tuple =
        |d: std::time::Duration| -> (i64, i64) { (d.as_secs() as i64, d.subsec_nanos() as i64) };
    let start_time = to_tuple(base.elapsed());
    for _ in 0..iterations {
        let root = cJSON_ParseWithLength(Some(&content[..]));
        if root.is_none() {
            let err = cJSON_GetErrorPtr();
            let msg = if !err.is_empty() {
                String::from_utf8_lossy(&err).into_owned()
            } else {
                "(unknown)".to_string()
            };
            eprintln!("Parse error near: {}", msg);
            std::process::exit(1);
        }
        checksum += tree_checksum(root.as_deref());
        cJSON_Delete(root);
    }
    let end_time = to_tuple(base.elapsed());
    let time_elapsed = diff_timespec(end_time, start_time);
    println!(
        "Time taken to parse json {}: {:.6} seconds",
        path, time_elapsed
    );
    println!("Checksum: {:.0}", checksum);
}
