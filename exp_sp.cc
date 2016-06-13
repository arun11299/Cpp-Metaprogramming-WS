#include <memory>
#include <iostream>

class Test {
public:
  ~Test() {
    std::cout << "~Test" << std::endl;
  }
};

class resOwner {
    public:
    resOwner():ptr_(new Test) {
        std::cout << "Map some huge resources\n";
        throw "hi";
    }

    ~resOwner() {
        std::cout << "Free some huge resources\n";
    }
    std::unique_ptr<Test> ptr_;
};

class normal : resOwner {
};

int main (){
    try {
        //std::shared_ptr<resOwner> k (new resOwner());
        new resOwner();
    } catch (...) {}
	return 0;
}
