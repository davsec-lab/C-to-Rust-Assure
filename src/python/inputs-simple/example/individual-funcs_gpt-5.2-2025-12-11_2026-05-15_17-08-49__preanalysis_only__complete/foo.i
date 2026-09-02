struct student {
    char *a;
    int b;
};
// case
void bar(struct student *stu);
void foo(struct student *stu) {
    bar(stu);
}
