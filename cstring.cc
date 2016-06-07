#include <iostream>

template <char... c>
struct sbuf {
  constexpr static const char buf[] = {c...};
};

constexpr int str_len_impl(const sbuf<> str) {
  return 0;
}

template <char A, char... Rest>
constexpr int str_len_impl(const sbuf<A, Rest...> str) {
  return 1 + str_len_impl(sbuf<Rest...>());
}

template <char... c>
constexpr int str_len(const sbuf<c...> str) {
  return str_len_impl(str);
}

int main() {
  constexpr auto len = str_len(sbuf<'H', 'e', 'l', 'l', 'o'>());
  static_assert (len == 4, "what the hell is wrong with you? yeah, you.");
  return 0;
}
