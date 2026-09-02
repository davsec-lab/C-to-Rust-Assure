

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

fn __le64_to_cpup(arr: &[i32], target: i32) -> Option<usize> {
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

fn __arch_swab32(val: u32) -> u32 {
    val.swap_bytes()
}

fn __fswab16(val: u16) -> u16 {
    ((val & 0x00ff) << 8) | ((val & 0xff00) >> 8)
}

use std::time::Duration;

fn diff_timespec(time1: &Duration, time0: &Duration) -> f64 {
    let secs_diff = time1.as_secs() as f64 - time0.as_secs() as f64;
    let nanos_diff = time1.subsec_nanos() as f64 - time0.subsec_nanos() as f64;
    secs_diff + nanos_diff / 1_000_000_000.0
}

fn __bswap_64(x: u64) -> u64 {
    x.swap_bytes()
}

fn __uint64_identity(arr: &[i32], target: i32) -> Option<usize> {
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

fn __uint32_identity(arr: &[i32], target: i32) -> Option<usize> {
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

fn __le16_to_cpup(arr: &[i32], target: i32) -> Option<usize> {
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

fn __fswahw32(arr: &[i32], target: i32) -> Option<usize> {
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

fn __swahb32p(p: &u32) -> u32 {
    if cfg!(target_endian = "little") {
        p.swap_bytes()
    } else {
        __fswahb32(*p)
    }
}

fn __fswab64(val: u64) -> u64 {
    __arch_swab64(val)
}

fn __fswab32(val: u32) -> u32 {
    __arch_swab32(val)
}

#[inline(always)]
fn __swab16p(p: &u16) -> u16 {
    if cfg!(target_endian = "little") {
        p.to_be()
    } else {
        p.to_le()
    }
}

fn __swahw32p(p: &u32) -> u32 {
    if p.is_power_of_two() {
        ((*p & 0x0000ffff) << 16) | ((*p & 0xffff0000) >> 16)
    } else {
        __fswahw32(&[*p as i32], *p as i32);
        *p
    }
}

fn __swahb32s(p: &mut u32) {
    *p = __swahb32p(p);
}

#[inline(always)]
fn __swab(y: u64) -> u64 {
    if cfg!(target_endian = "little") {
        y.swap_bytes()
    } else {
        y
    }
}

fn __swab64p(p: &u64) -> u64 {
    if cfg!(target_endian = "little") {
        p.to_be()
    } else {
        *p
    }
}

#[inline(always)]
fn __swab32p(p: &u32) -> u32 {
    if cfg!(target_endian = "little") {
        p.to_be()
    } else {
        p.to_le()
    }
}

fn __swab16s(p: &mut u16) {
    *p = __swab16p(p);
}

#[inline(always)]
fn __be16_to_cpup(p: &u16) -> u16 {
    __swab16p(p)
}

fn __cpu_to_be16p(p: &u16) -> u16 {
    __swab16p(p)
}

fn __swahw32s(p: &mut u32) {
    *p = __swahw32p(p);
}

fn __be64_to_cpup(p: &u64) -> u64 {
    __swab64p(p)
}

#[inline(always)]
fn __swab64s(p: &mut u64) {
    *p = __swab64p(p);
}

fn __cpu_to_be64p(p: &u64) -> u64 {
    __swab64p(p)
}

#[inline(always)]
fn __swab32s(p: &mut u32) {
    *p = __swab32p(p);
}

#[inline(always)]
fn __be32_to_cpup(p: &u32) -> u32 {
    __swab32p(p)
}

fn __cpu_to_be32p(p: &u32) -> u32 {
    __swab32p(p)
}
