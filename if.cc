#include <iostream>

template <bool condition,
          typename T1,
          typename T2>
struct if_ {
    typedef T2 type;
};

template <typename T1, typename T2>
struct if_ <true, T1, T2> {
    typedef T1 type;
};

int main() {
    return 0;
}
