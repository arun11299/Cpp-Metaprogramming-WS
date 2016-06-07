#include <type_traits>
#include <utility>
#include <iterator>
#include <iostream>
#include <initializer_list>
#include <algorithm>

template< typename F, std::size_t ...indices >
struct enumerator
{
    static constexpr const std::size_t count_ = (indices * ...);
    static constexpr const std::size_t size_ = sizeof...(indices);
    static constexpr const std::size_t indices_[size_] = {indices...};

    template< typename I >
    struct decomposer;

    template< std::size_t ...I >
    struct decomposer< std::index_sequence< I... > >
    {
        F & f;

        static
        constexpr
        std::size_t
        order(std::size_t const i)
        {
            std::size_t o = 1;
            for (std::size_t n = i + 1; n < size_; ++n) {
                o *= indices_[n];
            }
            return o;
        }

        static constexpr std::size_t const orders_[size_] = {order(I)...};

        static
        constexpr
        std::size_t
        index(std::size_t c, std::size_t const i)
        {
            for (std::size_t n = 0; n < i; ++n) {
                c = c % orders_[n];
            }
            return c / orders_[i];
        }

        template< std::size_t c >
        constexpr
        bool
        call() const
        {
            auto const i = {index(c, I)...};
            std::copy(std::cbegin(i), std::cend(i), std::ostream_iterator< std::size_t >(std::cout, " "));
            std::cout << std::endl;
            return f.template operator () < index(c, I)... >(); // error here
        }

    };

    decomposer< std::make_index_sequence< size_ > > decomposer_;

    constexpr
    bool
    operator () () const
    {
        return call(std::make_index_sequence< count_ >{});
    }

    template< std::size_t ...counter >
    constexpr
    bool
    call(std::index_sequence< counter... >) const
    {
        return (decomposer_.template call< counter >() && ...);
    }
};

#include <cstdlib>

struct print
{
    template< typename ...indices >
    constexpr
    bool
    operator () () const
    {
        std::cout << __PRETTY_FUNCTION__ << std::endl;
        return true;
    }
};

int
main()
{
    print const print_{};
    enumerator< print const, 11, 7, 3 >{{print_}}();
    return EXIT_SUCCESS;
}
