#include <iostream>
#include <chrono>
#include <memory>
#include <vector>

constexpr static const int ITER_COUNT = 1000000;

class EventHandler
{
public:
  virtual void handle_event(void* user_ctx) = 0;
  virtual ~EventHandler() = default;
};

class AcceptHandler final: public EventHandler
{
public:
  AcceptHandler() {}
  void handle_event(void* uctx)
  {
    (void) uctx;
  }

private:
  int fd_ = -1;
};

// Fwd decl.
struct Ctx { volatile int di; };

class DataHandler final: public EventHandler
{
public:
  DataHandler(int fd): fd_(fd) {}
  void handle_event(void* uctx)
  {
    auto ctx_ptr = static_cast<Ctx*>(uctx);
    ctx_ptr->di++;
  }
private:
  int fd_ = -1;
};

enum EventTypes: uint8_t
{
  AcceptEventType = 0,
  DataEventType,
};

int main() {
  std::vector<std::unique_ptr<EventHandler>> evhs;
  evhs.reserve(ITER_COUNT);

  for (int i = 0; i < ITER_COUNT; ++i) {
    if (i % 2 == 0) evhs.emplace_back(std::make_unique<DataHandler>(i));
    else evhs.emplace_back(std::make_unique<AcceptHandler>());
  }

  auto ctx_ptr(std::make_unique<Ctx>());
  auto start_time = std::chrono::high_resolution_clock::now();

  for (auto& eh : evhs) {
    eh->handle_event(ctx_ptr.get());
  }

  auto end_time = std::chrono::high_resolution_clock::now();
  std::cout << std::chrono::duration_cast<std::chrono::microseconds>(end_time - start_time).count() << '\n';

  return 0;
}
