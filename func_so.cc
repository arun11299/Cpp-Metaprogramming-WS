#include <iostream>
#include <functional>
using namespace std;
 
int main() {
    function<void(const int& i)> f;
      f = [](int i) -> int { cout<<i<<endl; return i; };
	f(2);
	  return 0;
}

public:                                                                                                
   static void                                                                                                 
   _M_invoke(const _Any_data& __functor, _ArgTypes&&... __args)                                                  
   {                                                                                                         
   (*_Base::_M_get_pointer(__functor))(                                                              
                std::forward<_ArgTypes>(__args)...);                                             
   }                                                                                           
   };       
