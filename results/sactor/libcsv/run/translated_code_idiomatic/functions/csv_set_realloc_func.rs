pub fn csv_set_realloc_func(p: Option<&mut csv_parser>, f: Option<fn(usize) -> usize>) {
    if let (Some(_parser), Some(_func)) = (p, f) {}
}
