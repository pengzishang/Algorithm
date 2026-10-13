final class P1671_Solution1 {
    func minimumMountainRemovals(_ nums: [Int]) -> Int {
        //        guard let max = nums.max(),let max_index = nums.firstIndex(of: max) else {
        //            return 0
        //        }

        // step1
        //        nums = [2, 1, 1, 5, 1 ,6, 2, 3, 1]
        //        思路是挑中一个山峰. 从最长左链条+最长右链条
        //        先从左边挑链条最长的. up[n], 最长链条 l=[x,x,x,x,x,x,x,x,x]
        //        n = 0, up[0] = 2, 那么 2最长就他自己, l=[1,x,x,x,x,x,x,x,x]
        //        n = 1, up[1] = 1, 那么 1最长就他自己, l=[1,1,x,x,x,x,x,x,x]
        //        n = 2, up[2] = 1, 那么 1最长就他自己, l=[1,1,1,x,x,x,x,x,x]
        //        n = 3, up[3] = 5, 先筛掉高的(删除比自己高的),没有被筛出掉的 ,可以和前面一个最长的链接(最长的链条就是 1)一起,加自己,变成 2, l=[1,1,1,2,x,x,x,x,x]
        //        n = 4, up[4] = 1,先筛掉高的(删除比自己高的或者一样的),发现就剩下他自己了,那么1最长的,就是自己, l=[1,1,1,2,1,x,x,x,x]
        //        n = 5, up[4] = 6, 那么 6最长的,可以和前面一个最近的 1,5 一起,加自己,变成 3, l=[1,1,1,2,3,x,x,x]
        //        最终l=[1,1,1,2,1,3,2,3,1]
        // step 2
        //        然后从右边开始, 同样的思路
        //        n = 8 value = 1, longest_link = 1, 我简写一下[n:8, value:1, l:1]
        //        n = 7 value = 1, longest_link = 1, 我简写一下[n:8, value:1, l:1]
        //        [n:7,v:3,l:2]
        //        当 n=7,value=2, l算的时候,先要排除掉 v=3(除去比他大的值), 比较的时候, 也不要把[n:7,v:3,l:2]一起比较, [n:6,v:2,l:2]
        //        最后得到  r = [2,1,1,3,1,3,2,2,1]

        // 然后 l + r加起来 [3.2.2.5.2.6.4.5.2]
        // 最后要保证这个数不能是第一个和最后一个, 所以他们加起来要大于 2

        var left: [(Int, Int)] = [] // 前面 value, 后面是 longest link
        for value in nums {
            let consider = left.filter { $0.0 < value }.compactMap(\.1).max() ?? 0
            left.append((value, consider + 1))
        }

        let leftFinal = left.map(\.1)

        var right: [(Int, Int)] = []
        for value in nums.reversed() {
            let consider = right.filter { $0.0 < value }.compactMap(\.1).max() ?? 0
            right.append((value, consider + 1))
        }

        let rightFinal = right.reversed().map(\.1)

        guard let combineMax = zip(leftFinal, rightFinal)
            .filter({
                $0.1 > 1 && $0.0 > 1
            })
            .map { $0.0 + $0.1 - 1 }.max() else { return 0 }
        return nums.count - combineMax
    }
}
