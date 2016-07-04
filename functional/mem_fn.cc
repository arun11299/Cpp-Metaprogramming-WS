#include <iostream>
#include <functional>
#include <array>
#include <algorithm>

class Test {
public:
  void take() {
    std::cout << "Passed\n";
  }
};

int main() {
  std::array<Test, 3> arr = {Test(), Test(), Test()};
  std::for_each(std::begin(arr), std::end(arr), std::mem_fn(&Test::take));
  return 0;
}
