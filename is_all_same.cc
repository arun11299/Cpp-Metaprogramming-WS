#include <iostream>
#include <type_traits>

template <typename... T> struct param_pack {};

template <typename, typename> struct is_all_same_impl;

template <>
struct is_all_same_impl<param_pack<>, param_pack<>>
{
  static bool const value = true;
};

template <typename T, typename S, typename... Rest, typename... SRest>
struct is_all_same_impl<param_pack<T, Rest...>, param_pack<S, SRest...>>
{
  static bool const value = false;
};

template <typename T, typename... Rest, typename... SRest>
struct is_all_same_impl<param_pack<T, Rest...>, param_pack<T, SRest...>>
{
  static bool const value = is_all_same_impl<param_pack<Rest...>, param_pack<SRest...>>::value;
};

template <typename, typename>
struct is_all_same;

template <typename... FSet, typename... SSet>
struct is_all_same<param_pack<FSet...>, param_pack<SSet...>>: is_all_same_impl<param_pack<FSet...>, param_pack<SSet...>> {};

int main() {
  std::cout << is_all_same<param_pack<int, char, float>, param_pack<int, char, int>>::value << std::endl;
  return 0;
}
