final class P0231_Solution1 {
    func isPowerOfTwo(_ n: Int) -> Bool {
        if n <= 0 {
            return false
        }
        var copyN = n
        var info = [Int: Int]()
        while copyN != 0 {
            if let value = info[copyN & 1] {
                info[copyN & 1] = value + 1
            } else {
                info[copyN & 1] = 1
            }
            copyN >>= 1
        }
        return info[1] == 1
    }
}
