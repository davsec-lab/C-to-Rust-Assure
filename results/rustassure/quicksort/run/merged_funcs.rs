type __syscall_slong_t = i64;
type __time_t = i64;

pub fn swap(a: &mut i32, b: &mut i32) {
    let temp = *a;
    *a = *b;
    *b = temp;
}
#[derive(Debug, Clone, Copy, Default)]
pub struct timespec {
    pub tv_sec: __time_t,
    pub tv_nsec: __syscall_slong_t,
}

fn diff_timespec(time1: &timespec, time0: &timespec) -> f64 {
    (time1.tv_sec.wrapping_sub(time0.tv_sec)) as f64
        + (time1.tv_nsec.wrapping_sub(time0.tv_nsec)) as f64 / 1000000000.0
}
pub fn partition(arr: &mut [i32], low: i32, high: i32) -> i32 {
    let pivot = arr[high as usize];
    let mut i = low;
    let mut j = low;
    while j < high {
        if arr[j as usize] <= pivot {
            arr.swap(i as usize, j as usize);
            i += 1;
        }
        j += 1;
    }
    arr.swap(i as usize, high as usize);
    i
}
fn quicksort(arr: &mut [i32], low: i32, high: i32) {
    if low < high {
        let pi = partition(arr, low, high);
        quicksort(arr, low, pi - 1);
        quicksort(arr, pi + 1, high);
    }
}