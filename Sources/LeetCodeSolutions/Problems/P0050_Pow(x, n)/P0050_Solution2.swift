final class P0050_Solution2 {
    func myPow(_ x: Double, _ n: Int) -> Double {
        let origin = if n < 0 { 1 / x } else { x }
        let times = abs(n)
        return muti(origin, times)
    }

    func muti(_ x: Double, _ times: Int) -> Double {
        if times == 0 {
            return 1
        }
        if times.isMultiple(of: 2) {
            return muti(x * x, times / 2)
        } else {
            return muti(x * x, times / 2) * x
        }
    }
}
