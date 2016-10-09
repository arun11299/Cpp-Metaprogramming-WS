#include <functional>
#include <memory>
#include <cstring>
#include <iostream>

static const int ITER_COUNT = 10000;

struct BigFunctor
{
  void operator()(const char* s) {
    // I know it wont overflow buffer, so chill!
    memcpy((void*)buf_, s, strlen(s));
  }

  volatile char buf_[64]; // Doesnt fit the SBO of both clang and g++
};

template <typename Handler, typename... Args>
auto run_handler(Handler&& handler, Args&&... args)
{
  return handler(std::forward<Args>(args)...);
}

static const char* arr[3] = {
  "SampleA", "SampleB", "SampleC",
};

static void BM_std_function_heavy()
{
  std::function<void(const char*)> dhandler{BigFunctor()};

  for (int i = 0; i < ITER_COUNT; i++) {
    run_handler(std::move(dhandler), arr[i % 3]);
  }

}

int main() {
  BM_std_function_heavy();
  return 0;
}

