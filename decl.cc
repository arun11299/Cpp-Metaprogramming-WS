#include <type_traits>

template<typename Der>
struct Base
{
    // NOTE: if I replace the decltype(...) below with auto, code compiles
    auto getCallOperator() const
    {
        return &Der::operator();
    }
};

struct Foo : Base<Foo>
{
    double operator()(int, int) const
    {
        return 0.0;
    }
};

int main()
{
    Foo f;
    auto callOp = f.getCallOperator();
}
