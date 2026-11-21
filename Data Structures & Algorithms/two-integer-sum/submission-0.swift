class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()
        for (i, num) in nums.enumerated() {
            let match = target - num
            if let matchIndex = seen[match] {
                return [i, matchIndex].sorted()
            }
            seen[num] = i
        }

        return []
    }
}
