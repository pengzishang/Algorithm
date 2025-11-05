final class P0852_Solution1 {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var left = 0
        var right = arr.count - 1
        while true {
            let mid = (left + right) / 2
            if mid == left || mid == right {
                break
            }
            if arr[mid] >= arr[mid + 1] {
                right = mid
            } else {
                left = mid
            }
        }
        return right
    }
}
