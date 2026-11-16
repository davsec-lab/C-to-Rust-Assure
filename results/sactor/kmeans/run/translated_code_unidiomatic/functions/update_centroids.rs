pub unsafe fn update_centroids(
    points: *mut Point,
    n: libc::c_int,
    clusters: *mut Cluster,
    k: libc::c_int,
) {
    let count =
        libc::calloc(k as libc::size_t, std::mem::size_of::<libc::c_int>()) as *mut libc::c_int;
    let sum_x = libc::calloc(k as libc::size_t, std::mem::size_of::<libc::c_double>())
        as *mut libc::c_double;
    let sum_y = libc::calloc(k as libc::size_t, std::mem::size_of::<libc::c_double>())
        as *mut libc::c_double;
    let mut i: libc::c_int = 0;
    while i < n {
        let p = &*points.offset(i as isize);
        let cid = p.cluster_id as isize;
        *count.offset(cid) += 1;
        *sum_x.offset(cid) += p.x;
        *sum_y.offset(cid) += p.y;
        i += 1;
    }
    let mut j: libc::c_int = 0;
    while j < k {
        let c = *count.offset(j as isize);
        if c > 0 {
            let cl = &mut *clusters.offset(j as isize);
            cl.x = *sum_x.offset(j as isize) / (c as libc::c_double);
            cl.y = *sum_y.offset(j as isize) / (c as libc::c_double);
        }
        j += 1;
    }
    libc::free(count as *mut libc::c_void);
    libc::free(sum_x as *mut libc::c_void);
    libc::free(sum_y as *mut libc::c_void);
}
