#include <iostream>
#include <type_traits>

/*
 * What is required ?
 * has_func<fn, arg1, arg2, ...>::value
 */

template <typename>
struct expr_true_type: public std::true_type {};

template <typename>
struct expr_false_type: public std::false_type {};

template <typename Class, typename Fn, typename arg1>
static auto test_fn_existance(int) ->
                    expr_true_type<>;

template <typename Class, typename Fn, typename arg1>
static auto test_fn_existance(long) ->
                    expr_false_type<void>;

struct test_class {
    void fn(int) {}
};

int main() {
    std::cout << (test_fn_existance<test_class, std::declval<test_class>().fn, int>(0)).value_type() << std::endl;
    return 0;
}
