final class P0263_Solution1 {
    func isUgly(_ n: Int) -> Bool {
        if n == 0 {
            return false
        }
        var copyN = n
        while true {
            if copyN.isMultiple(of: 2) {
                copyN /= 2
            } else {
                break
            }
        }

        while true {
            if copyN.isMultiple(of: 3) {
                copyN /= 3
            } else {
                break
            }
        }

        while true {
            if copyN.isMultiple(of: 5) {
                copyN /= 5
            } else {
                break
            }
        }

        return copyN == 1
    }
}
