class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()
        var result = [Int]()
        for (i, num) in nums.enumerated() {
            let match = target - num
            if let matchIndex = seen[match] {
                if i < matchIndex {
                    result = [i, matchIndex]
                } else {
                    result = [matchIndex, i]
                }
            }
            seen[num] = i
        }

        return result
    }
}
