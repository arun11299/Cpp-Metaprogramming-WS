#include <iostream>

template <typename... I>
struct Ex {
    static constexpr size_t count_ = (I * ...);
};

int main() {
    std::cout << Ex<1,2,3,4>::count_ << std::endl;
    return 0;
}
