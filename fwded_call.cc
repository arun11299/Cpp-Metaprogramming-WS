#include <iostream>
#include <typeinfo>

class MovableType {
public:
  MovableType() {}
  MovableType(MovableType&& o): val_(o.val_) {
    // Move resets the val_!
    std::cout << "MovableType moved" << std::endl;
    o.val_ = 0;
  }

  int val_ = 42;
  std::unique_ptr<int> ptr_ = nullptr;
};

void func(MovableType a) {
  std::cout << "func: " << a.val_ << std::endl;
}

class Functor {
public:
  Functor() {std::cout << "Fcons" << std::endl; }
  void operator()() & {
    std::cout << "lvalue ref cb" << std::endl;
    //func(mt_);
  }

  void operator()() && {
    std::cout << "rvalue ref cb" << std::endl;
    //func(mt_);
  }

  int get_value() const noexcept {
    return mt_.val_;
  }

  MovableType mt_;
};

void func2(MovableType&& a) {
  std::cout << "func2: " << a.val_ << std::endl;
}

template<typename F, typename... Args>
void doStuff(F&& f, Args&&... args)
{
  std::forward<F>(f)(std::forward<Args>(args)...);
  std::cout << f.get_value() << std::endl;
  func2(std::move(f).mt_);
}


int main() {
  doStuff(Functor());
  return 0;
}
