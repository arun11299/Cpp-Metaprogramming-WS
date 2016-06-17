#include <iostream>
#include <map>
#include <boost/tuple/tuple.hpp>
#include <boost/tuple/tuple_io.hpp>
#include <boost/tuple/tuple_comparison.hpp>

typedef boost::tuple<int,int> Key;

using namespace boost::tuples;

template<class T1, class T2>
inline bool lt(const T1& lhs, const T2& rhs) {
  std::cout << lhs.get_head() << " : " << rhs.get_head() << std::endl;
return lhs.get_head() < rhs.get_head()  ||
( !(rhs.get_head() < lhs.get_head()) &&
lt(lhs.get_tail(), rhs.get_tail()));
}
template<>
bool lt<null_type,null_type>(const null_type&, const null_type&) { return false; }

int main() {

  Key fk = boost::make_tuple(1, 2);
  Key fy = boost::make_tuple(2, 1);
  std::cout << lt(fy , fk) << std::endl;
  return 0;
}
