#include <iostream>
 
class Widget {
public:
  Widget(){};
 
  Widget(const Widget&) { std::cout << "Widget copy ctor  "; }
 
  template<typename T>
  Widget(const T&) { std::cout << "Generalized Widget copy ctor  "; }
 
  template<typename T>
  Widget(T&&) { std::cout << "Universal Widget ctor  "; }
};
 
 
void endLine() { std::cout << '\n'; }
 
 
int main()
{
  Widget w;
 
  {
    std::cout << "Create Widget from Widget:\n";
    std::cout << "  Direct init w/parens: ";   Widget wcopy1(w);  endLine();
    std::cout << "  Copy init           : ";   Widget wcopy2 = w; endLine();
    std::cout << "  Direct init w/braces: ";   Widget wcopy3 {w}; endLine();
    endLine();
  }
 
 
  {
    std::cout << "Create auto from Widget:\n";
    std::cout << "  Direct init w/parens: ";   auto wcopy1(w);   endLine();
    std::cout << "  Copy init           : ";   auto wcopy2 = w;  endLine();
    std::cout << "  Direct init w/braces: ";   auto wcopy3 {w};  endLine();
    endLine();
  }
 
  const Widget cw;
 
  {
    std::cout << "Create Widget from const Widget:\n";
    std::cout << "  Direct init w/parens: ";   Widget wcopy1(cw);  endLine();
    std::cout << "  Copy init           : ";   Widget wcopy2 = cw; endLine();
    std::cout << "  Direct init w/braces: ";   Widget wcopy3 {cw}; endLine();
    endLine();
  }
 
  {
    std::cout << "Create auto from const Widget:\n";
    std::cout << "  Direct init w/parens: ";   auto wcopy1(cw);   endLine();
    std::cout << "  Copy init           : ";   auto wcopy2 = cw;  endLine();
    std::cout << "  Direct init w/braces: ";   auto wcopy3 {cw};  endLine();
    endLine();
  }
}

