
fn __fswahb32(val: u32) -> u32 {
    ((val & 0x00ff00ff) << 8) | ((val & 0xff00ff00) >> 8)
}

use std::time::Instant;

fn bfs() {
    let start = Instant::now();
    // BFS algorithm implementation here
    let duration = start.elapsed();
    println!("Time elapsed in BFS is: {:?}", duration);
}

fn __le32_to_cpup() {
    // Function implementation here
}

fn create_adj_matrix(n: usize) -> Vec<Vec<i32>> {
    let mut matrix = vec![vec![0; n]; n];
    matrix
}

fn __bswap_32(__bsx: u32) -> u32 {
    ((__bsx & 0xff000000u32) >> 24)
        | ((__bsx & 0x00ff0000u32) >> 8)
        | ((__bsx & 0x0000ff00u32) << 8)
        | ((__bsx & 0x000000ffu32) << 24)
}

fn bfs_with_adj_matrix(adj_matrix: &[Vec<i32>], n: usize, start: usize) -> i32 {
    let mut total = 0;
    let mut visited = vec![false; n];
    let mut queue = std::collections::VecDeque::new();
    visited[start] = true;
    queue.push_back(start);
    while let Some(current) = queue.pop_front() {
        for i in 0..n {
            if adj_matrix[current][i] == 1 && !visited[i] {
                visited[i] = true;
                total += 1;
                queue.push_back(i);
            }
        }
    }
    total
}

fn __arch_swab64(val: u64) -> u64 {
    val.swap_bytes()
}

fn __cpu_to_le32p(value: u32) -> u32 {
    value.to_le()
}

fn __cpu_to_le64p() {
    // Implementation of the function
}

fn __uint16_identity(value: u16) -> u16 {
    value
}


use std::os::raw::{c_int, c_long, c_ulong};
use std::ptr;

#[repr(C)]
struct PerfEventAttr {
    // Define the fields of the struct as needed
}

fn perf_event_open(hw_event: *mut PerfEventAttr, pid: c_int, cpu: c_int, group_fd: c_int, flags: c_ulong) -> c_long {
    use std::arch::asm;
    let ret: c_long;
    unsafe {
        asm!(
            "syscall",
            in("rax") 298,
            in("rdi") hw_event,
            in("rsi") pid,
            in("rdx") cpu,
            in("r10") group_fd,
            in("r8") flags,
            lateout("rax") ret,
        );
    }
    ret
}

fn __le64_to_cpup() {
    // Function implementation here
}

fn free_adj_matrix(matrix: Vec<Vec<i32>>) {
    // In Rust, memory is automatically managed, so we don't need to manually free memory.
    // The Vec type will automatically deallocate its memory when it goes out of scope.
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

use std::time::{SystemTime, UNIX_EPOCH};

fn get_time() -> u64 {
    let start = SystemTime::now();
    let since_the_epoch = start.duration_since(UNIX_EPOCH).expect("Time went backwards");
    since_the_epoch.as_secs()
}

fn __uint64_identity(x: u64) -> u64 {
    x
}

fn __uint32_identity(x: u32) -> u32 {
    x
}

fn __le16_to_cpup(input: &[u8]) -> u16 {
    use std::convert::TryInto;
    u16::from_le_bytes(input.try_into().expect("slice with incorrect length"))
}

fn __fswahw32(val: u32) -> u32 {
    ((val & 0x0000ffff) << 16) | ((val & 0xffff0000) >> 16)
}

fn __swahb32p(p: &u32) -> u32 {
    if cfg!(target_endian = "little") {
        p.to_be()
    } else {
        p.to_le()
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
use std::time::{Duration, SystemTime};

struct ReadFormat {
    nr: u64,
    values: [(u64, u64); 5],
}

fn main() -> i32 {
    let args: Vec<String> = std::env::args().collect();
    if args.len() < 2 || args.len() > 3 {
        println!(
            "Usage: {} <number_of_nodes> [--perf]",
            args[0]
        );
        println!("  --perf: Enable performance event monitoring");
        return 1;
    }

    let size: i32 = args[1].parse().unwrap_or(0);
    if size <= 0 {
        println!("Invalid number of nodes. Please enter a positive integer.");
        return 1;
    }

    let enable_perf = args.len() == 3 && args[2] == "--perf";
    unsafe { libc::srand(10000) };

    let mut adj_matrix = create_adj_matrix(size as usize);
    generate_random_graph(&mut adj_matrix, size as usize);

    let mut start_time = SystemTime::now();
    let mut end_time = SystemTime::now();

    let mut fd = [0; 5];
    let mut id = [0; 5];
    let mut pe_val = [0u64; 5];
    let mut pe = [crate::perf::PerfEventAttr::default(); 5];
    let mut counter_results = ReadFormat { nr: 0, values: [(0, 0); 5] };

    if enable_perf {
        configure_event(&mut pe[0], crate::perf::PERF_TYPE_HARDWARE, crate::perf::PERF_COUNT_HW_CPU_CYCLES);
        configure_event(&mut pe[1], crate::perf::PERF_TYPE_HARDWARE, crate::perf::PERF_COUNT_HW_INSTRUCTIONS);
        configure_event(&mut pe[2], crate::perf::PERF_TYPE_HW_CACHE, (crate::perf::PERF_COUNT_HW_CACHE_L1D | (crate::perf::PERF_COUNT_HW_CACHE_OP_READ << 8) | (crate::perf::PERF_COUNT_HW_CACHE_RESULT_MISS << 16)));
        configure_event(&mut pe[3], crate::perf::PERF_TYPE_HW_CACHE, (crate::perf::PERF_COUNT_HW_CACHE_LL | (crate::perf::PERF_COUNT_HW_CACHE_OP_READ << 8) | (crate::perf::PERF_COUNT_HW_CACHE_RESULT_MISS << 16)));
        configure_event(&mut pe[4], crate::perf::PERF_TYPE_HARDWARE, crate::perf::PERF_COUNT_HW_BRANCH_MISSES);

        fd[0] = perf_event_open(&mut pe[0], 0, -1, -1, 0);
        if fd[0] == -1 {
            io::stderr().write_all(b"perf_event_open leader\n").unwrap();
        }

        unsafe {
            libc::ioctl(fd[0], libc::PERF_EVENT_IOC_ID, &mut id[0]);
        }

        for i in 1..5 {
            fd[i] = perf_event_open(&mut pe[i], 0, -1, fd[0], 0);
            if fd[i] == -1 {
                io::stderr().write_all(b"perf_event_open group\n").unwrap();
            }
            unsafe {
                libc::ioctl(fd[i], libc::PERF_EVENT_IOC_ID, &mut id[i]);
            }
        }

        unsafe {
            libc::ioctl(fd[0], libc::PERF_EVENT_IOC_RESET, libc::PERF_IOC_FLAG_GROUP);
            libc::ioctl(fd[0], libc::PERF_EVENT_IOC_ENABLE, libc::PERF_IOC_FLAG_GROUP);
        }
    }

    start_time = SystemTime::now();
    let total = bfs_with_adj_matrix(&adj_matrix, size as usize, 0);
    end_time = SystemTime::now();

    if enable_perf {
        unsafe {
            libc::ioctl(fd[0], libc::PERF_EVENT_IOC_DISABLE, libc::PERF_IOC_FLAG_GROUP);
        }

        let n = unsafe { libc::read(fd[0], &mut counter_results as *mut _ as *mut _, std::mem::size_of::<ReadFormat>()) };
        if n != std::mem::size_of::<ReadFormat>() as isize {
            io::stderr().write_all(b"read\n").unwrap();
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
            unsafe { libc::close(fd[i]) };
        }
    }

    let time_elapsed = diff_timespec(&end_time.duration_since(start_time).unwrap(), &Duration::new(0, 0));
    println!("\nTime taken to search graph of size {}: {} seconds, visited {} nodes", size, time_elapsed, total);

    free_adj_matrix(adj_matrix);
    0
}
