pub fn csv_init(p: Option<&mut CsvParser<'_>>, options: u8) -> i32 {
    let Some(p) = p else {
        return -1;
    };
    p.entry_buf = None;
    p.pstate = 0;
    p.quoted = 0;
    p.spaces = 0;
    p.entry_pos = 0;
    p.entry_size = 0;
    p.status = 0;
    p.options = options;
    p.quote_char = 0x22;
    p.delim_char = 0x2c;
    p.is_space = None;
    p.is_term = None;
    p.blk_size = 128;
    p.malloc_func = None;
    p.realloc_func = None;
    p.free_func = None;
    0
}
