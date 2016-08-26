#include <iostream>
#include <memory>
#include <type_traits>
#include <cassert>

/*
 * Understanding the mechanics behind working of std::function
 * For my blog series: http://templated-thoughts.blogspot.in/2016/06/what-you-need-not-know-about-stdfunction.html
 */

namespace detail {

  struct constructor_tag {};

  template <typename Ret, typename... Args>
  class function_impl_base
  {
  public:
    virtual Ret operator()(Args&&... args) const = 0;
    virtual function_impl_base* clone() = 0;
    virtual ~function_impl_base() {}
  };

  template <typename T> class func_impl;

  // Specialization for Function pointers
  template <typename Ret, typename... Args>
  class func_impl<Ret(*)(Args...)> final : public function_impl_base<Ret, Args...>
  {
  public:
    using callable_t = Ret(*)(Args...);

    /*
     * This is a greedy constructor. constructor_tag is just used so as 
     * to not interfere with regular copy-constructor.
     */
    template <typename F>
    func_impl(F&& callable, constructor_tag): callable_(std::move(callable))
    {}

    func_impl(const func_impl&) = default;

    func_impl& operator=(func_impl&) = default;

    Ret operator()(Args&&... args) const
    {
      return callable_(std::forward<Args>(args)...);
    }

    func_impl* clone()
    {
      return (new func_impl(*this));
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

  //Default constructor
  Function() = default;

  // Copy constructor
  Function(const Function& other)
  {
    this->impl_base_.reset(other.impl_base_->clone());
  }

  // Copy Assignment
  Function& operator=(Function other)
  {
    this->impl_base_.reset(other.impl_base_.release());
    return *this;
  }

  template <typename Callable>
  Function& operator=(Callable cb)
  {
    this->impl_base_ = 
      std::make_unique<detail::func_impl<Callable>>(std::move(cb), detail::constructor_tag());
    return *this;
  }

  template <typename Callable>
  Function(Callable f): // Requires callable be copyable
    impl_base_(std::make_unique<detail::func_impl<Callable>>(std::move(f), detail::constructor_tag())) {
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
int foo_ex2() { return 43; }

void foo_void(int& val) { val++; }

int main() {
  {
    Function<int()> f(foo_ex1);
    f();
  }
  {
    Function<void(int&)> f(foo_void);
    int i = 41;
    f(i);
    assert (i == 42);
  }
  {
    Function<int()> f1;
    f1 = foo_ex1;
    Function<int()> f2(foo_ex2);
    f1 = f2;
    assert (f1() == 43);
  }


  return 0;
}
