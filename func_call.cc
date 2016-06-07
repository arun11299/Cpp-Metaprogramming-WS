#include <iostream>

class preexec_func
{
public:
  template <typename Func>
  preexec_func(Func f): holder_(new FuncHolder<Func>(f))
  {}

  void operator()() {
    holder_->operator()();
  }

private:
  struct HolderBase {
    virtual void operator() () { }
  };

  template <typename T>
  struct FuncHolder: HolderBase {
    FuncHolder(T f): func_(f) {}
    void operator()() override {
      func_();
    }
    T func_;
  };

  HolderBase* holder_ = nullptr;
};

void my_func() {
  std::cout << "Func called" << std::endl;
}

int main() {
  auto f = preexec_func(my_func);
  f();
  return 0;
};
