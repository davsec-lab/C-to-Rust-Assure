struct student {
    char *a;
    int b;
};


// case



void bar(struct student *stu) {
    baz(stu->a);
}
