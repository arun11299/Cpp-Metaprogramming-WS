#include "benchmark/benchmark.h"
#include <array>
#include <algorithm>
#include <string>
#include <functional>
#include <iterator>
#include <cstring>
#include <vector>
#include <memory>
#include "../impl_fast_delegate.hpp"

constexpr static const int ITER_COUNT = 1000000;

// This test i.e polymorphic callback is modelled after the test
// presented in http://www.codeproject.com/Articles/616090/Delegates-Cplusplus-vs-Impossibly-Fast-A-Quick-a
//
struct Object { volatile int count_ = 0; };

class SF_Button : public Object
{
public:
  using Handler = std::function<void(Object*)>;

  void setCallback(const Handler& h)
  {
    h_ = h;
  }

  template <typename Callable>
  void setCallback(Callable&& cb)
  {
    h_ = std::forward<Callable>(cb);
  }

  void doCallback()
  {
    (void) h_(this);
  }
private:
  Handler h_;
};

class FD_Button : public Object
{
public:
  using Handler = delegate<void(Object*)>;

  void setCallback(const Handler& h)
  {
    h_ = h;
  }

  template <typename Callable>
  void setCallback(Callable&& cb)
  {
    h_ = std::forward<Callable>(cb);
  }

  void doCallback()
  {
    (void) h_(this);
  }

private:
  Handler h_;
};

/////////////////////////
//  std::function
/////////////////////////

volatile int fun_function(volatile int v)
{
  return ++v;
}

static void BM_std_function_basic(benchmark::State& state)
{
  std::function<volatile int(volatile int)> f(fun_function);
  volatile int v = 0;

  while (state.KeepRunning()) {
    v = f(v);
  }
}
// Register the function as a benchmark
BENCHMARK(BM_std_function_basic);

struct BigFunctor
{
  bool operator()(const char* s) {
    // I know it wont overflow buffer, so chill!
    auto siz = strlen(s);
    memcpy((void*)buf_, s, strlen(s));
    return siz%2 ? true : false;
  }

  char buf_[32]; // Doesnt fit the SBO of both clang and g++
};

template <typename Handler, typename... Args>
auto run_handler(Handler&& handler, Args&&... args)
{
  return handler(std::forward<Args>(args)...);
}

static void BM_std_function_heavy(benchmark::State& state)
{
  while (state.KeepRunning()) {
    std::function<bool (const char*)> dhandler{BigFunctor()};
    benchmark::DoNotOptimize(
      run_handler(std::move(dhandler), "SampleString")
    );
  }
}

BENCHMARK(BM_std_function_heavy);

static void BM_std_function_poly_cb(benchmark::State& state)
{
  SF_Button butt;
  while (state.KeepRunning()) {
    butt.setCallback([&butt](auto ptr) mutable { 
        butt.count_ = fun_function(butt.count_); });
  }
}

BENCHMARK(BM_std_function_poly_cb);

//////////////////////////
//  Virtual Function
//////////////////////////

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

class Dummy final : public Base {
public:
  volatile int fun_function(volatile int i) {
    return ++i;
  }
};

static void BM_virtual_function_basic(benchmark::State& state)
{
  Derived d;
  Dummy u;
  Base * b = nullptr;

  if (state.range(0) == '0') {
    b = &d;
  } else {
    b = &u;
  }
  volatile int v = 0;

  while (state.KeepRunning()) {
    v = b->fun_function(v);
  }
}

BENCHMARK(BM_virtual_function_basic)->Arg('0');


/////////////////////////////
// Impossibly fast delegate
/////////////////////////////

static void BM_imp_fast_delegate_basic(benchmark::State& state)
{
  delegate<volatile int (volatile int)> del(fun_function);
  volatile int v = 0;
  while (state.KeepRunning()) {
    v = del(v);
  }
}

BENCHMARK(BM_imp_fast_delegate_basic);

static void BM_imp_fast_delegate_heavy(benchmark::State& state)
{
  while (state.KeepRunning()) {
    delegate<bool(const char*)> dhandler{BigFunctor()};
    benchmark::DoNotOptimize(
      run_handler(std::move(dhandler), "SampleString")
    );
  }
}

BENCHMARK(BM_imp_fast_delegate_heavy);

static void BM_imp_fast_delegate_poly_cb(benchmark::State& state)
{
  FD_Button butt;
  while (state.KeepRunning()) {
    butt.setCallback([&butt](auto ptr) mutable {
          butt.count_ = fun_function(butt.count_); });
  }
}

BENCHMARK(BM_imp_fast_delegate_poly_cb);

BENCHMARK_MAIN();
