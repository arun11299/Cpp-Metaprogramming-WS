#include <iostream>
#include <memory>
#include <cassert>

/*
 * Understanding the mechanics behind working of std::function
 * For my blog series: http://templated-thoughts.blogspot.in/2016/06/what-you-need-not-know-about-stdfunction.html
 */

namespace detail {

  template <typename Ret, typename... Args>
  class function_impl_base
  {
  public:
    virtual Ret operator()(Args&&... args) const = 0;
  };

  template <typename T> class func_impl;

  // Specialization for Function pointers
  template <typename Ret, typename... Args>
  class func_impl<Ret(*)(Args...)> final : public function_impl_base<Ret, Args...>
  {
  public:
    using callable_t = Ret(*)(Args...);

    template <typename F>
    func_impl(F&& callable): callable_(std::move(callable))
    {}

    Ret operator()(Args&&... args) const
    {
      return callable_(std::forward<Args>(args)...);
    }

  private:
    callable_t callable_;
  };

}

template <typename> class Function;

template <typename Ret, typename... Args>
class Function<Ret(Args...)> 
{
public:
  using implementation = detail::function_impl_base<Ret, Args...>;

  template <typename Functor>
  Function(Functor f): // Requires callable be copyable
    impl_base_(std::make_unique<detail::func_impl<Functor>>(std::move(f))) {
  }

  Ret operator()(Args&&... args)
  {
    assert (impl_base_.get());
    return (*impl_base_)(std::forward<Args>(args)...);
  }

private:
  std::unique_ptr<implementation> impl_base_ = nullptr;
};


/************** TEST CODE ****************/

int foo_ex1() { return 42; }

int main() {
  Function<int()> f(foo_ex1);
  f();
  return 0;
}
