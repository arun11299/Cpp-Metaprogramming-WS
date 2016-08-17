#include <iostream>

template <typename T> class Test {
public:
  int call() { return f(); }
};

int f(){
  return 42;
}

int main() {
  Test<int> t;
  return 0;
}
