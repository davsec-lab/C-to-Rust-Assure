pub unsafe fn partition(arr: *mut i32, low: i32, high: i32) -> i32 {
    let pivot = *arr.offset(high as isize);
    let mut i = low;
    let mut j = low;
    while j < high {
        if *arr.offset(j as isize) <= pivot {
            swap(arr.offset(i as isize), arr.offset(j as isize));
            i += 1;
        }
        j += 1;
    }
    swap(arr.offset(i as isize), arr.offset(high as isize));
    i
}
