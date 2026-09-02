struct student {
    void *a;
};

void bar(int *a) {
    if (a == NULL) {

    }
}

void foo(int *a) {
    int a1 = a[0];
    int a2 = a[1];
}

void biz(struct student *input) {
    foo(input->a);
    bar(input->a);
    // input->a[0] = 1; 
}



// I -| e : t -| c


biz(struct student *input) -| e : t -| c [input->a : array]
    bar(int *a) -| e : t -| c  // how to know input->a and a has same type?
    foo(int *a) -| e : t -| c
        a[0] = 1; -| e : t  -| [a : array]
        a[1] = 1; -| e : t  -| [a : array]

