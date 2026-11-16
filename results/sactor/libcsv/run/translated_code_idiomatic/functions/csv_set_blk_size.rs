pub fn csv_set_blk_size(p: Option<&mut csv_parser>, size: usize) {
    if let Some(p) = p {
        p.blk_size = size;
    }
}
