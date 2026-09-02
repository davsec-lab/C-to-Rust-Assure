
fn __fswahb32(val: u32) -> u32 {
    ((val & 0x00ff00ff) << 8) | ((val & 0xff00ff00) >> 8)
}

fn binary_search(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len();

    while left < right {
        let mid = left + (right - left) / 2;
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    None
}

fn __le32_to_cpup(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len();

    while left < right {
        let mid = left + (right - left) / 2;
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    None
}

fn __bswap_32(x: u32) -> u32 {
    x.swap_bytes()
}

fn __arch_swab64(x: u64) -> u64 {
    ((x & 0x00000000000000FF) << 56) |
    ((x & 0x000000000000FF00) << 40) |
    ((x & 0x0000000000FF0000) << 24) |
    ((x & 0x00000000FF000000) << 8)  |
    ((x & 0x000000FF00000000) >> 8)  |
    ((x & 0x0000FF0000000000) >> 24) |
    ((x & 0x00FF000000000000) >> 40) |
    ((x & 0xFF00000000000000) >> 56)
}

fn __cpu_to_le32p(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len();

    while left < right {
        let mid = left + (right - left) / 2;
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    None
}

fn __cpu_to_le64p(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len();

    while left < right {
        let mid = left + (right - left) / 2;
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    None
}

fn __uint16_identity(arr: &[i32], target: i32) -> Option<usize> {
    let mut left = 0;
    let mut right = arr.len();

    while left < right {
        let mid = left + (right - left) / 2;
        if arr[mid] == target {
            return Some(mid);
        } else if arr[mid] < target {
            left = mid + 1;
        } else {
            right = mid;
        }
    }
    None
}

fn binary_search_range(arr: &[i32], mut low: usize, mut high: usize, x: i32) -> isize {
    while low <= high {
        let mid = low + (high - low) / 2;
        if arr[mid] == x {
            return mid as isize;
        }
        if arr[mid] < x {
            low = mid + 1;
        } else {
            high = mid - 1;
        }
    }
    -1
}

fn __bswap_16(x: u16) -> u16 {
    (x >> 8) | (x << 8)
}

pub fn configure_event(pe: &mut crate::PerfEventAttr, type_: u32, config: u64) {
    use crate::{PerfEventAttr, perf_constants::{PERF_FORMAT_GROUP, PERF_FORMAT_ID}};

    *pe = PerfEventAttr {
        type_,
        size: std::mem::size_of::<PerfEventAttr>() as u32,
        config,
        read_format: PERF_FORMAT_GROUP | PERF_FORMAT_ID,
        disabled: 1,
        exclude_kernel: 1,
        exclude_hv: 1,
    };
}
