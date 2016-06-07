#include <iostream>
#include <tuple>

template<int...>
struct seq {};

template <int N, int... S>
struct gens : gens<N-1, N-1, S...> {};

template<int... S>
struct gens<0, S...> { typedef seq<S...> type; };

double foo(int a, char c, float f) {
    std::cout << "called finally" << std::endl;
}

template <typename... Args>
struct save_for_later {
    std::tuple<Args...> params;
    double (*func)(Args...);

    double delayed_dispatch() {
        return callback(typename gens<sizeof ...(Args)>::type());
    }

    template<int... S>
    double callback(seq<S...>) {
        return func(std::get<S>(params)...);
    }
};

int main() {
    gens<10> g;
    std::tuple<int, char, float> tup = std::make_tuple(1, 'a', 4.2);
    save_for_later<int, char, float> s = {tup, foo};
    s.delayed_dispatch();
    return 0;
}
