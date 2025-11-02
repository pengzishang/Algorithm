final class P0231_Solution2 {
    func isPowerOfTwo(_ n: Int) -> Bool {
        // 比如8是1000, 8 - 1就是7, 0111, 如果两者&,那么必定全都是0
        // 假如是5:101, 5-1 就是100, 两个&,是不可能归0的
        // 原因就在于, 2的幂次方, 只有一个1
        if n <= 0 {
            return false
        }

        if n & (n - 1) == 0 {
            return true
        }
        return false
    }
}
