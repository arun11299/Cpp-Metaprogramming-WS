#include <iostream>
#include <vector>
#include <utility>

struct Chain {
  Chain(const std::string& str):cmd(str) {}
  std::string cmd;
  std::string input;
  std::string output;
};

void chain_impl(std::vector<Chain>& clist) { }

template <typename... Args>
void chain_impl(std::vector<Chain>& clist, const std::string& v, Args&&... args)
{
  if (clist.size() == 0) {
    Chain c(v);
    c.input = "EMP"; c.output = "PIPE";
    clist.emplace_back(c);
  } else {
    Chain c(v);
    c.input = clist.back().cmd + "-output";
    c.output = "PIPE";
    clist.emplace_back(c);
  }
  chain_impl(clist, std::forward<Args>(args)...);
}

template <typename... Args>
void chain(Args&&... args)
{
  std::vector<Chain> chain_list;
  chain_list.reserve(sizeof...(Args));
  chain_impl(chain_list, std::forward<Args>(args)...);

  for (auto& elem : chain_list) {
    std::cout << elem.cmd << " : " << elem.input << " : " << elem.output << std::endl;
  }
}

int main() {
  chain("a", "b", "c", "d");
  return 0; 
}
