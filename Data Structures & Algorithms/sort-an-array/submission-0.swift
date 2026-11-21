class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var map = [Int:Int]()
        var result = [Int]()
        var min = 0
        var max = 0
        for num in nums {
            map[num, default: 0] += 1
            if num < min {
                min = num
            }
            if num > max {
                max = num
            }
        }
        for i in min...max {
            if let count = map[i] {
                map.removeValue(forKey: i)
                result += Array(repeating: i, count: count)
            }
        }

        return result
    }
}
