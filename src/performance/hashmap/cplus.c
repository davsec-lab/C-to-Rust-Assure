#include <unordered_map>
#include <cstdint>
#include <iostream>
#include <chrono>

//clang++ -O3 cplus.c -o cplus
int main() {
    using Map = std::unordered_map<uint64_t, uint64_t>;
    const size_t N = 9000000;

    Map m;
    m.reserve(N * 2); // reduce rehashes

    // 1. Insert
    for (uint64_t i = 0; i < N; ++i) {
        uint64_t key = i * 2 + 1;
        m[key] = i;
    }

    // 2. Lookup (hit)
    uint64_t sum = 0;
    for (uint64_t i = 0; i < N; ++i) {
        uint64_t key = i * 2 + 1;
        sum += m[key];
    }

    // 3. Erase half
    for (uint64_t i = 0; i < N; i += 2) {
        uint64_t key = i * 2 + 1;
        m.erase(key);
    }

    // 4. Lookup (mixed hit/miss)
    uint64_t sum2 = 0;
    for (uint64_t i = 0; i < N; ++i) {
        uint64_t key = i * 2 + 1;
        auto it = m.find(key);
        if (it != m.end()) {
            sum2 += it->second;
        }
    }

    std::cout << "sum = " << sum << ", sum2 = " << sum2 << "\n";
    return 0;
}
