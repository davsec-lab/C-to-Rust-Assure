pub fn cJSON_GetErrorPtr() -> Vec<u8> {
    let guard = global_error.lock().unwrap();
    let position = guard.position.min(guard.json.len());
    guard.json[position..].to_vec()
}
