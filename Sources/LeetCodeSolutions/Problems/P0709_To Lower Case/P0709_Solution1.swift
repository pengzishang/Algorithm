final class P0709_Solution1 {
    func toLowerCase(_ s: String) -> String {
        let array = s.data(using: .utf8)?.compactMap {
            if $0 >= 65, $0 <= 90 {
                return $0 | (1 << 5)
            }
            return $0
        }
        return String(bytes: array!, encoding: .utf8)!
    }
}
