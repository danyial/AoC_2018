import Foundation

if let fileURL = Bundle.main.url(forResource: "input01", withExtension: "txt"), let content = try? String(contentsOf: fileURL, encoding: String.Encoding.utf8) {
    let values = content.components(separatedBy: "\n")
    
    var frequency = 0

    for val in values {
        if let intVal = Int(val) {
            frequency += intVal
        }
    }
    
    print(frequency)
}
