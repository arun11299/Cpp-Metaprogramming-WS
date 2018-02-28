#include <tuple>
#include <iostream>
#include <type_traits>
#include <typeinfo>

namespace detail {
    
    template <typename F, typename S>
    struct concatenate;
    
    template <template <typename...>class SequenceT, typename... FArgs, typename... SArgs>
    struct concatenate<SequenceT<FArgs...>, SequenceT<SArgs...>>
    {
        using type = SequenceT<FArgs..., SArgs...>;
    };
    
    
    template <typename First, typename Second> struct filter_impl;
    
    template <template <typename...>class SequenceT, typename FilterT>
    struct filter_impl<SequenceT<>, FilterT>
    {
        using result = SequenceT<>;
    };
    
    template <template <typename...>class SequenceT, typename... SequenceArgs, typename FilterT>
    struct filter_impl<SequenceT<FilterT, SequenceArgs...>, FilterT>
    {
        using result = typename filter_impl<SequenceT<SequenceArgs...>, FilterT>::result;
    };
    
    template <template <typename...>class SequenceT, typename FArg, typename... RemArgs, typename FilterT>
    struct filter_impl<SequenceT<FArg, RemArgs...>, FilterT>
    {
        using result = typename concatenate<SequenceT<FArg>, typename filter_impl<SequenceT<RemArgs...>, FilterT>::result>::type;
    };
    
}

template <typename F, typename S> struct filter;

template <template <typename...> class SequenceT, typename FilterT, typename...SequenceArgs>
struct filter<SequenceT<SequenceArgs...>, FilterT>: detail::filter_impl<SequenceT<SequenceArgs...>, FilterT>
{
};



int main() {
    std::tuple<int, char, float> t;
    using R = typename filter<decltype(t), char>::result;
    std::cout << typeid(R).name() << std::endl;
    return 0;
}
