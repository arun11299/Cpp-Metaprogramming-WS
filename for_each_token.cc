#include <iostream>
#include <fstream>
#include <sstream>
#include <string>
#include <vector>
#include <iterator>

template <typename Iter, typename Executor>
void for_each_token(Iter first, Iter last, 
                    Iter dfirst, Iter dlast,
                    Executor ex)
{
  if (first == last) return;
  auto tmp = first;
  while (first != last) {
    first = std::find_first_of(first, last, dfirst, dlast);
    ex(tmp, first);
    if (first == last) break;
    first++;
    tmp = first;
  }
  return;
}

template <typename Executor>
void for_each_token_str(const std::string& str, const std::string& delims, Executor ex)
{
  for_each_token(std::begin(str), std::end(str), std::begin(delims), std::end(delims), ex);
}

int main() {
  std::ifstream in("parse.txt");
  if (not in) return 1;

  std::string line;
  std::vector<std::string> tokens;

  std::vector <std::string> addressInfo;
  std::vector <std::string> city;
  std::vector <std::string> state;
  std::vector <std::string> country;

  while (std::getline(in, line)) {
    for_each_token_str(line, ";", [&](auto f, auto l) {
          tokens.emplace_back(f, l);
        });

    int idx = 0;
    addressInfo.emplace_back(tokens[idx++]);
    city.emplace_back(tokens[idx++]);
    state.emplace_back(tokens[idx++]);
    country.emplace_back(tokens[idx++]);

    tokens.clear();
  }

  auto print = [](std::vector<std::string>& v) {
    for (auto & e : v) std::cout << e << ' ';
    std::cout << std::endl;
  };

  print(addressInfo);
  print(city);
  print(state);
  print(country);

  return 0;
}
