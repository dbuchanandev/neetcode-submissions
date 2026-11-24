class Solution {
    func calPoints(_ operations: [String]) -> Int {
        enum Operation {
            case score(Int)
            case plus
            case c
            case d

            init?(rawValue: String) {
                if let int = Int(rawValue) {
                    self = .score(int)
                    return
                }

                switch rawValue {
                    case "+":
                        self = .plus
                    case "C":
                        self = .c
                    case "D":
                        self = .d
                    default:
                        return nil
                }
            }
        }

        var record = [Int]()

        func apply(_ operation: String, to record: inout [Int]) {
            guard let operation = Operation(rawValue: operation) else { return }
            let count = record.count
            switch operation {           
                case .plus:
                    // problem contraints don't require us to check index validity here
                    record.append(record[count - 1] + record[count - 2])
                case .c:
                    record.removeLast()
                case .d:
                    let previous = record[count - 1]
                    record.append(previous * 2)
                case .score(let value):
                    record.append(value)
                }
            }

        for operation in operations {
            apply(operation, to: &record)
        }

        return record.reduce(0,+)
    }
}
