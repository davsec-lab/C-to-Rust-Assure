pub unsafe fn cJSON_New_Item(hooks: *const internal_hooks) -> *mut cJSON {
    let node: *mut cJSON =
        ((*hooks).allocate.unwrap())(::core::mem::size_of::<cJSON>() as _) as *mut cJSON;
    if !node.is_null() {
        libc::memset(
            node as *mut libc::c_void,
            0,
            ::core::mem::size_of::<cJSON>(),
        );
    }
    node
}
