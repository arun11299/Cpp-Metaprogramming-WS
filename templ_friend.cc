#include <iostream>

template <typename T>
void make(T) {}

template <typename R, typename T>
R make(T);

template <typename Type, typename T>
struct MakeFunction {
  friend Type make<Type, T>(Type, T);
};

template <typename R, typename T>
R make(T t) {
  return R{};
}
