#include <iostream>
#include <type_traits>
#include <typeinfo>

template <int... Items> struct Result {};

template <int A, int... Rest>
struct Append {
  using type = Result<A, Rest...>;
};

int main() {
  std::cout << typeid(Append<10>::type).name() << std::endl;
  return 0;
}
