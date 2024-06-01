/*
You are given a string s. 
The score of a string is defined as the sum of the absolute 
difference between the ASCII values of adjacent characters.
Return the score of s.

Example:

Input: s = "hello"
Output: 13
Explanation:The ASCII values of the characters in s are:
'h' = 104, 'e' = 101, 'l' = 108, 'o' = 111. So, 
the score of s would be |104 - 101| + |101 - 108| + |108 - 108| + |108 - 111| = 3 + 7 + 0 + 3 = 13.
 */

void main() {
  Solution solution = Solution();

  List<String> testCases = ["abc", "az", "hello", "abcd", "Aa"];

  for (String testCase in testCases) {
    int score = solution.scoreOfString(testCase);
    print('Score of "$testCase": $score');
  }
}

class Solution {
  int scoreOfString(String s) {
    int totalScore = 0;

    for (int i = 0; i < s.length - 1; i++) {
      int currentCharAscii = s.codeUnitAt(i);
      int nextCharAscii = s.codeUnitAt(i + 1);
      totalScore += (currentCharAscii - nextCharAscii).abs();
    }

    return totalScore;
  }
}
