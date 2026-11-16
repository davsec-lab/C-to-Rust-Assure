pub fn main() -> () {
    use std::time::Instant;
    let n: usize = 8388608;
    let mut vec: Vec<[f64; 2]> = vec![[0.0; 2]; n];
    let pi: f64 = 3.14159265358979323846;
    for i in 0..n {
        let t = (i as f64) / (n as f64);
        let val = (2.0 * pi * 5.0 * t).sin() + 0.5 * (2.0 * pi * 20.0 * t).sin();
        vec[i] = [val, 0.0 * 1.0];
    }
    println!("Dataset generated: {} elements.", n);
    println!("First 5 elements before FFT:");
    for i in 0..5 {
        let v = vec[i];
        println!(
            "{:.4} {} {:.4}i",
            v[0],
            if v[1] >= 0.0 { "+" } else { "-" },
            v[1].abs()
        );
    }
    let start = Instant::now();
    fft_transform(&mut vec, false);
    let time_taken = start.elapsed().as_secs_f64();
    println!("rfft forward computation time: {:.6} seconds", time_taken);
    println!("First 5 elements after FFT:");
    for i in 0..5 {
        let v = vec[i];
        println!(
            "{:.4} {} {:.4}i",
            v[0],
            if v[1] >= 0.0 { "+" } else { "-" },
            v[1].abs()
        );
    }
    let start = Instant::now();
    fft_transform(&mut vec, true);
    let time_taken = start.elapsed().as_secs_f64();
    println!("rfft inverse computation time: {:.6} seconds", time_taken);
    println!("First 5 elements after Inverse FFT (normalized):");
    for i in 0..5 {
        let v = vec[i];
        let re = v[0] / (n as f64);
        let im = v[1] / (n as f64);
        println!(
            "Normalized: {:.4} {} {:.4}i",
            re,
            if im >= 0.0 { "+" } else { "-" },
            im.abs()
        );
    }
}
