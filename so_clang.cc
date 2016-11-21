#include <type_traits>
#include <tuple>
#include <string>

template <typename... T>
using void_t = void;

class Stat {
public:
    template <typename... T>
    static decltype(auto) construct(int a, double b, T&&... t)
    {
      return std::make_tuple(1, 2.3, std::forward<T>(t)...);
    }
};

template <typename Class, typename... Args>
constexpr auto does_have_construct(int) 
    -> decltype(&Class::template construct<Args...>, true)
{
    return true;
}

template <typename Class, typename... Args>
constexpr bool does_have_construct(long) { return false; }

class Stat2 {};

int main() {
    static_assert(does_have_construct<Stat, std::string>(0), "Nope!");

    return 0;
}
 
