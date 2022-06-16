// 牛客项目发布项目版本时会有版本号，比如1.02.11，2.14.4等等
// 现在给你2个版本号version1和version2，请你比较他们的大小
// 版本号是由修订号组成，修订号与修订号之间由一个"."连接。1个修订号可能有多位数字组成，修订号可能包含前导0，且是合法的。例如，1.02.11，0.1，0.2都是合法的版本号
// 每个版本号至少包含1个修订号。
// 修订号从左到右编号，下标从0开始，最左边的修订号下标为0，下一个修订号下标为1，以此类推。
//
// 比较规则：
// 一. 比较版本号时，请按从左到右的顺序依次比较它们的修订号。比较修订号时，只需比较忽略任何前导零后的整数值。比如"0.1"和"0.01"的版本号是相等的
// 二. 如果版本号没有指定某个下标处的修订号，则该修订号视为0。例如，"1.1"的版本号小于"1.1.1"。因为"1.1"的版本号相当于"1.1.0"，第3位修订号的下标为0，小于1
// 三.  version1 > version2 返回1，如果 version1 < version2 返回-1，不然返回0.

// 示例1
// 输入："1.1","2.1"
// 返回值：-1
// 说明：version1 中下标为 0 的修订号是 "1"，version2 中下标为 0 的修订号是 "2" 。1 < 2，所以 version1 < version2，返回-1
//
// 示例2
// 输入："1.1","1.01"
// 返回值：0
// 说明：version2忽略前导0，为"1.1"，和version相同，返回0
//
// 示例3
// 输入："1.1","1.1.1"
// 返回值：-1
// 说明："1.1"的版本号小于"1.1.1"。因为"1.1"的版本号相当于"1.1.0"，第3位修订号的下标为0，小于1，所以version1 < version2，返回-1
//
// 示例4
// 输入："2.0.1","2"
// 返回值：1
// 说明：version1的下标2>version2的下标2，返回1
//
// 示例5
// 输入："0.226","0.36"
// 返回值：1
// 说明：226>36，version1的下标2>version2的下标2，返回1

void main() {
  print(compare("1.1", "2.1"));
  print(compare("1.1", "1.01"));
  print(compare("1.1", "1.1.1"));
  print(compare("2.0.1", "2"));
  print(compare("0.226", "0.36"));
}

int compare(String v1, String v2) {
  List<String> v1List = v1.split(".").toList();
  List<String> v2List = v2.split(".").toList();
  for (int i = 0; i < v1List.length || i < v2List.length; i++) {
    String str1 = i < v1List.length ? v1List[i] : "0";
    String str2 = i < v2List.length ? v2List[i] : "0";
    if (int.parse(str1) > int.parse(str2)) {
      return 1;
    }
    if (int.parse(str1) < int.parse(str2)) {
      return -1;
    }
  }
  return 0;
}
