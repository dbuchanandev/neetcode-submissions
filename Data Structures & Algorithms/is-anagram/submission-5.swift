class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else { return false }
        let tArray = Array(t)
        var seen = [Character: Int]()
        for (i, c) in s.enumerated() {
            seen[c, default: 0] += 1
            seen[tArray[i], default: 0] -= 1
            if seen[c] == 0 {
                seen.removeValue(forKey: c)
            }
            if seen[tArray[i]] == 0 {
                seen.removeValue(forKey: tArray[i])
            }
        }

        return seen.isEmpty
    }
}
