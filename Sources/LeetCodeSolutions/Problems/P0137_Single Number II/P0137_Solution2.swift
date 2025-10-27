import Foundation

final class P0137_Solution2 {
    // 移位,
    // 5 5 5 1
    // 就是101, 101, 101, 001
    // 竖起来排
    // round0: 1 1 1 0
    // round1: 0 0 0 0
    // round2: 1 1 1 1
    // 从最后一列开始 1 1 1 1, 如果都是3个重复的, 那么重复3个的位约等于没作用, 剩下的那个1就是没有重复的位
    // 收集这些没有重复的位, 在结果的相应位置放置1, 也就是2进制的某个位的1.
    // round0, 2的0次方的1
    // round1, 2的1次方的0
    // .....用Int32(1) << i 比阶乘好
    func singleNumber(_ nums: [Int]) -> Int {
        var result: Int32 = 0 // 32个0
        for i in 0 ..< 32 {
            var temp = 0
            for num in nums {
                temp += (num >> i) & 1
                temp %= 3
            }
            if temp == 1 {
                result |= 1 << i
            }
        }
        return Int(result)
    }
}
