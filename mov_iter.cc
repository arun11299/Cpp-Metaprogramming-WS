#include <iostream>
#include <iterator>
#include <vector>

class Test {
public:
  Test() {}
  Test(const Test& t) { std::cout << "Copied" << std::endl; }
  Test(Test&& other) {std::cout << "Moved" << std::endl;}
};

int main() {
  std::vector<Test> v = {Test(), Test(), Test(), Test(), Test()};
  auto p = v.begin() + 3;

  std::vector<Test> v2(std::make_move_iterator(v.begin()),
		       std::make_move_iterator(p));

  v2.swap(v);

  return 0;
}
