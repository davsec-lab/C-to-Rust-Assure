use std::io::Write;

pub fn csv_fwrite(fp: Option<&mut dyn Write>, src: Option<&[u8]>, src_size: usize) -> i32 {
    csv_fwrite2(fp, src, src_size, 0x22)
}