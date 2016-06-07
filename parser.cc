#include <iostream>

template <char... chars>  
using stream = std::integer_sequence<char, chars...>; 

template <typename T, T... chars>  
constexpr stream<chars...> operator""_stream() { return { }; } 

int main() {
    using hello_world = std::decltype("Hello World!"_stream);
    return 0;
}
