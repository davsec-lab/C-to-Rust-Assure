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
