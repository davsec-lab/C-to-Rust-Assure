pub fn cJSON_GetErrorPtr() -> Option<&'static [u8]> {
    let guard = GLOBAL_ERROR.lock().unwrap();
    match guard.json {
        Some(json) => {
            let pos = guard.position.min(json.len());
            Some(&json[pos..])
        }
        None => None,
    }
}