#include <iostream>
#include <iterator>
#include <vector>
 
template <class RandomIt, class RevIt>
void Test(RandomIt begin, RandomIt middle, RandomIt end, RevIt rit) {
        size_t leftLength = std::distance(begin, middle);
        size_t rightLength = std::distance(middle, end);
        if (leftLength > rightLength) {
                Test(RevIt(end), RevIt(middle), RevIt(begin), rit);
                return;
        }
}

template <typename RandomIt>
void Test(RandomIt begin, RandomIt middle, RandomIt end) {
  Test(begin, middle, end, std::reverse_iterator<RandomIt>());
}
 
int main() {
	std::vector<int> nums = { 2, 1, 123, 1, 23, 123, 123, 5234, 52, 3, 452, 3, 452, 5 };
	int middle;
	std::cin >> middle;
	Test(nums.begin(), nums.begin()+middle, nums.end());
	return 0;
}

