#include <iostream>
#include <functional>
#include <list>
#include <typeinfo>

class C{ 
public:
    C(){
        auto f = std::bind(&C::work,
                           this,
                           std::bind(&C::step1, this),
                           std::bind(&C::step2, this));
	std::cout << typeid(f).name() << std::endl;
    }
private:
    void work(std::function<bool()> fn1, std::function<bool()> fn2 ) {
        if (fn1()) {
	  std::cout << "1\n";
        }
        else {
	  std::cout << "2\n";
        }
    }

    bool step1(){return true;}
    bool step2(){return true;}
};

int main() {
	C c;
	return 0;
}
