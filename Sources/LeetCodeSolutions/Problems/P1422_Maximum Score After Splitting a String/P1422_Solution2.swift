final class P1422_Solution2 {
    func maxScore(_ s: String) -> Int {
        let copyS = Array(s)
        let preCaculatePoint: Int = {
            let firstPoint = copyS.first == "0" ? 1 : 0
            let rightPoint = copyS[1 ..< copyS.count].count(where: {
                $0 == "1"
            })
            return firstPoint + rightPoint
        }()
        var pointer = 1
        var curPoint = preCaculatePoint
        var maxPoint = preCaculatePoint
        while pointer != copyS.count - 1 {
            if copyS[pointer] == "0" {
                curPoint += 1
            } else {
                curPoint -= 1
            }
            maxPoint = max(maxPoint, curPoint)
            pointer += 1
        }
        return maxPoint
    }
}
