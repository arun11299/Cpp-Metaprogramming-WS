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


constexpr int catoi_impl(const sbuf<> str, int& res) {
  return res;
}

template <char A, char... Rest>
constexpr int catoi_impl(const sbuf<A, Rest...> str, int& res) {
  res = res * 10 + A - '0';
  catoi_impl(sbuf<Rest...>(), res);
  return res;
}

template <char... c>
constexpr int catoi(const sbuf<c...> str) {
  int res = 0;
  catoi_impl(str, res);
  return res;
}

int main() {
  constexpr auto len = str_len(sbuf<'H', 'e', 'l', 'l', 'o'>());
  static_assert (len == 5, "what the hell is wrong with you? yeah, you.");
  constexpr auto len1 = catoi(sbuf<'1', '2', '3'>());
  static_assert (len1 == 123, "Wrong conversion");
  return 0;
}
