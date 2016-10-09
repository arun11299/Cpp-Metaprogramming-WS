#include <iostream>
#include <chrono>

constexpr static const int ITER_COUNT = 10000000;

volatile int fun_function(volatile int v)
{
  return ++v;
}

int main() {
  auto lf = [](volatile int v) { return fun_function(v); };
  volatile int v = 0;
  auto start = std::chrono::high_resolution_clock::now();
  for (int i = 0; i < ITER_COUNT; i++) {
    v = lf(v);
  }
  auto end = std::chrono::high_resolution_clock::now();

  std::cout << std::chrono::duration_cast<std::chrono::microseconds>(end - start).count() << '\n';

  return 0;
}
