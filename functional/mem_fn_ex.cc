#include <iostream>
#include <functional>
#include <utility>

class DeadPool {
public:
  void jump() & {
    std::cout << "Did not jump\n";
  }

  void jump() && {
    std::cout << "Jumped from helicopter\n";
  }
};

int main() {
  DeadPool dp1;
  auto cobj = std::mem_fn(&DeadPool::jump); // Won't compile
  cobj(dp1);
  //cobj(DeadPool());
  using Func = void (DeadPool::*) () &;
  Func fp = &DeadPool::jump;
  (std::move(dp1).*fp)();
  return 0;
}
