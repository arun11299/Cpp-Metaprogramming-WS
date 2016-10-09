#include <string>
#include <iostream>

template <unsigned long ID, typename PARAM>
class tag_
{
public:
    //getter for ID. Better to exclude it. If possible - move to external helper
    constexpr static unsigned long get_id() {return ID;}
    //PARAM is used in some functions of this class
};

//tag's declarations for future usage
template<typename PARAM>
using tag1 = tag_<1UL, PARAM>;
template<typename PARAM>
using tag2 = tag_<2UL, PARAM>;
template<typename PARAM>
using tag3 = tag_<3UL, PARAM>;

//helper class that can iterate TAGS
template <template<typename> class... TAGS>
struct helper
{};
template <template<typename> class TAG>
struct helper<TAG>
{
    static void print_tag(std::ostream& out)
    {
        out << std::string("Tag");
        out << TAG<int>::get_id();  // Here I can't call: error: 'template<class> class TAG' used without template parameters
    }
};
template <template<typename> class TAG, template<typename> class... TAGS>
struct helper<TAG, TAGS...>
{
    static void print_tag(std::ostream& out)
    {
        out << std::string("Tag");
        out << TAG<int>::get_id();  // Here I can't call: error: 'template<class> class TAG' used without template parameters
        out << std::string(", ");
        helper<TAGS...>::print_tag(out);
    }
};

//this class uses tags for some processing
template <template<typename> class... TAG_LIST>
class tagged
{
public:
    void test1(std::ostream& out)
    {
        out << std::string("This function works good");
    }
    void test2(std::ostream& out)
    {
        helper<TAG_LIST...>::print_tag(out);
    }
};

// this class is re-defined for some types of T
template<typename T, typename PARAM>
class usage
{
public:
    void test1(std::ostream& out)
    {
        details.test1(out);
    }
    void test2(std::ostream& out)
    {
        details.test2(out);
    }

    T details;
    PARAM params;
};

//endpoint
struct finish{};

//definition for future usage
template<template<typename> class T1, template<typename> class T2, template<typename> class T3, typename PARAM>
using multitag = usage<tagged<T1, T2, T3>, PARAM>;

int main(int argc, const char* argv[])
{
    // this way I am construction my objects tree
    multitag<tag1, tag2, tag3, tag1<tag2<tag3<finish>>>> tmp;
    tmp.test1(std::cout); // ok
    std::cout << std::endl;
    tmp.test2(std::cout);  //compile error. I want to get "Tag1, Tag2, Tag3" printed
    std::cout << std::endl;
}
