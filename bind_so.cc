#include <iostream>
#include <functional>

using namespace std;

std::function<std::string()> fptr;

std::string foo()
{
      return fptr();  //--->statement A - I need to invoke this funct ptr without passing a parameter as a parameter has already been assigned in statement B 
}

std::string bar(std::string p)
{
      return p;
}

int main()
{
    fptr = std::bind(bar,"Hello");
    std::cout << foo();
}
