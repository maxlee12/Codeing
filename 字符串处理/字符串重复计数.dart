// 字符串重复计数
// 题目内容
// 编写一个函数，接受一个字符串后，返回字符串中出现多次的字母或数字的个数。
// 注1：字母不区分大小写
// 注2：输入的字符串仅包含字母和数字
//
// 示例 1：
//
// 输入："abcde"
// 输出： 1
// 解释：每个字符只出现了一次
// 示例 2：
//
// 输入："aabbcde"
// 输出： 2
// 解释：存在出现两次的字符，'a'和'b'
// 示例 3：
//
// 输入："aA11"
// 输出： 2
// 解释：存在出现两次的字符'a'和'1'，不区分字母大小写

void main() {
  print("MaxRepeatString init");
  print(solution('abcde'));
  print(solution('aabbcde'));
  print(solution('aA11'));
}
int solution(String str){

  if(str.isEmpty){
    return 0;
  }
  Map<String,int> sum = {};
  for(String char in str.toLowerCase().split('')){
    if(sum.containsKey(char)){
      sum[char] = sum[char]! + 1;
    }else{
      sum[char] = 1;
    }
  }
  List count = sum.values.toList();
  count.sort();
  return count.last;
}
