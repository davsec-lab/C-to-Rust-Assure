struct student {
    int *a;
    int b;
};


// case
void bar(struct student *a) {

}

void foo(struct student *stu) {
    bar(stu);
}