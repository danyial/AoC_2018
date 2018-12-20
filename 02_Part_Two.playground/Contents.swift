import Foundation

extension String {
    subscript(ix: Int) -> Character {
        let index = self.index(startIndex, offsetBy: ix)
        return self[index]
    }
}

var values: [String] = []

if let fileURL = Bundle.main.url(forResource: "input", withExtension: "txt"), let content = try? String(contentsOf: fileURL, encoding: String.Encoding.utf8) {
    values = content.components(separatedBy: "\n")
}

var resultID1 = ""
var resultID2 = ""

for index1 in 0 ..< values.count {
    let val1 = values[index1]
    
    for index2 in index1 + 1 ..< values.count {
        let val2 = values[index2]
        
        let difference = zip(val1, val2).filter{ $0 != $1 }
        
        if difference.count == 1 {
            resultID1 = val1
            resultID2 = val2
        }
    }
    
    if resultID1 != "" {
        break
    }
}

var result = ""

for index in 0 ..< resultID1.count {
    let val1 = resultID1[index]
    let val2 = resultID2[index]
    
    if val1 == val2 {
        result += "\(val1)"
    }
}

print(resultID1)
print(resultID2)
print(result)
