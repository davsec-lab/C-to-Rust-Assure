pub unsafe fn assign_clusters(
    points: *mut Point,
    n: libc::c_int,
    clusters: *mut Cluster,
    k: libc::c_int,
) {
    let mut i: libc::c_int = 0;
    while i < n {
        let mut min_dist: f64 = f64::MAX;
        let mut best_cluster: libc::c_int = -1;
        let mut j: libc::c_int = 0;
        while j < k {
            let d: f64 = distance(*points.offset(i as isize), *clusters.offset(j as isize));
            if d < min_dist {
                min_dist = d;
                best_cluster = j;
            }
            j += 1;
        }
        (*points.offset(i as isize)).cluster_id = best_cluster;
        (*points.offset(i as isize)).cluster_distance = min_dist;
        i += 1;
    }
}
