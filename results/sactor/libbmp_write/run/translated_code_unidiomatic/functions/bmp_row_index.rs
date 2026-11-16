pub unsafe fn bmp_row_index(header: *const _bmp_header, y: usize) -> usize {
    let h: usize = libc::abs((*header).biHeight) as usize;
    if (*header).biHeight > 0 {
        h.wrapping_sub(1).wrapping_sub(y)
    } else {
        y
    }
}
