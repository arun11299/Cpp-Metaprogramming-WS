#include <iostream>

template<unsigned char c, size_t I>
struct char_bit
{
    static constexpr size_t get() noexcept {
        return char_bit<(c << 1) & 0xFF, I + 1>::get();
    }
};

template <size_t I>
struct char_bit<0, I> {
  static constexpr size_t get() noexcept {
    return I;
  }
};

int main()
{   
    std::cout << char_bit<1, 0>::get();
}
