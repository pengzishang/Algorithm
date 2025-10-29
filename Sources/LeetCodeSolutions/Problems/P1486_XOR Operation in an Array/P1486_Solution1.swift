final class P1486_Solution1 {
    func xorOperation(_ n: Int, _ start: Int) -> Int {
        var infos = [Int]()
        for i in 0 ..< n {
            infos.append(start + 2 * i)
        }
        return infos.reduce(into: Int()) { partialResult, item in
            partialResult ^= item
        }
    }
}
