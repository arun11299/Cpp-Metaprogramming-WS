#include <iostream>
#include <typeinfo>
#include <type_traits>

// Value to type
template <typename T>
struct type_wrapper {
    using type T;
};

// New C++14 variable templates
template <typename T>
type_wrapper<T> type{};

int main() {
    auto the_int_type = type<int>;
    std::cout << typeid(the_int_type).name() << std::endl;

    using the_real_int_type = decltype(the_int_type)::type;// value to type

    // New c++14 generic lambdas
    auto add_pointer = [](auto t) {
        using T = decltype(t):type;
        // Returns an object of type 
        // type_wrapper<T*>
        return type<std::add_pointer<T>>;
    };

    // The Generic Lifting Process
    template <template <typename...> class F>
    auto metafunction = [] (auto ...t) {
        return type<
            typename F<
                    typename decltype(t)::type...
                    >::type 
            >;
    }

    auto int_pointer = metafunction<std::add_pointer>(type<int>);
    return 0;
}
