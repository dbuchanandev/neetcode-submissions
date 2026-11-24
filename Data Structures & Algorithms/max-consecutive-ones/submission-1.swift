class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var result = 0
        var current = 0
        for num in nums {
            if num == 1 {
                current += 1
            } else {
                current = 0
            }
            result = max(result, current)
        }

        return result
    }
}
