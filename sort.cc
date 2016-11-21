#include <iostream>
#include <typeinfo>

template<int... Vals> 
struct Ints {};

template<typename Ints1, typename Ints2> 
struct Concat;

template<int... Vals1, int... Vals2> 
struct Concat<Ints<Vals1...>, Ints<Vals2...>> {
    typedef Ints<Vals1..., Vals2...> type;
};

template<typename Ints1, typename Ints2, bool Done> 
struct BisectHelper;

template<int... Vals1, int... Vals2> 
struct BisectHelper<Ints<Vals1...>, Ints<Vals2...>, true> {
    typedef Ints<Vals1...> first;
    typedef Ints<Vals2...> second;
};

template<int... Vals1, int X, int... Vals2> 
struct BisectHelper<Ints<Vals1...>, Ints<X, Vals2...>, false> :
                             public BisectHelper<Ints<Vals1..., X>, Ints<Vals2...>,
                                                 (sizeof...(Vals1) + 1 >= sizeof...(Vals2))> {};

template<typename Ints1> 
struct Bisect;

template<int... Vals> 
struct Bisect<Ints<Vals...>> : public BisectHelper<Ints<>, Ints<Vals...>, sizeof...(Vals) == 0> 
{};

template<typename Ints1, typename Ints2> 
struct Merge;

template<> 
struct Merge<Ints<>, Ints<>> {
    typedef Ints<> type;
};

template<int A, int... Vals1> 
struct Merge<Ints<A, Vals1...>, Ints<>> {
    typedef Ints<A, Vals1...> type;
};

template<int B, int... Vals2> 
struct Merge<Ints<>, Ints<B, Vals2...>> {
    typedef Ints<B, Vals2...> type;
};

template<bool TakeB, typename Ints1, typename Ints2> 
struct MergeHelper;

template<int A, int... Vals1, int B, int... Vals2> 
struct Merge<Ints<A,Vals1...>, Ints<B, Vals2...>> :
        public MergeHelper<(B < A), Ints<A, Vals1...>, Ints<B, Vals2...>> {};

template<int A, int... Vals1, int B, int... Vals2> 
struct MergeHelper<false, Ints<A, Vals1...>, Ints<B, Vals2...>>:
            public Concat<Ints<A>, 
                typename Merge<Ints<Vals1...>, Ints<B, Vals2...>>::type> {};

template<int A, int... Vals1, int B, int... Vals2> 
struct MergeHelper<true, Ints<A, Vals1...>, Ints<B, Vals2...>> :
            public Concat<Ints<B>, typename Merge<Ints<A, Vals1...>,
                          Ints<Vals2...>>::type> {};

template<typename Ints1> 
struct SortHelper;

template<> struct 
SortHelper<Ints<>> {
    typedef Ints<> type;
};

template<int A> 
struct SortHelper<Ints<A>> {
    typedef Ints<A> type;
};

template<int A, int B, int... Vals> 
struct SortHelper<Ints<A, B, Vals...>>
{
private:
    typedef Bisect<Ints<A, B, Vals...>> bisect;

    typedef typename bisect::first unsorted_first;
    typedef typename bisect::second unsorted_second;

    typedef typename SortHelper<unsorted_first>::type sorted_first;
    typedef typename SortHelper<unsorted_second>::type sorted_second;

public:
    typedef typename Merge<sorted_first, sorted_second>::type type;
};

template<int... Vals> 
struct Sort : public SortHelper<Ints<Vals...>> {};

int main(int argc, char **argv)
{
std::cout << typeid(Sort<11, 13, 5, 79, 73, 47, 31, 89, 2, 97, 41, 11, 61,
19, 29, 29, 59, 67, 89, 53, 2, 37, 43, 17, 47, 89, 79, 23, 61, 83, 7,
83, 11, 3, 13, 3, 11, 59, 71, 37, 29, 19, 83>::type).name() << std::endl;
}
