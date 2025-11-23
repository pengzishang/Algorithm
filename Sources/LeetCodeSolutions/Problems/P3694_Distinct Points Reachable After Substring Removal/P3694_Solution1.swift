final class P3694_Solution1 {
    func distinctPoints(_ s: String, _ k: Int) -> Int {
        var resultArray = Set<[Int: Int]>()
        var currentPoint = (0, 0)
        let copyS = Array(s)
        let infoDic: [Character: (Int, Int)] = ["L": (-1, 0), "R": (1, 0), "U": (0, 1), "D": (0, -1)]
        for (index, item) in copyS.enumerated() {
            if index >= k, copyS[index - k] == item {
                continue
            }
            let pointNew = infoDic[item]!
            currentPoint = caclulate(axisA: currentPoint, axisB: pointNew, isAdd: true)

            if index >= k {
                let pointOld = infoDic[copyS[index - k]]!
                currentPoint = caclulate(axisA: currentPoint, axisB: pointOld, isAdd: false)
            }

            if index >= k - 1 {
                resultArray.insert([currentPoint.0: currentPoint.1])
            }
        }

        func caclulate(axisA: (Int, Int), axisB: (Int, Int), isAdd: Bool) -> (Int, Int) {
            if isAdd {
                (axisA.0 + axisB.0, axisA.1 + axisB.1)
            } else {
                (axisA.0 - axisB.0, axisA.1 - axisB.1)
            }
        }
        return resultArray.count
    }
}
