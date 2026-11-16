static mut global_hooks: internal_hooks = internal_hooks {
    allocate: Some(libc::malloc),
    deallocate: Some(libc::free),
    reallocate: None,
};
