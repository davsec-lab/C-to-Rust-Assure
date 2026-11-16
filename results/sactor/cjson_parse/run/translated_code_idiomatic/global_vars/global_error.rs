static global_error: std::sync::Mutex<error> = std::sync::Mutex::new(error {
    json: Vec::new(),
    position: 0,
});
