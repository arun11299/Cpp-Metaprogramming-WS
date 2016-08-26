#include <iostream>
#include <tuple>
#include <type_traits>

template <typename T>
constexpr size_t get(const T& t) { return std::get<0>(t); }

template<size_t> struct sfinae_true : std::true_type{};

template<size_t N, class T>
auto check(const T& arg) -> sfinae_true<::get(arg)>;

template<size_t N, class>
std::false_type check(...);

int main()
{
    constexpr std::tuple<size_t, size_t> arg(4,5);
    typedef decltype(check<0,decltype(arg)>(arg)) is_cexpr;
    std::cout << "is constexpr? " << is_cexpr::value << '\n';
}
