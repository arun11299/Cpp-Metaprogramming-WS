#include <type_traits>

template <class T, T>
struct has_duplicates_info { };

template <class T, T...>
struct has_duplicates;

template <class T, T First, T... Others>
struct has_duplicates<T, First, Others...>:
          has_duplicates<T, Others...>,
          has_duplicates_info<T, First> {
   static constexpr bool value =
      std::is_base_of<has_duplicates_info<T, First>, has_duplicates<T, Others...>>::value
        || has_duplicates<T, Others...>::value;
};

template <class T, T Last>
struct has_duplicates<T, Last>: has_duplicates_info<T, Last>, std::false_type { };

int a, b;

int main() {
   static_assert(!has_duplicates<int, 0, 1, 2>::value, "has_duplicates<int, 0, 1, 2>::value");
   static_assert(has_duplicates<int, 1, 2, 2, 3>::value, "!has_duplicates<int, 1, 2, 2, 3>::value");
   static_assert(has_duplicates<int&, a, a, b>::value, "!has_duplicates<int&, a, a, b>::value");
}
