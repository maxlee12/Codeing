// 给定一个排序数组和一个目标值，在数组中找到目标值，并返回其索引。如果目标值不存在于数组中，返回它将会被按顺序插入的位置。
//
// 请必须使用时间复杂度为 O(log n) 的算法。

//示例 1:
//输入: nums = [1,3,5,6], target = 5
//输出: 2
//示例2:
//输入: nums = [1,3,5,6], target = 2
//输出: 1
//示例 3:
//输入: nums = [1,3,5,6], target = 7
//输出: 4

void main() {
  print(searchInsert([1, 3, 5, 6], 5));
  print(searchInsert([1, 3, 5, 6], 2));
  print(searchInsert([1, 3, 5, 6], 7));
}

int searchInsert(List<int> nums, int target) {
  int l = 0;
  int r = nums.length - 1;
  while (l <= r) {
    int m = (l + r) ~/ 2;
    if (nums[m] > target) {
      r--;
    } else if (nums[m] < target) {
      l = m + 1;
    } else {
      return m;
    }
  }

  return r+1;
}
