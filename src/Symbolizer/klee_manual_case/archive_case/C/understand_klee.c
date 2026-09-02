#include <klee/klee.h> 
#include <stdbool.h>


//if we don't have the defination of isspace, it will affect klee state explore (it cannot reach following quote)
// if (*ptr == 'a') {
//     ++ptr;
//     *opt_arg_ptr = ptr;
// }

typedef long unsigned int __darwin_size_t;
typedef __darwin_size_t size_t;

bool isspace(char *ptr) {
    return false;
}

int scan_option(const char *str,
            char opt_buf[], size_t opt_buf_size, const char **opt_arg_ptr)
{
    const char *ptr;
    ptr = str + 1;
    ++ptr;
    if (isspace(*ptr)) {
        *opt_arg_ptr = (void *)0;
    } else {
        ++ptr;
        ++ptr;
    }

    if (*ptr == 'a') {
        ++ptr;
        *opt_arg_ptr = ptr;
    }
}

int main() { 
    //pointer
    char *arg_0 = (char *)malloc(100 * sizeof(char));
    klee_make_symbolic(&arg_0, sizeof(char *), "arg_0");


    //content
    char arg_1[100]; 
    klee_make_symbolic(arg_1, 100 * sizeof(char), "arg_1");

    //content
    char arg_2[100];
    klee_make_symbolic(arg_2, 100 * sizeof(char), "arg_2");


    //pointer
    char **arg_3 = (char **)malloc(sizeof(char *)); 
    *arg_3 = (char *)malloc(100 * sizeof(char));  
    klee_make_symbolic(arg_3, sizeof(char *), "arg_3"); 


    scan_option(arg_0, arg_1, arg_2[0], arg_3);
    klee_print_expr("arg_0:", arg_0);
    klee_print_expr("arg_1:", arg_1);
    klee_print_expr("arg_2:", arg_2[0]);
    klee_print_expr("arg_3:", *arg_3);
    return 0; 
}
