#include <vector>
#include <functional>

int main()
{
  std::vector<int> x;
  std::function<void (void)> f(std::allocator_arg,x.get_allocator());
  return 0;
}
