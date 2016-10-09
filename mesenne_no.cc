#include <iostream>
#include <array>
#include <type_traits>

constexpr int cpow2(int n) {
  return n == 0 ? 1 : 2 * cpow2(n-1);
}

template <size_t... Seq>
static constexpr std::array<size_t, sizeof...(Seq)> mersenne_numbers(std::index_sequence<Seq...> isq)
{
  return { (cpow2(Seq)-1)...};
}


int main() {
  static_assert (cpow2(4) == 16, "");
  auto arr = mersenne_numbers(std::make_index_sequence<5>());
  for (auto e : arr) std::cout << e << " ";
  std::cout << std::endl;
  return 0;
}
