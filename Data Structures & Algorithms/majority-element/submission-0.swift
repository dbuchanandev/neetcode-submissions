class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var counts = [Int:Int]()
        let total = nums.count
        var result = nums[0]

        for num in nums {
            counts[num, default: 0] += 1
            if counts[num, default: 0] > total / 2 {
                result = num
            }
        }

        return result
    }
}
