#include <iostream>
using namespace std;

template <template<typename> class... TS>
struct PARTIAL;

template <template<typename> class T>
struct PARTIAL<T>{
    static void test(std::ostream& out)
    {out << "PARTIAL-OK" << endl;}
};
template <template<typename> class T, template<typename> class... TS>
struct PARTIAL<T, TS...>{
    static void test(std::ostream& out)
    {
        out << "PARTIAL-OK" << endl;
        PARTIAL<TS...>::test(out);
    }
};

template <class... TS>
struct FULL {
    static void test(std::ostream& out)
    {
        out << "FULL-PROBLEM" << endl;
    }
};
template <class T>
struct FULL<T>{
    static void test(std::ostream& out)
    {out << "FULL-OK" << endl;}
};
template <class T, class... TS>
struct FULL<T, TS...>{
    static void test(std::ostream& out)
    {
        out << "FULL-OK" << endl;
        FULL<TS...>::test(out);
    }
};
template <typename T>
struct B{};
int main()
{
    FULL<int, int, int>::test(cout);
    PARTIAL<B, B, B>::test(cout);
    return 0;
}
