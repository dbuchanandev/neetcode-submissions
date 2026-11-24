class Solution {
    func replaceElements(_ arr: [Int]) -> [Int] {
        var result = arr
        var currentMax = -1
        for i in arr.indices.reversed() {
            result[i] = currentMax
            currentMax = max(arr[i], currentMax)
        }
        return result
    }
}
