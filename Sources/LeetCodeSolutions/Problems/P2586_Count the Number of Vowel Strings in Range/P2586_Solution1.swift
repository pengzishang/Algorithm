final class P2586_Solution1 {
    func vowelStrings(_ words: [String], _ left: Int, _ right: Int) -> Int {
        let vowels: Set<Character> = ["a", "e", "i", "o", "u"]
        var count = 0
        var i = left
        while i <= right {
            let word = words[i]
            if let first = word.first, let last = word.last,
               vowels.contains(first), vowels.contains(last)
            {
                count += 1
            }
            i += 1
        }
        return count
    }
}
