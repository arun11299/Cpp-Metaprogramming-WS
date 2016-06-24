#include <iostream>
#include <initializer_list>

void func(std::initializer_list<uint8_t> init_list)
{
}

void func(uint8_t v) {

}

int main() {
  func({1,2,3,4,5});
  func(257);
  return 0;
}
