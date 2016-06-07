#include <iostream>

class BigObject
{
public:
  BigObject() {std::cout << "Cons" << std::endl;}
  BigObject(const BigObject& other) {std::cout << "Copy Cons" << std::endl;}
  BigObject(BigObject&& other) {std::cout << "Move Cons" << std::endl;}
};

BigObject f()
{
  return BigObject();
}

class MyClass
{
public:
  BigObject C;

  MyClass() : C(f())
  {
  };

};

int main() {
  MyClass m;
  return 0;
}
