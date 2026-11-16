pub fn cJSON_ParseWithOpts(
    value: Option<&[u8]>,
    return_parse_end: Option<&mut usize>,
    require_null_terminated: bool,
) -> Option<Box<cJSON>> {
    let value = value?;
    let len = match value.iter().position(|&b| b == 0) {
        Some(pos) => pos + 1,
        None => value.len(),
    };
    cJSON_ParseWithLengthOpts(
        Some(&value[..len]),
        return_parse_end,
        require_null_terminated,
    )
}
