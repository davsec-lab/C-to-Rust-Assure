pub fn cJSON_Parse(value: Option<&'static [u8]>) -> CJsonLink {
    cJSON_ParseWithOpts(value, None, 0)
}