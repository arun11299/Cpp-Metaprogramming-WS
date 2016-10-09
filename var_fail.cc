#include <utility>
#include <type_traits>
#include <iostream>

template <typename T>
T foo(T x) { return x + 1; }
char foo(char x) { return x + 1; }

using II = int (*)(int);
using CC = char (*)(char);

template <bool... B>
struct bool_pack {};

template <bool... V>
using all_true = std::is_same<bool_pack<true, V...>, bool_pack<V..., true>>;

template <typename... Args> struct packed {};

template <typename T> struct func_traits;

template <typename R, typename... Args>
struct func_traits<R(*)(Args...)> {
	using type = packed<Args...>;
};

template<typename F>
struct fn {
  F f;

  template<typename... Args,
           typename std::enable_if<std::is_same<packed<Args...>, 
				  typename func_traits<F>::type>::value>::type* = nullptr>
  auto operator()(Args&&... args) const
  {
    return f(std::forward<Args>(args)...);
  }
};

struct fn_2 : private fn<II>, private fn<CC> {
  fn_2(II fp1, CC fp2)
    : fn<II>{fp1}
    , fn<CC>{fp2}
  {}

  using fn<II>::operator();
  using fn<CC>::operator();
};

int main()
{
  fn_2 f(static_cast<II>(foo<int>),
         static_cast<CC>(foo));

  std::cout << f(42) << std::endl;
  std::cout << f('a') << std::endl;
}
