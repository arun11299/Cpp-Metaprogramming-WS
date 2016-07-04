#include <iostream>
#include <type_traits>

template <typename... T>
using void_t = void;

template <typename T, typename = void_t<>>
struct has_value_type : std::false_type {};

template <typename T>
struct has_value_type<T, void_t<typename T::value_type>> : 
  std::true_type {};

struct TT {
  int value_type;
};

template <typename F> struct Weak_result_type_impl;

template <typename Res, typename... ArgTypes>
struct Weak_result_type_impl <Res(ArgTypes...)>
{ typedef Res result_type; };

template<typename Functor>
struct Weak_result_type
    : Weak_result_type_impl<Functor>
{ };

int foobar() {
  return 42;
}

template <typename T, typename = void_t<>> struct Functor_return_type {};

template <typename T, typename... Args>
struct Functor_return_type<T(Args...), 
                           void_t<decltype(
				    std::declval<T>().operator()(
						    std::declval<Args>()...
				  )  )
			   >>
{
 using result_type = decltype(std::declval<T>().operator()(std::declval<Args>()...));
};

class Functor {
public:
  int operator()(int v) {
    return 42;
  }
};


int main() {
    static_assert (!has_value_type<int>::value, "Integer cannot have a value type!!");
    static_assert (has_value_type<std::string::iterator>::value, "");

    static_assert (std::is_same<Weak_result_type<decltype(foobar)>::result_type, int>::value, "");
    static_assert (std::is_same<Functor_return_type<Functor(int)>::result_type, int>::value, "");
}
