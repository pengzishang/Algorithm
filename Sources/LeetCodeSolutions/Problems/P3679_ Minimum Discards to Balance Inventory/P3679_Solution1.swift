final class P3679_Solution1 {
    func minArrivalsToDiscard(_ arrivals: [Int], _ w: Int, _ m: Int) -> Int {
        var inventoryInfo = [Int: Int]()
        var amountToThrow = 0
        var copyArrow = arrivals
//        [1,2,1,3,1]
        for (index, item) in copyArrow.enumerated() {
            if let value = inventoryInfo[item] {
                if value == m {
                    amountToThrow += 1
                    copyArrow[index] = -1
                } else {
                    inventoryInfo[item] = value + 1
                }
            } else {
                inventoryInfo[item] = 1
            }
            // 看起来要先把左边的先缩掉, 比如在第 4 天, 窗口为 4, 要在第五天前, 提前把第一天的释放掉
            let left = index - w + 1
            if left >= 0 {
                if let value = inventoryInfo[copyArrow[left]] {
                    inventoryInfo[copyArrow[left]] = value - 1
                }
            }
        }
        return amountToThrow
    }
}
