#include <stdio.h>
#include <stdlib.h>


//clang -O3 c.c -o c

int main() {
    size_t n = 9000000;
    int *arr = malloc(n * sizeof(int));

    for (size_t i = 0; i < n; i++) {
        arr[i] = (int)i;
    }

    long long sum = 0;
    for (size_t i = 0; i < n; i++) {
        sum += arr[i];
    }

    printf("sum = %lld\n", sum);
    free(arr);
    return 0;
}
