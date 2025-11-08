final class P1343_Solution1 {
    func numOfSubarrays(_ arr: [Int], _ k: Int, _ threshold: Int) -> Int {
        var currSum = arr.prefix(k).reduce(into: 0) { $0 += $1 }
        var targetCount = (currSum / k) >= threshold ? 1 : 0
        for i in k ..< arr.count {
            currSum += arr[i]
            currSum -= arr[i - k]
            if currSum / k >= threshold {
                targetCount += 1
            }
        }
        return targetCount
    }
}
