pub fn csv_set_free_func(
    p: Option<&mut CsvParser<'_>>,
    f: Option<unsafe extern "C" fn(*mut c_void)>,
) {
    if let (Some(p), Some(f)) = (p, f) {
        p.free_func = Some(f);
    }
}
