// 2.输入一个数 返回所有可能的连续自然数和
// input:
// 9                // 自然数
// output:
// 9=9              // 自然数组合
// 9=4+5
// 9=2+3+4
// Result:3         // 总组合数

void main() {
  print(intUntil(9));
  print(intUntil(6));
  print(intUntil(3));
  print(intUntil(10));
  print(intUntil(21));
  print(intUntil(100));
}

int intUntil(int num) {
  print("intUntil num:$num");
  int result = 0;
  if (num > 0) {
    for (int i = 1; i <= num; i++) {
      int m = num ~/ i;
      int y = num % i;
      // 平均值太小
      if( 2*m < i){
        print("break i:$i");
        break;
      }
      // 奇数的话，需要刚好均分
      if (i.isOdd && y == 0) {
        print("i:$i m:$m");
        result += 1;
      } else {
        if (2 * y == i) {
          print("i:$i m:$m");
          result += 1;
        }
      }
    }
  }
  return result;
}
