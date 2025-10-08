public final class P0026_Solution1 {
    //force
    public init() {}
    public func removeDuplicates(_ nums: inout [Int]) -> Int {
        let buck = nums.reduce(Set<Int>()) { partialResult, curr in
            var copyResult = partialResult
            copyResult.insert(curr)
            return copyResult
        }
        nums = Array(buck).sorted(by: <)
        return buck.count
    }
}
