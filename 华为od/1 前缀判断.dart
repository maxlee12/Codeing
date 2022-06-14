
// 1.输入一些单词 再输入一个前缀 输出所有前缀开始的单词 不包括相同的单词 按字典序排序 100分
//
// input:
// asd as as,asD     // 单词
// a                 // 前缀
//
// output:
// as asd asD

void main(){
  print(allPrefixString(['asd as as',"asD"],"a"));
}


List<String> allPrefixString(List<String> words,String prefix){
  List<String> result = [];
  for(String str in words){
    String split = '\\pP|\\pS|\\pZ|\\pM';
    List subString = str.split(split);
    for(String subStr in subString){
      if(subStr.startsWith(prefix)){
        if(!result.contains(subStr)){
          result.add(subStr);
        }
      }
    }

  }
  return result;
}