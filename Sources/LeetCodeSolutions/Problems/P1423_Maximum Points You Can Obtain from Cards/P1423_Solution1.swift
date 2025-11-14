final class P1423_Solution1 {
    func maxScore(_ cardPoints: [Int], _ k: Int) -> Int {
        let midLength = cardPoints.count - k
        var currSum = cardPoints.prefix(midLength).reduce(0, +)
        var minSum = currSum
        for i in midLength ..< cardPoints.count {
            currSum += cardPoints[i]
            currSum -= cardPoints[i - midLength]
            minSum = min(minSum, currSum)
        }
        let rest = cardPoints.reduce(0, +) - minSum
        return rest
    }
}
