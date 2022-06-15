// 1.输入一些单词 再输入一个前缀 输出所有前缀开始的单词 不包括相同的单词 按字典序排序 100分
//
// input:
// asd as as,asD     // 单词
// a                 // 前缀
//
// output:
// as asd asD

void main() {
  print(allPrefixString(['asd as as', "asD", "ant's"], "a"));
  print(allRegExpString(['asd as as', "asD", "ant's"], "a"));
}

List<String> allPrefixString(List<String> words, String prefix) {
  List<String> result = [];
  for (String str in words) {
    RegExp split = RegExp(r"[^a-zA-z]");
    List subString = str.split(split);
    for (String subStr in subString) {
      if (subStr.startsWith(prefix)) {
        if (!result.contains(subStr)) {
          result.add(subStr);
        }
      }
    }
  }
  return result;
}

List<String> allRegExpString(List<String> words, String prefix) {
  List<String> result = [];
  for (String str in words) {
    // RegExp exp = RegExp(r"\w+"); // 匹配字母、数字、下划线。等价于’[A-Za-z0-9_]’。
    RegExp exp = RegExp(r"\W+"); // 匹配非字母、数字、下划线。等价于 ‘[^A-Za-z0-9_]’
    List subString = str.split(exp);
    for (String subStr in subString) {
      if (subStr.startsWith(prefix)) {
        if (!result.contains(subStr)) {
          result.add(subStr);
        }
      }
    }
  }
  return result;
}
