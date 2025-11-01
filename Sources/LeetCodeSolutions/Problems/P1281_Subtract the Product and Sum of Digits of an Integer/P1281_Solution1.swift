final class P1281_Solution1 {
    func subtractProductAndSum(_ n: Int) -> Int {
        var copyN = n
        var sum = 0
        var mul = 1
        while copyN != 0 {
            let lastDig = copyN % 10
            sum += lastDig
            mul *= lastDig
            copyN /= 10
        }
        return mul - sum
    }
}
