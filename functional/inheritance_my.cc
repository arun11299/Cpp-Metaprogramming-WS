#include <iostream>
#include <memory>
#include <string>
#include "my_function.hpp"

class Finarfin
{
public:
  virtual void stay() = 0;
  virtual ~Finarfin() = default;
};

class Finrod: public Finarfin
{
public:
  virtual void stay() { std::cout << "Noldor" << std::endl; } 
  virtual ~Finrod() = default;
};

class Galadriel: public Finarfin
{
public:
  virtual void stay() { std::cout << "Valinor" << std::endl; }
  virtual ~Galadriel() = default;
};

struct A {};
struct B : A {};
struct C : A {};
struct D : B, C {};

A* func1() { return new A; }
D* func2() { return new D; }

int main() {
  std::unique_ptr<Finarfin> finrod = std::make_unique<Finrod>();
  Function<void()> folk_1 = std::bind(&Finarfin::stay, finrod.get());
  folk_1();

  
  std::unique_ptr<Finarfin> gala = std::make_unique<Galadriel>();
  Function<void()> folk_2 = std::bind(&Finarfin::stay, gala.get());
  folk_2();

  Function<A*()> f(func1);
  f = func2;
  
  return 0;
}

