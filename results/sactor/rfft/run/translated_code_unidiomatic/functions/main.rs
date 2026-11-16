pub fn main() -> () {
    unsafe {
        let n: usize = 8388608;
        let vec = libc::calloc(n, std::mem::size_of::<[f64; 2]>()) as *mut [f64; 2];
        if vec.is_null() {
            return;
        }
        let pi: f64 = 3.14159265358979323846;
        for i in 0..n {
            let t = (i as f64) / (n as f64);
            let val = (2.0 * pi * 5.0 * t).sin() + 0.5 * (2.0 * pi * 20.0 * t).sin();
            *vec.add(i) = [val, 0.0 * 1.0];
        }
        println!("Dataset generated: {} elements.", n);
        println!("First 5 elements before FFT:");
        for i in 0..5 {
            let v = *vec.add(i);
            println!(
                "{:.4} {} {:.4}i",
                v[0],
                if v[1] >= 0.0 { "+" } else { "-" },
                v[1].abs()
            );
        }
        let mut start: libc::timespec = std::mem::zeroed();
        let mut end: libc::timespec = std::mem::zeroed();
        let mut time_taken: f64;
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start);
        fft_transform(vec, n, false);
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end);
        time_taken =
            (end.tv_sec - start.tv_sec) as f64 + (end.tv_nsec - start.tv_nsec) as f64 / 1e9;
        println!("rfft forward computation time: {:.6} seconds", time_taken);
        println!("First 5 elements after FFT:");
        for i in 0..5 {
            let v = *vec.add(i);
            println!(
                "{:.4} {} {:.4}i",
                v[0],
                if v[1] >= 0.0 { "+" } else { "-" },
                v[1].abs()
            );
        }
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut start);
        fft_transform(vec, n, true);
        libc::clock_gettime(libc::CLOCK_MONOTONIC, &mut end);
        time_taken =
            (end.tv_sec - start.tv_sec) as f64 + (end.tv_nsec - start.tv_nsec) as f64 / 1e9;
        println!("rfft inverse computation time: {:.6} seconds", time_taken);
        println!("First 5 elements after Inverse FFT (normalized):");
        for i in 0..5 {
            let v = *vec.add(i);
            let re = v[0] / (n as f64);
            let im = v[1] / (n as f64);
            println!(
                "Normalized: {:.4} {} {:.4}i",
                re,
                if im >= 0.0 { "+" } else { "-" },
                im.abs()
            );
        }
        libc::free(vec as *mut libc::c_void);
    }
}
