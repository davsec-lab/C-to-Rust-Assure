struct student {
    int *a;
    int b;
};


void bar(int *a) {

}

void foo(struct student *stu) {
    bar(stu->a);
}