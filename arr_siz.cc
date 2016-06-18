#include <iostream>

template <typename T, size_t N> constexpr size_t arr_siz(T (&)[N]) {return N;}

int main() {
  constexpr char array[] = "this is a test";
  std::cout << arr_siz(array) << std::endl;
  return 0;
}
