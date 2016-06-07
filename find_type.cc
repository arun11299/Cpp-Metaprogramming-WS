#include <iostream>
#include <type_traits>

struct output {};

template <typename... T> struct list{};

template <typename F, typename T> struct has_type;

template <typename F>
struct has_type<F, list<>> {
  static constexpr bool value = false;
};

template <typename F, typename... T>
struct has_type<F, list<F, T...>> {
  static constexpr bool value = true;
};

template <typename F, typename H, typename... T>
struct has_type<F, list<H,T...>> {
  static constexpr bool value = 
    std::is_same<F, typename std::decay<H>::type>::value ? true : has_type<F, list<T...>>::value;
};

int main() {
  std::cout << has_type<output, list<int, char, float, output&&>>::value << std::endl;
  return 0;
}
