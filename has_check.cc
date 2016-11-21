#include <iostream>
#include <type_traits>

template <typename T>
constexpr auto has_member(int) -> decltype(std::declval<T>().func(), std::true_type()) { return {}; }

constexpr std::false_type has_member(...) { return {}; }

struct First {
    void func() {}
};

struct Second {
    void func1() {}
};

int main() {
    static_assert((has_member<First>(0)).value, "Does not have member function func()");
    static_assert((has_member<Second>(0)).value, "Does not have member function func()");

    return 0;
}
