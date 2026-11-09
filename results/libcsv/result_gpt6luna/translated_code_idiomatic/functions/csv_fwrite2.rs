pub fn csv_fwrite2(writer: Option<&mut impl std::io::Write>, src: Option<&[u8]>, quote: u8) -> i32 {
    let (Some(writer), Some(src)) = (writer, src) else {
        return 0;
    };
    if writer.write_all(&[quote]).is_err() {
        return -1;
    }
    for &byte in src {
        if byte == quote && writer.write_all(&[quote]).is_err() {
            return -1;
        }
        if writer.write_all(&[byte]).is_err() {
            return -1;
        }
    }
    if writer.write_all(&[quote]).is_err() {
        return -1;
    }
    0
}
