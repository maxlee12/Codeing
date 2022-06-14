// 编写一个函数，接受一个数字后重新排列，返回一个尽可能大的新数字
// 例：
//
// "23953" -> "95332"
// "12743" -> "74321"
// "21" -> "21"
// 注：字符串的长度在0 ~ 1000之间

import 'dart:math';

void main(){
  print(biggest("23953"));
  print(biggest("12743"));
  print(biggest("21"));
}


String biggest(String num ){
  String result = '';
  List<String> listStr = num.split('');
  listStr.sort((a,b)=>b.compareTo(a));
  listStr.forEach((element) {
    result+=element;
  });
  return result;
}