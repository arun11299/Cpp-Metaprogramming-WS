#include <type_traits>
#include <functional>
using namespace std;

int f1() { return 0; }
struct Bar {
    Bar() = delete;
    int f() { return 0; }
    int operator()() { return 1; }
};
int main()
{
    decltype(f1()) x = 3;//f1() is expression
    result_of<decltype(&f1)()>::type x1 = 3;//type+param
    result_of<Bar()>::type x3 = 3;//type+param
    decltype(declval<Bar>().f()) y = 4;//expression
    decltype((((Bar*)nullptr)->*(&Bar::f))()) z = 5;//expression

    result_of<decltype(std::mem_fn(&Bar::f))(Bar)>::type y2 = 3;//error!!!!!!
    return 0;
}
