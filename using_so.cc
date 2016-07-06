struct A { using type = int; };
struct B : private A {  };
struct C : B {  using base_type = A; };

int main() {
  return 0;
}
