#[derive(Copy, Clone, Debug, PartialEq)]
pub struct Cluster {
    pub x: f64,
    pub y: f64,
}
#[derive(Copy, Clone, Debug)]
pub struct Point {
    pub x: f64,
    pub y: f64,
    pub cluster_id: i32,
    pub cluster_distance: f64,
}
pub fn diff_timespec(time1: (i64, i64), time0: (i64, i64)) -> f64 {
    let sec = time1.0.wrapping_sub(time0.0);
    let nsec = time1.1.wrapping_sub(time0.1);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn distance(p: Point, c: Cluster) -> f64 {
    let dx = p.x - c.x;
    let dy = p.y - c.y;
    (dx * dx + dy * dy).sqrt()
}
pub fn assign_clusters(points: &mut [Point], clusters: &[Cluster]) {
    for point in points.iter_mut() {
        let mut min_dist: f64 = f64::MAX;
        let mut best_cluster: i32 = -1;
        for (j, cluster) in clusters.iter().enumerate() {
            let d: f64 = distance(*point, *cluster);
            if d < min_dist {
                min_dist = d;
                best_cluster = j as i32;
            }
        }
        point.cluster_id = best_cluster;
        point.cluster_distance = min_dist;
    }
}
pub fn update_centroids(points: &[Point], clusters: &mut [Cluster]) {
    let k = clusters.len();
    let mut count: Vec<i32> = vec![0; k];
    let mut sum_x: Vec<f64> = vec![0.0; k];
    let mut sum_y: Vec<f64> = vec![0.0; k];
    for p in points {
        let cid = p.cluster_id as usize;
        count[cid] += 1;
        sum_x[cid] += p.x;
        sum_y[cid] += p.y;
    }
    for (j, cl) in clusters.iter_mut().enumerate() {
        let c = count[j];
        if c > 0 {
            cl.x = sum_x[j] / (c as f64);
            cl.y = sum_y[j] / (c as f64);
        }
    }
}
pub fn kmeans(points: &mut [Point], clusters: &mut [Cluster], max_iter: i32) {
    let count = clusters.len().min(points.len());
    for j in 0..count {
        clusters[j].x = points[j].x;
        clusters[j].y = points[j].y;
    }
    for _ in 0..max_iter {
        assign_clusters(points, clusters);
        update_centroids(points, clusters);
    }
}
pub fn main() {
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
            args.first().map(|s| s.as_str()).unwrap_or("program")
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
    { let mut s = 0f64; let mut ids: i64 = 0; for c in clusters.iter() { s += c.x * 1000.0 + c.y; } for (i, p) in points.iter().enumerate() { ids += p.cluster_id as i64 * ((i % 97 + 1) as i64); } println!("CHECK {:.6} {}", s, ids); }
    let elapsed = start.elapsed();
    let start_time: (i64, i64) = (0, 0);
    let end_time: (i64, i64) = (elapsed.as_secs() as i64, elapsed.subsec_nanos() as i64);
    let time_elapsed: f64 = diff_timespec(end_time, start_time);
    println!(
        "Time taken for k-means clustering of {} points into {} clusters: {:.6} seconds",
        num_points, k, time_elapsed
    );
}
