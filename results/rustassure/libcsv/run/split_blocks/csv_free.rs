pub fn csv_free(p: Option<&mut csv_parser>) {
    let p = match p {
        Some(p) => p,
        None => return,
    };
    if !p.entry_buf.is_empty() {
        if let Some(f) = p.free_func {
            let buf = std::mem::take(&mut p.entry_buf);
            f(buf);
        }
    }
    p.entry_buf = Vec::new();
    p.entry_size = 0;
}