#include <iostream>
#include <functional>
#include <array>
#include <algorithm>

class Test {
public:
  void take() {
    std::cout << "Passed\n";
  }
};

template <typename T> class Mem_Fn;

template <typename RetType, typename Class, typename... ArgTypes>
class Mem_Fn<RetType (Class::*) (ArgTypes...)>
{
  using Functor = RetType (Class::*) (ArgTypes...);

public:
  explicit Mem_Fn(Functor mf): func_(mf) { }

  // Handle lvalue reference to an object
  template <typename... Args, 
  	    typename _R_ = AllConvertible<Pack<Args...>, Pack<ArgTypes...>>
  	   >
  RetType operator()(Class& obj, Args&&... args)
  {
    return (obj.*func_)(std::forward<Args>(args)...);
  }

  // Handle Rvalue reference
  template <typename... Args,
  	    typename _R_ = AllConvertible<Pack<Args...>, Pack<ArgTypes...>>
  	   >
  RetType operator()(Class&& obj, Args&&... args)
  {
    return (std::move(obj).*func_)(std::forward<Args>(args)...);
  }

  // Handle plain pointer to an object
  template <typename... Args,
  	    typename _R_ = AllConvertible<Pack<Args...>, Pack<ArgTypes...>>
  	   >
  RetType operator()(Class* obj, Args&&... args)
  {
    return (obj->*func_)(std::forward<Args>(args)...);
  }

  // Handle reference wrapper
  template <typename T, typename... Args,
  	    typename _R_ = AllConvertible<Pack<Args...>, Pack<ArgTypes...>>,
  	    typename std::enable_if<std::is_base_of<T, Class>::value>::type* = nullptr
  	   >
  RetType operator()(std::reference_wrapper<T> ref, Args&&... args)
  {
    return operator()(ref.get(), std::forward<Args>(args)...);
  }

  // Handle smart pointer
  // Maybe sometime later...... :)


private:
  // The member function pointer
  Functor func_;
};

int main() {
  std::array<Test, 3> arr = {Test(), Test(), Test()};
  std::for_each(std::begin(arr), std::end(arr), std::mem_fn(&Test::take));
  return 0;
}
