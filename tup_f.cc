#include <iostream>
#include <vector>
#include <tuple>
#include <algorithm>

int main() {
  std::vector<std::tuple<int,int,int,int>> v =
  {{0,1,2,3},{1,2,3,4},{2,3,4,5}};

  auto it = std::find_if(v.begin(), v.end(), [](std::tuple<int,int,int,int>& e) {return std::get<0>(e) == 0;});
  if (it != v.end()) {
    std::cout << "Found" << std::endl;
  }
  return 0;
}
