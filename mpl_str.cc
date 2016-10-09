#include <boost/mpl/string.hpp>
#include <iostream>

using str = boost::mpl::string<'a','ab','abc','abcd'>;

int main()
{
    std::cout<<"String is "<<boost::mpl::c_str<str>::value<<std::endl;
}
