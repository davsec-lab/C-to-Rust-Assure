pub fn main() -> () {
    fn atoi(s: &str) -> i32 {
        let s = s.trim_start();
        let mut chars = s.chars().peekable();
        let mut neg = false;
        if let Some(&c) = chars.peek() {
            if c == '+' || c == '-' {
                neg = c == '-';
                chars.next();
            }
        }
        let mut val: i64 = 0;
        for c in chars {
            if let Some(d) = c.to_digit(10) {
                val = (val * 10 + d as i64).min(i64::from(i32::MAX) + 1);
            } else {
                break;
            }
        }
        if neg {
            val = -val;
        }
        val.clamp(i64::from(i32::MIN), i64::from(i32::MAX)) as i32
    }
    let args: Vec<String> = std::env::args().collect();
    if args.len() != 2 {
        println!("Usage: {} <array_size>", args[0]);
        std::process::exit(1);
    }
    let size: i32 = atoi(&args[1]);
    if size <= 0 {
        println!("Error: array size must be a positive integer.");
        std::process::exit(1);
    }
    let mut arr: Vec<i32> = Vec::new();
    if arr.try_reserve_exact(size as usize).is_err() {
        println!("Error: Memory allocation failed.");
        std::process::exit(1);
    }
    let mut state: u64 = 10000;
    for _ in 0..size {
        state = state
            .wrapping_mul(6364136223846793005)
            .wrapping_add(1442695040888963407);
        arr.push((state >> 33) as i32);
    }
    let base = std::time::Instant::now();
    let start_time: (i64, i64) = (0, 0);
    quicksort(&mut arr[..], 0, size - 1);
    let elapsed = base.elapsed();
    let end_time: (i64, i64) = (elapsed.as_secs() as i64, elapsed.subsec_nanos() as i64);
    let time_elapsed: f64 = diff_timespec(end_time, start_time);
    println!(
        "Time taken for quicksort of array size {}: {:.6} seconds",
        size, time_elapsed
    );
}
