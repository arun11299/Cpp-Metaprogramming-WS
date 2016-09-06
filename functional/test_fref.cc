#include <iostream>
#include <utility>
#include <memory>
#include <string>
#include <type_traits>

template <typename T>
class Test
{
public:
  Test(T copy_data): data_(std::move(copy_data))
  {}

  Test(T&& copy_data): data_(std::move(copy_data))
  {}
private:
  T data_;
};

class Dispatch
{
public:
  template <typename T>
  Dispatch(T&& t) {
    auto n = new Test<std::decay_t<T>>(std::forward<T>(t));
  }
};

int main() {
  std::string s("test");
  Dispatch d(s);
  return 0;
}
