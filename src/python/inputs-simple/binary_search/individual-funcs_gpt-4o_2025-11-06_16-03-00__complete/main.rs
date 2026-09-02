
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

use std::ffi::CString;
use std::io::{self, Read};
use std::os::unix::io::RawFd;
use std::ptr;
use std::time::SystemTime;
use std::alloc::{alloc, dealloc, Layout};
use std::process;
use std::env;
use std::mem;
use std::time::Duration;

struct ReadFormat {
    nr: u64,
    values: [(u64, u64); 5],
}

fn main() -> i32 {
    let args: Vec<String> = env::args().collect();
    if args.len() < 2 || args.len() > 3 {
        eprintln!("Usage: {} <array_size> [--perf]\n  --perf: Enable performance event monitoring", args[0]);
        return 1;
    }

    let size: i32 = args[1].parse().unwrap_or_else(|_| {
        eprintln!("Error: array size must be a positive integer.");
        process::exit(1);
    });

    if size <= 0 {
        eprintln!("Error: array size must be a positive integer.");
        return 1;
    }

    let enable_perf = args.len() == 3 && args[2] == "--perf";
    let mut start_time = SystemTime::now();
    let mut end_time = SystemTime::now();
    let layout = Layout::array::<i32>(size as usize).unwrap();
    let arr = unsafe { alloc(layout) as *mut i32 };
    for i in 0..size {
        unsafe { *arr.add(i as usize) = i + 1 };
    }

    let mut time_elapsed = 0.0;
    let mut total_dummy = 0;
    let mut fd = [0; 5];
    let mut id = [0; 5];
    let mut pe_val = [0u64; 5];
    let mut pe = [crate::PerfEventAttr::default(); 5];
    let mut counter_results = ReadFormat { nr: 0, values: [(0, 0); 5] };

    if enable_perf {
        unsafe {
            configure_event(&mut pe[0], crate::PERF_TYPE_HARDWARE, crate::PERF_COUNT_HW_CPU_CYCLES);
            configure_event(&mut pe[1], crate::PERF_TYPE_HARDWARE, crate::PERF_COUNT_HW_INSTRUCTIONS);
            configure_event(&mut pe[2], crate::PERF_TYPE_HW_CACHE, (crate::PERF_COUNT_HW_CACHE_L1D | (crate::PERF_COUNT_HW_CACHE_OP_READ << 8) | (crate::PERF_COUNT_HW_CACHE_RESULT_MISS << 16)));
            configure_event(&mut pe[3], crate::PERF_TYPE_HW_CACHE, (crate::PERF_COUNT_HW_CACHE_LL | (crate::PERF_COUNT_HW_CACHE_OP_READ << 8) | (crate::PERF_COUNT_HW_CACHE_RESULT_MISS << 16)));
            configure_event(&mut pe[4], crate::PERF_TYPE_HARDWARE, crate::PERF_COUNT_HW_BRANCH_MISSES);

            fd[0] = perf_event_open(&mut pe[0], 0, -1, -1, 0);
            libc::ioctl(fd[0], libc::_IOR!(b'$', 7, mem::size_of::<u64>()), &mut id[0]);
            for i in 1..5 {
                fd[i] = perf_event_open(&mut pe[i], 0, -1, fd[0], 0);
                libc::ioctl(fd[i], libc::_IOR!(b'$', 7, mem::size_of::<u64>()), &mut id[i]);
            }
            libc::ioctl(fd[0], libc::_IO!(b'$', 3), crate::PERF_IOC_FLAG_GROUP);
            libc::ioctl(fd[0], libc::_IO!(b'$', 0), crate::PERF_IOC_FLAG_GROUP);
        }
    }

    for _ in 0..size {
        let target = unsafe { *arr.add(rand::random::<usize>() % size as usize) };
        start_time = SystemTime::now();
        let dummy = unsafe { binary_search_range(arr, 0, size as usize - 1, target) };
        total_dummy += dummy;
        end_time = SystemTime::now();
        time_elapsed += diff_timespec(&end_time.duration_since(start_time).unwrap(), &Duration::new(0, 0));
    }

    if enable_perf {
        unsafe {
            libc::ioctl(fd[0], libc::_IO!(b'$', 1), crate::PERF_IOC_FLAG_GROUP);
            let n = libc::read(fd[0], &mut counter_results as *mut _ as *mut _, mem::size_of::<ReadFormat>());
            if n != mem::size_of::<ReadFormat>() as isize {
                eprintln!("read");
            }
            println!("Num events captured: {}", counter_results.nr);
            for i in 0..counter_results.nr as usize {
                for j in 0..5 {
                    if counter_results.values[i].1 == id[j] {
                        pe_val[j] = counter_results.values[i].0;
                    }
                }
            }
            println!("CPU cycles:             {}", pe_val[0]);
            println!("Instructions retired:   {}", pe_val[1]);
            println!("L1 DCache read misses:   {}", pe_val[2]);
            println!("Last level DCache read misses:   {}", pe_val[3]);
            println!("Branch misses:           {}", pe_val[4]);
            println!("IPC (instructions/cycle): {:.2}", pe_val[1] as f64 / pe_val[0] as f64);
            for i in 0..5 {
                libc::close(fd[i]);
            }
        }
    }

    println!("Total dummy = {}", total_dummy);
    println!("Time taken to search array of size {}: {:.6} seconds", size, time_elapsed);
    unsafe {
        dealloc(arr as *mut u8, layout);
    }
    0
}
