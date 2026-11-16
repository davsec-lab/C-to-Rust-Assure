pub fn main() -> () {
    fn parse_int(s: &str) -> i32 {
        let bytes = s.as_bytes();
        let mut i = 0;
        while i < bytes.len() && (bytes[i] == b' ' || (bytes[i] >= 9 && bytes[i] <= 13)) {
            i += 1;
        }
        let mut neg = false;
        if i < bytes.len() && (bytes[i] == b'+' || bytes[i] == b'-') {
            neg = bytes[i] == b'-';
            i += 1;
        }
        let mut val: i64 = 0;
        while i < bytes.len() && bytes[i].is_ascii_digit() {
            val = val * 10 + (bytes[i] - b'0') as i64;
            if val > i32::MAX as i64 + 1 {
                val = i32::MAX as i64 + 1;
            }
            i += 1;
        }
        if neg {
            val = -val;
        }
        val.clamp(i32::MIN as i64, i32::MAX as i64) as i32
    }
    fn make_rng(seed: u32) -> impl FnMut() -> u32 {
        let mut r: Vec<u32> = Vec::with_capacity(34);
        r.push(if seed == 0 { 1 } else { seed });
        for i in 1..31 {
            let prev = r[i - 1] as i32 as i64;
            let mut w = (16807i64 * prev) % 2147483647;
            if w < 0 {
                w += 2147483647;
            }
            r.push(w as u32);
        }
        for i in 31..34 {
            let v = r[i - 31];
            r.push(v);
        }
        for _ in 34..344 {
            let n = r.len();
            let v = r[n - 31].wrapping_add(r[n - 3]);
            r.push(v);
        }
        move || {
            let n = r.len();
            let v = r[n - 31].wrapping_add(r[n - 3]);
            r.push(v);
            v >> 1
        }
    }
    let args: Vec<String> = std::env::args().collect();
    let argc = args.len();
    if argc < 3 {
        println!(
            "Usage: {} <num_points> <k> [max_iter]",
            args.get(0).map(|s| s.as_str()).unwrap_or("program")
        );
        std::process::exit(1);
    }
    let num_points: i32 = parse_int(&args[1]);
    let k: i32 = parse_int(&args[2]);
    let max_iter: i32 = if argc >= 4 { parse_int(&args[3]) } else { 100 };
    if num_points <= 0 || k <= 0 || k > num_points {
        println!("Error: num_points > 0, k > 0, and k <= num_points required.");
        std::process::exit(1);
    }
    let mut rng = make_rng(42);
    let mut points: Vec<Point> = Vec::with_capacity(num_points as usize);
    for _ in 0..(num_points as usize) {
        let x = (rng() as f64) / 2147483647.0 * 100.0;
        let y = (rng() as f64) / 2147483647.0 * 100.0;
        points.push(Point {
            x,
            y,
            cluster_id: -1,
            cluster_distance: f64::MAX,
        });
    }
    let mut clusters: Vec<Cluster> = vec![Cluster { x: 0.0, y: 0.0 }; k as usize];
    let start = std::time::Instant::now();
    kmeans(&mut points, &mut clusters, max_iter);
    let elapsed = start.elapsed();
    let start_time: (i64, i64) = (0, 0);
    let end_time: (i64, i64) = (elapsed.as_secs() as i64, elapsed.subsec_nanos() as i64);
    let time_elapsed: f64 = diff_timespec(end_time, start_time);
    println!(
        "Time taken for k-means clustering of {} points into {} clusters: {:.6} seconds",
        num_points, k, time_elapsed
    );
}
