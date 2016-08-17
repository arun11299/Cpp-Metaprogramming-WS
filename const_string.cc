#include <iostream>
#include <type_traits>

class const_string {
public:
  template <size_t S, size_t... Idx>
  const_string(char (&arr)[S], std::index_sequence<Idx...> = 
      std::make_index_sequence<S>()):buf_{arr[Idx]}... {
  }

  size_t size() const noexcept {
    return N;
  }
private:
  char buf_[N];
};

constexpr auto operator "" _c(const char* str) {
  return { str };
}

int main() {
  auto cs = "Arun"_c;
  return 0;
}
