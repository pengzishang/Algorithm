public final class P0027_Solution1 {
    //buck, too much space
    public init() {}
    public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        let info = nums.reduce([Int:Int]()) { partialResult, curr in
            var copyRes = partialResult
            if let amount = copyRes[curr] {
                copyRes[curr] = amount + 1
            } else if curr != val {
                copyRes[curr] = 1
            }
            return copyRes
        }
        nums = info.reduce([Int]()) { partialResult, pair in
            var copyRes = partialResult
            copyRes.append(contentsOf: Array.init(repeating: pair.key, count: pair.value))
            return copyRes
        }
        return nums.count
    }
}
