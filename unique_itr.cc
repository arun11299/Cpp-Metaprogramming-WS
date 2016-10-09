#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <map>

class Foo {
  public:
    std::string val;

    Foo(std::string v) : val(v) {
    }
 };

 class Unique {
   public:
     std::map<int, std::unique_ptr<Foo>> unique_map;

     std::vector<Foo*> getFoos() {
       std::vector<Foo*> foos;
       for (auto& it : unique_map) {
         foos.push_back(it.second.get());
       }

       return foos;
     }
 };

void func(const std::unique_ptr<Foo>& f) {
}

 int main() {
   Unique unique;
   Foo* f1 = new Foo("1");
   Foo* f2 = new Foo("2");

   //unique.unique_map.emplace(1, f1);
   //unique.unique_map.emplace(2, f2);
   //
   func(f1);

   return 0;
 }
