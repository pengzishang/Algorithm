final class P0015_Solution2 {
    // 左右指针法
    // 拿出第一个数, 剩下的和用左右两个指针向中间靠近, 记得过滤掉过多重复的值
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var newList = nums.sorted()
        var result = [[Int]]()
        while newList.count >= 3 {
            let sPointer = newList.removeFirst()
            var left = 0
            var right = newList.count - 1
            while right > left {
                let lPointer = newList[left]
                let rPointer = newList[right]
                if lPointer + rPointer == -sPointer {
                    result.append([sPointer, lPointer, rPointer])
                    while lPointer == newList[left] {
                        left += 1
                        if right == left {
                            break
                        }
                    }
                } else if lPointer + rPointer > -sPointer {
                    while rPointer == newList[right] {
                        right -= 1
                        if right == left {
                            break
                        }
                    }
                } else {
                    while lPointer == newList[left] {
                        left += 1
                        if right == left {
                            break
                        }
                    }
                }
            }
            while newList.first == sPointer {
                newList.removeFirst()
            }
        }
        return result
    }
}
