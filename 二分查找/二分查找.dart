/*
描述
请实现无重复数字的升序数组的二分查找
给定一个 元素升序的、无重复数字的整型数组 nums 和一个目标值 target ，写一个函数搜索 nums 中的 target，如果目标值存在返回下标（下标从 0 开始），否则返回 -1
数据范围：0 \le len(nums) \le 2\times10^50≤len(nums)≤2×10^5， 数组中任意值满足 |val| \le 10^9∣val∣≤10^9
进阶：时间复杂度 O(\log n)O(logn) ，空间复杂度 O(1)O(1)
示例1
输入：[-1,0,3,4,6,10,13,14],13 返回值：6
说明：13 出现在nums中并且下标为 6
示例2
输入：[],3
返回值：-1
说明：nums为空，返回-1
示例3
输入：[-1,0,3,4,6,10,13,14],2
返回值：-1
说明：2 不存在nums中因此返回 -1
 */

void main() {
  print(search([-1, 0, 3, 4, 6, 10, 13, 14], 13));
  print(search([], 3));
  print(search([3], 3));
  print(search([-1,0,3,4,6,10,13,14], 2));
}

int search(List<int> nums, int target) {
  int l = 0;
  int r = nums.length-1;
  while(l<=r){
    int m = (l+r) ~/2;
    if(nums[m] == target){
      return m;
    } else if(nums[m] >target){
      r = m-1;
    }else{
      l = m+1;
    }
  }
  return -1;
}
