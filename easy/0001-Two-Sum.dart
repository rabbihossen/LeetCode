/*
Given an array of integers nums and an integer target, 
return indices of the two numbers such that they add up to target.

You may assume that each input would have exactly one solution, 
and you may not use the same element twice.
You can return the answer in any order.

Example 1:
Input: nums = [2,7,11,15], target = 9
Output: [0,1]
Explanation: Because nums[0] + nums[1] == 9, we return [0, 1]. 

*/
void main() {
  Solution solution = Solution();
  List<int> nums = [2, 7, 11, 15];
  int target = 9;
  List<int> result = solution.twoSum(nums, target);
  print(result); // Output: [0, 1]
}

class Solution {
  List<int> twoSum(List<int> nums, int target) {
    Map<int, int> hash = {};
    for (int i = 0; i < nums.length; i++) {
      hash[nums[i]] = i;
    }
    for (int i = 0; i < nums.length; i++) {
      int complement = target - nums[i];
      if (hash.containsKey(complement) && hash[complement] != i) {
        return [i, hash[complement]!];
      }
    }
    return [];
  }
}
