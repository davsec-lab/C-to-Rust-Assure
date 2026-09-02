#include <iostream>
#include <vector>


//clang++ -O3 cplus.c -o cplus
int main() {
    size_t n = 9000000;
    std::vector<int> v(n);

    for (size_t i = 0; i < n; i++) {
        v[i] = (int)i;
    }

    long long sum = 0;
    for (size_t i = 0; i < n; i++) {
        sum += v[i];
    }

    std::cout << "sum = " << sum << std::endl;
    return 0;
}
