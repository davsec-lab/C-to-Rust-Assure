#include <klee/klee.h> 

// this case help us understand how to symbolized pointer and print
int c(char *str, char **opt_arg_ptr)
{
    const char *ptr;
    ptr = str + 1;
    for ( ; ; )
    {
        ++ptr;
        ++ptr;
        *opt_arg_ptr = ptr;
        break;
    }
    return 1;
}

int main() { 
    char *target_0 = (char *)malloc(100 * sizeof(char));
    char **target_1 = (char **)malloc(sizeof(char *)); 
    *target_1 = (char *)malloc(100 * sizeof(char));  
    klee_make_symbolic(&target_0, sizeof(char *), "arg_0");
    klee_make_symbolic(target_1, sizeof(char *), "arg_1"); 
    c(target_0, target_1);
    klee_print_expr("arg_1:", *target_1);
    return 0; 
}
