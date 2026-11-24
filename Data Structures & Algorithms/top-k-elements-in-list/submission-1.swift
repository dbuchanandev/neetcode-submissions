class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var counts = [Int:Int]()
        var buckets: [[Int]] = Array(repeating: [], count: nums.count + 1)
        var result = [Int]()
        // Count frequencies
        for num in nums {
            counts[num, default: 0] += 1
        }
        // Place in buckets
        for (num, count) in counts {
            buckets[count].append(num)
        }

        // Pick top k from buckets
        for i in (0...nums.count).reversed() {
            for num in buckets[i] {
                guard result.count < k else {
                    return result
                }
                result.append(num)
            }
        }

        return result
    }
}
