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