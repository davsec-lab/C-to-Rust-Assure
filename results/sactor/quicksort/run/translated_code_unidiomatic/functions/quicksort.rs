pub fn quicksort(arr: *mut i32, low: i32, high: i32) {
    if low < high {
        let pi = unsafe { partition(arr, low, high) };
        quicksort(arr, low, pi.wrapping_sub(1));
        quicksort(arr, pi.wrapping_add(1), high);
    }
}
