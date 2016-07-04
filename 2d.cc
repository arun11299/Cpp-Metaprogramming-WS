#include <iostream>
#include <vector>
#include <algorithm>

int main() {
  constexpr size_t row = 3, col = 5;
  constexpr size_t total = row * col;

  std::vector<std::vector<int>> matrix(row, std::vector<int>(col));
  /*
  int j = -1;
  for (int i = 0; i < total; i++) {
    std::cin >> matrix[(i % col) ? j : ++j][i % col];
  }
  */

  std::for_each(std::begin(matrix), std::end(matrix), [](auto& v) {
	for (auto& e : v) std::cin >> e;
      });

  for (auto& e : matrix) {
    for (auto v : e) std::cout << v << " ";
    std::cout << std::endl;
  }
  return 0;
}
