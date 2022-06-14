//编程实现range函数
//range(1,10,3) 返回[1,4,7]
//range(10,1,3) 返回[]
//range(1,10,-3) 返回[]
//range(10,1,-3) 返回[10,7,4]

void main() {
  print(range(1, 10, 3));
  print(range(10, 1, 3));
  print(range(1, 10, -3));
  print(range(10, 1, -3));
}

List<int> range(int start,int end,int step){
  List<int> result = [];
  if(start < end && step > 0){
    for(int i = start;i < end;i+=step){
      result.add(i);
    }
  }else if(start > end && step < 0){
    for(int i = start;i > end;i+=step){
      result.add(i);
    }
  }
  return result;
}

