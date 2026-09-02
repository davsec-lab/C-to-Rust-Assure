
// this case help us understand how to symbolized and print content
#include <klee/klee.h> 
int c(const char *str, const char **opt_arg_ptr)
{
    const char *ptr;
    ptr = str + 1;
    for ( ; ; )
    {
        ++ptr;
        ++ptr;
        opt_arg_ptr = ptr;
        break;
    }
    return 1;
}

int main() { 
    char *target_0 = (char *)malloc(100 * sizeof(char));
    char **target_1 = (char **)malloc(sizeof(char *)); 
    *target_1 = (char *)malloc(100 * sizeof(char));  
    klee_make_symbolic(target_0, 100 * sizeof(char), "test1");
    klee_make_symbolic(*target_1, 100 * sizeof(char), "test2"); 
    c(target_0, target_1);
    klee_print_expr("111:", **target_1);
    return 0; 
}