Node* create(void *data) {
    Node* node = malloc(sizeof(Node));
    node->data = data;
    node->next = 0;
    return node;
}

//equivalence group
{data : t0, node->data:t1},
{node->next: *Node, node: *Node}

void append(Node *node, void *data) {
    Node *last = create(data);
    if (node->next != 0) {
        last->next = node->next;
    }
    node->next = last;
}

//equivalence group
{node:*Node, last:*Node, node->next:*Node, last->next:*Node},
{data:t2, last->data:t3, node->data:t4}

