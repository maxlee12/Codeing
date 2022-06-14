// 题库数字序列之和（提供两个整数，可以为正整数也可以为负整数，计算这两个数字区间的所有整数之和）
// 题目内容
// 提供两个整数 a 和 b，可以为正也可以为负，计算 a 至 b 之间（包含 a 和 b）的所有整数的和，并将计算结果返回。如果提供的两个整数相等就返回 a 或 b。
//
// 注意： a 并不一定小于 b！

// getSum(1, 0) == 1   // 1 + 0 = 1
// getSum(1, 2) == 3   // 1 + 2 = 3
// getSum(0, 1) == 1   // 0 + 1 = 1
// getSum(1, 1) == 1   // 1 Since both are same
// getSum(-1, 0) == -1 // -1 + 0 = -1
// getSum(-1, 2) == 2  // -1 + 0 + 1 + 2 = 2

void main(){
  print(getSum(1, 0));
  print(getSum(1, 2));
  print(getSum(0, 1));
  print(getSum(1, 1));
  print(getSum(-1, 0));
  print(getSum(-1, 2));


}


int getSum(int a,int b){
  int result = 0;
  if(a==b){
    result = a+b;
  }
  else if(a>b){
    for(int i = b;i <= a;i++){
      result+=i;
    }
  }else{
    for(int i = a;i <= b;i++){
      result+=i;
    }
  }
  return result;
}