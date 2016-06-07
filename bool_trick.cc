#include <iostream>
#include <type_traits>

// trick learnt from stack overflow
// http://stackoverflow.com/questions/28253399/check-traits-for-all-variadic-template-arguments/28253503#28253503

template <bool... B>
struct bool_pack {};

template <bool... V>
using all_true = std::is_same<bool_pack<true, V...>, bool_pack<V..., true>>;
