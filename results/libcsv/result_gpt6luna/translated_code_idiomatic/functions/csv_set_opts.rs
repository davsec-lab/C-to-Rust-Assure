pub fn csv_set_opts(p: Option<&mut CsvParser<'_>>, options: u8) -> Result<(), ()> {
    let Some(p) = p else {
        return Err(());
    };
    p.options = options;
    Ok(())
}
