
// Code is by @vcato from slack.

#include <cstdlib>
#include <algorithm>
#include <iterator>

template <size_t size>
struct String {
    char buffer[size];
};

static constexpr void copy(const char *b,const char *e,char *b2)
{
    while (b!=e) {
        *b2++ = *b++;
    }
}


template<size_t size1,size_t size2>
constexpr String<size1+size2>
operator+(const String<size1> &a,const String<size2> &b)
{
    String<size1+size2> result{};
    const char *ab = a.buffer;
    const char *bb = b.buffer;
    char *rb = result.buffer;
    copy(ab,ab+size1,rb);
    copy(bb,bb+size2,rb+size1);
    return result;
}

template <typename Arg>
struct MakeString {
    static constexpr size_t size()
    {
        const char *s = Arg::value();
        const char *p = s;
        while (*p) {
            ++p;
        }
        return p-s;
    }

    static constexpr String<size()> value()
    {
        String<size()> result{};
        const char *s = Arg::value();
        char *p = result.buffer;
        while (*s) {
            *p++ = *s++;
        }
        return result;
    }
};

int main()
{
    struct Arg {
        static constexpr const char *value() { return "test"; }
    };

    constexpr auto s = MakeString<Arg>::value();
    constexpr auto s2 = s+s;
    return s2.buffer[5];
}
