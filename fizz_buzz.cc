#include <iostream>
#include <tuple>
#include <utility>
#include <typeinfo>

template <char... Chars>
struct ResultHolder {};

using FizzBuzz = ResultHolder<'F','i','z','z','B','u','z','z'>;
using Fizz     = ResultHolder<'F','i','z','z'>;
using Buzz     = ResultHolder<'B','u','z','z'>;
using Null     = ResultHolder<' '>;

template <size_t N, bool/*divisible by 3*/, bool/*divisible by 5*/> struct ResultDeducer
{ using type = Null; };

template <size_t N>
struct ResultDeducer<N, true, true>
{
  using type = FizzBuzz;
};

template <size_t N>
struct ResultDeducer<N, true, false>
{
  using type = Fizz;
};

template <size_t N>
struct ResultDeducer<N, false, true>
{
  using type = Buzz;
};

template <typename... Args>
constexpr auto make_fizz_buzz_impl(std::index_sequence<>, std::tuple<Args...> res)
{
  return res;
} 

template <size_t Num, size_t... Rest, typename... Args>
constexpr auto make_fizz_buzz_impl(std::index_sequence<Num, Rest...>, std::tuple<Args...> res)
{
  return make_fizz_buzz_impl(std::index_sequence<Rest...>(), 
                            std::tuple_cat(res, std::make_tuple(typename ResultDeducer<Num, Num%3 == 0, Num%5 == 0>::type())));
}

template <size_t... Nums>
constexpr auto make_fizz_buzz(std::index_sequence<Nums...>)
{
  return make_fizz_buzz_impl(std::index_sequence<Nums...>(), std::tuple<int>(0));
}

int main() {
  auto r = make_fizz_buzz(std::make_index_sequence<50>());
  std::cout << typeid(r).name() << std::endl;
  return 0;
}
