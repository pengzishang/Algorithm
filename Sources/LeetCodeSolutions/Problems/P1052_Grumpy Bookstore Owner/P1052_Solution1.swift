final class P1052_Solution1 {
    func maxSatisfied(_ customers: [Int], _ grumpy: [Int], _ minutes: Int) -> Int {
        // 目的就是找出最优的那几分钟, 那几分钟的差值肯定是最大的
        // 看错题了, 反转一下
        let modifiedGrumpy = grumpy.map {
            $0 == 1 ? 0 : 1
        }

        var maxDiffValue = 0

        let sum = zip(customers, modifiedGrumpy).reduce(into: 0) { partialResult, item in
            partialResult += item.0 * item.1
        }

        var currDiffValue = maxDiffValue

        for i in 0 ..< customers.count {
            let addCustomer = customers[i]
            let addGrumpy = modifiedGrumpy[i]
            if addGrumpy == 0 {
                currDiffValue += addCustomer
            }

            if i >= minutes {
                let removeCustomer = customers[i - minutes]
                let removeGrumpy = modifiedGrumpy[i - minutes]
                if removeGrumpy == 0 {
                    currDiffValue -= removeCustomer
                }
            }

            maxDiffValue = max(maxDiffValue, currDiffValue)
        }

        return maxDiffValue + sum
    }
}
