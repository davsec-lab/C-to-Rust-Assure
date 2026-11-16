use std::cell::RefCell;
use std::rc::Rc;

fn cJSON_New_Item(_hooks: &internal_hooks) -> CJsonLink {
    // The node is allocated by Rust's allocator rather than `hooks.allocate`,
    // because the Rc<RefCell<cJSON>> representation cannot be built from a raw
    // pointer in safe Rust. Every field is zero-initialised, which matches the
    // C `memset(node, 0, sizeof(cJSON))`.
    let node = cJSON {
        next: None,
        prev: None,
        child: None,
        r#type: 0,
        valuestring: None,
        valueint: 0,
        valuedouble: 0.0,
        string: None,
    };
    Some(Rc::new(RefCell::new(node)))
}