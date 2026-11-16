#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Cluster {
    pub x: libc::c_double,
    pub y: libc::c_double,
}
#[derive(Copy, Clone, Debug)]
#[repr(C)]
pub struct Point {
    pub x: libc::c_double,
    pub y: libc::c_double,
    pub cluster_id: libc::c_int,
    pub cluster_distance: libc::c_double,
}
pub unsafe fn diff_timespec(time1: *mut libc::timespec, time0: *mut libc::timespec) -> f64 {
    let sec = (*time1).tv_sec.wrapping_sub((*time0).tv_sec);
    let nsec = (*time1).tv_nsec.wrapping_sub((*time0).tv_nsec);
    (sec as f64) + (nsec as f64) / 1000000000.0
}
pub fn distance(p: Point, c: Cluster) -> f64 {
    ((p.x - c.x) * (p.x - c.x) + (p.y - c.y) * (p.y - c.y)).sqrt()
}
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
pub fn main() {
    let args: Vec<String> = std::env::args().collect();
    let argc = args.len();
    if argc < 3 {
        println!("Usage: {} <num_points> <k> [max_iter]", args[0]);
        std::process::exit(1);
    }
    unsafe {
        let to_c = |s: &String| -> libc::c_int {
            let cs = std::ffi::CString::new(s.as_bytes().to_vec())
                .unwrap_or_else(|_| std::ffi::CString::new("0").unwrap());
            libc::atoi(cs.as_ptr())
        };
        let num_points: libc::c_int = to_c(&args[1]);
        let k: libc::c_int = to_c(&args[2]);
        let max_iter: libc::c_int = if argc >= 4 { to_c(&args[3]) } else { 100 };
        if num_points <= 0 || k <= 0 || k > num_points {
            println!("Error: num_points > 0, k > 0, and k <= num_points required.");
            std::process::exit(1);
        }
        libc::srand(42);
        let points =
            libc::malloc((num_points as usize) * std::mem::size_of::<Point>()) as *mut Point;
        for i in 0..(num_points as usize) {
            let p = points.add(i);
            (*p).x = (libc::rand() as f64) / 2147483647.0 * 100.0;
            (*p).y = (libc::rand() as f64) / 2147483647.0 * 100.0;
            (*p).cluster_id = -1;
            (*p).cluster_distance = f64::MAX;
        }
        let clusters = libc::malloc((k as usize) * std::mem::size_of::<Cluster>()) as *mut Cluster;
        let mut start_time: libc::timespec = std::mem::zeroed();
        let mut end_time: libc::timespec = std::mem::zeroed();
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start_time);
        kmeans(points, num_points, clusters, k, max_iter);
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end_time);
        let time_elapsed: f64 = diff_timespec(&mut end_time, &mut start_time);
        println!(
            "Time taken for k-means clustering of {} points into {} clusters: {:.6} seconds",
            num_points, k, time_elapsed
        );
        libc::free(points as *mut libc::c_void);
        libc::free(clusters as *mut libc::c_void);
    }
}
