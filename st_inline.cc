constexpr int constexpr_one(int x) { return x + 1; } // implies inline
inline int inline_one(int x) { return x + 1; }

static const int constexpr_value = constexpr_one(0xaaaa0000);
static constexpr int inline_value = inline_one(0xbbbb0000);
volatile int value;

int main() {
    value = constexpr_value;
    value = inline_value;
}
