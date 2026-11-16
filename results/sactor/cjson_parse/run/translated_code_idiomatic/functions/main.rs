pub fn main() -> () {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 {
        let name = args.first().cloned().unwrap_or_default();
        eprintln!("Usage: {} <file.json>", name);
        std::process::exit(1);
    }
    let path = args[1].clone();
    let mut content: Vec<u8> = match std::fs::read(&path) {
        Ok(c) => c,
        Err(_) => {
            eprintln!("Error: cannot open '{}'", path);
            std::process::exit(1);
        }
    };
    content.push(0);
    let mut checksum: f64 = 0.0;
    let iterations: i64 = 5000;
    let base = std::time::Instant::now();
    let to_tuple =
        |d: std::time::Duration| -> (i64, i64) { (d.as_secs() as i64, d.subsec_nanos() as i64) };
    let start_time = to_tuple(base.elapsed());
    for _ in 0..iterations {
        let root = cJSON_ParseWithLength(Some(&content[..]));
        if root.is_none() {
            let err = cJSON_GetErrorPtr();
            let msg = if !err.is_empty() {
                String::from_utf8_lossy(&err).into_owned()
            } else {
                "(unknown)".to_string()
            };
            eprintln!("Parse error near: {}", msg);
            std::process::exit(1);
        }
        checksum += tree_checksum(root.as_deref());
        cJSON_Delete(root);
    }
    let end_time = to_tuple(base.elapsed());
    let time_elapsed = diff_timespec(end_time, start_time);
    println!(
        "Time taken to parse json {}: {:.6} seconds",
        path, time_elapsed
    );
    println!("Checksum: {:.0}", checksum);
}
