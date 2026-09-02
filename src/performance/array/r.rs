

//rustc -O r.rs -o r

fn main() {
    let n = 9_000_000usize;
    let mut v: Vec<i32> = Vec::with_capacity(n);

    for i in 0..n {
        v.push(i as i32);
    }

    let mut sum: i64 = 0;
    for x in &v {
        sum += *x as i64;
    }

    println!("sum = {}", sum);
}
