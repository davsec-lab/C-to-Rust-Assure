pub fn cJSON_Parse(value: Option<&[u8]>) -> Option<Box<cJSON>> {
    cJSON_ParseWithOpts(value, None, false)
}
