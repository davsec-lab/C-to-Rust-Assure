pub fn csv_write(
    dest: Option<&mut [u8]>,
    dest_size: size_t,
    src: Option<&[u8]>,
    src_size: size_t,
) -> size_t {
    csv_write2(dest, dest_size, src, src_size, 0x22)
}