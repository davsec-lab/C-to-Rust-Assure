pub fn csv_free(p: &mut csv_parser) {
    p.entry_buf = Vec::new();
    p.entry_pos = 0;
}
