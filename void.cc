#include <iostream>

template <typename... T>
using void_t = void;

template <typename T, typename = void_t<>>
struct val {
    constexpr static bool value = false;
};

template <typename T>
struct val<T, void_t<typename T::type>> {
        constexpr static bool value = true;
};

struct Test {
    using type = int;
    type val = 42;
};

int main() {
    std::cout << val<Test>::value << std::endl;
    std::cout << val<int>::value << std::endl;
    return 0;
}
