class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0
        var current = 0
        for num in nums {
            if num == 1 {
                current += 1
            } else {
                current = 0
            }
            if current > max {
                max = current
            }
        }

        return max
    }
}
