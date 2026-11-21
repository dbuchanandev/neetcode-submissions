class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        typealias CharMap = [Character: Int]
        func isAnagram(_ s: String, _ t: String) -> Bool {
            guard s.count == t.count else { return false }
            let sMap = createMap(s)
            let tMap = createMap(t)

            return sMap == tMap
        }

        func createMap(_ str: String) -> CharMap {
            var map = CharMap()
            for char in str {
                map[char, default: 0] += 1
            }
            return map
        }

        var groups = [CharMap: [String]]()

        for str in strs {
            groups[createMap(str), default: []].append(str)
        }

        return Array(groups.values)
    }
}
