#include <iostream>
#include <chrono>

constexpr static const int ITER_COUNT = 10000000;

class Base {
public:
  virtual volatile int fun_function(volatile int) = 0;
};

class Derived final: public Base {
public:
  volatile int fun_function(volatile int i) {
    return ++i;
  }
};

int main(int argc, char* argv[]) {
  Derived d;
  Base * b = nullptr;
  b = &d; 
  volatile int v = 0;

  auto start = std::chrono::high_resolution_clock::now();

  for (int i = 0; i < ITER_COUNT; i++) {
    v = b->fun_function(v);
  }

  auto end = std::chrono::high_resolution_clock::now();
  std::cout << std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() << '\n';
}
