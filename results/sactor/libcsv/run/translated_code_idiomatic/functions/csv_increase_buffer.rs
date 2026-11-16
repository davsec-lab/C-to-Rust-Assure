pub fn csv_increase_buffer(p: &mut csv_parser) -> i32 {
    let entry_size = p.entry_buf.len();
    let mut to_add: usize = p.blk_size;
    if entry_size >= usize::MAX - to_add {
        to_add = usize::MAX - entry_size;
    }
    if to_add == 0 {
        p.status = 3;
        return -1;
    }
    loop {
        if p.entry_buf.try_reserve_exact(to_add).is_ok() {
            break;
        }
        to_add /= 2;
        if to_add == 0 {
            p.status = 2;
            return -1;
        }
    }
    p.entry_buf.resize(entry_size + to_add, 0);
    0
}
