#include <type_traits>

template <typename... T>
using void_t = void;

template <typename A, typename T, typename = void_t<>>
struct has_save_method {
  constexpr static bool value = false;
};

template <typename A, typename T>
struct has_save_method<A, T, void_t<decltype(std::declval<T&>().save(std::declval<A&>()))>> {
  constexpr static bool value = true;
};

template<class A, typename T, bool has_save>
struct saver;

template<class A, typename T>
struct saver<A,T,true> {
        static void apply(A& ar, T& t) {
                t.save(ar);
        }
};

class MyClass {
        public:

        template<typename A>
        void save(A& ar) {
                // Save the instance in the archive
        }
};

class MyArchive {};

template<typename A, typename T>
void save_to_archive(A& ar, T& t) {
        saver<A,T,has_save_method<A, T>::value>::apply(ar,t);
}

int main(int argc, char** argv) {
        MyClass x;
        MyArchive a;
        save_to_archive(a,x);
        return 0;
}
