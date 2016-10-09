template<typename T> struct HasX { 
    struct Fallback { int x; }; // introduce member name "x"
    struct Derived : T, Fallback { };

    template<typename C, C> struct ChT; 

    template<typename C> static char (&f(ChT<int Fallback::*, &C::x>*))[1]; 
    template<typename C> static char (&f(...))[2]; 

    static bool const value = sizeof(f<Derived>(0)) == 2;
}; 

struct A { int x; };
struct B { int X; };

template <typename T, typename = int>
struct HasX : std::false_type { };

template <typename T>
struct HasX <T, decltype((void) T::x, 0)> : std::true_type { };

int main() { 
    std::cout << HasX<A>::value << std::endl; // 1
    std::cout << HasX<B>::value << std::endl; // 0
}
