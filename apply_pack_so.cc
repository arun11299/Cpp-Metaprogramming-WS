#include <iostream>
#include <type_traits>

template<int...>
struct Seq { typedef int value_type; };

template<int max, int... numbers>
struct _ExpandSeq : _ExpandSeq<max-1, max-1, numbers...> {};

template<int... numbers>
struct _ExpandSeq<0, numbers...> {
    typedef Seq<numbers...> type;
};

template<int max>
using Sequence = typename _ExpandSeq<max>::type;


template <int I, class... T>
struct _GetNthParameter;

template <int I, class Head, class... Tail>
struct _GetNthParameter<I, Head, Tail...>
    : _GetNthParameter<I-1, Tail...>{};

template <class Head, class... Tail>
struct _GetNthParameter<0, Head, Tail...> {
      typedef Head Type;
};

template<int index, typename... Types>
using GetNthParameter = typename _GetNthParameter<index, Types...>::Type;

template<template<int, typename> class Template, typename Seq, typename... Args>
struct _Map {};

template<template<int, typename> class Template,
         int firstIndex, int... indexes,
         typename First, typename... Args>
struct _Map<Template, Seq<firstIndex, indexes...>, First, Args...>
    : Template<firstIndex, First>,
      _Map<Template, Seq<indexes...>, Args...>
{};

template<template<int, typename> class Template, typename... Args>
struct ApplyOnPack : _Map<Template, Sequence<sizeof...(Args)>, Args... > 
{
    template <int I>
    struct Base {
        typedef Template<I, GetNthParameter<I, Args...> > Type;
    };

    template <int I>
    typename Base<I>::Type& base() { return *this; }
};

template <int i, typename T>
struct Part {
    void foo() {}
};

template <typename ... T>
struct Foo : ApplyOnPack<Part, T...>
{
    void bar() { this->template base<0>().foo();  }
};

typedef Foo<int, bool> MyFoo;

int main() {
    MyFoo myFoo;
    myFoo.bar();
}
