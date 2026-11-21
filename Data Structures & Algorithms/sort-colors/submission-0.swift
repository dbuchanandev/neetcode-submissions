class Solution {
    func sortColors(_ nums: inout [Int]) {
        var counts = [Int: Int]()
        var current = 0
        for num in nums {
            counts[num, default: 0] += 1
        }
        for i in 0...2 {
            let count = counts[i, default: 0]
            let range = current ..< (current + count)
                nums.replaceSubrange(range, with: Array(repeating: i, count: count))
            current += count
        }
    }
}
