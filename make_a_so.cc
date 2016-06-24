#include <iostream>
#include <tuple>
#include <typeinfo>

template <typename... Args> struct A{};

template <typename... Args>
constexpr A<Args...> make_A(std::tuple<Args...>) {
    return {};
}

int main() {
  auto a = make_A(std::tuple<int,char>());
  std::cout << typeid(a).name() << std::endl;
  return 0;
}
