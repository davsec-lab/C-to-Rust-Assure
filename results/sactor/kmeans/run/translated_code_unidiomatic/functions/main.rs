pub fn main() -> () {
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
