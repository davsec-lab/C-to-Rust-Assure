use std::io::Write;

pub fn csv_fwrite2(
    fp: Option<&mut dyn Write>,
    src: Option<&[u8]>,
    src_size: usize,
    quote: u8,
) -> i32 {
    let (fp, src) = match (fp, src) {
        (Some(f), Some(s)) => (f, s),
        _ => return 0,
    };
    if fp.write_all(&[quote]).is_err() {
        return -1;
    }
    let n = src_size.min(src.len());
    for &c in &src[..n] {
        if c == quote {
            if fp.write_all(&[quote]).is_err() {
                return -1;
            }
        }
        if fp.write_all(&[c]).is_err() {
            return -1;
        }
    }
    0
}