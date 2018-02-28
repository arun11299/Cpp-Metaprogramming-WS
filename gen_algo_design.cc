#include <iostream>
#include <type_traits>

template <typename Iter>
using iter_value_t = typename std::iteartor_traits<Iter>::value_type;

template <typename Iter>
auto doStuff(Iter begin, Iter end)
  ->decltype((
              getA(std::declval<iter_value_t<Iter>>())
              &&
              getB(std::declval<iter_value_t<Iter>>())
              &&
              getC(std::declval<iter_value_t<Iter>>())
             ), void()
      )
{
  std::cout << getA()
}
  
