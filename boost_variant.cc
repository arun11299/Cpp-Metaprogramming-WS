#include <boost/variant.hpp>
#include <tuple>
#include <type_traits>

template <typename, typename> struct match_flat_type_impl;

template <typename T>
struct match_flat_type_impl<T, std::tuple<>> {
    using type = std::false_type;
};

template <typename T, typename R, typename... Elems>
struct match_flat_type_impl <T, std::tuple<R, Elems...>> {
    using type = typename match_flat_type_impl<T, std::tuple<Elems...>>::type;
};

template <typename T, typename... Elems>
struct match_flat_type_impl <T, std::tuple<T, Elems...>> {
    using type = std::true_type;
};


template <typename, typename> struct match_flat_type;

template <typename T, typename... Elems>
struct match_flat_type <T, std::tuple<Elems...>> {
    using type = typename match_flat_type_impl<T, std::tuple<Elems...>>::type;
};

template <typename T, typename... Rest>
struct match_type;

template <typename T, typename... Rest>
struct match_type <T, boost::variant<Rest...>> {
    using type = typename match_flat_type<T, std::tuple<Rest...>>::type;
};

struct MyType1 {};
struct MyType2 {};
struct MyType3 {};
struct MyType4 {};

template <typename T>
T foo_impl(boost::variant<MyType1, MyType2> variant1, boost::variant<MyType3, MyType4> variant2, std::true_type)
{
    return boost::get<T>(variant1);
}

template <typename T>
T foo_impl(boost::variant<MyType1, MyType2> variant1, boost::variant<MyType3, MyType4> variant2, std::false_type)
{
    return boost::get<T>(variant2);
}


template <class T> 
T foo(boost::variant<MyType1, MyType2> variant1, boost::variant<MyType3, MyType4> variant2)
{
    static_assert ( match_flat_type<T, std::tuple<MyType1, MyType2, MyType3, MyType4>>::type::value, "Incorrect T!");
    
    return foo_impl<T>(variant1, variant2, typename match_type<T, decltype(variant1)>::type{});   
    
}

int main() {
    boost::variant<MyType1, MyType2> variant1;
    boost::variant<MyType3, MyType4> variant2 = MyType4(); 
    foo<MyType4>(variant1, variant2);
    return 0;
}
