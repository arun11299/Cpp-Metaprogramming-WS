#include <cstdio>
#include <iostream>
#include <ctime>
#include <thread>

void primefinder(void)
{
   int n = 300000;
   std::cout << "Start" << std::endl;

   int i, j;
   int lastprime = 0;
   for(i = 2; i <= n; i++) {
      for(j = 2; j <= i; j++) {
           if((i % j) == 0) {
               if(i == j)
                   lastprime = i;
               else {
                   break;
               }
           }
      }
   }

   std::cout << "Prime: " << lastprime << std::endl;
}

int main(void)
{
  unsigned num_cpus = std::thread::hardware_concurrency();
   std::cout << "Launching " << num_cpus << " threads\n";
   std::clock_t start;
   start = std::clock();

   //std::thread t1(primefinder);
   //t1.join();

   std::cout << "Time: " << (std::clock() - start) / (double)(CLOCKS_PER_SEC / 1000) << " ms" << std::endl;

   start = std::clock();

   std::thread t2(primefinder);
   std::thread t3(primefinder);

   cpu_set_t cpuset1;
       CPU_ZERO(&cpuset1);
           CPU_SET(0, &cpuset1);
               int rc = pthread_setaffinity_np(t2.native_handle(),
               	                               sizeof(cpu_set_t), &cpuset1);

  cpu_set_t cpuset2;
      CPU_ZERO(&cpuset2);
          CPU_SET(1, &cpuset2);
              rc = pthread_setaffinity_np(t3.native_handle(),
              	                          sizeof(cpu_set_t), &cpuset2);

   t2.join();
   t3.join();

   std::cout << "Time: " << (std::clock() - start) / (double)(CLOCKS_PER_SEC / 1000) << " ms" << std::endl;
   return 0;
}
