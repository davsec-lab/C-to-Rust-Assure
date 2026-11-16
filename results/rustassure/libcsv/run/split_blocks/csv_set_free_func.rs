pub fn csv_set_free_func(p: Option<&mut csv_parser>, f: Option<fn(Vec<u8>)>) {
    if let (Some(p), Some(f)) = (p, f) {
        p.free_func = Some(f);
    }
}