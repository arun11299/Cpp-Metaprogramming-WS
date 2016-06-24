
int x; 
using intref = int&; 
intref w{x}; // A 
int& a{x}; // B 

int main() {
  return 0;
}
