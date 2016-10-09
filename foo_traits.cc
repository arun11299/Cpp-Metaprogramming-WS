

struct Foo {
    using FnPtr = int (*)(char, double);

    operator FnPtr() const { ... }
};

template <typename T>
struct Foo_Traits {
  using Func = typename T::FnPtr;
};

template <typename...> struct func_traits;

