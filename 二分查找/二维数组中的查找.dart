/*
在一个二维数组array中（每个一维数组的长度相同），每一行都按照从左到右递增的顺序排序，每一列都按照从上到下递增的顺序排序。请完成一个函数，输入这样的一个二维数组和一个整数，判断数组中是否含有该整数。
[
[1,2,8,9],
[2,4,9,12],
[4,7,10,13],
[6,8,11,15]
]
给定 target = 7，返回 true。
给定 target = 3，返回 false。
数据范围：矩阵的长宽满足 0 <= n,m <= 5000≤n,m≤500 ， 矩阵中的值满足 0 <= val <= 10^9
进阶：空间复杂度 O(1)O(1) ，时间复杂度 O(n+m)O(n+m)

示例1
输入：7,[[1,2,8,9],[2,4,9,12],[4,7,10,13],[6,8,11,15]]
返回值：true
说明：存在7，返回true

示例2
输入：1,[[2]]
返回值：false

示例3
输入：3,[[1,2,8,9],[2,4,9,12],[4,7,10,13],[6,8,11,15]]
返回值：false
说明：
不存在3，返回false 

*/

void main() {
  print(search([
    [1, 2, 8, 9],
    [2, 4, 9, 12],
    [4, 7, 10, 13],
    [6, 8, 11, 15]
  ], 7));
  print(search([
    [2]
  ], 1));
  print(search([
    [1, 2, 8, 9],
    [2, 4, 9, 12],
    [4, 7, 10, 13],
    [6, 8, 11, 15]
  ], 3));
}

bool search(List<List<int>> nums, int target) {
  if (nums.isEmpty) {
    return false;
  }
  if (nums.first.isEmpty) {
    return false;
  }

  int x = nums.length;
  int y = nums.first.length;
  // 从左下角元素开始查找
  for (int i = x - 1, j = 0; i >= 0 && j < y;) {
    if (nums[i][j] == target) {
      return true;
    } else if (nums[i][j] > target) {
      // 元素小，往上走
      i--;
    } else {
      // 元素大，往右走
      j++;
    }
  }
  return false;
}
