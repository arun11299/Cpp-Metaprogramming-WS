#include <iostream>
#include <type_traits>

class Base {
};

class Derived1: public Base {};
class Derived2: public Derived1 {};
class Derived3: public Derived2 {};
class Derived4: public Derived3 {};
class Derived5: public Derived4 {};
class Derived6: public Derived5 {};

/*
void oled(Derived5) {
    std::cout << "D5" << std::endl;
}
*/

void oled(Derived4) {
    std::cout << "D4" << std::endl;
}

void oled(Derived3) {
    std::cout << "D3" << std::endl;
}

int main() {
    oled(Derived6{});
    return 0;
}
