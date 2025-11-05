final class P1470_Solution1 {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
        var result = [Int]()
        for i in 0 ..< n {
            result.append(contentsOf: [nums[i], nums[n + i]])
        }
        return result
    }
}
