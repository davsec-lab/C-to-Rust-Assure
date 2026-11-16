pub fn cJSON_ParseWithOpts(
    value: Option<&'static [u8]>,
    return_parse_end: Option<&mut &'static [u8]>,
    require_null_terminated: cJSON_bool,
) -> CJsonLink {
    let v = match value {
        None => return None,
        Some(v) => v,
    };
    let len = v.iter().position(|&b| b == 0).unwrap_or(v.len());
    let buffer_length: size_t = (len + 1) as size_t;
    cJSON_ParseWithLengthOpts(
        Some(v),
        buffer_length,
        return_parse_end,
        require_null_terminated,
    )
}