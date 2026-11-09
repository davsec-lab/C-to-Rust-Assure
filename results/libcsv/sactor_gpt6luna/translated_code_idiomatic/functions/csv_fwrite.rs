pub fn csv_fwrite(writer: Option<&mut impl std::io::Write>, src: Option<&[u8]>) -> i32 {
    csv_fwrite2(writer, src, 0x22)
}
