use std::fs::File;
use std::io::{BufRead, BufReader};

pub fn detect_indexing(filename: &str) -> i32 {
    let fp = match File::open(filename) {
        Ok(f) => f,
        Err(_) => return 1,
    };
    let mut reader = BufReader::new(fp);
    let mut min_node: i32 = 2147483647;
    let mut samples = 0;
    let mut line = String::new();
    while samples < 100 {
        line.clear();
        // fgets reads at most 255 bytes per call; for typical lines this is a full line
        match reader.read_line(&mut line) {
            Ok(0) => break,
            Ok(_) => {}
            Err(_) => break,
        }
        if line.starts_with('#') {
            continue;
        }
        let mut it = line.split_whitespace();
        let a = it.next().and_then(|s| s.parse::<i32>().ok());
        let b = it.next().and_then(|s| s.parse::<i32>().ok());
        if let (Some(fromnode), Some(tonode)) = (a, b) {
            if fromnode < min_node {
                min_node = fromnode;
            }
            if tonode < min_node {
                min_node = tonode;
            }
            samples += 1;
        }
    }
    let is_one_indexed = min_node != 0;
    println!(
        "Detected indexing: {} (min node ID: {})",
        if is_one_indexed { "1-indexed" } else { "0-indexed" },
        min_node
    );
    if is_one_indexed { 1 } else { 0 }
}