#include <iostream>
#include <functional>

class Test {
public:
  void func() const { std::cout << "Function" << std::endl; }
};

int main() {
  Test t;
  std::function<void()> f = std::bind(&Test::func, &t);
  f();
  return 0;
}
