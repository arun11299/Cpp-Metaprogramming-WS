#include <iostream>

class A {};

template <typename T>
char func(T::* a)
{
    return 'a';
}

int main() {
    A a;
    func(a);
    return 0;
}
