pub fn csv_set_blk_size(p: Option<&mut CsvParser<'_>>, size: usize) {
    if let Some(parser) = p {
        parser.blk_size = size;
    }
}
