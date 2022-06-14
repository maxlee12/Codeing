
//编写函数 scramble(str1, str2)，当 str1 字符串中的部分字符能够重排后与 str2 匹配就返回 true，否则返回 false。
//
//注意：
//
//字符串只包含 a - z 的小写英文字符，不包含标点符号或数字。
//
//请考虑执行效率最高的实现方式。
//
//如果 str1 或 str2 为 null 时终止函数。
//
//下面是一些例子：
//
//solution('rkqodlw', 'world') ==> True
//solution('cedewaraaossoqqyt', 'codewars') ==> True
//solution('katas', 'steak') ==> False


void main(){
  print(solution('rkqodlw', 'world'));
  print(solution('cedewaraaossoqqyt', 'codewars'));
  print(solution('katas', 'steak'));
  print(solution('', ''));
  print(solution('kat', 'steak'));
}


bool solution(String sources,String target){
  if(sources.isEmpty || target.isEmpty){
    return false;
  }
  if(sources.length < target.length){
    return false;
  }
  return target.split("").every((element){
    return sources.contains(element);
  });
}