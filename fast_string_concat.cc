#include <string>
#include <cstring>

size_t calculate_bytes_req()
{
    return 0;
}

template <typename... Args>
size_t calculate_bytes_req(const std::string& s, Args&&... args)
{
    return s.length() + calculate_bytes_req(std::forward<Args>(args)...);
}

template <typename... Args>
size_t calculate_bytes_req(const char* s, Args&&... args)
{
    return strlen(s) + calculate_bytes_req(std::forward<Args>(args)...);
}

void copy_to_target(std::string& target)
{
    (void)target;
}

template <typename Y, typename... Args>
void copy_to_target(std::string& target, Y& src, Args&&... args)
{
    target.append(src);
    copy_to_target(target, std::forward<Args>(args)...);
}

template <typename... Args>
std::string fast_concat(Args&&... args)
{
    //size_t total_strings = sizeof...(Args);
    size_t total_bytes = calculate_bytes_req(std::forward<Args>(args)...);
    
    std::string result;
    result.reserve(total_bytes);
    
    copy_to_target(result, std::forward<Args>(args)...);
    return result;
}


static void StringConcat(benchmark::State& state) {
  // Code inside this loop is measured repeatedly
  for (auto _ : state) {
    auto res = fast_concat("this", "is", "a", "very", "long", "string", 
      "that", "should", "cause", "some", "allocation");
    // Make sure the variable is not optimized away by compiler
    benchmark::DoNotOptimize(res);
  }
}
// Register the function as a benchmark
BENCHMARK(StringConcat);


static void StringConcatSlow(benchmark::State& state) {
  // Code inside this loop is measured repeatedly
  for (auto _ : state) {
    auto res = std::string{"this"} + "is" + std::string{"a"} +
     "very" + std::string{"long"} + std::string{"string"} + 
      std::string{"that"} + std::string{"should"} + 
      std::string{"cause"} + std::string{"some"} + 
      std::string{"allocation"};
    // Make sure the variable is not optimized away by compiler
    benchmark::DoNotOptimize(res);
  }
}
// Register the function as a benchmark
BENCHMARK(StringConcatSlow);

static void StringCopy(benchmark::State& state) {
  // Code before the loop is not measured
  std::string x = "hello";
  for (auto _ : state) {
    std::string copy(x);
  }
}
BENCHMARK(StringCopy);

