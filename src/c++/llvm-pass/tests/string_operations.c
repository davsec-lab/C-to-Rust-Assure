#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void my_strcpy(char *dst, char *src){
    int index = 0;
    while ( src[index] != '\0' ) {
        *(dst+index) = *(src+index);
        index++;
    }
    return;
}

void my_strcpy_2(void *d, void *s){
    int index = 0;
    char *dst = (char*)d;
    char *src = (char*)s;
    while ( src[index] != '\0' ) {
        *(dst+index) = *(src+index);
        index++;
    }
    return;
}

int main(int argc, char** argv){
    char src[255], dst[255];
    strcpy(src, "hello world\n");
    my_strcpy(dst, src);
    printf("dst: %s", dst);
    my_strcpy_2(dst, src);
    printf("dst: %s", dst);
}
