#include <iostream>
#include <memory>
#include <type_traits>
#include <cassert>
#include <string>
#include <functional> // Only for std::bind and std::mem_fn

/*
 * Understanding the mechanics behind working of std::function
 * For my blog series: http://templated-thoughts.blogspot.in/2016/06/what-you-need-not-know-about-stdfunction.html
 */

namespace detail {

  template <typename Ret, typename... Args>
  class function_impl_base
  {
  public:
    virtual Ret operator()(Args&&... args) = 0;
    virtual function_impl_base* clone() = 0;
    virtual ~function_impl_base() {}
  };

  template <typename Signature, typename Functor> class func_impl;

  // Specialization for Function pointers
  template <typename Ret, typename... Args>
  class func_impl<Ret(Args...), Ret(*)(Args...)> final 
	    : public function_impl_base<Ret, Args...>
  {
  public:
    using callable_t = Ret(*)(Args...);

    // The need for constructor tag removed in this version
    func_impl(callable_t callable): callable_(std::move(callable))
    {}

    func_impl(const func_impl&) = default;

    func_impl& operator=(func_impl&) = default;

    Ret operator()(Args&&... args)
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

  // Specialization for Functors
  template <typename Functor, typename Ret, typename... Args>
  class func_impl<Ret(Args...), Functor>
	    : public function_impl_base<Ret, Args...>
  {
  public:
    using callable_t = Functor;

    func_impl(Functor callable): callable_(std::move(callable))
    {}

    func_impl(const func_impl&) = default;
    func_impl& operator=(func_impl&) = default;

    Ret operator()(Args&&... args)
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

  // Specialization for Member function pointers
  // Leveraging the use of mem_fn
  template <typename Class, typename Member, typename Ret, typename... Args>
  class func_impl<Ret(Args...), Member Class::*>
	    : public function_impl_base<Ret, Args...>
  {
  public:
    using callable_t = Member (Class::*);

    func_impl(callable_t callable): callable_(std::move(callable))
    {}

    func_impl(const func_impl&) = default;
    func_impl& operator=(func_impl&) = default;

    Ret operator()(Args&&... args)
    {
      return call(std::forward<Args>(args)...);
    }

    template <typename ClassType, typename... Params>
    Ret call(ClassType obj, Params&&... args)
    {
      return std::mem_fn(callable_)(obj, std::forward<Params>(args)...);
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
  using call_signature = Ret(Args...);

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
      std::make_unique<detail::func_impl<call_signature, Callable>>(std::move(cb));
    return *this;
  }

  // constructor
  template <typename Callable>
  Function(Callable f): // Requires callable be copyable
    impl_base_(std::make_unique<detail::func_impl<call_signature, Callable>>(std::move(f)))
  {
  }

  Ret operator()(Args&&... args)
  {
    assert (impl_base_.get());
    return (*impl_base_)(std::forward<Args>(args)...);
  }

  explicit operator bool() const noexcept
  {
    return impl_base_ != nullptr;
  }

private:
  std::unique_ptr<implementation> impl_base_ = nullptr;
};
