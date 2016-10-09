#include <iostream>

enum Type {
  Type_A,
  Type_B,
};

template <Type T>
struct Enum2Type {
  constexpr static const Type value = T;
};

template <typename T>
void func (T t) {
  static_assert (t.value == Type_A, "");
	if (t.value == Type_A) {
		std::cout <<  "Arun\n";
	}	
}

int main() {
  Enum2Type<Type_A> e;
  func(e);
  return 0;
}
