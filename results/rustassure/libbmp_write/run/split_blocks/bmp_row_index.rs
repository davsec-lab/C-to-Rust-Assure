fn bmp_row_index(header: &BmpHeader, y: size_t) -> size_t {
    let h: size_t = header.bi_height.unsigned_abs() as size_t;
    if header.bi_height > 0 {
        h - 1 - y
    } else {
        y
    }
}