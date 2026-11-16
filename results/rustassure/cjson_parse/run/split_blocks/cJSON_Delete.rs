pub fn cJSON_Delete(item: CJsonLink) {
    let mut item = item;
    while let Some(rc) = item {
        // next = item->next
        let next = rc.borrow_mut().next.take();

        let ty = rc.borrow().r#type;

        if (ty & 256) == 0 {
            let child = rc.borrow_mut().child.take();
            if child.is_some() {
                cJSON_Delete(child);
            }
        }

        if (ty & 256) == 0 {
            let mut b = rc.borrow_mut();
            if b.valuestring.is_some() {
                b.valuestring = None;
            }
        }

        if (ty & 512) == 0 {
            let mut b = rc.borrow_mut();
            if b.string.is_some() {
                b.string = None;
            }
        }

        // global_hooks.deallocate(item): dropped when the last Rc goes away
        drop(rc);

        item = next;
    }
}