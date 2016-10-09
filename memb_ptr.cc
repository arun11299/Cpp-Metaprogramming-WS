#include <iostream>
#include <string>

class Test {
public:
  int func(const char (&ptr)[6]) {
    std::cout << ptr << std::endl;
    return 42;
  }
};

Test inst;

template <typename R, typename... Args>
void apply(R (Test::*f)(Args...), Args&&... args) {
  (inst.*f)(std::forward<Args>(args)...);
}

int main() {
  apply(&Test::func, "sdfgs");
  return 0;
}
