#include <iostream>
#include <type_traits>

template <typename T,
         typename = typename T::type>
struct has_type: std::true_type {};

template<>
struct has_type<int>: std::false_type {};

int main() {
    std::cout << has_type<int>::value << std::endl;
    return 0;
}
