#include <iostream>
#include <chrono>
#include "../impl_fast_delegate.hpp"

constexpr static const int ITER_COUNT = 10000000;

volatile int fun_function(volatile int v)
{
  return ++v;
}

int main() {
  delegate<volatile int (volatile int)> del(fun_function);

  volatile int v = 0;
  auto start = std::chrono::high_resolution_clock::now();

  for (int i = 0; i < ITER_COUNT; i++) {
    v = del(v);
  }

  auto end = std::chrono::high_resolution_clock::now();
  std::cout << 
    std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() << '\n';
  return 0;
}
