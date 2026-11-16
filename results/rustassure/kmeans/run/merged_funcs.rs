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