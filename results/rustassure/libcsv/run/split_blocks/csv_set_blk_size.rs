pub fn csv_set_blk_size(p: Option<&mut csv_parser>, size: size_t) {
    if let Some(p) = p {
        p.blk_size = size;
    }
}