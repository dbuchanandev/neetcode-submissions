class Solution {
    func sortArray(_ nums: [Int]) -> [Int] {
        var heap = Heap(nums)
        var result = [Int]()
        while let min = heap.popMin() {
            result.append(min)
        }
        return result
    }
}
