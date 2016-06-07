#include <iostream>
#include <type_traits>

typedef void (*func)();
int main() {
    std::cout << std::is_pointer<func>::value << std::endl;
    return 0;
}
