final class P1456_Solution1 {
    func maxVowels(_ s: String, _ k: Int) -> Int {
        let copyS = Array(s)
        let vowelSet: Set<Character> = Set(["a", "e", "i", "o", "u"])
        var currVowelCount = 0
        var maxCount = 0

        for i in 0 ..< copyS.count {
            currVowelCount += isVowel(c: copyS[i]) ? 1 : 0
            if i >= k {
                currVowelCount -= isVowel(c: copyS[i - k]) ? 1 : 0
            }
            maxCount = max(maxCount, currVowelCount)
            if maxCount == k {
                break
            }
        }

        func isVowel(c: Character) -> Bool {
            vowelSet.contains(c)
        }

        return maxCount
    }
}
