final class P0342_Solution1 {
    func isPowerOfFour(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        // 首先判断是否是2的幂数
        if n & (n - 1) != 0 {
            return false
        }
        // 观察4的x次方的规律, 1,100, 10000, 1000000....
        // 这个1会出现在第0, 2, 4, 6
        // 都是偶数位
        // 如果我们把这些偶数位都置为0, 用mask蒙上, 那么结果就是0,
        // 这个mask将会是1010101001010101....一共32位
        // 写成16进制好看一些
        let mask = 0xAAAA_AAAA
        if n & mask != 0 {
            return false
        }
        return true
    }
}
