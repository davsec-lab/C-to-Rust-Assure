struct student {
    int *a;
    int b;
};


// dependency : foo -> bar -> biz
void biz(int *a) {
}


void bar(int *a) {
    biz(a);
}

void foo(struct student *stu) {
    bar(stu->a);
}