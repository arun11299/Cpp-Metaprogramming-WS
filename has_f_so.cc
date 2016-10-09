#include <type_traits>
#include <iostream>

//
// Meta if/then/else specialization
//
struct substitution_failure { };

template<typename T>
struct substitution_succeeded : std::true_type { };

template<>
struct substitution_succeeded<substitution_failure> : std::false_type { };

//int f(int i);

//
// sfinae to derive the specialization
//
template<typename Func, Func f, typename T>
struct get_f_result {
private:
  template<typename X>
    static auto check(X const& x) -> decltype(f(x));
  static substitution_failure check(...);
public:
  using type = decltype(check(std::declval<T>()));
};

//
// has_f uses the derived specialization
//

//
// We will check if this function call be called,
// once with "char*" and once with "int".
//
int f(int i) {
  std::cout << i;
  return i;
}


template<typename T>
struct has_f : substitution_succeeded<typename get_f_result<decltype(f), &f, T>::type> { };

int main() {
  bool b1{has_f<char*>::value};
  std::cout << "test(char*) gives: " << b1 << std::endl;
  std::cout << "Just to make sure we can call f(int): ";
  f(777);
  std::cout << std::endl;
  bool b2{has_f<int>::value};
  std::cout << "test(int) gives: " << b2 << std::endl;
}
