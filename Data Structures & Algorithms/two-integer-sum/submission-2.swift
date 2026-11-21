class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var seen = [Int: Int]()
        var result = Array(repeating: 0, count: 2)
        for (index, num) in nums.enumerated() {
            let match = target - num
            if let matchedIndex = seen[match] {
                // Because we're iterating the array from left to right, `matchedIndex` is guaranteed to be less than `index`
                result = [matchedIndex, index]
                break
            } else {
                seen[num] = index
            }
        }

        return result
    }
}
