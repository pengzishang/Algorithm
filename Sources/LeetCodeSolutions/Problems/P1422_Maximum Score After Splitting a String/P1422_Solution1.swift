final class P1422_Solution1 {
    func maxScore(_ s: String) -> Int {
        var maxPoint = 0
        let copyS = Array(s)
        for i in 1 ..< copyS.count {
            let fSlice = copyS[0 ..< i].filter {
                $0 == "0"
            }
            let bSlice = copyS[i ..< copyS.count].filter {
                $0 == "1"
            }
            maxPoint = max(maxPoint, fSlice.count + bSlice.count)
        }
        return maxPoint
    }
}
