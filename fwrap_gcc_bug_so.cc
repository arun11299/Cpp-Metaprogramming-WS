#include <iostream>
//using namespace std;

template<typename Sig, Sig Func>
struct FunctionWrapper;


template<class Ret, class... Args, Ret(*Func)(Args...)>
struct FunctionWrapper<Ret(Args...), Func>
{
};

static int testFunc(int _a, int _b)
{
      return _a + _b;
}


int main() {
      FunctionWrapper<int(int, int), testFunc> wrapper;
          return 0;
}
