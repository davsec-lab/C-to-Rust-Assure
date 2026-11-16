use std::sync::Mutex;

static global_hooks: Mutex<internal_hooks> = Mutex::new(internal_hooks {
    allocate: Some(libc::malloc),
    deallocate: Some(libc::free),
    reallocate: None,
});
