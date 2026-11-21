class Solution {
    func longestCommonPrefix(_ strs: [String]) -> String {
        var prefix = ""
        let sorted = strs.sorted()
        if let first = sorted.first, let last = sorted.last {
            let lastArray = Array(last)
            for (index, char) in first.enumerated() {
                guard lastArray[index] == char else {
                    return prefix
                }
                prefix += String(char)
            }
        }

        return prefix
    }
}
