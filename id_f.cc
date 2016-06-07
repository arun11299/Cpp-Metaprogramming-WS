#include <iostream>
#include <type_traits>
#include <utility>
#include <memory>

template <typename T>
auto id(T&& x) -> decltype(std::forward<T>(x))
{
  return std::forward<T>(x);
}

int main() {
  auto v = id (std::unique_ptr<int>(new int(1)));
  std::cout << *v << std::endl;
  return 0;
}
