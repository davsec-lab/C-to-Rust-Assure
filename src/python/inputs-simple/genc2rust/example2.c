struct student {
    void *a;
    int a;
};


void foo(struct student *stu) {
    stu->a[0] = 1;
    stu->a[1] = 2;
}


void bar(struct student *stu) {
    if (stu->a) {
        print("a");
    }
}
