// 在数组中的两个数字，如果前面一个数字大于后面的数字，则这两个数字组成一个逆序对。
// 输入一个数组,求出这个数组中的逆序对的总数P。并将P对1000000007取模的结果输出。 即输出P mod 1000000007

//要求：空间复杂度 O(n)O(n)，时间复杂度 O(nlogn)O(nlogn)
//输入描述：
//题目保证输入的数组中没有的相同的数字
//
//示例1
//输入：[1,2,3,4,5,6,7,0]
//返回值：7
//
//示例2
//输入：[1,2,3]
//返回值：0

void main() {
  print(inversePairs([1, 2, 3, 4, 5, 6, 7, 0]));
}

int inversePairs(List<int> data) {
  if (data.isEmpty) {
    return 0;
  }

  int merge(List<int> data, int begin, int mid, int end) {
    int i = begin;
    int j = mid;
    int count = 0;
    List<int> temp = [];
    while (i < mid && j < end) {
      if (data[i] <= data[j]) {
        temp.add(data[i]);
        i += 1;
      } else {
        temp.add(data[j]);
        j += 1;
        count += mid - i;
      }
    }

    while (i < mid) {
      temp.add(data[i]);
      i += 1;
    }

    while (j < end) {
      temp.add(data[j]);
      j += 1;
    }

    return count;
  }

  int mergeSort(List<int> data, int begin, int end) {
    if (begin == end - 1) {
      return 0;
    }
    int mid = (begin + end) ~/ 2;
    int left_count = mergeSort(data, begin, mid);
    int right_count = mergeSort(data, mid, end);
    //
    int merge_count = merge(data, begin, mid, end);
    return left_count + right_count + merge_count;
  }

  int begin = 0;
  int end = data.length;
  int ans = mergeSort(data, begin, end);
  return ans % 1000000007;
}
