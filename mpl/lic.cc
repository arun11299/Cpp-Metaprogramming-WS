#include <iostream>

template<typename... T> struct mp_list {};

template <class A, template<typename...> class B>
struct mp_rename_impl;

template <template<typename...> class A, class...T, template<typename...> class B>
struct mp_rename_impl<A<T...>, B> {
    using type = B<T...>;
}

template <class A, template<typename...>class B>
using mp_rename = typename mp_rename_impl<A, B>::type;

/*
 * mp_rename<std::pair<int, float>, std::tuple>        // -> std::tuple<int, float>
 * mp_rename<mp_list<int, float>, std::pair>           // -> std::pair<int, float>
 * mp_rename<std::shared_ptr<int>, std::unique_ptr>    // -> std::unique_ptr<int>
 */

template <typename T> struct mp_size_impl;

template <template<typename...> class C, typename T...>
struct mp_size_impl<C<T...>> {
    using type = std::integral_constant<std::size_t, sizeof...(T)>;
}

template <typename L>
using mp_size = typename mp_size_impl<L>::type;

//-----------------------------------------------------

template <typename L, typename T> struct mp_push_front_impl;

template <template <typename...>class L, typename... T, typename Add>
struct mp_push_front_impl<L<T...>, Add> {
    using type = L<Add, T...>;
};

template <typename L, typename T>
using mp_push_front = typename mp_push_front_impl<L, T>::type;

//------------------------------------------------------
template <template<typename...>F, class L> struct mp_transform_impl;

template <template<typename...> class F, template<typename...> class L, typename... T, >
struct mp_transform_impl<F, L<T...>> {
    using type = L<F<T>...>;
};

template <template<typename...>F, class L>
using mp_transform = typename mp_transform_impl<F, L>::type;
