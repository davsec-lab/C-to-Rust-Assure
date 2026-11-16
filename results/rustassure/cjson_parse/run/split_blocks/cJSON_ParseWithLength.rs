pub fn cJSON_ParseWithLength(value: Option<&'static [u8]>, buffer_length: size_t) -> CJsonLink {
    cJSON_ParseWithLengthOpts(value, buffer_length, None, 0)
}