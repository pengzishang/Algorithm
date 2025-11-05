final class P0867_Solution1 {
    func transpose(_ matrix: [[Int]]) -> [[Int]] {
//        [1,2],[1,2],[1,2],[1,2]
        let row = matrix.first?.count ?? 0
        let column = matrix.count
        var result = [[Int]]()
        for i in 0 ..< row {
            var temp = [Int]()
            for j in 0 ..< column {
                temp.append(matrix[j][i])
            }
            result.append(temp)
        }
        return result
    }
}
