final class P0050_Solution1 {
//    x =
//    2.00000
//    n =
//
//    -2147483648
    // 超时情况
    func myPow(_ x: Double, _ n: Int) -> Double {
        if n == 0 {
            return 1
        }
        if x == 1 || x == 0 {
            return x
        }
        let origin = if n < 0 { 1 / x } else { x }
        print(origin)
        let times = if n < 0 { -n } else { n }
        var sum = origin
        for _ in 0 ..< times - 1 {
            sum *= origin
        }
        return sum
    }
}
