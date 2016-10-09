#include <iostream>
#include <type_traits>

template <typename Iterator, typename Container>
class BasicIterator {
public:
  BasicIterator() {}
  // Allow convertion from non-const iterator
  template <typename Iter_,
  	   typename = typename std::enable_if<std::is_same<Iter_, typename Container::pointer>::value>::type>
  BasicIterator(const BasicIterator<Iter_, Container>& ) {}
};


class IntContainer {
public:
  using pointer = int*;
  using const_pointer = const int*;
  using iterator = BasicIterator<pointer, IntContainer>;
  using const_iterator = BasicIterator<const_pointer, IntContainer>;
};


int main() {
  auto itr = IntContainer::iterator();
  auto citr = IntContainer::const_iterator();

  //citr = itr; // Should not compile
  IntContainer::const_iterator citr2 = itr;

  return 0;
};
