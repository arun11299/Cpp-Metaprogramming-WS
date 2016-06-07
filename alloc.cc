#include <iostream>
#include <memory>
#include <type_traits>


static const size_t INPUT_ALLOC_SIZE = 1024;
static const size_t OUTPUT_ALLOC_SIZE = 1024 * 10;

template <size_t Size, typename Allocator>
struct Deletor {
  void operator()(char* ptr) {
    Allocator a;
    a.deallocate(ptr, Size);
  }
};

template <size_t Size, typename Allocator = std::allocator<char>>
struct AllocWrapper
{
  friend AllocWrapper<INPUT_ALLOC_SIZE> allocate_input_buffer();
  friend AllocWrapper<OUTPUT_ALLOC_SIZE> allocate_output_buffer();

  AllocWrapper(AllocWrapper&& other): buffer_(std::move(other.buffer_)) {}

private:
  AllocWrapper() {
    Allocator a;
    buffer_.reset(a.allocate(Size));
  }

  std::unique_ptr<char[], Deletor<Size, Allocator>> buffer_ = nullptr;
};


AllocWrapper<INPUT_ALLOC_SIZE> allocate_input_buffer()
{
  return AllocWrapper<INPUT_ALLOC_SIZE>();
}
AllocWrapper<OUTPUT_ALLOC_SIZE> allocate_output_buffer()
{
  return AllocWrapper<OUTPUT_ALLOC_SIZE>();
}

template <size_t InSize, size_t OutSize, typename Allocator,
	  typename = typename std::enable_if<(InSize == INPUT_ALLOC_SIZE) || 
                                             (OutSize == OUTPUT_ALLOC_SIZE)>::type>
bool encode(AllocWrapper<InSize, Allocator>& input, 
	    AllocWrapper<OutSize, Allocator>& output)
{
  return false;
}


int main() {
  auto i_buf = allocate_input_buffer();
  auto o_buf = allocate_output_buffer();
  encode(i_buf, o_buf);
  return 0;
}
