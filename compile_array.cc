#include <iostream>
#include <type_traits>
#include <array>

template <int...> struct seq {};

template <int Rows, int... Rem>
struct generate : generate <Rows-1, Rows-1, (Rows-1)*(Rows-1), Rem...> {};

template <int... S>
struct generate<0,S...> { typedef seq<S...> sequence; };

static const unsigned kCount = 5;

template<int... Values>
constexpr auto generateTable(seq<Values...> sequence)
{
  return std::array<int, sizeof...(Values)>{Values...};
}

int main() {
  auto arr = generateTable(typename generate<kCount>::sequence());
  for (auto e : arr) std::cout << e << " ";
  std::cout << std::endl;
  return 0;
}
