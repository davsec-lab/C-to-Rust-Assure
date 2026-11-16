pub fn bmp_row_index(header: &_bmp_header, y: usize) -> usize {
    let h: usize = header.biHeight.unsigned_abs() as usize;
    if header.biHeight > 0 {
        h.wrapping_sub(1).wrapping_sub(y)
    } else {
        y
    }
}
