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