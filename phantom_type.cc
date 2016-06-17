#include <iostream>

template <typename Tag, typename IntType = int>
class Integer {
public:
  Integer(IntType v): val_(v) {}
  IntType operator()() const { return val_; }
  IntType& operator() { return val_; }
  operator IntType() const { return val_; }
private:
  IntType val_;
};

struct Idx1 {};
struct Idx2 {};

using Integer<Idx1> = Idx1Int;
using Integer<Idx2> = Idx2Int;
