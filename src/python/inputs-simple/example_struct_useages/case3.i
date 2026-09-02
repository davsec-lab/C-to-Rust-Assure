struct student {
    int *a;
    char *b;
};


// case
void bar(int *a) {

}

void foo(struct student *stu) {
    int *a = stu->a;
    bar(a);
}

