pub unsafe fn kmeans(
    points: *mut Point,
    n: libc::c_int,
    clusters: *mut Cluster,
    k: libc::c_int,
    max_iter: libc::c_int,
) {
    let mut j: libc::c_int = 0;
    while j < k {
        (*clusters.offset(j as isize)).x = (*points.offset(j as isize)).x;
        (*clusters.offset(j as isize)).y = (*points.offset(j as isize)).y;
        j += 1;
    }
    let mut iter: libc::c_int = 0;
    while iter < max_iter {
        assign_clusters(points, n, clusters, k);
        update_centroids(points, n, clusters, k);
        iter += 1;
    }
}
