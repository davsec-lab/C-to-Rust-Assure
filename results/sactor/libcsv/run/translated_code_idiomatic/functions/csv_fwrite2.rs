use std::io::Write;
pub fn csv_fwrite2<W: Write>(fp: &mut W, src: &[u8], quote: u8) -> i32 {
    let mut buf: Vec<u8> = Vec::with_capacity(src.len() + 2);
    buf.push(quote);
    for &b in src {
        if b == quote {
            buf.push(quote);
        }
        buf.push(b);
    }
    match fp.write_all(&buf) {
        Ok(()) => 0,
        Err(_) => -1,
    }
}
