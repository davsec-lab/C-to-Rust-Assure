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