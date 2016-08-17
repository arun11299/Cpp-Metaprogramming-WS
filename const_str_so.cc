#include <iostream>
#include <type_traits>
#include <tuple>

/**
* define index_sequence and make_index_sequence since I don't have C++14 headers
*/
template<int...I> struct index_sequence {
    /** Added an operator+ to concatenate two sequences */
    template<int... J> constexpr index_sequence<I..., J...> operator+(index_sequence<J...>) const { return{}; }
};


template<int I> struct make_integer_sequence_helper {
    template<int... Is> static index_sequence<Is..., I - 1> func(index_sequence<Is...>);
    using result = decltype(func(typename make_integer_sequence_helper<I - 1>::result()));
};

template<> struct make_integer_sequence_helper<0> { using result = index_sequence<>; };
template<int I> using make_index_sequence = typename make_integer_sequence_helper<I>::result;


/** A compile time character array of size N */
template<int N> using StaticStringArray = const char[N];

/** Represents a string of size N (N includes the 0 at the end) */
template<int N>
struct StaticString {
    StaticStringArray<N> data;
    template <int... I>
    constexpr StaticString(StaticStringArray<N> &d, index_sequence<I...>) : data{ (d[I])... } { }
    constexpr StaticString(StaticStringArray<N> &d) : StaticString(d, make_index_sequence<N>()) {}
    static constexpr int size = N;
    constexpr char operator[](int p) const { return data[p]; }
};

/* A tuple containing many StaticString with possibly different sizes */
template<int ...Sizes> using StaticStringList = std::tuple<StaticString<Sizes>...>;

/* Creates a StaticStringList from a list of string literal */
template<int... N>
constexpr StaticStringList<N...> makeStaticStringList(StaticStringArray<N> & ...args) {
    return std::make_tuple(StaticString<N>(args)...);
}

int main()
{
    makeStaticStringList("MyObject", "CObject", "setFoo", "getFoo", "setBar", "fooChanged", "barChanged");
}
