pub fn cJSON_ParseWithLength(value: Option<&[u8]>) -> Option<Box<cJSON>> {
    cJSON_ParseWithLengthOpts(value, None, false)
}
