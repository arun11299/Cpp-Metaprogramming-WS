#include <iostream>
using namespace std;

enum PROTOCOL {
  PROTO_A,
  PROTO_B
};

// ----- HandlerClass -------
template <PROTOCOL protocol>
class Handler {
public:
    template <class TMsg>
    bool handle(const TMsg&) {
        return false;
    }
};

template <>
template <class TMsg>
bool Handler<PROTO_A>::handle(const TMsg&) {
    cout << "PROTO_A handler" << endl;
    return true;
}

template <>
template <class TMsg>
bool Handler<PROTO_B>::handle(const TMsg&) {
    cout << "PROTO_B handler" << endl;
    return true;
}

// ----- DataClass ------
template <PROTOCOL protocol>
struct Data {
    typedef Handler<protocol> H; //select appropriate handler
    H h_;
    int i;
    Data() : i() {}

    void f() {
            h_.template handle<int>(i); //***** <- getting error here
    }
};

int main () {
    Data<PROTO_A> b;
    b.f();
    return 0;
}
