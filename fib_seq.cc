#include <iostream>
#include <typeinfo>

template <int...>
struct seq {};

template <bool C, int N, int A, int B, int... Rest>
struct generate_fib_seq : generate_fib_seq<((A+B)<N), N, A + B, A, B, Rest...>
{};

template <int N, int A, int B, int... Rest>
struct generate_fib_seq<false, N, A, B, Rest...>
{ using type = seq<A, B, Rest...>; };

template <int N, int A, int B>
struct fib_seq_impl: generate_fib_seq<((A+B)<N), N, A + B, A, B> {
};

template <int N>
using fib_seq = fib_seq_impl<N, 0, 1>;

int main() {
  std::cout << typeid(fib_seq<100>::type).name() << std::endl;
  return 0;
}

