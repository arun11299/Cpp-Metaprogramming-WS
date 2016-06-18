#include <memory>
#include <utility>
#include <string>
#include <type_traits>

template<typename... FArgs>
class Callback
{
    public:
    class Handle{
    public: 
      void wow();
    };
};

class BaseCallbackHandle
{
};

template <typename... Pack> struct packer {};

using TypeErasedCallbackHandle = std::unique_ptr<BaseCallbackHandle>;

template <typename... T>
TypeErasedCallbackHandle makeTypeErasedCallbackHandle(typename Callback<T...>::Handle h, T...)
{
   return {};
}

template <typename... T>
TypeErasedCallbackHandle makeTypeErasedCallbackHandle_2(typename Callback<T...>::Handle h, packer<T...>)
{
   return {};
}

template <typename H>
auto makeTypeErasedCallbackHandle_3(H h) -> decltype (H().wow(), TypeErasedCallbackHandle())
{
  return {};
}

int main()
{
    Callback<int, int>::Handle h;
    std::string s;
    //makeTypeErasedCallbackHandle(h, 0); //should compile fine
    // OR
    makeTypeErasedCallbackHandle_2(h, packer<int, int>());

    //makeTypeErasedCallbackHandle(s); //should raise a compile error
}
