#include <iostream>
#include <functional>
#include <chrono>
#include <vector>
#include <memory>

constexpr static const int ITER_COUNT = 1000000;

struct Ctx { volatile int di; };

void handle_accept(std::function<void()>& handler)
{
  handler();
}

void handle_read_write(std::function<void()>& handler)
{
  handler();
}

int main() {
  auto ctx_ptr(std::make_unique<Ctx>());

  std::function<void()> data_f = [&ctx_ptr](){ ctx_ptr->di++; };
  std::function<void()> accept_f = [&ctx_ptr](){ ctx_ptr->di++; };

  auto start_time = std::chrono::high_resolution_clock::now();

  for (int i = 0; i < ITER_COUNT; i++) {
    if (i%2 == 0) data_f();
    else accept_f();
  }

  auto end_time = std::chrono::high_resolution_clock::now();
  std::cout << std::chrono::duration_cast<std::chrono::microseconds>(end_time - start_time).count() << '\n';

  return 0;
}
