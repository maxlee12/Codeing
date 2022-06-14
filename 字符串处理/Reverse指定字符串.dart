//题库Reverse指定字符串
//题目内容
//设计一个函数，可以传入一个或多个单词的字符串，并返回该字符串，但所有五个或更多字母的单词都前后颠倒。
//例：
//
//solution("This is a test") => "This is a test"
//solution("This is another test") => "This is rehtona test"
//注1：传入的字符串仅包含字母和空格
//注2：仅当存在多个单词时才包含空格


void main() {
  print('ReverseString init');
  print(solution("This is a test"));
  print(solution("This is another test"));
}
String solution(String str){
  String newStr = '';
  List strs = str.split(" ");
  for (String subStr in strs) {
    if(subStr.length > 5){
      subStr = subStr.split("").reversed.join();
    }
    newStr += subStr;
    newStr += " ";
  }
  newStr.trimRight();
  return newStr;
}

