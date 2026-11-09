pub fn csv_write(dest: Option<&mut [u8]>, src: Option<&[u8]>) -> usize {
    csv_write2(dest, src, 0x22)
}
