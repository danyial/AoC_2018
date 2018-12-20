import Foundation

var values: [String] = []

if let fileURL = Bundle.main.url(forResource: "input", withExtension: "txt"), let content = try? String(contentsOf: fileURL, encoding: String.Encoding.utf8) {
    values = content.components(separatedBy: "\n")
}

var twoTimes = 0
var threeTimes = 0

for val in values {
    let unique = Array(Set(val))
    
    var foundTwoTimes = false
    var foundThreeTimes = false
    
    for c in unique {
        let count = val.filter({ $0 == c }).count
        
        if count == 2 {
            foundTwoTimes = true
        }

        if count == 3 {
            foundThreeTimes = true
        }
    }
    
    twoTimes += foundTwoTimes ? 1 : 0
    threeTimes += foundThreeTimes ? 1 : 0
}

let result = twoTimes * threeTimes

print("\(twoTimes) * \(threeTimes) = \(result)")
