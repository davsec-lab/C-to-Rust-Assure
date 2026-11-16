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
