#include <klee/klee.h> 

// this case help us understand how to modify scan_option manually
typedef long unsigned int __darwin_size_t;
typedef __darwin_size_t size_t;

static int
scan_option(const char *str,
            char opt_buf[], size_t opt_buf_size, const char **opt_arg_ptr)
{
    const char *ptr;
    unsigned int opt_len;
    if (str[0] != '-' || str[1] == 0)
        return 0;
    opt_len = 0;
    //+1
    ptr = str + 1;
    while (*ptr == '-')
        ++ptr;
    if (*ptr == 0)
        --ptr;
    for ( ; ; )
    {
        if (opt_len < opt_buf_size)
            opt_buf[opt_len] = (char)tolower(*ptr);
        ++opt_len;
        //+2
        ++ptr;
        if (*ptr == 0 || isspace(*ptr))
        {
            while (isspace(*ptr))
                //+3
                ++ptr;
            *opt_arg_ptr = (*ptr != 0) ? ptr : ((void*)0);
            break;
        }
        if (*ptr == '=')
        {
            ++ptr;
            *opt_arg_ptr = ptr;
            break;
        }
    }
    if (opt_buf_size > 0)
    {
        if (opt_len < opt_buf_size)
            opt_buf[opt_len] = '\0';
        else
            opt_buf[opt_buf_size - 1] = '\0';
    }
    return 1;
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
