pub fn csv_set_realloc_func(
    p: Option<&mut csv_parser>,
    f: Option<fn(Vec<u8>, size_t) -> Option<Vec<u8>>>,
) {
    if let (Some(p), Some(f)) = (p, f) {
        p.realloc_func = Some(f);
    }
}