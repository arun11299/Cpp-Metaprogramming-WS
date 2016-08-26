#include <iostream>
#include <functional>

void one_int(int v) {}

void two_int(int a, int b) {}

void take(std::function<void(int)> f) {}
void take(std::function<void(int, int)> f) {}

int main() {
  take(one_int);
  return 0;
}
