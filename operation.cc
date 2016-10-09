#include <iostream>
#include <type_traits>

template <typename T>
struct has_method_hello {

  static constexpr auto test(int) -> decltype(std::declval<T&>().hello(std::declval<int&>()), std::true_type());

  static constexpr std::false_type test(...);

  using result_type = decltype(test(0));
  static const bool value = result_type::value;

}; 

struct Foo {
  template <typename T>
  void hello(T& v) {}
};


int main() {
  std::cout << has_method_hello<Foo>::value << std::endl;
  return 0;
}
