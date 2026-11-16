use std::fs::File;
use std::io::{BufRead, BufReader};

pub type _IO_lock_t = ();
type __off64_t = i64;
type __off_t = i64;
type __syscall_slong_t = i64;
type __time_t = i64;


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
#[derive(Debug, Clone, Copy, Default)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec - time0.tv_sec) as f64
        + (time1.tv_nsec - time0.tv_nsec) as f64 / 1000000000.0
}