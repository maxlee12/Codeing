// 3.哥哥弟弟分玩具 弟弟计算玩具重量方法是不带进位的二进制加法
// 要求兄弟所得玩具重量在弟弟眼中相同 求哥哥最大玩具重量 200分

//
// input:
// 3            // 一共三个万玩具
// 3 5 6        // 重量分别是 3 5 6
// output：
// 11           // 弟弟眼中 5 + 6 -> 101 + 110 = 11 == 3 所以哥哥最多拿 5 + 6 = 11

// cnt = int(input())
// weights = list(map(int, input().split()))
//
// try:
// if reduce(lambda x, y: x ^ y, weights) != 0:
// print(-1)
// raise
// ans = 0
// for i in range(1, (1 << cnt) - 1):
// <!-- 哥哥叫solo 弟弟叫啥忘了 -->
// solo0 = solo1 = coco0 = coco1 = 0
// for j in range(cnt):
// if i & 1 == 1:
// solo1 += weights[j]
// coco1 ^= weights[j]
// else:
// solo0 += weights[j]
// coco0 ^= weights[j]
// if coco0 == coco1:
// ans = max(ans, solo0, solo1)
// print(ans)







