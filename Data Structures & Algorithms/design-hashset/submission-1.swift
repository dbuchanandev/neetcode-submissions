class MyHashSet {

    private static let size = 1_000_032 / 32
    private var storage: [Int]

    init() {
        self.storage = Array(repeating: 0, count: Self.size)
    }

    private func bitmask(for key: Int) -> Int {
        1 << (key % 32)
    }

    func add(_ key: Int) {
        storage[key / 32] |= bitmask(for: key)
    }

    func remove(_ key: Int) {
        if contains(key) {
            storage[key / 32] &= ~bitmask(for: key)
        }
    }

    func contains(_ key: Int) -> Bool {
        (storage[key / 32] & bitmask(for: key)) != 0
    }
}

/**
 * Your MyHashSet object will be instantiated and called as such:
 * let obj = MyHashSet()
 * obj.add(key)
 * obj.remove(key)
 * let ret_3: Bool = obj.contains(key)
 */
