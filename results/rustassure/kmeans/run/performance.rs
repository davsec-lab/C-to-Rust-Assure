use std::os::unix::ffi::OsStrExt;
use std::time::Instant;

type __syscall_slong_t = i64;
type __time_t = i64;
pub type size_t = usize;
pub struct Cluster {
    pub x: f64,
    pub y: f64,
}
pub struct Point {
    pub x: f64,
    pub y: f64,
    pub cluster_id: i32,
    pub cluster_distance: f64,
}

pub fn update_centroids(points: &[Point], n: i32, clusters: &mut [Cluster], k: i32) {
    let k_us = k as usize;
    let mut count: Vec<i32> = vec![0; k_us];
    let mut sum_x: Vec<f64> = vec![0.0; k_us];
    let mut sum_y: Vec<f64> = vec![0.0; k_us];
    for i in 0..(n as usize) {
        let cid = points[i].cluster_id as usize;
        count[cid] += 1;
        sum_x[cid] += points[i].x;
        sum_y[cid] += points[i].y;
    }
    for j in 0..k_us {
        if count[j] > 0 {
            clusters[j].x = sum_x[j] / count[j] as f64;
            clusters[j].y = sum_y[j] / count[j] as f64;
        }
    }
}
pub fn distance(p: Point, c: Cluster) -> f64 {
    ((p.x - c.x) * (p.x - c.x) + (p.y - c.y) * (p.y - c.y)).sqrt()
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
pub fn assign_clusters(points: &mut [Point], n: i32, clusters: &[Cluster], k: i32) {
    for i in 0..(n as usize) {
        let mut min_dist = f64::MAX;
        let mut best_cluster: i32 = -1;
        for j in 0..(k as usize) {
            let p = Point {
                x: points[i].x,
                y: points[i].y,
                cluster_id: points[i].cluster_id,
                cluster_distance: points[i].cluster_distance,
            };
            let c = Cluster {
                x: clusters[j].x,
                y: clusters[j].y,
            };
            let d = distance(p, c);
            if d < min_dist {
                min_dist = d;
                best_cluster = j as i32;
            }
        }
        points[i].cluster_id = best_cluster;
        points[i].cluster_distance = min_dist;
    }
}
pub fn kmeans(points: &mut [Point], n: i32, clusters: &mut [Cluster], k: i32, max_iter: i32) {
    for j in 0..k as usize {
        clusters[j].x = points[j].x;
        clusters[j].y = points[j].y;
    }
    for _iter in 0..max_iter {
        assign_clusters(points, n, clusters, k);
        update_centroids(points, n, clusters, k);
    }
}

extern "C" {
    fn srand(seed: u32);
    fn rand() -> i32;
}

fn atoi(s: &str) -> i32 {
    let b = s.as_bytes();
    let mut i = 0;
    while i < b.len() && (b[i] == b' ' || (b[i] >= 9 && b[i] <= 13)) {
        i += 1;
    }
    let mut neg = false;
    if i < b.len() && (b[i] == b'+' || b[i] == b'-') {
        neg = b[i] == b'-';
        i += 1;
    }
    let mut v: i32 = 0;
    while i < b.len() && b[i].is_ascii_digit() {
        v = v.wrapping_mul(10).wrapping_add((b[i] - b'0') as i32);
        i += 1;
    }
    if neg { v.wrapping_neg() } else { v }
}

fn main() {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 3 {
        println!("Usage: {} <num_points> <k> [max_iter]", args[0]);
        std::process::exit(1);
    }

    let num_points = atoi(&args[1]);
    let k = atoi(&args[2]);
    let max_iter = if args.len() >= 4 { atoi(&args[3]) } else { 100 };

    if num_points <= 0 || k <= 0 || k > num_points {
        println!("Error: num_points > 0, k > 0, and k <= num_points required.");
        std::process::exit(1);
    }

    const RAND_MAX: f64 = 2147483647.0;
    let mut points: Vec<Point> = Vec::with_capacity(num_points as usize);
    unsafe {
        srand(42);
        for _ in 0..num_points {
            let x = (rand() as f64) / RAND_MAX * 100.0;
            let y = (rand() as f64) / RAND_MAX * 100.0;
            points.push(Point {
                x,
                y,
                cluster_id: -1,
                cluster_distance: f64::MAX,
            });
        }
    }

    let mut clusters: Vec<Cluster> = (0..k).map(|_| Cluster { x: 0.0, y: 0.0 }).collect();

    let start_time = timespec { tv_sec: 0, tv_nsec: 0 };
    let t0 = Instant::now();

    // MAIN COMPUTATION BEGIN
    kmeans(&mut points, num_points, &mut clusters, k, max_iter);
    // MAIN COMPUTATION END

    let el = t0.elapsed();
    let end_time = timespec {
        tv_sec: el.as_secs() as __time_t,
        tv_nsec: el.subsec_nanos() as __syscall_slong_t,
    };
    let time_elapsed = diff_timespec(&end_time, &start_time);

    println!(
        "Time taken for k-means clustering of {} points into {} clusters: {:.6} seconds",
        num_points, k, time_elapsed
    );
}