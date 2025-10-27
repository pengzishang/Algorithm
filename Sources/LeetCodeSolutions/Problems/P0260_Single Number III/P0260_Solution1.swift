final class P0260_Solution1 {
//    https://leetcode.cn/problems/single-number-iii/solutions/1/tu-jie-yi-zhang-tu-miao-dong-zhuan-huan-np9d2/

    func singleNumber(_ nums: [Int]) -> [Int] {
        var xorRow1 = 0
        for num in nums {
            xorRow1 ^= num
        }
        // 根据这一位, 把异或不同的分成两组
        // 因为两个不同的数字,异或结果必然有一位是1
        // 是哪一位无所谓, 我就从最右边开始
        var position = 0
        repeat {
            let lastDigit = xorRow1 & 1
            if lastDigit == 1 {
                break
            }
            xorRow1 >>= 1
            position += 1
        } while xorRow1 != 0
        var array0 = [Int32]()
        var array1 = [Int32]()
        // 分组, 这样两个不同的数必然分到不同组
        // 如果是相同的数, 肯定分在同一组
        for num in nums {
            var temp = Int32(num)
            temp >>= position
            if temp & 1 == 1 {
                array1.append(Int32(num))
            } else {
                array0.append(Int32(num))
            }
        }

        // 然后组内继续, 这次参照137的做法
        var result0 = Int32(0)
        var result1 = Int32(0)

        for i in 0 ..< 32 {
            // 每一位相加后取余, 然后合并到结果
            var temp0 = Int32(0)
            for item in array0 {
                let s = (item >> i) & 1
                temp0 += s
            }
            temp0 &= 1
            result0 |= temp0 << i

            var temp1 = Int32(0)
            for item in array1 {
                temp1 += (item >> i) & 1
            }
            temp1 &= 1
            result1 |= temp1 << i
        }
        return [Int(result0), Int(result1)]
    }
}
