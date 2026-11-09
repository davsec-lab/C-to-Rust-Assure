pub fn csv_increase_buffer(p: Option<&mut CsvParser<'_>>) -> i32 {
    let Some(p) = p else {
        return 0;
    };
    if p.realloc_func.is_none() {
        return 0;
    }
    let mut to_add = p.blk_size;
    if p.entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - p.entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    p.status = 2;
    -1
}
