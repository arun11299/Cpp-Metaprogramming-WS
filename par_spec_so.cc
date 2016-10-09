#include <type_traits>
#include <vector>
#include <string>
#include <iostream>

template <typename T, typename = void>
struct foo {
    static void show()
    {
        std::cout << "T" << std::endl;
    }
};

template <typename T>
struct foo<std::vector<T>, typename std::enable_if<std::is_fundamental<T>::value>::type> {
    static void show()
    {
        std::cout << "std::vector<fundamental type>" << std::endl;
    }
};

template <typename T>
struct foo<std::vector<T>, typename std::enable_if<!std::is_fundamental<T>::value>::type> {
    static void show()
    {
        std::cout << "std::vector<T>" << std::endl;
    }
};

int main()
{
    foo<int>::show();
    foo<std::vector<int>>::show();
    foo<std::vector<std::string>>::show();
}
