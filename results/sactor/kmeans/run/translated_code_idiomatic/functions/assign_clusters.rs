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
