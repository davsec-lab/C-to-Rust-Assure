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