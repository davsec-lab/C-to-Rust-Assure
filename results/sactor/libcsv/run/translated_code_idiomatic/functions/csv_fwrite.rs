pub fn csv_fwrite<W: std::io::Write>(fp: &mut W, src: &[u8]) -> i32 {
    csv_fwrite2(fp, src, 0x22u8)
}
