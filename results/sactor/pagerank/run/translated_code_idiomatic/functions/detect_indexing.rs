pub fn detect_indexing(filename: &str) -> i32 {
    use std::io::{BufRead, BufReader};
    fn parse_int(buf: &[u8], mut pos: usize) -> Option<(i32, usize)> {
        while pos < buf.len() && buf[pos].is_ascii_whitespace() {
            pos += 1;
        }
        let start = pos;
        if pos < buf.len() && (buf[pos] == b'+' || buf[pos] == b'-') {
            pos += 1;
        }
        let digits_start = pos;
        while pos < buf.len() && buf[pos].is_ascii_digit() {
            pos += 1;
        }
        if pos == digits_start {
            return None;
        }
        let s = std::str::from_utf8(&buf[start..pos]).ok()?;
        let v: i32 = s.parse().ok()?;
        Some((v, pos))
    }
    let file = match std::fs::File::open(filename) {
        Ok(f) => f,
        Err(_) => return 1,
    };
    let mut reader = BufReader::new(file);
    let mut min_node: i32 = i32::MAX;
    let mut samples: i32 = 0;
    let mut line: Vec<u8> = Vec::new();
    while samples < 100 {
        line.clear();
        match reader.read_until(b'\n', &mut line) {
            Ok(0) | Err(_) => break,
            Ok(_) => {}
        }
        if line.first() == Some(&b'#') {
            continue;
        }
        if let Some((fromnode, pos)) = parse_int(&line, 0) {
            if let Some((tonode, _)) = parse_int(&line, pos) {
                if fromnode < min_node {
                    min_node = fromnode;
                }
                if tonode < min_node {
                    min_node = tonode;
                }
                samples += 1;
            }
        }
    }
    let is_one_indexed = min_node != 0;
    let s = if is_one_indexed {
        "1-indexed"
    } else {
        "0-indexed"
    };
    println!("Detected indexing: {} (min node ID: {})", s, min_node);
    if is_one_indexed {
        1
    } else {
        0
    }
}
