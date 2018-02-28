#include <iostream>
#include <tuple>
#include <type_traits>

template <typename... Args>
class Context
{
public:
  Context(Args&&... args)
    : args_(std::forward_as_tuple(args...))
  {}

  Context(const Context&) = delete;
  void operator(const Context&) = delete;

private:
  std::tuple<Args...> args_;
};

int main() {
  return 0;
}
