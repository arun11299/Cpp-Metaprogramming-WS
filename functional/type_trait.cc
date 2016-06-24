#include <iostream>
#include <type_traits>

template <typename... T>
using void_t = void;

template <typename T, typename = void_t<>>
struct has_value_type : std::false_type {};

template <typename T>
struct has_value_type<T, void_t<typename T::value_type>> : 
  std::true_type {};

struct TT {
  int value_type;
};

template <typename T>
struct has_type {

  std::true_type test(T::value_type)
};

int main() {
    static_assert (!has_value_type<int>::value, "Integer cannot have a value type!!");
    static_assert (has_value_type<std::string::iterator>::value, "");
    static_assert (has_value_type<TT>::value, "");
}
