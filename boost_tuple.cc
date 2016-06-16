#include <iostream>
#include <map>
#include <boost/tuple/tuple.hpp>
#include <boost/tuple/tuple_io.hpp>
#include <boost/tuple/tuple_comparison.hpp>

class mystring {
public:
  bool operator<(const mystring& b) const {
    std::cout << "operator<" << std::endl;
    return true;
  }
};

typedef boost::tuple<mystring, mystring> Key;
int data = 100;

bool operator < (const Key& a, const Key& b)
{
  return a.get<0>() < b.get<0>() ||
	 a.get<1>() < b.get<1>();
}

int main() {
  mystring str1, str2;
  Key fk = boost::make_tuple(str1, str2);
  std::map<Key, int, std::less<Key> > m;
  m.insert(std::make_pair(fk, 1));

  return 0;
}
