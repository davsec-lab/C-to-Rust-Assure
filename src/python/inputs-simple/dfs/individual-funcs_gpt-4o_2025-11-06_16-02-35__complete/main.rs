
fn __fswahb32(val: u32) -> u32 {
    ((val & 0x00ff00ff) << 8) | ((val & 0xff00ff00) >> 8)
}

use std::time::Instant;

fn dfs() {
    let start = Instant::now();
    // Perform DFS operations here
    let duration = start.elapsed();
    println!("Time elapsed in DFS is: {:?}", duration);
}

fn __le32_to_cpup(p: &u32) -> u32 {
    *p
}

fn create_adj_matrix(n: usize) -> Vec<Vec<i32>> {
    let mut matrix = vec![vec![0; n]; n];
    matrix
}

fn dfs_recursive(adj_matrix: &mut [Vec<i32>], n: usize, start: usize, visited: &mut [i32]) {
    visited[start] = 1;
    for i in 0..n {
        if adj_matrix[start][i] == 1 && visited[i] == 0 {
            dfs_recursive(adj_matrix, n, i, visited);
        }
    }
}

fn __bswap_32(__bsx: u32) -> u32 {
    ((__bsx & 0xff000000u32) >> 24)
        | ((__bsx & 0x00ff0000u32) >> 8)
        | ((__bsx & 0x0000ff00u32) << 8)
        | ((__bsx & 0x000000ffu32) << 24)
}

fn __arch_swab64(val: u64) -> u64 {
    val.swap_bytes()
}

fn __cpu_to_le32p(p: &u32) -> u32 {
    *p
}

use std::time::SystemTime;

fn get_current_time() -> SystemTime {
    SystemTime::now()
}

fn __uint16_identity(value: u16) -> u16 {
    value
}

fn __bswap_16(x: u16) -> u16 {
    (x >> 8) | (x << 8)
}

use std::mem::size_of;
use std::ptr;

struct PerfEventAttr {
    type_: u32,
    size: u32,
    config: u64,
    sample_period: u64,
    sample_type: u64,
    read_format: u64,
    disabled: u64,
    inherit: u64,
    pinned: u64,
    exclusive: u64,
    exclude_user: u64,
    exclude_kernel: u64,
    exclude_hv: u64,
    exclude_idle: u64,
    mmap: u64,
    comm: u64,
    freq: u64,
    inherit_stat: u64,
    enable_on_exec: u64,
    task: u64,
    watermark: u64,
    precise_ip: u64,
    mmap_data: u64,
    sample_id_all: u64,
    exclude_host: u64,
    exclude_guest: u64,
    exclude_callchain_kernel: u64,
    exclude_callchain_user: u64,
    mmap2: u64,
    comm_exec: u64,
    use_clockid: u64,
    context_switch: u64,
    write_backward: u64,
    namespaces: u64,
    ksymbol: u64,
    bpf_event: u64,
    aux_output: u64,
    cgroup: u64,
    text_poke: u64,
    build_id: u64,
    inherit_thread: u64,
    remove_on_exec: u64,
    sigtrap: u64,
    __reserved_1: u64,
    wakeup_events: u32,
    bp_type: u32,
    bp_addr: u64,
    bp_len: u64,
    branch_sample_type: u64,
    sample_regs_user: u64,
    sample_stack_user: u32,
    clockid: i32,
    sample_regs_intr: u64,
    aux_watermark: u32,
    sample_max_stack: u16,
    __reserved_2: u16,
    aux_sample_size: u32,
    __reserved_3: u32,
    sig_data: u64,
    config3: u64,
}

const PERF_FORMAT_GROUP: u64 = 1 << 3;
const PERF_FORMAT_ID: u64 = 1 << 2;

fn configure_event(pe: &mut PerfEventAttr, type_: u32, config: u64) {
    unsafe {
        ptr::write_bytes(pe as *mut PerfEventAttr, 0, 1);
    }
    pe.type_ = type_;
    pe.size = size_of::<PerfEventAttr>() as u32;
    pe.config = config;
    pe.read_format = PERF_FORMAT_GROUP | PERF_FORMAT_ID;
    pe.disabled = 1;
    pe.exclude_kernel = 1;
    pe.exclude_hv = 1;
}

fn __le64_to_cpup(ptr: *const u64) -> u64 {
    unsafe { u64::from_le(*ptr) }
}

fn free_adj_matrix(matrix: &mut Vec<Vec<i32>>) {
    matrix.clear();
}

fn __arch_swab32(val: u32) -> u32 {
    val.swap_bytes()
}

fn __fswab16(val: u16) -> u16 {
    ((val & 0x00ffu16) << 8) | ((val & 0xff00u16) >> 8)
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

fn __uint64_identity(x: u64) -> u64 {
    x
}

fn __uint32_identity() {
    let start = std::time::SystemTime::now();
    let since_the_epoch = start.duration_since(std::time::UNIX_EPOCH).expect("Time went backwards");
    let seconds = since_the_epoch.as_secs();
    let nanos = since_the_epoch.subsec_nanos();

    println!("Seconds since the epoch: {}", seconds);
    println!("Nanoseconds since the epoch: {}", nanos);

    if seconds > 1000000000 {
        eprintln!("Error: Time is too far in the future");
        std::process::exit(1);
    }
}

fn __le16_to_cpup(p: *const u16) -> u16 {
    unsafe { std::ptr::read_unaligned(p) }
}

fn __fswahw32(val: u32) -> u32 {
    ((val & 0x0000ffff) << 16) | ((val & 0xffff0000) >> 16)
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
use std::time::{Duration, SystemTime};

struct ReadFormat {
    nr: u64,
    values: [(u64, u64); 5],
}

fn main(argc: i32, argv: *const *const i8) -> i32 {
    let args: Vec<String> = (0..argc)
        .map(|i| unsafe { CString::from_raw(*argv.offset(i as isize) as *mut i8) })
        .map(|cstr| cstr.into_string().unwrap())
        .collect();

    if args.len() < 2 || args.len() > 3 {
        println!("Usage: {} <number_of_nodes> [--perf]", args[0]);
        println!("  --perf: Enable performance event monitoring");
        return 1;
    }

    let size: i32 = args[1].parse().unwrap_or(0);
    if size <= 0 {
        println!("Invalid number of nodes. Please enter a positive integer.");
        return 1;
    }

    let enable_perf = args.len() == 3 && args[2] == "--perf";
    let mut rng = rand::thread_rng();
    let mut adj_matrix = create_adj_matrix(size as usize);
    generate_random_graph(&mut adj_matrix, size as usize);
    let mut visited = vec![0; size as usize];
    let mut start_time = SystemTime::now();
    let mut end_time = SystemTime::now();
    let mut fd = [0; 5];
    let mut id = [0; 5];
    let mut pe_val = [0u64; 5];
    let mut pe = [PerfEventAttr::default(); 5];
    let mut counter_results = ReadFormat { nr: 0, values: [(0, 0); 5] };

    if enable_perf {
        configure_event(&mut pe[0], PERF_TYPE_HARDWARE, PERF_COUNT_HW_CPU_CYCLES);
        configure_event(&mut pe[1], PERF_TYPE_HARDWARE, PERF_COUNT_HW_INSTRUCTIONS);
        configure_event(
            &mut pe[2],
            PERF_TYPE_HW_CACHE,
            (PERF_COUNT_HW_CACHE_L1D | (PERF_COUNT_HW_CACHE_OP_READ << 8) | (PERF_COUNT_HW_CACHE_RESULT_MISS << 16)),
        );
        configure_event(
            &mut pe[3],
            PERF_TYPE_HW_CACHE,
            (PERF_COUNT_HW_CACHE_LL | (PERF_COUNT_HW_CACHE_OP_READ << 8) | (PERF_COUNT_HW_CACHE_RESULT_MISS << 16)),
        );
        configure_event(&mut pe[4], PERF_TYPE_HARDWARE, PERF_COUNT_HW_BRANCH_MISSES);

        fd[0] = perf_event_open(&pe[0], 0, -1, -1, 0);
        unsafe {
            libc::ioctl(fd[0], libc::PERF_EVENT_IOC_ID, &mut id[0]);
        }
        for i in 1..5 {
            fd[i] = perf_event_open(&pe[i], 0, -1, fd[0], 0);
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
    dfs_recursive(&mut adj_matrix, size as usize, 0, &mut visited);
    end_time = SystemTime::now();

    if enable_perf {
        unsafe {
            libc::ioctl(fd[0], libc::PERF_EVENT_IOC_DISABLE, libc::PERF_IOC_FLAG_GROUP);
        }
        let n = unsafe { libc::read(fd[0], &mut counter_results as *mut _ as *mut _, std::mem::size_of::<ReadFormat>()) };
        if n != std::mem::size_of::<ReadFormat>() as isize {
            eprintln!("read: {}", io::Error::last_os_error());
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
            unsafe {
                libc::close(fd[i]);
            }
        }
    }

    let time_elapsed = diff_timespec(&end_time.duration_since(start_time).unwrap(), &Duration::new(0, 0));
    println!("Time taken to search graph of size {}: {} seconds", size, time_elapsed);
    free_adj_matrix(&mut adj_matrix);
    0
}
