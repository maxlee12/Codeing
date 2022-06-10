//描述
// 给定一个长度为n的数组nums，请你找到峰值并返回其索引。数组可能包含多个峰值，在这种情况下，返回任何一个所在位置即可。
// 1.峰值元素是指其值严格大于左右相邻值的元素。严格大于即不能有等于
// 2.假设 nums[-1] = nums[n] = -无穷
// 3.对于所有有效的 i 都有 nums[i] != nums[i + 1]
// 4.你可以使用O(logN)的时间复杂度实现此问题吗？

// 如输入[2,4,1,2,7,8,4]时，会形成两个山峰，一个是索引为1，峰值为4的山峰，另一个是索引为5，峰值为8的山峰
// 示例1
// 输入：[2,4,1,2,7,8,4]
// 返回值：1
// 说明：
// 4和8都是峰值元素，返回4的索引1或者8的索引5都可以
// 示例2
// 输入：[1,2,3,1]
// 返回值：2
// 说明：3 是峰值元素，返回其索引 2

void main() {
  print("findPeakElement");
  print(findPeakElement([2, 4, 1, 2, 7, 8, 4]));
  print(findPeakElement([1, 2, 3, 1]));
  print(findPeakElement([1, 1, 2]));
  print(findPeakElement([1, 2]));
  print(findPeakElement([1, 5, 4, 3, 2, 3]));
  print("findOnePeakElement");  // 由于题目有时间复杂度限制和假设，所以要用二分法
  print(findOnePeakElement([2, 4, 1, 2, 7, 8, 4]));
  print(findOnePeakElement([1, 2, 3, 1]));
  print(findOnePeakElement([1, 5, 4, 3, 2, 3]));
}

// 找出所有山峰
List<int> findPeakElement(List<int> nums) {
  List<int> result = [];
  if (nums.length >= 3) {
    for (int i = 1; i < nums.length - 1; i++) {
      if (nums[i] > nums[i + 1] && nums[i] > nums[i - 1]) {
        result.add(i);
      }
    }
  }
  return result;
}

// 只找出一个山峰
int findOnePeakElement(List<int> nums) {
  int left = 0;
  int right = nums.length - 1;

  while (left < right) {
    int mid = (left + right) ~/ 2;
    // print("mid:$mid");
    if (nums[mid] > nums[mid + 1]) {
      // 左边大，往左找
      right = mid;
    } else {
      // 右边大 往右找
      left = mid + 1;
    }
  }
  return right;
}
