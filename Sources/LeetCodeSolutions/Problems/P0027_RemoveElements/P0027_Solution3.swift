public final class P0027_Solution3 {

    public init() {}
    public func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        var indexF = 0
        var indexS = 0
        
        while indexF < nums.count {
            let valueF = nums[indexF]
            let valueS = nums[indexS]
            if valueS != valueF {
                if valueF != val {
                    nums[indexS] = valueF
                    indexS += 1
                }
                indexF += 1
            } else if nums[indexS] == valueF {
                switch (valueS == val, valueF == val) {
                case (false, false):
                    indexF += 1
                    indexS += 1
                case (false, true):
                    nums[indexS] = valueF
                    indexS += 1
                    indexF += 1
                case (true, false):
                    indexS += 1
                case (true, true):
                    indexF += 1
                }
            }
        }
        
        return indexS
    }
}
