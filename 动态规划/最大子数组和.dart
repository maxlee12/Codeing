//给你一个整数数组 nums ，请你找出一个具有最大和的连续子数组（子数组最少包含一个元素），返回其最大和。
//
//子数组 是数组中的一个连续部分。
//
//示例 1：
//输入：nums = [-2,1,-3,4,-1,2,1,-5,4]
//输出：6
//解释：连续子数组[4,-1,2,1] 的和最大，6 。
//
//示例 2：
//输入：nums = [1]
//输出：1
//
//示例 3：
//输入：nums = [5,4,-1,7,8]
//输出：23

import 'dart:math';

void main() {
  // print(maxSubArray([-2, 1, -3, 4, -1, 2, 1, -5, 4]));
  // print(maxSubArray([1]));
  print(maxSubArray([5,4,-10,8,8]));
  // print(maxSubArray([2,2,-1,6]));
}

int? maxSubArray(List<int> nums) {
  int? result;
  if (nums.isEmpty) {
    return result;
  }
  if(nums.length ==1){
    return nums.first;
  }
  int tmp = nums.first;
  result = nums.first;
  for(int i = 1;i < nums.length;i++){
    print("1 tmp:$tmp i:${nums[i]} r:$result");
    tmp = max(nums[i], tmp + nums[i]);
    result = max(tmp, result!);
    print("2 tmp:$tmp r:$result");
  }


  return result;
}
