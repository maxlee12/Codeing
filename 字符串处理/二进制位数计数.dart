// 题库二进制位数计数
// 题目内容
// 编写一个函数，在输入一个非负整数后，返回其二进制表示形式中等于1的位数的计数。
//
// 例：
//
// "1234" -> "5" # 1234 二进制为 10011010010

void main(){
  print(bitcode(1234)); //5
  print(bitcode(77231418)); // 14
  print(bitcode(10030245)); // 10
  print(bitcode(89)); // 4
  print(bitcode(0)); // 0
}

int bitcode(int num){
  if(num <1){
    return 0;
  }
  int result = 0;
  while(num !=0){
    if(num.isOdd){
      result+=1;
    }
    num = num>>1;
  }
  return result;
}