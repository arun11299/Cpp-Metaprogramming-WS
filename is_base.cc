#include <iostream>
#include <type_traits>

template <typename Cost>
class Transition
{
public:
    virtual Cost getCost() = 0;
    virtual ~Transition() {}
};

class TD: public Transition<int>
{
public:
    int getCost() override {
        std::cout << "getCost override" << std::endl;
        return 42;
    }
};

namespace detail {
    template <typename T>
    struct is_base_of_cust {
        // This is a bit hacky as it is based upon the internal functions
        // (though public) of the Transition class.
        using CostType = decltype(std::declval<T>().getCost());
        static const bool value = std::is_base_of<Transition<CostType>, T>::value;
    };
};

template <class TransitionCl>
class State
{
protected:
    State() {
        static_assert(
            detail::is_base_of_cust<TransitionCl>::value,
            "TransitionCl class in State must be derived from Transition<Cost>"
        );
    }
public:
    virtual void apply(const TransitionCl&) = 0;
    virtual ~State() {}
};


class StateImpl: public State<TD>
{
public:
    void apply(const TD&) override {
        std::cout << "StateImpl::apply" << std::endl;
    }
};


int main() {
    StateImpl impl;
    return 0;
}
