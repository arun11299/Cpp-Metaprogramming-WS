#include <iostream>
#include <type_traits>

template <typename... T> struct param_pack {};

int main() {
  std::cout << std::is_same<param_pack<int, float, int>, param_pack<int,float,int,char>>::value << std::endl;
  return 0;
}
