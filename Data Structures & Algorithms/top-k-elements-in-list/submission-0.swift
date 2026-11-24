class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var counts = [Int:Int]()
        var buckets: [[Int]] = Array(repeating: [], count: nums.count + 1)
        var result = [Int]()
        var current = nums.count
        // Count frequencies
        for num in nums {
            counts[num, default: 0] += 1
        }
        // Place in buckets
        for (num, count) in counts {
            buckets[count].append(num)
        }

        // Pick top k from buckets
        while current > 0 {
            for num in buckets[current] {
                guard result.count < k else {
                    return result
                }
                result.append(num)
            }
            current -= 1
        }

        return result
    }
}
